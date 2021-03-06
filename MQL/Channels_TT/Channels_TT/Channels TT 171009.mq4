//KTB #define KEYEVENTF_KEYUP 0x0002 //keybd_event function @ https://msdn.microsoft.com/en-us/library/windows/desktop/ms646304(v=vs.85).aspx
#include <stderror.mqh> //It is needed for ErrorDescription.
#include <stdlib.mqh> //It is needed for ErrorDescription.
#include <WinUser32.mqh> //It is needed for MessageBox.
//#import "MT4QuikConnector.dll"
#import "MTQC.dll"
   //string clnMsgToMT4QuikConnector(string); //"Transactions on Named Pipes" @ https://msdn.microsoft.com/en-us/library/aa365789(v=vs.85).aspx
   string messsagToMTQC(string); //"Transactions on Named Pipes" @ https://msdn.microsoft.com/en-us/library/aa365789(v=vs.85).aspx
   //void clnTextToClipboard(string); // Copy text to clipboard. @ http://www.cplusplus.com/forum/beginner/14349/
   void textToClipboard(string); // Copy text to clipboard. @ http://www.cplusplus.com/forum/beginner/14349/
   //OFF string textFromClipboard(string); // Get Clipboard Text as String. @ http://cboard.cprogramming.com/windows-programming/103976-get-clipboard-text-string.html http://www.codeproject.com/Articles/2242/Using-the-Clipboard-Part-I-Transferring-Simple-Tex
/*KTB #import "TRANS2QUIK.dll"
   int TRANS2QUIK_CONNECT(string& lpstConnectionParamsString, int& pnExtendedErrorCode, string lpstrErrorMessage, int dwErrorMessageSize);*/
#import "user32.dll" //It is needed to unselect all selected objects.
   //KTB int GetParent(int hWnd);
   int GetLastActivePopup(int hWnd);
   int GetAncestor(int hWnd, int gaFlags);
   //KTB int GetDlgItem(int hDlg, int nIDDlgItem);
   void keybd_event(int bVk, int bScan, int dwFlags, int dwExtraInfo); //http://www.forexfactory.com/showthread.php?t=468143        http://www.codeproject.com/Articles/7305/Keyboard-Events-Simulation-using-keybd-event-funct
#import

#property strict

enum enmMagic {_1 = 1, _2, _3, _4, Alligator, Test};
input enmMagic MagicNumber = _1;
input int LotsMax = 10;
input string TimeDelay = "2050.01.01 00:00";
//TO DO: Get it from MTQC Win32Interface not to duplicate it.
input int ResumeRange = 2;
input bool TradeInQuik = true;
//KTB const input string QuikTerminalPath = "C:\\Alex\\Program Files (x86)\\BCS_Work\\QUIK 2\\";
enum enmKeys { keyTab = 9, keyEnter = 13, keyEsc = 27, keySpace = 32, keyEnd = 35, keyArrowLeft = 37, keyArrowUp, keyArrowRight, keyArrowDown, keyDel = 46, key0 = 48, key1, key2, key3, key4, key5, key6, key7, key8, key9,  keyA = 65, keyB, keyC, keyD, keyE, keyF, keyG, /*KTB keyL = 76, keyP = 80,*/ keyQ = 81, keyR, keyS, keyT, keyV = 86, keyW, keyX, keyZ = 90, key0Num = 96, key1Num, key2Num, key3Num, key4Num, key5Num, key6Num, key7Num, key8Num, key9Num, /*keyNumMinus = 109, keyNumSlash = 111,*/ keyF5 = 116 /*keyTilde 192*/};
enum enmWM { wmSavePicture = 33054, wmCrossHair = 33233, wmHLine = 33244, wmTrend = 33257, wmLogin = 35429, wmEsc = 35462, wmLeftArrow }; //The PostMessageA codes @ https://forum.mql4.com/ru/14463
enum enmVK { vkTab = 0x09, vkShift, vkCtrl, vkMenu }; //bVirtualKey for keybd_event: Virtual keycode that has to be send as key input. The following are the available predefined virtual key codes. @ http://www.codeproject.com/Articles/7305/Keyboard-Events-Simulation-using-keybd-event-funct
enum enmNCmdShow { showNormal = 1, /*KTB showMinimized,*/ showMaximized = 3};

/* The PostMessageA codes @ https://forum.mql4.com/ru/14463
33017 - снять автопрокрутку /////////
33018 - переключение на представление "бары"
33019 - переключение на представление "свечи"
33021 - сетка Ctrl+G
33022 - переключение на представление "линия"
33023 - смещение графика
33024 - объемы Ctrl+L
33025 - увеличить масштаб
33026 - уменьшить масштаб
33054 - сохранить как рисунок /////////// 5
33134 - таймфрейм D1 /////////
33136 - таймфрейм Н4 /////////
33137 - таймфрейм М1 /////////
33138 - таймфрейм М5 /////////
33139 - таймфрейм М15 /////////
33140 - таймфрейм М30 /////////
33141 - таймфрейм W1 /////////
33157 - свойства F8
33220 - графики-шаблон-сохранить шаблон /////////
33230 - вставка-стрелка вниз
33231 - вставка-стрелка вверх
33232 - значки-галочка
33233 - перекрестие ////////// 1
33234 - курсор
33235 - вставка-цикличные линии
33236 - равноудаленный канал
33237 - линии Фибоначчи
33238-33243 - вставка-Фибоначчи-Ганн
33244 - горизонтальная линия ////////// 3
33246 - вставка вилы Эндрюса
33247 - вставка-фигуры-прямоугольник
33248 - вставка-каналы-линейная регрессия
33251 - вставка-значки-стоп
33253 - текст
33254 - вставка-значки-плохо
33255 - вставка-значки-хорошо
33256 - вставка-Фибоначчи-временные зоны
33257 - трендовая линия ////////// 2
33258 - вставка-линии-трендовая линия по углу
33259 - вставка-фигуры-треугольник
33260 - вертикальная линия
33261 - текстовая метка
33315 - вид-тестер стратегий?
33334 - таймфрейм MN
34300-34699(?) - пользовательские индикаторы в алфавитном порядке
34700-34729 - индикаторы
35400 - таймфрейм H1
35454 - ордер buylimit
35455 - ордер buystop
35456 - ордер selllimit
35457 - ордер sellstop
35458 - новый ордер F9
35464 - правая ценовая метка ////////// 4
35511 - графики-шаблоны-загрузить шаблон /////////
57602 - закрыть текущий график */

struct variousConsts { 
   const int idx_1; 
   const int idx0; 
   const int operationNull; 
   const string msgWrongOrder; 
   string formatDecimals;
   const string priceSeparator;
   const int lengthPrice;
   const int lengthLots;   
   const int lengthHrMinSec;
   const string lots;
   const string safetyLock;
   const string alertFlag;
   const string activateMaximizeRestore;
   const string CtrlVsleep;
   /*KTB const string KTB_Swap; 
   const int KTB_SwapYes; 
   const int KTB_SwapNo;*/
   int KTB_Ticket; 
}; 
variousConsts msttVariousConsts = {
   -1, 
   0, 
   -1, 
   "Wrong order type!",    
   "",                           
   ",",
   6,
   6,
   2,
   "Lots",
   "SafetyLock",
   //"t",
   "a",
   "ActivateMaximizeRestore",
   "CtrlVsleep",
   /*KTB "Swap_Yes1_No0",     
   1,                      
   0,*/                
}; 

int Lots = (int)GlobalVariableGet(msttVariousConsts.lots); //Get the lots saved as a global variable unlike a member one to enable external manipulation.

string mstrOperations[4] = {"bl", "sl", "bs", "ss"};

string formatPrice(double dblPrice) { return StringFormat(StringConcatenate("%", msttVariousConsts.formatDecimals), dblPrice); }

string formatInteger(int intNumber, int intLength) { return StringFormat( StringConcatenate("%0", intLength, "u"), intNumber ); } // Format an interger number with a specified length and if necessa leading zeroes. //"%06.2f" - "0" denotes leading zeroes (e.g. 099), '6' denotes the width (e.g. 123.45), '.2' denotes 2 decimal digits after the decimal point, 'f' denotes a double number type ('u' - unsigned decimal integer ). +------------------------------------------------------------------+

string anticollisionAffix() { //+------------------------------------------------------------------+
   datetime dtmTimeLocal = TimeLocal();
   return StringConcatenate( " ", formatInteger(TimeMinute(dtmTimeLocal), msttVariousConsts.lengthHrMinSec), formatInteger(TimeSeconds(dtmTimeLocal), msttVariousConsts.lengthHrMinSec) ); 
} 

void postMessage(enmWM wmCommand) { PostMessageA(WindowHandle(Symbol(), Period()), WM_COMMAND, wmCommand, 0); } // The PostMessageA command. +------------------------------------------------------------------+

bool containsIndicator(long lngChartID, string strIndicatorName) { // Does a chart contain an indicator on the main chart subwindow? +------------------------------------------------------------------+
   const int intSubWindow = 0; //Look up the indicarot on the main chart subwindow only.
   for (int i = 0; i < ChartIndicatorsTotal(lngChartID, intSubWindow); i++) { //Look up the indicarot on the main chart subwindow only sub_window of ChartIndicatorsTotal = 0.
      if (ChartIndicatorName(lngChartID, intSubWindow, i) == strIndicatorName) return true; //Is this the indicator sought?
   }
   return false;
}

class graphObject { //TO DO: Here and in the other classes: Separate class member function definitions from their implementation (as in C++ class1.h, class1.cpp). Use inlining whereever a member function is rather short. That is leave its defenition in the declaration (in class1.h) as it's currently the case. +------------------------------------------------------------------+
   double getPriceHLineArrow() { return ObjectGet(name, OBJPROP_PRICE1);} //+------------------------------------------------------------------+
   
   void moveUpDown(int intUpDown) { // Move the object up. +------------------------------------------------------------------+
      double dblPoints = _Point * intUpDown;
      switch (ObjectType(name)) {
         case OBJ_TREND: ObjectSet(name, OBJPROP_PRICE2, ObjectGet(name, OBJPROP_PRICE2) + dblPoints);
         case OBJ_HLINE: case OBJ_ARROW: ObjectSet(name, OBJPROP_PRICE1, getPriceHLineArrow() + dblPoints);
   }  }
   
   void moveLeftRight(int intLeftRight) { // Move the object to the left/right. +------------------------------------------------------------------+
      double dblPoints = _Period * 60 * intLeftRight;
      switch (ObjectType(name)) {
         case OBJ_TREND: ObjectSet(name, OBJPROP_TIME2, ObjectGet(name, OBJPROP_TIME2) + dblPoints);
         case OBJ_ARROW: case OBJ_VLINE: ObjectSet(name, OBJPROP_TIME1, ObjectGet(name, OBJPROP_TIME1) + dblPoints);
   }  } 
      
public:
   string name;
   graphObject(string strName) : name(strName) { name = strName; } //https://www.mql5.com/en/forum/7383 //TO DO: Here and below: "name = strName" is unnecessary according to the functionality of the member initialisation list ("name(strName)"). +------------------------------------------------------------------+
   
