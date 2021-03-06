#include <WinUser32.mqh>
#import "MT4QuikConnector.dll"
   void clnTextToClipboard(string); // Copy text to clipboard. @ http://www.cplusplus.com/forum/beginner/14349/
#import "user32.dll"
   //KTB int GetParent(int hWnd);
   int GetLastActivePopup(int hWnd);
   int GetAncestor(int hWnd, int gaFlags);    
   //KTB int GetDlgItem(int hDlg, int nIDDlgItem);
   void keybd_event(int bVk, int bScan, int dwFlags, int dwExtraInfo); //http://www.forexfactory.com/showthread.php?t=468143        http://www.codeproject.com/Articles/7305/Keyboard-Events-Simulation-using-keybd-event-funct
#import   
#property strict

enum enmKeys { keyTab = 9, keyEnter = 13, keyEsc = 27, keySpace = 32, keyEnd = 35, keyArrowLeft = 37, keyArrowUp, keyArrowRight, keyArrowDown, keyDel = 46, key0 = 48, key1, key2, key3, key4, key5, key6, key7, key8, key9,  keyA = 65, keyB, keyC, keyD, keyE, keyF, keyG, keyQ = 81, keyR, keyS = 83, keyT, keyV = 86, keyW, keyX, keyZ = 90, key0Num = 96, key1Num, key2Num, key3Num, key4Num, key5Num, key6Num, key7Num, key8Num, key9Num, /*keyNumMinus = 109, keyNumSlash = 111,*/ keyF5 = 116 /*keyTilde 192*/};
enum enmWM { wmSavePicture = 33054, wmCrossHair = 33233, wmHLine = 33244, wmTrend = 33257, wmLogin = 35429, wmEsc = 35462, wmLeftArrow }; //The PostMessageA codes @ https://forum.mql4.com/ru/14463
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
33238 - вставка-Фибоначчи-дуги
33239 - вставка-Фибоначчи-веер
33240 - вставка-каналы-Фибоначчи
33241 - вставка-Ганн-сетка Ганна
33242 - вставка-Ганн-линия Ганна
33243 - вставка-Ганн-веер Ганна
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
34700 - индикаторы-moving average of oscillator
34701 - индикаторы-accelerator oscillator
34702 - индикаторы-accumulation/distribution 
34703 - индикаторы-alligator
34704 - индикаторы-average directional movement index
34705 - индикаторы-average true range
34706 - индикаторы-awesome oscillator
34707 - индикаторы-bears power
34708 - индикаторы-bollinger bands
34709 - индикаторы-bulls power
34710 - индикаторы-commodity channel index
34711 - индикаторы-demarker
34712 - индикаторы-envelopes
34713 - индикаторы-force index
34714 - индикаторы-fractals
34715 - индикаторы-gator oscillator
34716 - индикаторы-ichimoku kinko hyo
34717 - индикаторы-macd
34718 - индикаторы-market facilitation index
34719 - индикаторы-momentum
34720 - индикаторы-money flow index
34721 - индикаторы-moving averages
34722 - индикаторы-on balance volume
34723 - индикаторы-parabolic sar
34724 - индикаторы-relative strength index
34725 - индикаторы-relative vigor index
34726 - индикаторы-standard deviation
34727 - индикаторы-stochastic oscillator
34728 - индикаторы-volumes
34729 - индикаторы-william's percent range
35400 - таймфрейм H1
35454 - ордер buylimit
35455 - ордер buystop
35456 - ордер selllimit
35457 - ордер sellstop
35458 - новый ордер F9
35464 - правая ценовая метка ////////// 4
35511 - графики-шаблоны-загрузить шаблон /////////
57602 - закрыть текущий график */

struct variables { 
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
   const string tradeFlag;
   const string activateMaximizeRestore;
   const string CtrlVsleep;
   /*KTB const string KTB_Swap; 
   const int KTB_SwapYes; 
   const int KTB_SwapNo;*/
   int KTB_Ticket; 
}; 
variables msttVariousConsts = {
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
   "t",
   "ActivateMaximizeRestore",
   "CtrlVsleep",
   /*KTB "Swap_Yes1_No0",     
   1,                      
   0,*/                
}; 

string formatInteger(int intNumber, int intLength) { return StringFormat( StringConcatenate("%0", intLength, "u"), intNumber ); } // Format an interger number with a specified length and if necessa leading zeroes. //"%06.2f" - "0" denotes leading zeroes (e.g. 099), '6' denotes the width (e.g. 123.45), '.2' denotes 2 decimal digits after the decimal point, 'f' denotes a double number type ('u' - unsigned decimal integer ). +------------------------------------------------------------------+

void postMessage(enmWM wmCommand) { PostMessageA(WindowHandle(Symbol(), Period()), WM_COMMAND, wmCommand, 0); } // The PostMessageA command. +------------------------------------------------------------------+