   graphObject(string strNameArrow, datetime dtmTime1, double dblPrice1) : name(strNameArrow) { // Create a new arrow. +------------------------------------------------------------------+
      name = strNameArrow;
      ObjectCreate(0, strNameArrow, OBJ_ARROW, 0, dtmTime1, dblPrice1); //Place a buy/sell stop at ResumeRange points above/below the current price.
      setColourWhite();
   } 
   
   graphObject(string strNameLabel, long lngX, long lngY) : name(strNameLabel) { // Create a label. //TO DO: Use the member initialisation list to ininialise the class members. +------------------------------------------------------------------+
      const long lngFontSize = 8;
      name = strNameLabel;
      ObjectCreate(0, strNameLabel, OBJ_LABEL, 0, 0, 0);
      setDescription("");
      setColourWhite();
      setXDdistance(lngX);
      setYDdistance(lngY);
      setFontSize(lngFontSize);
      setHidden();
      setUnselectable();
   } 
   
   void rename_(string strNewName) { //+------------------------------------------------------------------+
      ObjectSetString(0, name, OBJPROP_NAME, strNewName);
      name = strNewName;     
   } 
   
   void setDescription(string strDescription) { ObjectSetString(0, name, OBJPROP_TEXT, strDescription); } //+------------------------------------------------------------------+
   void setDescription(int intDescription) { ObjectSetString(0, name, OBJPROP_TEXT, (string)intDescription); } //+------------------------------------------------------------------+
   string getDescription() { return ObjectGetString(0, name, OBJPROP_TEXT); } //+------------------------------------------------------------------+
   
   double getPrice() { //Get the price of the graph object +------------------------------------------------------------------+
      double dblPrice = 0;
      switch (ObjectType(name)) {
         case OBJ_HLINE: case OBJ_ARROW: dblPrice = getPriceHLineArrow(); break;
         case OBJ_TREND: dblPrice = ObjectGetValueByShift(name, msttVariousConsts.idx0);
      }
      return dblPrice;
   }
   
   void setRoundPrice() { // Set a round price of a horizontal line or arrow object. +------------------------------------------------------------------+
      int intObjectType = ObjectType(name);
      if ( intObjectType == OBJ_HLINE || intObjectType == OBJ_ARROW ) ObjectSet(name, OBJPROP_PRICE1, NormalizeDouble(getPriceHLineArrow(), _Digits)); 
   }
   
   bool isSelected() { return (ObjectGet(name, OBJPROP_SELECTED)); } //+------------------------------------------------------------------+
   void setUnselected() {ObjectSet(name, OBJPROP_SELECTED, false); } //+------------------------------------------------------------------+
   //KTB void setColour(double dblColour) { ObjectSet(name, OBJPROP_COLOR, dblColour); } //+------------------------------------------------------------------+
   void setColourWhite() { ObjectSet(name, OBJPROP_COLOR, clrWhite); } //+------------------------------------------------------------------+
   void setColourGray() { ObjectSet(name, OBJPROP_COLOR, clrGray); } //+------------------------------------------------------------------+
   int getColour() { return (int)ObjectGet(name, OBJPROP_COLOR); }; //+------------------------------------------------------------------+
   void setXDdistance(long lngX) { ObjectSetInteger(0, name, OBJPROP_XDISTANCE, lngX); } //+------------------------------------------------------------------+
   void setYDdistance(long lngY) { ObjectSetInteger(0, name, OBJPROP_YDISTANCE, lngY); } //+------------------------------------------------------------------+
   
   void setFontSize(long lngSize) { //+------------------------------------------------------------------+
      //KTB ObjectSetString(0, name, OBJPROP_FONT, "Times New Roman");
      //KTB ObjectSetText(name, "Hello world!", 10, "Times New Roman", Green);
      ObjectSetInteger(0, name, OBJPROP_FONTSIZE, lngSize); 
   } 
   
   void setHidden() { ObjectSet(name, OBJPROP_HIDDEN, true); } //Don't show the name of a graphical object in the list of objects. @ http://indo.mt5.com/showthread.php?32830-MQL4-600-Hide-and-Unselectable-Object
   //KTB void getHidden() { return ObjectGet(name, OBJPROP_HIDDEN); } //Is the object hidden?
   void setUnselectable() { ObjectSet(name, OBJPROP_SELECTABLE, false); } //Don't let an object be selected by mouse-double click.

   bool isOperational() { // Is the object operational? +------------------------------------------------------------------+
      switch (ObjectType(name)) {
         case OBJ_ARROW: case OBJ_HLINE: case OBJ_TREND: return true; break;
         default: return false;
   }  } 

   bool isMovable() { // Is the object movable? +------------------------------------------------------------------+
      switch (ObjectType(name)) {
         case OBJ_ARROW: case OBJ_HLINE: case OBJ_TREND: case OBJ_VLINE: return true; break;
         default: return false;
   }  } 

   void moveUp() { moveUpDown(1); } // Move the object up. +------------------------------------------------------------------+
   void moveDown() { moveUpDown(-1); } // Move the object down. +------------------------------------------------------------------+
   void moveLeft() { moveLeftRight(-1); } // Move the object to the left. +------------------------------------------------------------------+
   void moveRight() { moveLeftRight(1); } // Move the object to the right. +------------------------------------------------------------------+
   void deleteFromChart() { ObjectDelete(0, name); } //+------------------------------------------------------------------+
};

class object : public graphObject { //+------------------------------------------------------------------+
   int cintOperationInt;
   const string cstrDescriptionKept, cstrDescriptionPending, cstrDescriptionResuming, cstrDescriptionReversing, cstrDescriptionAlert;
public:
   //object(string strName, int intOperation) : graphObject(strName) { cintOperationInt = intOperation; } //https://www.mql5.com/en/forum/7383 +------------------------------------------------------------------+
   object(string strName, int intOperation) :  //https://www.mql5.com/en/forum/7383 +------------------------------------------------------------------+
      cstrDescriptionKept("k"),
      cstrDescriptionPending("p"),
      cstrDescriptionResuming("m"),
      cstrDescriptionReversing("r"),
      cstrDescriptionAlert("a"),
      graphObject(strName)
      { cintOperationInt = intOperation; }
   int getOperationInt() { return cintOperationInt; };
   int getOperationBuySell() { return LIMITSTOPtoBUYSELL(getOperationInt()); } //+------------------------------------------------------------------+
   /*KTB
   bool isKept() {      return getDescription() == "k"; } //+------------------------------------------------------------------+
   bool isPending() {   return getDescription() == "p"; } //+------------------------------------------------------------------+
   bool isResuming() {  return getDescription() == "m"; } //Is resuming required? //+------------------------------------------------------------------+
   bool isReversing() { return getDescription() == "r"; } //Is reversing required? //+------------------------------------------------------------------+
   bool isAlert() {     return getDescription() == msttVariousConsts.alertFlag; } //Is it an alert? //+------------------------------------------------------------------+
   //KTB bool isTrade() { return getDescription() == msttVariousConsts.tradeFlag; } //Is it a trade vs. alert? //+------------------------------------------------------------------+
   */

   bool getKept() { return getDescription() == cstrDescriptionKept; } //+------------------------------------------------------------------+
   void setKept() { setDescription(cstrDescriptionKept); } //+------------------------------------------------------------------+
   
   bool getPending() { return getDescription() == cstrDescriptionPending; } //+------------------------------------------------------------------+
   void setPending() { setDescription(cstrDescriptionPending); } //+------------------------------------------------------------------+
   
   bool getResuming() { return getDescription() == cstrDescriptionResuming; } //+------------------------------------------------------------------+
   void setResuming() { setDescription(cstrDescriptionResuming); } //+------------------------------------------------------------------+
   
   bool getReversing() { return getDescription() == cstrDescriptionReversing; } //+------------------------------------------------------------------+
   void setReversing() { setDescription(cstrDescriptionReversing); } //+------------------------------------------------------------------+
   
   bool getAlert() { return getDescription() == cstrDescriptionAlert; } //+------------------------------------------------------------------+
   void setAlert() { setDescription(cstrDescriptionAlert); } //+------------------------------------------------------------------+  

   bool getTrade() { return getDescription() == ""; } //+------------------------------------------------------------------+
   void setTrade() { setDescription(""); } //+------------------------------------------------------------------+  

   void rename(string strOperationRename = NULL, int intTicket = 0, datetime dtmOrderTime = 0, double dblOrderPrice = 0) { // Rename a trade object and clear its description to prevent its accidential wrong reuse. +------------------------------------------------------------------+
      setDescription(""); //Clear the description of the initiating trade object to prevent its accidential wrong reuse.
      rename_( StringConcatenate( strOperationRename != NULL ? strOperationRename : StringConcatenate(name, "", intTicket == 0 ? "" : IntegerToString(intTicket), dtmOrderTime == 0 ? "" : StringConcatenate("", dtmOrderTime, "", roundToPts(dblOrderPrice))), anticollisionAffix() ));
   }
};

class objects { //+------------------------------------------------------------------+
   object* cobjObjects[]; //A dynamic array of trading objects available.
   object* cobjObjectTriggered;
   string cstrPricesForQuik; //Buy limit, sell limit, buy stop, and sell stop separated with semicolon.
   string cstrPricesToDisplay;
   double cdblPriceScanned; //The price last scanned for a trigger object.
   int cintCount;
   int cintCountPending;
   string cstrDescriptionEmpty; //A standardized-width empty decription of the flags for Quik.
   datetime cdtmTimeSet; //The time the last time the objects have been set.
   
   void setCount(int intCountPendingNew) { //Set the count of the trading objects and the pending ones, if any. //+------------------------------------------------------------------+
      cintCount = ArraySize(cobjObjects);
      cintCountPending = intCountPendingNew; //Unlike setting cintCountPending throughout the class member functions as before, its done inside this function just to manipulate bouth counts in one place.
   } 
      
   void deleteAll() { // Delete all the dynamically created trading objects //+------------------------------------------------------------------+
      cobjObjectTriggered = NULL; // disconnect pointer from free-store space //fig10_23.cpp @ C++ Fundamentals By Paul J. Deitel.
      for (int i = 0; i < getCount(); i++) delete cobjObjects[i];
      ArrayResize(cobjObjects, 0, ArraySize(mstrOperations));
      setCount(0);
   } 
   
   object* add(const string& strOperation, int intOperation) { //Add a new trading onbject into the collection. Return a pointer to it. +------------------------------------------------------------------+
      int intIdxAdded = getCount();
      ArrayResize(cobjObjects, intIdxAdded + 1, ArraySize(mstrOperations)); //Increment the size of the array of trade operation types available.
      object* objObject = new object(strOperation, intOperation); //Remember an available trading object.
      cobjObjects[intIdxAdded] = objObject;
      //setCount(objObject.isPending() ? cintCountPending + 1 : cintCountPending);
      setCount(objObject.getPending() ? cintCountPending + 1 : cintCountPending);
      return objObject;
   }

public:
   int getCount() { return cintCount; } //+------------------------------------------------------------------+
   object* getObjectTriggered() { return cobjObjectTriggered; } //+------------------------------------------------------------------+
   string getPricesForQuik() { return cstrPricesForQuik; } //Buy limit, sell limit, buy stop, and sell stop separated with semicolon. +------------------------------------------------------------------+
   //datetime timeSet; //The time the last time the objects have been set.
   datetime getTimeSet() { return cdtmTimeSet; } //+------------------------------------------------------------------+
   void setTimeSet(datetime dtmTimeSet) { cdtmTimeSet = dtmTimeSet; } //+------------------------------------------------------------------+
   //KTB int getCount(bool blnPendingInclusive) { return(ArraySize(cobjObjects) - (blnPendingInclusive == true ? 0 : cintCountPending)); } //Get the count of the trading objects inclusive/exclusive the pending ones, if any. //+------------------------------------------------------------------+
   
   objects() : cintCount(0), cintCountPending(0), cdblPriceScanned(0), cstrDescriptionEmpty(" "), cdtmTimeSet(0) {} //+------------------------------------------------------------------+
   ~objects() { deleteAll(); } // Delete all the dynamically created trading objects //+------------------------------------------------------------------+
   
   void set() { //+------------------------------------------------------------------+
      cstrPricesToDisplay = "";
      cstrPricesForQuik = "";
      cobjObjectTriggered = NULL;
      deleteAll();
      for (int i = 0; i < ArraySize(mstrOperations); i++) {
         string strOperation = mstrOperations[i];
         if (ObjectFind(strOperation) == 0) { //Is there a trade object?
            object* objObject = add(strOperation, i + OP_BUYLIMIT);
            double dblPrice = NormalizeDouble(objObject.getPrice(), _Digits);
            StringAdd( cstrPricesForQuik, StringConcatenate(msttVariousConsts.priceSeparator, i + OP_BUYLIMIT) ); //Add a MQL4 trade operation code.
            StringAdd( cstrPricesForQuik, StringFormat(StringConcatenate(StringConcatenate(msttVariousConsts.priceSeparator, "%0", msttVariousConsts.lengthPrice, msttVariousConsts.formatDecimals)), dblPrice) ); //"%06.2f" - "0" denotes leading zeroes (e.g. 099), '6' denotes the width (e.g. 123.45), '.2' denotes 2 decimal digits after the decimal point, 'f' denotes a double number type.
            string strDescription = objObject.getDescription(); //Add the description of the object.
            if (strDescription == "") strDescription = cstrDescriptionEmpty; //If the description is empty add a double-space to keep a standardized width of the flags for Quik.
            StringAdd( cstrPricesForQuik, StringConcatenate(msttVariousConsts.priceSeparator, strDescription) );
            if (!objObject.getPending()) cstrPricesToDisplay = StringConcatenate( cstrPricesToDisplay, ((getCount() - cintCountPending) > 1 ? ", " : " "), strOperation, " ", formatPrice(dblPrice) ); //Isn't it a pending order?
      }  }  
      cdblPriceScanned = 0; //Reset the price last scanned for a trigger object.
      cstrPricesForQuik = StringConcatenate(getCount(), cstrPricesForQuik); //Prefix the prices for Quik with their quantity.
   }
   
   void scanTriggered() { // Alternatively the ojbects array can be always full but with dummy minimal or maximal prices instead of missing objects. Then distinguish buy/sell trades and scan only for a respective buy/sell object only 2 istead of all 4. ------------------------------------------------------------------+
      cobjObjectTriggered = NULL;
		if (Bid != cdblPriceScanned) { //Scan for a triggered object, if the new price differs from that scanned before.
         cdblPriceScanned = Bid; //Remember the new price scanned.
         object* objObject;
         for (int i = 0; i < getCount(); i++) {
            objObject = cobjObjects[i];
            if (!objObject.getPending()) { //Isn't it a pending order?
               //switch (objObject.operationInt) {
               switch (objObject.getOperationInt()) {
                  case OP_BUYLIMIT: if (roundToPts(Bid - objObject.getPrice()) <= 0) cobjObjectTriggered = objObject; break;
                  case OP_SELLLIMIT: if (roundToPts(Bid - objObject.getPrice()) >= 0) cobjObjectTriggered = objObject; break;
                  case OP_BUYSTOP: if (roundToPts(Bid - objObject.getPrice()) > 0) cobjObjectTriggered = objObject; break;
                  case OP_SELLSTOP: if (roundToPts(Bid - objObject.getPrice()) < 0) cobjObjectTriggered = objObject; break;
               }  
               if (cobjObjectTriggered != NULL) { //A triggered object found. TESTED: DO NOT MOVE playSound() INTO THE switch OPERATOR ABOVE. LEAVE IT HEAR.
                  playSound();
                  if (!cobjObjectTriggered.getAlert()) break; //This is a trade unlike an alert. Implement it right away despite there might be another alert triggered.
   }  }  }  }  }

   void renameAll(string strOperationSkip, bool blnDisableAll) { //Rename all trade objects except skipped, pending, or kept (unless in the DisableAll mode) one to prevent their accidential misuse. +------------------------------------------------------------------+
      if (blnDisableAll) { //Rename all in the blnDisableAll mode.
         for (int i = 0; i < getCount(); i++) cobjObjects[i].rename();
      }else{
         object* objObject;
         for (int i = 0; i < getCount(); i++) {
            objObject = cobjObjects[i];
            if (objObject.name != strOperationSkip) { //Is it not a skippedobject?
               if (!objObject.getKept()) { //Rename it, unless its name must be kept.
                  if (objObject.getPending()) objObject.setDescription(""); //Clear the pending flag to enable the trading object for a later use.
                  else objObject.rename();
   }  }  }  }  }

   void displayPrices(int intTotalnet) { //Dispay the prices of all the trade objectes //+------------------------------------------------------------------+
      if (getCount() - cintCountPending != 0) messageV(StringConcatenate(/*KTB MagicNumber, ":", */ intTotalnet, "   ", cstrPricesToDisplay));
      else messageV("");
   }

   object* item(const string& strOperation) { //Find an object by looking up the collection vs. FindObject() +------------------------------------------------------------------+
      /*KTB
      int intIdxItem = msttVariousConsts.idx_1;
      for (int i = 0; i < getCount(true); i++) {
         if (cobjObjects[i].name == strOperation) {
            intIdxItem = i;
            break;
      }  }
      return cobjObjects[intIdxItem];
      */
      for (int i = 0; i < getCount(); i++) if (cobjObjects[i].name == strOperation) return cobjObjects[i];
      return NULL;
   }

   /*KTB
   bool exists(const string& strOperation) { //Find an object by looking up the collection vs. FindObject() +------------------------------------------------------------------+
      for (int i = 0; i < getCount(true); i++) {
         if (cobjObjects[i].name == strOperation) return true;
      }
      return false;
   }
   */
   
   object* createResuming() { //Create a resuming trade object on closing the triggered object with a resume flag. +------------------------------------------------------------------+
      object* objObjectResuming = NULL;
      if (cobjObjectTriggered.getOperationInt() > OP_SELLLIMIT) messageV(StringConcatenate(msttVariousConsts.msgWrongOrder, " Only positions closed by limit orders can be resumed!")); //OP_SELLLIMIT=3. Is it OP_BUYSTOP=4 or OP_SELLSTOP=5?
      else {
         int intOperationResuming = BUYtoSELL(LIMITSTOPtoBUYSELL(cobjObjectTriggered.getOperationInt())) + OP_BUYSTOP; //Convert OP_BUYLIMIT to OP_SELLSTOP and OP_SELLLIMIT to OP_BUYSTOP.
         string strOperationResuming = mstrOperations[intOperationResuming - OP_BUYLIMIT];
         double dblPriceResuming = cobjObjectTriggered.getPrice() + ResumeRange * (cobjObjectTriggered.getOperationInt() == OP_BUYLIMIT ? -1 : 1) * Point; //Place the converted resuming trade object below (-1 multiplier) or above (+1 multiplier) the triggered one.
         object* objObjectExisting = item(strOperationResuming);
         if (objObjectExisting == NULL) objObjectResuming = add(strOperationResuming, intOperationResuming);  //Prevent name collision between an existing and newly created object. //Does not an object with the same trade operation as a resuming one exist? Add one.
         else { //An object with the same trade operation as a resuming one exists.
            if (objObjectExisting.getPending()) { //Has it been pending?
               objObjectExisting.setDescription(""); //The resuming object will not be pending.
               setCount(cintCountPending - 1); //Decrement the count of pending trade objects.
            }
            objObjectExisting.rename(StringConcatenate(objObjectExisting.name, " renamed")); //Rename only the chart object. From now on the collection of objects will refer not to it but to the resuming object that will be created below.
            Alert("Object ", objObjectExisting.name, " renamed!");
            objObjectResuming = objObjectExisting;
         }
         graphObject objGraphObject(objObjectResuming.name, Time[msttVariousConsts.idx0], dblPriceResuming);
         cobjObjectTriggered.setDescription(""); //Clear the description of the triggered trade object to prevent its accidential wrong reuse.
      }  
      return objObjectResuming;
   }   
};

class position { //+------------------------------------------------------------------+
   int cintTicket; //The ticket of an open posistion. In the trade disabled mode, the ticket encodes a trade operation: -1 is no ticket, 0/1 is buy/sell.
   int cintTicketNull;
   bool cblnTradeDisabled;
   int cintTotalnet;
   string cstrTotalnet;
   int cintSlippage;
   //KTB graphObject* labelTotalnet;
   graphObject* cobjLabelOpened;
   graphObject* cobjLabelClosed;
   graphObject* cobjLabelLots; //TO DO: labelLots shouldn't be a member of this class.
   
   void displayOpenedClosed(const string& strOperation, double dblPrice, graphObject& objOpenedClosed) { //+------------------------------------------------------------------+
      objOpenedClosed.setDescription( StringConcatenate(strOperation, " at ", formatPrice(dblPrice), /*KTB "   TN: "*/ "   ", cintTotalnet) );
      messageV( StringConcatenate(/*KTB MagicNumber, "   ",*/ objOpenedClosed.getDescription()) );
   }
   
   void getClosingPriceAndOperation(int intOperation, double& dblPrice, string& strOperation) { //+------------------------------------------------------------------+
      /*KTB const string strBought = "Close: Bought"; 
      const string strSold = "Close: Sold";*/
      const string strBought = "Bought"; 
      const string strSold = "Sold"; 
      switch(intOperation) {
         case OP_BUY: 
            dblPrice = Bid;
            strOperation = strSold; 
            break; 
         case OP_SELL: 
            dblPrice = Ask;
            strOperation = strBought;
   }  }
   
   //KTB void messageTotalnet() { labelTotalnet.setDescription(StringConcatenate("Total net: ", cintTotalnet)); } //+------------------------------------------------------------------+
   //KTB void messageLots() { labelLots.setDescription(StringConcatenate("Lots: ", Lots)); } //+------------------------------------------------------------------+
   
   void setTotalnet(int intOperation, int intLots) { //+------------------------------------------------------------------+
      cintTotalnet = cintTotalnet - (intOperation * 2 - 1) * intLots;
      GlobalVariableSet(cstrTotalnet, cintTotalnet);
      //KTB messageTotalnet();
   }
   
public:
   int getTicket() { return cintTicket; } //+------------------------------------------------------------------+
   int getTotalnet() { return cintTotalnet; } //+------------------------------------------------------------------+
   graphObject* getLabelOpened() { return cobjLabelOpened; } //+------------------------------------------------------------------+
   graphObject* getLabelClosed() { return cobjLabelClosed; } //+------------------------------------------------------------------+
   graphObject* getLabelLots() { return cobjLabelLots; } //TO DO: labelLots shouldn't be a member of this class. //+------------------------------------------------------------------+