bool containsIndicator(long lngChartID, string strIndicatorName) { // Does a chart contain an indicator on the main chart subwindow? +------------------------------------------------------------------+
   const int intSubWindow = 0; //Look up the indicarot on the main chart subwindow only.
   for (int i = 0; i < ChartIndicatorsTotal(lngChartID, intSubWindow); i++) { //Look up the indicarot on the main chart subwindow only sub_window of ChartIndicatorsTotal = 0.
      if (ChartIndicatorName(lngChartID, intSubWindow, i) == strIndicatorName) return true; //Is this the indicator sought?
   }
   return false;
}

class graphObject { //+------------------------------------------------------------------+
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
   graphObject(string strName) : name(strName) { name = strName; } //https://www.mql5.com/en/forum/7383 +------------------------------------------------------------------+
   
   graphObject(string strNameArrow, datetime dtmTime1, double dblPrice1) : name(strNameArrow) { // Create a new arrow. +------------------------------------------------------------------+
      name = strNameArrow;
      ObjectCreate(0, strNameArrow, OBJ_ARROW, 0, dtmTime1, dblPrice1); //Place a buy/sell stop at ResumeRange points above/below the current price.
      setColourWhite();
   } 
   
   graphObject(string strNameLabel, long lngX, long lngY) : name(strNameLabel) { // Create a label. +------------------------------------------------------------------+
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

//bool isAnyObjectSelected() { // Return true, if at least one object is selected. +------------------------------------------------------------------+
//   for (int i = 0; i < ObjectsTotal(); i++) {
//      graphObject objGraphObject(ObjectName(i));
//      if (objGraphObject.isSelected()) return true;
//   }
//   return false;    
//}

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

void keyPressedEsc() { // +------------------------------------------------------------------+
   string _;
   if (isAnyObjectSelected(_)) postMessage(wmEsc); //Is any object selected to be unselected? //Графики -> Объекты -> Снять все выделения @ http://ruforum.mt5.com/threads/892-arhiv-mql4-besplatnoe-napisanie-programm?p=10823666&viewfull=1 and @ http://forum.mql4.com/ru/9807
}

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
   clnTextToClipboard(StringConcatenate(strPictureName, " ")); //Put the file name to the clipboard. Add " " at the end because by some reason the last symbol gets lost when putting into the clipboard.
   postMessage(wmSavePicture); //Call the Save as picture menu command.
   keybd_event(keyEnter, 0, 0, 0); //Press Enter in the the Save as picture dialogue box.
   //Sleep(700/*1000*/); //Sleep to let yourself press Ctrl and hold it till V gets pressed below.
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
      } 
      case CHARTEVENT_KEYDOWN: 
         switch((int)lparam) {
            case keyEsc: keyPressedEsc(); break; //Escape pressed? //Unselect all objects / disable them / close position. 
            case keyR: moveObject((int)lparam); break; //Move a selected object up.
            case keyF: moveObject((int)lparam); break; //Move a selected object down.
            case keyArrowUp: case keyArrowDown:
               keybd_event(keyEnd, 0, 0, 0); //Return the chart back by simulating an End key stroke after pressing a navigation key.
               moveObject((int)lparam); 
               break;  //Move a selected object up.
            case keyArrowLeft: case keyArrowRight: case keyA: case keyG: if (moveObject((int)lparam)) keybd_event(keyEnd, 0, 0, 0); break; //Return the chart back by simulating an End key stroke after pressing a navigation key.
            case keyD: keybd_event(keyDel, 0, 0, 0); break; //Delete selected objects by pressing the Del key. Unlike the deleteSelectedObjects function the Del key enables restoring the objects deleted by pressing Ctrl+Z.
            case keyZ: postMessage(wmCrossHair); break;
            case keyQ: postMessage(wmTrend); break;
            case keyW: postMessage(wmHLine); break;
            case keyE: postMessage(wmLeftArrow); break;
            case keyX: savePicture(); break; // Save the chart as a picture.
            case keyTab: login(); break; //Open the login dialogue box.
            case keySpace: maximizeOrRestoreSwitch(); break;
}  }     }     

void enableObjectCreateDeleteEvents(ENUM_CHART_PROPERTY_INTEGER intCreateDelete) { // Enables the mode of sending messages concerning the event of a graphic object creation to all mql4 applications on the chart. //+------------------------------------------------------------------+
   ResetLastError();
   if (!ChartSetInteger(0, intCreateDelete, true)) Alert(__FUNCTION__ + ", Error Code = ", GetLastError()); // Enables the mode of sending messages concerning the event of a graphic object creation/deletion to all mql4 applications on the chart. 
}

void OnInit() { //+------------------------------------------------------------------+
   const int intCtrlVsleep = 700;
   enableObjectCreateDeleteEvents(CHART_EVENT_OBJECT_CREATE); // Enables the mode of sending messages concerning the event of a graphic object creation to all mql4 applications on the chart. 
   if (!GlobalVariableCheck(msttVariousConsts.CtrlVsleep)) GlobalVariableSet(msttVariousConsts.CtrlVsleep, intCtrlVsleep); 
}