   position() : cintTicketNull(-1), cintTotalnet(0), cstrTotalnet("Totalnet"), cintSlippage(10) { //+------------------------------------------------------------------+
      const long lngXOpendedClosed = 4;
      const long lngYOpended = 27;
      const long lngYClosed = 41;
      //KTB const long lngXTotalnet = 250;
      const long lngXLots = 200; //190;
      const long lngYLots = 0;
      if (!GlobalVariableCheck(cstrTotalnet)) GlobalVariableSet(cstrTotalnet, cintTotalnet); //Arrange saving the total net, unless arranged before.
      else cintTotalnet = (int)GlobalVariableGet(cstrTotalnet); //Get the cintTotalnet saved as a global variable unlike a member one to enable external manipulation.
      cobjLabelOpened = new graphObject("opened", lngXOpendedClosed, lngYOpended);
      cobjLabelClosed = new graphObject("closed", lngXOpendedClosed, lngYClosed);
      //KTB labelTotalnet = new graphObject("totalnet", lngXTotalnet);
      cobjLabelLots = new graphObject("lots", lngXLots, lngYLots);
      //KTB messageTotalnet();
      //KTB messageLots();
      cobjLabelLots.setDescription(Lots);
      cblnTradeDisabled = ((int)SymbolInfoInteger(_Symbol, SYMBOL_TRADE_MODE) == SYMBOL_TRADE_MODE_DISABLED); //Is trading disabled?
   }

   ~position() { // Delete the dynamically created graph objects. //+------------------------------------------------------------------+
      cobjLabelOpened.deleteFromChart();
      delete cobjLabelOpened;
      cobjLabelClosed.deleteFromChart();
      delete cobjLabelClosed;
      //KTB labelTotalnet.deleteFromChart();
      //KTB delete labelTotalnet;
      cobjLabelLots.deleteFromChart();
      delete cobjLabelLots;
   }

   void refresh() { //Are there any Channels position? +------------------------------------------------------------------+
      cintTotalnet = (int)GlobalVariableGet(cstrTotalnet); //Get the cintTotalnet saved as a global variable unlike a member one to enable external manipulation.
      if (cblnTradeDisabled) { //Is trading disabled? Get the ticket as converted from the cintTotalnet.
         if (cintTotalnet == 0) cintTicket = cintTicketNull;
         else if (cintTotalnet > 0) cintTicket = OP_BUY;
         else cintTicket = OP_SELL;
      }else{ //Get it normally.
         cintTicket = cintTicketNull;
         for (int i = 0; i < OrdersTotal(); i++) {
            if (OrderSelect(i, SELECT_BY_POS)) {
               if (OrderMagicNumber() == MagicNumber) cintTicket = OrderTicket();
               break;
   }  }  }  }
   
   bool open(int intOperation, double dblStopLoss = 0, double dblTakeProfit = 0) { //+------------------------------------------------------------------+
      /*KTB const string strBought = "Open: Bought"; 
      const string strSold = "Open: Sold";*/
      const string strBought = "Bought"; 
      const string strSold = "Sold"; 
      bool blnOpen = false;
      int intLots = 0;
		int intTotalnetAbs = MathAbs(cintTotalnet);
		int intTotalnetResult = intTotalnetAbs + Lots; //The resulting lots.
		if (intTotalnetResult <= LotsMax) intLots = Lots; //Won't the resulting lots exceed the maximum?
		else if (intTotalnetAbs == LotsMax) messageV("The maximal number of lots have been opened already before!"); //The maximum exeeded.
		else intLots = LotsMax - intTotalnetAbs; //Open lots left till the maximum.
		if (intLots > 0) { //Are there lots to open?
         double dblPrice = 0;
         string strOperation;
         switch(intOperation) {
            case OP_BUY: 
               dblPrice = Ask;
               strOperation = strBought;
               break; 
            case OP_SELL: 
               dblPrice = Bid;
               strOperation = strSold;
         }
         setTotalnet(intOperation, intLots);
         if (cblnTradeDisabled) { //Is trading disabled?
            cintTicket = intOperation;
            displayOpenedClosed(strOperation, dblPrice, cobjLabelOpened);
            cobjLabelOpened.setColourWhite();
            cobjLabelClosed.setColourGray(); //Gray it out just in case it may be still displaying a prior close price.
            blnOpen = true;
         } else {
            cintTicket = OrderSend(Symbol(), intOperation, intLots, dblPrice, cintSlippage, dblStopLoss, dblTakeProfit, StringConcatenate(/*__FILE__, " ", _Period*/ EnumToString(MagicNumber)), MagicNumber);
            if (_LastError != ERR_NO_ERROR) Alert("Order not sent. Error: ", ErrorDescription(_LastError));
            else if (OrderSelect(cintTicket, SELECT_BY_TICKET)) {
               setTotalnet(intOperation, intLots);
               displayOpenedClosed(strOperation, OrderOpenPrice(), cobjLabelOpened);
               cobjLabelOpened.setColourWhite();
               cobjLabelClosed.setColourGray(); //Gray it out just in case it may be still displaying a prior close price.
               blnOpen = true;
      }  }  }
      return blnOpen;
   }

   bool matchClosingToOpened(int intOperationClosing) { // A closing operation must match the open one. +------------------------------------------------------------------+
      bool blnMatchClosingToOpened = false;
      int intOperationOpened = msttVariousConsts.operationNull;
      if (cblnTradeDisabled) intOperationOpened = cintTicket;
      else if (OrderSelect(cintTicket, SELECT_BY_TICKET)) intOperationOpened = OrderType();
      if (BUYtoSELL(intOperationClosing) == intOperationOpened) blnMatchClosingToOpened = true;
      //KTB else messageV(StringConcatenate(msttVariousConsts.msgWrongOrder, intOperationOpened == OP_BUY ? " An OP_BUY position cannot be closed with an OP_BUYSTOP/OP_BUYLIMIT order!" : " An OP_SELL position cannot be closed with an OP_SELLSTOP/OP_SELLLIMIT order!"));
      return blnMatchClosingToOpened;  
   }

   bool close(bool blnSelectOrder, int intLots) { // Close the open position. Reselect the order (if blnSelectOrder = true), unless it has been selected right before the function call. +------------------------------------------------------------------+
      string strOperation;
      double dblPrice = 0;
      bool blnClose = false;
      if (cblnTradeDisabled) {
         setTotalnet(BUYtoSELL(cintTicket), intLots);
         blnClose = true;
         getClosingPriceAndOperation(cintTicket, dblPrice, strOperation);
         displayOpenedClosed(strOperation, dblPrice, cobjLabelClosed);
         cobjLabelClosed.setColourWhite();
         cobjLabelOpened.setColourGray();
      } else {
         bool blnOrderSelected;
         if (blnSelectOrder) blnOrderSelected = OrderSelect(cintTicket, SELECT_BY_TICKET); //Select the order (if blnSelectOrder = true), unless it has been selected right before the function call.
         else blnOrderSelected = true;
         if (blnOrderSelected) { //Is the order selected?
            setTotalnet(BUYtoSELL(OrderType()), intLots);
            getClosingPriceAndOperation(OrderType(), dblPrice, strOperation);
            if (cintTotalnet != 0) blnClose = true;
            else {
               blnClose = OrderClose(cintTicket, OrderLots(), dblPrice, cintSlippage); //Send a closing order, if the total position has been closed.
               if (_LastError != ERR_NO_ERROR) Alert("Position not closed. Error: ", ErrorDescription(_LastError));
            }
            if (blnClose) {
               displayOpenedClosed(strOperation, OrderClosePrice(), cobjLabelClosed);
               cobjLabelClosed.setColourWhite();
               cobjLabelOpened.setColourGray();
      }  }  }
      return blnClose;
   }

   datetime getOpenTime() { //+------------------------------------------------------------------+
      datetime dtmOpenTime = 0;
      if (!cblnTradeDisabled) { //If trading is disabled return 0. Otherwise get it normally. If the variable will be needed later arrange its storage and retrieval. 
         if (OrderSelect(cintTicket, SELECT_BY_TICKET)) dtmOpenTime = OrderOpenTime();         
      }
      return dtmOpenTime;
   }

   datetime getCloseTime() { //+------------------------------------------------------------------+
      datetime dtmCloseTime = 0;
      if (!cblnTradeDisabled) { //If trading is disabled return 0. Otherwise get it normally. If the variable will be needed later arrange its storage and retrieval. 
         if (OrderSelect(cintTicket, SELECT_BY_TICKET)) dtmCloseTime = OrderCloseTime();         
      }
      return dtmCloseTime;
   }

   double getOpenPrice() { //+------------------------------------------------------------------+
      double dblOpenPrice = 0;
      if (!cblnTradeDisabled) { //If trading is disabled return 0. Otherwise get it normally. If the variable will be needed later arrange its storage and retrieval. 
         if (OrderSelect(cintTicket, SELECT_BY_TICKET)) dblOpenPrice = OrderOpenPrice();         
      }
      return dblOpenPrice;
   }

   double getClosePrice() { //+------------------------------------------------------------------+
      double dblClosePrice = 0;
      if (!cblnTradeDisabled) { //If trading is disabled return 0. Otherwise get it normally. If the variable will be needed later arrange its storage and retrieval. 
         if (OrderSelect(cintTicket, SELECT_BY_TICKET)) dblClosePrice = OrderClosePrice();         
      }
      return dblClosePrice;
   }
};

class mt4QuikConnector { //+------------------------------------------------------------------+
   string strMessagePrior;
   string strDisableOjects, strClosePosition, strSetLots;
   string /*strKeyPressedEsc,*/ strKeyPressedBuySell;
   bool blnKeyPressedOperation;

public:
   bool paused;
   bool pass0;

   void mt4QuikConnector() { //Test connection on construction //TO DO: Use the member initialisation list to ininialise the class members. +------------------------------------------------------------------+
      strMessagePrior = ""; 
      strDisableOjects = "cmdDO"; //The Disable Ojects command.
      strClosePosition = "cmdCP"; //The Close Position command.
      //KTB strKeyPressedEsc = "keyES"; //The Key Esc Pressed message.
      strKeyPressedBuySell = "cmdBS"; //The Buy/Sell command.
      strSetLots = "cmdSL"; //The Set Lots command.
   };

   void passMessage(const string& strMessage) { //+------------------------------------------------------------------+
      if (TradeInQuik) { //Pass a message if trading in Quik.
         if (paused) {
            strMessagePrior = strMessage; //Is it paused? No action, just reset the pause flag. After a trade, the price of the triggered object is being changed that triggers a change event. That's why before changing the price the connector is paused to prevent both possible ambiguity in Quik and unnecessary OS overhead. //Remember the messages for future comparisons.
            paused = false; //In a pause, the message is saved.
         }else{ //If there are more than trading objects then their change events will be blocked by the current vs. prior message anti-duplication check below.
            if (strMessage != strMessagePrior || blnKeyPressedOperation) { //Pass a message, if it differs from a prior one to prevent both possible ambiguity in Quik and unnecessary OS overhead.
               if (strMessage != "0" || pass0) { //Unless a zero is explicitly passed, the last current vs. prior message anti-duplication check makes sure that reiterating "0" (it usually reiterates after having triggered in MT4) doesn't reset all the objects passed to Quik before.
                  //clnMsgToMT4QuikConnector(strMessage);
                  messsagToMTQC(strMessage);
                  strMessagePrior = strMessage; //Remember it for the later messages.
                  pass0 = false;
   }  }  }  }  }

   void passMessageV(string strMessage) { passMessage(strMessage); } //+------------------------------------------------------------------+
   void disableObjects() { passMessage(strDisableOjects); } //+------------------------------------------------------------------+
   void closePosition() { passMessage(strClosePosition); } //+------------------------------------------------------------------+

   void keyPressedOperation(int intOperation) { //+------------------------------------------------------------------+
      blnKeyPressedOperation = true; //Flag a key pressed operation to be passed through the strMessage vs. strMessagePrior check in the passMessage function.
      passMessageV(StringConcatenate(strKeyPressedBuySell, msttVariousConsts.priceSeparator, intOperation)); 
      blnKeyPressedOperation = false; //Reset the flag.
   } 
   
   void setLots(int intLots) { passMessageV( StringConcatenate(strSetLots, msttVariousConsts.priceSeparator, formatInteger(Lots, msttVariousConsts.lengthLots)) ); } //+------------------------------------------------------------------+
};

mt4QuikConnector mobjMT4QuikConnector;
objects mobjObjects();
position mobjPosition;

void message(const string& strMsg) { //+------------------------------------------------------------------+
   if(strMsg != "") Print(strMsg); //Prevent spamming the print log file with empty strings.
   Comment(strMsg);
}

void messageV(string strMsg) { message(strMsg); } //+------------------------------------------------------------------+

//KTB int roundToPts(const double& dblValue) { return (int) MathRound(dblValue / Point); } //+------------------------------------------------------------------+
//KTB int roundToPts(double dblValue) { return roundToPts(dblValue); } //+------------------------------------------------------------------+

int roundToPts(double dblValue) { return (int)MathRound(dblValue / Point); } //+------------------------------------------------------------------+

int BUYtoSELL(int intOperation) { return (int)MathAbs(intOperation - 1); } // Convert OP_BUY=0 to OP_SELL=1 and vice versa. //+------------------------------------------------------------------+

int LIMITSTOPtoBUYSELL(int intOperation) { //+------------------------------------------------------------------+
   //KTB: return (int)MathMod(intOperation, 2); // Convert OP_BUYLIMIT=2/OP_BUYSTOP=4 to OP_BUY=0 or OP_SELLLIMIT=3/OP_SELLSTOP=5 to OP_SELL=1. 
   return intOperation % 2; // Convert OP_BUYLIMIT=2/OP_BUYSTOP=4 to OP_BUY=0 or OP_SELLLIMIT=3/OP_SELLSTOP=5 to OP_SELL=1. //You should use the '%' operator on positive numbers instead, as it is much faster. @ https://maurits.tv/data/garrysmod/wiki/wiki.garrysmod.com/indexdaf1.html
}

void KTB_name_anticollision(const string& strOperation) { // Prevent name collision between an existing and newly created object. +------------------------------------------------------------------+
   if (ObjectFind(strOperation) == 0) { //Is there a trade object?
      ObjectSetString(0, strOperation, OBJPROP_NAME, StringConcatenate(strOperation, " renamed"));
      Alert("Object ", strOperation, " renamed!");
}  }

void KTB_rename_object(const string& strOperation, string strOperationRename = NULL, datetime dtmOrderTime = 0, double dblOrderPrice = 0) { // Rename a trade object and clear its description to prevent its accidential wrong reuse. +------------------------------------------------------------------+
   ObjectSetString(0, strOperation, OBJPROP_TEXT, ""); //Clear the description of the initiating trade object to prevent its accidential wrong reuse.
   ObjectSetString(0, strOperation, OBJPROP_NAME, strOperationRename != NULL ? strOperationRename : StringConcatenate(strOperation, " ", msttVariousConsts.KTB_Ticket, dtmOrderTime == 0 ? "" : StringConcatenate(" ", dtmOrderTime, " ", roundToPts(dblOrderPrice))));
}

void KTB_reopening_object(int intIdxSwapped, int intIdxReopen, double dblPriceReopen) { //Create a reopening pending object that will trigger, if the swapped support/resistance one will have triggered. +------------------------------------------------------------------+
   const string strPending = "pn";
   string strTypeReopen = mstrOperations[intIdxReopen];
   string strTypeSwapped = mstrOperations[intIdxSwapped];
   int intColour = (int) ObjectGet(strTypeSwapped, OBJPROP_COLOR);
   switch (ObjectType(strTypeSwapped)) {
      case OBJ_TREND: 
         ObjectCreate(0, strTypeReopen, OBJ_TREND, 0, (datetime) ObjectGet(strTypeSwapped, OBJPROP_TIME1), ObjectGet(strTypeSwapped, OBJPROP_PRICE1), Time[msttVariousConsts.idx0], dblPriceReopen);
         break;
      case OBJ_HLINE:
         ObjectCreate(0, strTypeReopen, OBJ_HLINE, 0, Time[msttVariousConsts.idx0], dblPriceReopen);
         break;
      case OBJ_ARROW:
         ObjectCreate(0, strTypeReopen, OBJ_ARROW, 0, Time[msttVariousConsts.idx0], dblPriceReopen);
         intColour = clrWhite;
   }
   ObjectSet(strTypeReopen, OBJPROP_COLOR, intColour);
   ObjectSetString(0, strTypeReopen, OBJPROP_TEXT, strPending);
}

/*KTB bool KTB_swap(int intIdx) { //Swap a support/resistance. +------------------------------------------------------------------+
   const int intIdxNull = -1;
   int intIdxSwap = intIdxNull;
   if (intIdx == OP_BUYSTOP - OP_BUYLIMIT || intIdx == OP_SELLSTOP - OP_BUYLIMIT) { //Swap only OP_BUYSTOP/OP_SELLSTOP.
      if ( MessageBox("Swap support/resistance?", StringSubstr(__FILE__, 0, StringLen(__FILE__) - 5), MB_YESNOCANCEL | MB_ICONQUESTION) == IDYES || GlobalVariableGet(msttVariousConsts.KTB_Swap) == msttVariousConsts.KTB_SwapYes ) { //Swap the support/resistance?
         RefreshRates();
         double dblPeak = 0;
         switch (intIdx + OP_BUYLIMIT ) {
            case OP_BUYSTOP:
              intIdxSwap = OP_SELLSTOP - OP_BUYLIMIT; //The trade operation to swap to.
              dblPeak = High[msttVariousConsts.idx0]; //The peak to place the reopening trade object at.
              break;
            case OP_SELLSTOP:
              intIdxSwap = OP_BUYSTOP - OP_BUYLIMIT; //The trade operation to swap to.
              dblPeak = Low[msttVariousConsts.idx0]; //The peak to place the reopening trade object at.
         }
         KTB_name_anticollision(mstrOperations[intIdxSwap]);
         KTB_rename_object(mstrOperations[intIdx], mstrOperations[intIdxSwap]);
         KTB_reopening_object(intIdxSwap, intIdx, dblPeak); //Create a reopening pending object that will trigger, if the swapped support/resistance one will have triggered.
      }  
   }
   return intIdxSwap != intIdxNull;
}*/

void alert(graphObject& labelOpenedClosed) { //Show a triggered alert. +------------------------------------------------------------------+
   const string strAlert = "Alert: ";
   string strMessage = StringConcatenate(strAlert, mobjObjects.getObjectTriggered().name, " ", formatPrice(mobjObjects.getObjectTriggered().getPrice()));
   messageV(StringConcatenate(/*KTB MagicNumber, "   ",*/ strMessage));
   labelOpenedClosed.setDescription(strMessage);
}

void playSound() { /*messageV("playSound");*/ PlaySound("alert.wav"); } //+------------------------------------------------------------------+

void setDisplayPause() { //+------------------------------------------------------------------+
   mobjObjects.set(); //Reset the objectes after the operation.
   mobjObjects.displayPrices(mobjPosition.getTotalnet()); //Dispay the close prices of all the trade objectes. If there is none don't display anyting.
   mobjMT4QuikConnector.paused = true; //After a trade, the price of the triggered object is being changed that triggers a change event. That's why before changing the price the connector is paused to prevent both possible ambiguity in Quik and unnecessary OS overhead.
}

void runOpen() { // The open procedure of the run fucntion. +------------------------------------------------------------------+
   mobjObjects.displayPrices(mobjPosition.getTotalnet());
   //*object objObjectTriggered = mobjObjects.getObjectTriggered();
   //*object objObjectTriggered(mobjObjects.getObjectTriggered());
   if (mobjObjects.getObjectTriggered() != NULL) { //Has any trading object triggered?
      if (mobjObjects.getObjectTriggered().getAlert()) {
         alert(mobjPosition.getLabelOpened()); //Alert and skip opening while doing all the same operations as if it's opening.
         mobjPosition.getLabelOpened().setColourWhite();
         mobjPosition.getLabelClosed().setColourGray(); //Gray it out just in case it may be still displaying a prior close price.
         mobjObjects.getObjectTriggered().rename(); //Rename the trade object to prevent its accidential wrong reuse.
      }else{
         int intOperation = mobjObjects.getObjectTriggered().getOperationBuySell();
         if (mobjPosition.open(intOperation)) { //Fulfill an operation, unless it's just an alert.
            mobjObjects.renameAll(mobjObjects.getObjectTriggered().name, false);
            /*if (!KTB_swap(i))*/ mobjObjects.getObjectTriggered().rename(NULL, mobjPosition.getTicket(), mobjPosition.getOpenTime(), mobjPosition.getOpenPrice());  //No swapping? //Rename the trade object to prevent its accidential wrong reuse. ///////////////CORRECT IT!
      }  }
      setDisplayPause();
}  }

void run() { //Trade by managing objects and positions. Refresh objects, unless they've been refreshed right before the function call. +------------------------------------------------------------------+
   mobjPosition.refresh();
   mobjObjects.scanTriggered(); //Refresh objects.
   if (mobjPosition.getTotalnet() == 0) runOpen(); //Is there no Channels position? Check to open one.
   else { //There is an open position. Check to close it.
      mobjObjects.displayPrices(mobjPosition.getTotalnet());
      if (mobjObjects.getObjectTriggered() != NULL) { //Check to close a Channels position.
         if ( !mobjPosition.matchClosingToOpened(mobjObjects.getObjectTriggered().getOperationBuySell()) ) runOpen(); //This is an additionial opening.
         else { //Does the closing operation match the open one?
            if (mobjObjects.getObjectTriggered().getAlert()) {
               alert(mobjPosition.getLabelClosed()); //Alert and skip closing while doing all the same operations as if it's closing.
               mobjPosition.getLabelClosed().setColourWhite();
               mobjPosition.getLabelOpened().setColourGray();
               mobjObjects.getObjectTriggered().rename(); //Rename the trade object to prevent its accidential wrong reuse.
               setDisplayPause();
            }else{
               //KTB mobjMT4QuikConnector.closePosition(); //OFF mode. //Important: first pass object prices to Quik and then run the expert advisor in MT4 becuase the latter may call cause a CHARTEVENT_OBJECT_CHANGE evern or another one.
               if (mobjPosition.close(false, mobjObjects.getObjectTriggered().getReversing() ? MathAbs(mobjPosition.getTotalnet()) : Lots)) {
                  string strOperationSkip = "";
                  if (mobjObjects.getObjectTriggered().getResuming()) { //Is resuming required? 
                     object* objObjectResuming = NULL;
                     objObjectResuming = mobjObjects.createResuming(); //Remember the trade operation index of the opened position.
                     strOperationSkip = objObjectResuming.name;
                  }else if (mobjObjects.getObjectTriggered().getReversing()) { //Is reversing required?
                     RefreshRates();
                     mobjPosition.open(mobjObjects.getObjectTriggered().getOperationBuySell()); //Reverse, i.e. open a position to the same direction as the closing one.
                  }
                  mobjObjects.getObjectTriggered().rename(NULL, mobjPosition.getTicket(), mobjPosition.getCloseTime(), mobjPosition.getClosePrice()); //Rename the trade object to prevent its accidential wrong reuse.
                  mobjObjects.renameAll(strOperationSkip, false); //Rename all trade objects except a skipped one to prevent their accidential wrong reuse.
                  setDisplayPause();
}  }  }  }  }  }

bool isAnyObjectSelected(string& strSingleObject) { // Return true if any object is selected. If there is only one selected return its name. +------------------------------------------------------------------+
   strSingleObject = "";
   int intCount = 0; //The selected objects count.
   for (int i = 0; i < ObjectsTotal(); i++) { //Find selected objects.
      string strObjectName = ObjectName(i);
      graphObject objGraphObject(strObjectName);
      if (objGraphObject.isSelected()) { //Is it selected?
         if (intCount++ == 0) strSingleObject = strObjectName; //Remember the object selected.
         else {
            strSingleObject = "";
            break; //Stop, if there are more than one object selected.
   }  }  }
   return intCount > 0;
}

void setMessageRun() { // Set object, pass a message to Quik, and run the program. +------------------------------------------------------------------+
   mobjObjects.set();
   mobjMT4QuikConnector.passMessageV(mobjObjects.getPricesForQuik()); //Important: first pass object prices to Quik and then run the expert advisor in MT4 becuase the latter may change the objects on closing by reversing/resuming.
   run();
}

void OnTick() { // +------------------------------------------------------------------+
   if (mobjObjects.getTimeSet() == Time[msttVariousConsts.idx0]) run(); //Call only run() within each given bar.
   else { //The time the setMessageRun() was called is less than the current bar time.
      mobjObjects.setTimeSet(Time[msttVariousConsts.idx0]); //Remember the time the time when setMessageRun() is being called.
      setMessageRun();
}  }

void enableObjectCreateDeleteEvents(ENUM_CHART_PROPERTY_INTEGER intCreateDelete) { // Enables the mode of sending messages concerning the event of a graphic object creation to all mql4 applications on the chart. //+------------------------------------------------------------------+
   ResetLastError();
   if (!ChartSetInteger(0, intCreateDelete, true)) Alert(__FUNCTION__ + ", Error Code = ", GetLastError()); // Enables the mode of sending messages concerning the event of a graphic object creation/deletion to all mql4 applications on the chart. 
}

void renameGraphObjects() { // Rename all the graph objects whose names are an operation. +------------------------------------------------------------------+
   for (int i = 0; i < ArraySize(mstrOperations); i++) {
      string strName = mstrOperations[i];
      if (ObjectFind(strName) == 0) { //Is there a graph object with an operation name?
         graphObject objGraphObject(strName);
         objGraphObject.rename_(StringConcatenate(strName, anticollisionAffix()));
}  }  }

void reset() { // A full reset: reset the advisor and close a position, if any. +------------------------------------------------------------------+
   //KTB if ( MessageBox("Reset the advisor and close a position, if any?", StringSubstr(__FILE__, 0, StringLen(__FILE__) - 5), MB_YESNOCANCEL | MB_ICONQUESTION) == IDYES ) { //Disable all the objects?
      mobjMT4QuikConnector.disableObjects(); //Important: first pass object prices to Quik and then run the expert advisor in MT4 becuase the latter may call cause a CHARTEVENT_OBJECT_CHANGE evern or another one.      
      mobjObjects.renameAll("", true);
      mobjObjects.set(); //Reset the objectes after the operation.
      mobjPosition.refresh();
      mobjPosition.getLabelOpened().setDescription("");
      mobjPosition.getLabelClosed().setDescription("");
      mobjMT4QuikConnector.closePosition(); //TO DO: Pass this command to Quik after a short pause unlike the two commands at a millisecond. The second command will not be executed in Quik. //Important: first pass object prices to Quik and then run the expert advisor in MT4 becuase the latter may call cause a CHARTEVENT_OBJECT_CHANGE evern or another one.
      if (mobjPosition.getTicket() >= 0) mobjPosition.close(true, Lots); //Is there a Channels position in MT4 to be closed?
      renameGraphObjects(); //Rename all the graph objects whose names are trading.
      messageV(""); //Clear the comment line.
   //KTB }  
}

bool confirmOperation(string strMessage) { // Conffirm an operation with a message box, if the safety lock is enabled. +------------------------------------------------------------------+
   if (GlobalVariableGet(msttVariousConsts.safetyLock) == 0) return true; //The safety lock is off, no confirmation is needed.
   else return MessageBox(strMessage, StringSubstr(__FILE__, 0, StringLen(__FILE__) - 5), MB_YESNOCANCEL | MB_ICONQUESTION) == IDYES;
}

bool closePosition(bool blnPassCmdToQuik) { // Close an open position, if any. If required pass the Close Position command to Quik. +------------------------------------------------------------------+
   mobjPosition.refresh();
   if (mobjPosition.getTicket() < 0) return false; //Is there no Channels position to be closed?
   else { 
      if (confirmOperation("Close the open position?")) { //Close the open position?
         if (blnPassCmdToQuik) mobjMT4QuikConnector.closePosition(); //Important: first pass object prices to Quik and then run the expert advisor in MT4 becuase the latter may call cause a CHARTEVENT_OBJECT_CHANGE evern or another one.
         mobjPosition.close(true, MathAbs(mobjPosition.getTotalnet()));
         playSound();
      }
      return true;
}  }

void disableObjects() { // Disable all the objects and close a position, if any. The function is distinct just to keep the programme similar to the QLua counterpart. +------------------------------------------------------------------+
   mobjMT4QuikConnector.disableObjects(); //Important: first pass object prices to Quik and then run the expert advisor in MT4 becuase the latter may call cause a CHARTEVENT_OBJECT_CHANGE evern or another one.
   mobjObjects.renameAll("", true);
   mobjObjects.set(); //Reset the objectes after the operation.
   messageV("Objects disabled");
}

void keyPressedEsc() { // Esc pressed to unselect all objects / disable them / close position. +------------------------------------------------------------------+
   string _;
   if (isAnyObjectSelected(_)) postMessage(wmEsc); //Is any object selected to be unselected? //Графики -> Объекты -> Снять все выделения @ http://ruforum.mt5.com/threads/892-arhiv-mql4-besplatnoe-napisanie-programm?p=10823666&viewfull=1 and @ http://forum.mql4.com/ru/9807
   //else if (mobjObjects.getCount(true) > 0) { //Is there any object to be disabled?
   else if (mobjObjects.getCount() > 0) { //Is there any object to be disabled?
      //KTB if ( MessageBox("Disable all the objects?", StringSubstr(__FILE__, 0, StringLen(__FILE__) - 5), MB_YESNOCANCEL | MB_ICONQUESTION) == IDYES ) {
      disableObjects();
      //KTB }
   } else if (!closePosition(true)) reset(); //Close an open position, if any, or otherwise run a full reset.
}

void keyPressedF5() { // F5 pressed to refresh. +------------------------------------------------------------------+
   if ( MessageBox("Refresh the expert advisor?\nCAUTION: An operation might get triggered in Quik!", StringSubstr(__FILE__, 0, StringLen(__FILE__) - 5), MB_YESNOCANCEL | MB_ICONEXCLAMATION) == IDYES ) setMessageRun();
}

void keyPressedOperationOpen(int intOperation) { // The open procedure of the keyPressedOperation fucntion. +------------------------------------------------------------------+
   if (confirmOperation("Open a position?")) { //Open a position?
      mobjMT4QuikConnector.keyPressedOperation(intOperation); //Important: first pass object prices to Quik and then run the expert advisor in MT4 becuase the latter may change the objects on closing by reversing/resuming.
      if (mobjPosition.open(intOperation)) { //Open a buy position.
         playSound();
         mobjObjects.renameAll("", false);
         mobjObjects.set(); //Reset the objects after the operation.
      }
   }  
}

void keyPressedOperation(int intOperation) { // KeyArrowUp/KeyB/KeyArrowDown/KeyS pressed to buy or sell. +------------------------------------------------------------------+
   mobjPosition.refresh();
   if (mobjPosition.getTicket() < 0) keyPressedOperationOpen(intOperation); //Is there no Channels position? 
   else { //Check to close a Channels position.
      if (confirmOperation("Close the open position?")) { //Close the open position?
         mobjMT4QuikConnector.keyPressedOperation(intOperation); //Important: first pass object prices to Quik and then run the expert advisor in MT4 becuase the latter may change the objects on closing by reversing/resuming.      
         if (! mobjPosition.matchClosingToOpened(intOperation) ) keyPressedOperationOpen(intOperation); //The open procedure of the keyPressedOperation fucntion.
         else { //Does the closing operation match the open one?
            if (mobjPosition.close(false, Lots)) { //Has a position been closed?  //Reset the objects.
               mobjObjects.renameAll("", false);
               playSound();
               mobjObjects.set(); //Reset the objectes after the operation.
}  }  }  }  }

/*KTB void deleteSelectedObjects() { // Delete all selected objects. +------------------------------------------------------------------+
   for (int i = ObjectsTotal(); i >= 0; i--) { //Find selected objects. Loop backwards because deleting causes skipping a following object after the one being deleted.
      graphObject objGraphObject(ObjectName(i));
      if (objGraphObject.isSelected()) objGraphObject.deleteFromChart(); //Is it selected?
   }
}*/

bool moveObject(int intKeyNavigation) { // Move selected objects up by the up arrow key press +------------------------------------------------------------------+
   string strObjectMoved;
   isAnyObjectSelected(strObjectMoved);
   if (strObjectMoved != "") { //Contunue, if there is only one object selected.
      graphObject objGraphObjectMoved(strObjectMoved);
      if (objGraphObjectMoved.isMovable()) { //Conitnue, if the object movable.
         switch (intKeyNavigation) {
            case keyArrowUp: case keyR: objGraphObjectMoved.moveUp(); break;//Move a selected object up.
            case keyArrowDown: case keyF: objGraphObjectMoved.moveDown(); break; //Move a selected object down.
            case keyArrowLeft: case keyA: objGraphObjectMoved.moveLeft(); break;//Move a selected object up.
            case keyArrowRight: case keyG: objGraphObjectMoved.moveRight(); //Move a selected object down.
      }  }
      return true;
   }
   return false;
}

void renameLimitStop(graphObject& objLimitStop, string strName) { // Rename a graph object into a buy/sell limit/stop preventing a name collision. +------------------------------------------------------------------+
   object* objObject = mobjObjects.item(strName);
   if (objObject != NULL) { //Prevent name collision between an existing and newly created object.
      if (objObject.isSelected()) return; //Is the single selected object the target operation itself? No renaming.
      else objObject.rename(); //Rename it.
   }
   objLimitStop.rename_(strName);
   objLimitStop.setDescription(msttVariousConsts.alertFlag);
}

void setLimitStop(graphObject& objLimitStop, int intOperation) { // Set an object selected as a buy limit/stop. +------------------------------------------------------------------+
   switch (intOperation) {
      case OP_BUY:
         if (objLimitStop.getPrice() < Bid) renameLimitStop(objLimitStop, mstrOperations[OP_BUYLIMIT - OP_BUYLIMIT]); //Buy limit.
         else renameLimitStop(objLimitStop, mstrOperations[OP_BUYSTOP - OP_BUYLIMIT]); //Buy stop.
         break;
      case OP_SELL:
         if (objLimitStop.getPrice() > Bid) renameLimitStop(objLimitStop, mstrOperations[OP_SELLLIMIT - OP_BUYLIMIT]); //Sell limit.
         else renameLimitStop(objLimitStop, mstrOperations[OP_SELLSTOP - OP_BUYLIMIT]); //Sell stop.
   }
   setMessageRun(); //Refresh the advisor.
}

void tradeOrOrder(int intOperation) { // Buy/sell or make a limit/stop order. +------------------------------------------------------------------+
   string strSelected;
   isAnyObjectSelected(strSelected);
   if (strSelected == "") keyPressedOperation(intOperation); //No object selected - buy/sell.
   else {
      graphObject objSelected(strSelected);
      if (objSelected.isOperational()) setLimitStop(objSelected, intOperation); //Is it operational? Set an object selected as a buy limit/stop.
      else keyPressedOperation(intOperation); //Not operational - buy.
      objSelected.setUnselected(); //Unselect it not to exclude it from a later considaration again.
}  }

void setTrade() { // Set the selected object decription to the trade flag. +------------------------------------------------------------------+
   string strSelected;
   isAnyObjectSelected(strSelected);
   if (strSelected != "") { //Is a sinlge object selected.
      object* objObject = mobjObjects.item(strSelected);
      if (objObject != NULL) { //Does such an object exist?
         objObject.setDescription("");
         objObject.setUnselected();
         setMessageRun(); //Refresh the advisor.
}  }  }

/*KTB
void setTradePendingReversal(string strDescription) { // Set the selected object decription to the trade/pending/reversal flag. +------------------------------------------------------------------+
   string strSelected;
   isAnyObjectSelected(strSelected);
   if (strSelected != "") { //Is a sinlge object selected.
      object* objObject = mobjObjects.item(strSelected);
      if (objObject != NULL) { //Does such an object exist?
         objObject.setDescription(strDescription);
         objObject.setUnselected();
         setMessageRun(); //Refresh the advisor.
}  }  }*/

void cancelObjectDo(const string& strSelected) { // Implement canceling the seleced object. +------------------------------------------------------------------+
   object* objObject = mobjObjects.item(strSelected);
   if (objObject != NULL) { //Does such an object exist?
      objObject.rename();
      objObject.setUnselected();
      setMessageRun(); //Refresh the advisor.
   }else{ //Unflag a graphical objcect, if it's operational.
      graphObject objSelected(strSelected);
      if (objSelected.isOperational()) {
         objSelected.setDescription("");
         objSelected.setUnselected();
}  }  }

void cancelObject() { // Cancel the seleced object. +------------------------------------------------------------------+
   string strSelected;
   isAnyObjectSelected(strSelected);
   if (strSelected != "") cancelObjectDo(strSelected); //Is only one object selected? // Implement canceling the seleced object.
}

void setLotsV() { //Set lots or a volume flag to an object. +------------------------------------------------------------------+
   string strSelected;
   if (!isAnyObjectSelected(strSelected)) setLots(keyV); //Is ther no object selected?
   else if (strSelected != "") { //Is only one object selected? 
      const string strVolumeFlag = "v"; //The folume flag.
      graphObject objSelected(strSelected);
      if (objSelected.isOperational()) {
         cancelObjectDo(strSelected); // Implement canceling the seleced object.
         objSelected.setDescription(strVolumeFlag); //Is it operational?
}  }  }

int decodeNumber(int intKey) { // Decode a number from a number key. +------------------------------------------------------------------+
   switch (intKey) {
      case key1: case key1Num: return 1;
      case key2: case key2Num: return 2;
      case key3: case key3Num: return 3;
      case key4: case key4Num: return 4;
      case key5: case key5Num: return 5;
      case key6: case key6Num: return 6;
      case key7: case key7Num: return 7;
      case key8: case key8Num: return 8;
      case key9: case key9Num: return 9;
      default: return 0;
}  }

void setLots(int intKey) { // Set the number of the lots to trade within a single transaction. +------------------------------------------------------------------+
   switch (mobjPosition.getLabelLots().getColour()) {
      case clrWhite: //Gray it out to begin to set the colour.
         if (intKey == keyV) {
            mobjPosition.getLabelLots().setColourGray(); //Gray it out to begin to set the colour.
            mobjPosition.getLabelLots().setDescription(""); //Erase the content of the label to enter a new number of lots from scratch.
         }
         break;
      case clrGray: { //White it out to end to set the colour.
         string strLots = mobjPosition.getLabelLots().getDescription();
         if (intKey !=keyV && intKey != keyEnter) mobjPosition.getLabelLots().setDescription( StringConcatenate(strLots, decodeNumber(intKey)) ); //Enter the numbers of the lots.
         else {
            mobjPosition.getLabelLots().setColourWhite(); //White it out to end to set the colour.
            if (strLots == "") mobjPosition.getLabelLots().setDescription(Lots); //Unless entered, fill in the label with the prior number of lots.
            else { //Remember a new number of lots.
               int intLots = (int)strLots;
               if (intLots > LotsMax) { //The entered number of lots should not exeed the maximum.
                  if (intKey == keyEnter) keybd_event(keyEsc, 0, 0, 0); //Close the Fast Navigation box the Enter key has opened.
                  MessageBox("The number of lots should not exeed the maximum!", StringSubstr(__FILE__, 0, StringLen(__FILE__) - 5), MB_ICONEXCLAMATION); 
               }else if (intKey == keyEnter) keybd_event(keyEsc, 0, 0, 0); //Close the Fast Navigation box the Enter key has opened.
               Lots = intLots;
               GlobalVariableSet(msttVariousConsts.lots, Lots); //Arrange saving the lots.
               mobjMT4QuikConnector.setLots(intLots);
}  }  }  }  }

void savePicture() { // Save the chart as a picture. Affix its name with the indicator letter and/or day time frame letter. +------------------------------------------------------------------+
   const ENUM_TIMEFRAMES  intPeriodMax = PERIOD_H4;
   const string strIndicator = "Alligator(13,8,5)"; //The indicator sought that the picture file name will be affixed with.
   const string strDayAffix = " d"; //The day affix.
   string strIndicatortLetter1 = StringConcatenate(" ",  StringSubstr(strIndicator, 0, 1)); //The 1st letter of the indicator sought.
   StringToLower(strIndicatortLetter1); //Lower the 1st letter.
   datetime dtmTimeLocal = TimeLocal();
   //string strPictureName = formatInteger(TimeHour(dtmTimeLocal), msttVariousConsts.lengthHrMinSec) + formatInteger(TimeMinute(dtmTimeLocal), msttVariousConsts.lengthHrMinSec); //The current hour and the minute.
   string strPictureName = formatInteger(TimeHour(dtmTimeLocal), msttVariousConsts.lengthHrMinSec) + " " + formatInteger(TimeMinute(dtmTimeLocal), msttVariousConsts.lengthHrMinSec); //The current hour and the minute.
   //KTB bool blnAffixed = false;
   strPictureName = StringConcatenate(strPictureName, " ", formatInteger(TimeSeconds(dtmTimeLocal), msttVariousConsts.lengthHrMinSec)); //Affix it with the seconds.
   if (containsIndicator(ChartID(), strIndicator)) { //Does a chart contain an indicator on the main chart subwindow? 
      StringAdd(strPictureName, strIndicatortLetter1); //Affix the indicator letter.
      //KTB blnAffixed = true;
   }
   if (Period() > intPeriodMax) { //Is the timeframe larger than the maximal one needed? 
      StringAdd(strPictureName, strDayAffix); //Affix it with the day affix.
      //KTB blnAffixed = true;
   }
   //KTB if (!blnAffixed) strPictureName = StringConcatenate(strPictureName, " ", formatInteger(TimeSeconds(dtmTimeLocal), msttVariousConsts.lengthHrMinSec)); //Affix it with the day affix.
   //clnTextToClipboard(StringConcatenate(strPictureName, " ")); //Put the file name to the clipboard. Add " " at the end because by some reason the last symbol gets lost when putting into the clipboard.
   textToClipboard(StringConcatenate(strPictureName, " ")); //Put the file name to the clipboard. Add " " at the end because by some reason the last symbol gets lost when putting into the clipboard.
   postMessage(wmSavePicture); //Call the Save as picture menu command.
   keybd_event(keyEnter, 0, 0, 0); //Press Enter in the the Save as picture dialogue box.
   //Sleep(700/*1000*/); //Sleep to let yourself press Ctrl and hold it till V gets pressed below.
   //int intCtrlVsleep = 0;
   Sleep((int)GlobalVariableGet(msttVariousConsts.CtrlVsleep));
   //KTB (It doesn't work) keybd_event(vkCtrl,0x9D, 0 , 0); // Simulating a Ctrl+V keystroke to place the file name into the file save dialogue box. // Ctrl Press @ http://www.codeproject.com/Articles/7305/Keyboard-Events-Simulation-using-keybd-event-funct
   keybd_event(keyV, 0xAF, 0 , 0); // ‘V’ Press
   /*KTB (It doesn't work) keybd_event(keyV, 0xAF, KEYEVENTF_KEYUP, 0); // ‘V’ Release
   KTB (It doesn't work) keybd_event(vkCtrl, 0x9D, KEYEVENTF_KEYUP, 0);*/ // Ctrl Release
}

void login() { // Login to an account using EA @ https://www.mql5.com/en/forum/110932/page2 //+------------------------------------------------------------------+
   const int intPasswordLengthMax = 8; //The length of the password.
   const int intSleep = 500; //The total time the login dialogue box will be displayed.
   int hterminal = GetAncestor(WindowHandle(Symbol(), Period()), 2);          
   if(hterminal != 0) {
      int hwindow = GetLastActivePopup(hterminal);
      PostMessageA(hwindow, WM_COMMAND, wmLogin, 0); // OR use PostMessageA (hwindow, WM_COMMAND, 0x8A65,-0x30107D); //Open Login dialog window
      /*KTB (it doesn't work) if (hwindow != 0) {
         PostMessageA(hwindow, WM_COMMAND, vkTab, 0); //Cursor first field
         PostMessageA(hwindow, WM_COMMAND, vkTab, 0); //Cursor to password field
      }*/  
      if (!IsConnected()) {
         Sleep(intSleep / 2);
         keybd_event(keyEnter, 0, 0, 0); //Press Enter, unless connected, to start connecting.
      }else { //Disconnect.
         int intSleepStep = intSleep / (intPasswordLengthMax + 2); //A single sleep session per disconnecting step to let MT4 digest key strokes.
         Sleep(intSleepStep);
         keybd_event(keyTab, 0, 0, 0); //Naviate to the password textbox.
         for (int i=0; i < intPasswordLengthMax; i++) {
            Sleep(intSleepStep);
            keybd_event(keyDel, 0, 0, 0); //Press Del as many times as the number of symbols in the longest password.
         }
         Sleep(intSleepStep);
         keybd_event(keyEnter, 0, 0, 0); //Press Enter to start disconnecting.
}  }  }

long chartWindowsHandle(long lngChartID) { // Chart window handle (HWND) //Как в скрипте активировать окно с нужным символом? @ https://www.mql5.com/ru/forum/22244 +------------------------------------------------------------------+
   long lgnResult = -1; // Prepare the variable to get the property value
   ResetLastError(); // Reset the error value
   if (!ChartGetInteger(lngChartID, CHART_WINDOW_HANDLE, 0, lgnResult)) Print(__FUNCTION__ + ", Error Code = ", GetLastError()); // Receive the property value // Display the error message in Experts journal
   return(lgnResult); // Return the value of the chart property
}

void showWindow(long lngChartID, enmNCmdShow intShow) { ShowWindow( GetParent((int)chartWindowsHandle(lngChartID)), intShow ); } // Show a window. // ShowWindow. 1 - Activates and displays a window. 2 - Activates the window and displays it as a minimized window. 3 - Activates the window and displays it as a maximized window. +------------------------------------------------------------------+

void maximizeOrRestore(enmNCmdShow intShow) { // Maximize or restore the current window. Save the last state. +------------------------------------------------------------------+
  showWindow(ChartID(), intShow); //Show the current window.
  GlobalVariableSet(msttVariousConsts.activateMaximizeRestore, intShow);
}

void maximizeOrRestoreSwitch() { // Switch maximizing or restoring the current window. Save the last state. +------------------------------------------------------------------+
   if (!GlobalVariableCheck(msttVariousConsts.activateMaximizeRestore)) GlobalVariableSet(msttVariousConsts.activateMaximizeRestore, showNormal); //Check/set the last window state.
   switch ((enmNCmdShow)GlobalVariableGet(msttVariousConsts.activateMaximizeRestore)) {
      case showNormal: maximizeOrRestore(showMaximized); break;
      case showMaximized: maximizeOrRestore(showNormal);
   }
   keybd_event(keyEnter, 0, 0, 0); //Press Enter before pressing Esc. Otherwise the advisor process Esc as an ordinary Esc resetting (cancels objects, deselects them, etc.). 
   keybd_event(keyEsc, 0, 0, 0); //Close the Fast Navigation box the Space key has opened.
}

void OnChartEvent(const int id, const long &lparam, const double &dparam, const string &sparam) { //+------------------------------------------------------------------+
   int intOperation = msttVariousConsts.operationNull;
   switch (id) {
      case CHARTEVENT_OBJECT_CREATE: case CHARTEVENT_OBJECT_CHANGE: case CHARTEVENT_OBJECT_DRAG: {
         graphObject objGraphObject(sparam);
         objGraphObject.setRoundPrice();
         setMessageRun();
         } 
         break;
      case CHARTEVENT_OBJECT_DELETE:
         //if (mobjObjects.count == 1) mobjMT4QuikConnector.pass0 = true;
         if (mobjObjects.getCount() == 1) mobjMT4QuikConnector.pass0 = true;
         setMessageRun();
         break;
      case CHARTEVENT_KEYDOWN: {
         int intLparam = (int)lparam;
         switch(intLparam) {
            case keyEsc: keyPressedEsc(); break; //Escape pressed? //Unselect all objects / disable them / close position. 
            case keyR: if (moveObject(intLparam)) setMessageRun(); break; //Move a selected object up. //Refresh the advisor.
            case keyF: if (moveObject(intLparam)) setMessageRun(); break; //Move a selected object down. //Refresh the advisor.            
            case keyArrowUp: case keyArrowDown:
               keybd_event(keyEnd, 0, 0, 0); //Return the chart back by simulating an End key stroke after pressing a navigation key.
               if (moveObject(intLparam)) setMessageRun(); //Move a selected object up. //Refresh the advisor. 
               break;
            case keyB: tradeOrOrder(OP_BUY); break; //Buy or make a limit/stop order. 
            case keyS: tradeOrOrder(OP_SELL); break; //Sell or make a limit/stop order. 
            case keyT: setTrade(); break; // Set the selected object decription to the trade flag.
            /*KTB case keyP: setTradePendingReversal("p"); break; // Set the selected object decription to the pending flag.
            case keyL: setTradePendingReversal("r"); break;*/ // Set the selected object decription to the reversing flag.
            case keyC: cancelObject(); break; //Cancel the seleced object.
            case keyArrowLeft: case keyArrowRight: case keyA: case keyG: if (moveObject(intLparam)) keybd_event(keyEnd, 0, 0, 0); break; //Return the chart back by simulating an End key stroke after pressing a navigation key.
            case keyF5: keyPressedF5(); break;
            case keyD: keybd_event(keyDel, 0, 0, 0); break; //Delete selected objects by pressing the Del key. Unlike the deleteSelectedObjects function the Del key enables restoring the objects deleted by pressing Ctrl+Z.
            case keyV: setLotsV(); break;
            case keyEnter: setLots(intLparam); break;
            case keyZ: postMessage(wmCrossHair); break;
            case keyQ: postMessage(wmTrend); break;
            case keyW: postMessage(wmHLine); break;
            case keyE: postMessage(wmLeftArrow); break;
            case keyX: savePicture(); break; // Save the chart as a picture.
            case keyTab: login(); break; //Open the login dialogue box.
            case keySpace: maximizeOrRestoreSwitch(); break;
            default: 
               //KTB messageV(StringConcatenate("lparam: ", lparam));
               if ( (intLparam >= key0 && intLparam <= key9) || (intLparam >= key0Num && intLparam <= key9Num) ) setLots(intLparam);
}  }  }  }

/*KTB string Trans2QuikResultToStr(int Num) {
    string strTrans2QuikResultToStr;
    if (Num == 0) strTrans2QuikResultToStr = "TRANS2QUIK_SUCCESS";
    if (Num == 1) strTrans2QuikResultToStr = "TRANS2QUIK_FAILED";
    if (Num == 2) strTrans2QuikResultToStr = "TRANS2QUIK_QUIK_TERMINAL_NOT_FOUND";
    if (Num == 3) strTrans2QuikResultToStr = "TRANS2QUIK_DLL_VERSION_NOT_SUPPORTED";
    if (Num == 4) strTrans2QuikResultToStr = "TRANS2QUIK_ALREADY_CONNECTED_TO_QUIK";
    if (Num == 5) strTrans2QuikResultToStr = "TRANS2QUIK_WRONG_SYNTAX";
    if (Num == 6) strTrans2QuikResultToStr = "TRANS2QUIK_QUIK_NOT_CONNECTED";
    if (Num == 7) strTrans2QuikResultToStr = "TRANS2QUIK_DLL_NOT_CONNECTED";
    if (Num == 8) strTrans2QuikResultToStr = "TRANS2QUIK_QUIK_CONNECTED";
    if (Num == 9) strTrans2QuikResultToStr = "TRANS2QUIK_QUIK_DISCONNECTED";
    if (Num == 10) strTrans2QuikResultToStr = "TRANS2QUIK_DLL_CONNECTED";
    if (Num == 11) strTrans2QuikResultToStr = "TRANS2QUIK_DLL_DISCONNECTED";
    if (Num == 12) strTrans2QuikResultToStr = "TRANS2QUIK_MEMORY_ALLOCATION_ERROR";
    if (Num == 13) strTrans2QuikResultToStr = "TRANS2QUIK_WRONG_CONNECTION_HANDLE";
    if (Num == 14) strTrans2QuikResultToStr = "TRANS2QUIK_WRONG_INPUT_PARAMS";
    return strTrans2QuikResultToStr;
}*/

void OnInit() { //+------------------------------------------------------------------+
   const int intCtrlVsleep = 700;
   if (!GlobalVariableCheck(msttVariousConsts.lots)) GlobalVariableSet(msttVariousConsts.lots, Lots); //Arrange saving the lots, unless arranged before.
   if (!GlobalVariableCheck(msttVariousConsts.safetyLock)) GlobalVariableSet(msttVariousConsts.safetyLock, 1); //Arrange saving the safety lock, unless arranged before.
   if (!GlobalVariableCheck(msttVariousConsts.CtrlVsleep)) GlobalVariableSet(msttVariousConsts.CtrlVsleep, intCtrlVsleep); 
   msttVariousConsts.formatDecimals = StringConcatenate(".", _Digits, "f"); //'".", _Digits' denotes _Digits decimal digits after the decimal point, 'f' denotes a double number type.
   /*KTB GlobalVariableTemp(msttVariousConsts.KTB_Swap);
   GlobalVariableSet(msttVariousConsts.KTB_Swap, msttVariousConsts.KTB_SwapNo);*/
   enableObjectCreateDeleteEvents(CHART_EVENT_OBJECT_CREATE); // Enables the mode of sending messages concerning the event of a graphic object creation to all mql4 applications on the chart. 
   enableObjectCreateDeleteEvents(CHART_EVENT_OBJECT_DELETE); // Enables the mode of sending messages concerning the event of a graphic object deletion to all mql4 applications on the chart. 
   mobjObjects.setTimeSet(0);
   setMessageRun();
   /*KTB string PathToInfo = "C:\\Program Files (x86)\\BCS_Work\\QUIK 2\\";
   int pnExtendedErrorCode = 0;
   string lpstrErrorMessage = "";
   const int dwErrorMessageSize = 250;
   int FunctionResult = TRANS2QUIK_CONNECT(PathToInfo, pnExtendedErrorCode, lpstrErrorMessage, dwErrorMessageSize);
   string FunctionResultString = Trans2QuikResultToStr(FunctionResult);
   messageV( StringConcatenate( "FunctionResult = ", FunctionResult, "\nFunctionResultString = ", FunctionResultString, "\npnExtendedErrorCode = ", pnExtendedErrorCode, "\nlpstrErrorMessage = ", lpstrErrorMessage, "\nPathToInfo = ", PathToInfo) );*/
}

void OnDeinit(const int reason) { //+------------------------------------------------------------------+
   messageV(""); //Clear any prior comments, if any.
}
