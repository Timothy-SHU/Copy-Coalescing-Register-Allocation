; ModuleID = 'blender_bin/source/blender/makesrna/intern/rna_wm_gen.c'
source_filename = "blender_bin/source/blender/makesrna/intern/rna_wm_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.CollectionPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PropertyRNA = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, i32, ptr, i32, [3 x i32], i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.StructRNA = type { %struct.ContainerRNA, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase }
%struct.ContainerRNA = type { ptr, ptr, ptr, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.PointerPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr }
%struct.StringPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.BoolPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.EnumPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.FunctionRNA = type { %struct.ContainerRNA, ptr, i32, ptr, ptr, ptr }
%struct.FloatPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, float, float, float, float, float, i32, float, ptr }
%struct.IntPropertyRNA = type { %struct.PropertyRNA, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.CollectionPropertyIterator = type { %struct.PointerRNA, %struct.PointerRNA, ptr, %union.anon, i32, i32, %struct.PointerRNA, i32 }
%union.anon = type { %struct.ArrayIterator }
%struct.ArrayIterator = type { ptr, ptr, ptr, i32, i32, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperatorTypeMacro = type { ptr, ptr, [64 x i8], ptr, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmTimer = type { ptr, ptr, ptr, double, i32, ptr, double, double, double, double, double, i32 }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmKeyConfig = type { ptr, ptr, [64 x i8], [64 x i8], %struct.ListBase, i32, i32 }
%struct.wmKeyMap = type { ptr, ptr, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, ptr, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%union.IDPropertyTemplate = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, i16, i8 }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"LEFTMOUSE\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Left Mouse\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"MIDDLEMOUSE\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Middle Mouse\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"RIGHTMOUSE\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Right Mouse\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"BUTTON4MOUSE\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Button4 Mouse\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"BUTTON5MOUSE\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Button5 Mouse\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"BUTTON6MOUSE\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Button6 Mouse\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"BUTTON7MOUSE\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Button7 Mouse\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"ACTIONMOUSE\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"Action Mouse\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"SELECTMOUSE\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Select Mouse\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"MOUSEMOVE\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"Mouse Move\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"INBETWEEN_MOUSEMOVE\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"In-between Move\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"TRACKPADPAN\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"Mouse/Trackpad Pan\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"TRACKPADZOOM\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"Mouse/Trackpad Zoom\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"MOUSEROTATE\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"Mouse/Trackpad Rotate\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"WHEELUPMOUSE\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"Wheel Up\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"WHEELDOWNMOUSE\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"Wheel Down\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"WHEELINMOUSE\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"Wheel In\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"WHEELOUTMOUSE\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"Wheel Out\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"EVT_TWEAK_L\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"Tweak Left\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"EVT_TWEAK_M\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"Tweak Middle\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"EVT_TWEAK_R\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"Tweak Right\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"EVT_TWEAK_A\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"Tweak Action\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"EVT_TWEAK_S\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"Tweak Select\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.66 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"ZERO\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"ONE\00", align 1
@.str.77 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"TWO\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"THREE\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"FOUR\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"FIVE\00", align 1
@.str.85 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"SIX\00", align 1
@.str.87 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"SEVEN\00", align 1
@.str.89 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"EIGHT\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"NINE\00", align 1
@.str.93 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"LEFT_CTRL\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"Left Ctrl\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"LEFT_ALT\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"Left Alt\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"LEFT_SHIFT\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"Left Shift\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"RIGHT_ALT\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"Right Alt\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"RIGHT_CTRL\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"Right Ctrl\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c"RIGHT_SHIFT\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"Right Shift\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"OSKEY\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"OS Key\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"GRLESS\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"Grless\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"ESC\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"Esc\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"TAB\00", align 1
@.str.113 = private unnamed_addr constant [4 x i8] c"Tab\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"RET\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"Return\00", align 1
@.str.116 = private unnamed_addr constant [6 x i8] c"SPACE\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"Spacebar\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"LINE_FEED\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"Line Feed\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"BACK_SPACE\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"Back Space\00", align 1
@.str.122 = private unnamed_addr constant [4 x i8] c"DEL\00", align 1
@.str.123 = private unnamed_addr constant [7 x i8] c"Delete\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"SEMI_COLON\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"PERIOD\00", align 1
@.str.127 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.128 = private unnamed_addr constant [6 x i8] c"COMMA\00", align 1
@.str.129 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"QUOTE\00", align 1
@.str.131 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"ACCENT_GRAVE\00", align 1
@.str.133 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"MINUS\00", align 1
@.str.135 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"SLASH\00", align 1
@.str.137 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.138 = private unnamed_addr constant [11 x i8] c"BACK_SLASH\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"EQUAL\00", align 1
@.str.141 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c"LEFT_BRACKET\00", align 1
@.str.143 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.144 = private unnamed_addr constant [14 x i8] c"RIGHT_BRACKET\00", align 1
@.str.145 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.146 = private unnamed_addr constant [11 x i8] c"LEFT_ARROW\00", align 1
@.str.147 = private unnamed_addr constant [11 x i8] c"Left Arrow\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"DOWN_ARROW\00", align 1
@.str.149 = private unnamed_addr constant [11 x i8] c"Down Arrow\00", align 1
@.str.150 = private unnamed_addr constant [12 x i8] c"RIGHT_ARROW\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"Right Arrow\00", align 1
@.str.152 = private unnamed_addr constant [9 x i8] c"UP_ARROW\00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"Up Arrow\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"NUMPAD_2\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"Numpad 2\00", align 1
@.str.156 = private unnamed_addr constant [9 x i8] c"NUMPAD_4\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"Numpad 4\00", align 1
@.str.158 = private unnamed_addr constant [9 x i8] c"NUMPAD_6\00", align 1
@.str.159 = private unnamed_addr constant [9 x i8] c"Numpad 6\00", align 1
@.str.160 = private unnamed_addr constant [9 x i8] c"NUMPAD_8\00", align 1
@.str.161 = private unnamed_addr constant [9 x i8] c"Numpad 8\00", align 1
@.str.162 = private unnamed_addr constant [9 x i8] c"NUMPAD_1\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"Numpad 1\00", align 1
@.str.164 = private unnamed_addr constant [9 x i8] c"NUMPAD_3\00", align 1
@.str.165 = private unnamed_addr constant [9 x i8] c"Numpad 3\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c"NUMPAD_5\00", align 1
@.str.167 = private unnamed_addr constant [9 x i8] c"Numpad 5\00", align 1
@.str.168 = private unnamed_addr constant [9 x i8] c"NUMPAD_7\00", align 1
@.str.169 = private unnamed_addr constant [9 x i8] c"Numpad 7\00", align 1
@.str.170 = private unnamed_addr constant [9 x i8] c"NUMPAD_9\00", align 1
@.str.171 = private unnamed_addr constant [9 x i8] c"Numpad 9\00", align 1
@.str.172 = private unnamed_addr constant [14 x i8] c"NUMPAD_PERIOD\00", align 1
@.str.173 = private unnamed_addr constant [9 x i8] c"Numpad .\00", align 1
@.str.174 = private unnamed_addr constant [13 x i8] c"NUMPAD_SLASH\00", align 1
@.str.175 = private unnamed_addr constant [9 x i8] c"Numpad /\00", align 1
@.str.176 = private unnamed_addr constant [15 x i8] c"NUMPAD_ASTERIX\00", align 1
@.str.177 = private unnamed_addr constant [9 x i8] c"Numpad *\00", align 1
@.str.178 = private unnamed_addr constant [9 x i8] c"NUMPAD_0\00", align 1
@.str.179 = private unnamed_addr constant [9 x i8] c"Numpad 0\00", align 1
@.str.180 = private unnamed_addr constant [13 x i8] c"NUMPAD_MINUS\00", align 1
@.str.181 = private unnamed_addr constant [9 x i8] c"Numpad -\00", align 1
@.str.182 = private unnamed_addr constant [13 x i8] c"NUMPAD_ENTER\00", align 1
@.str.183 = private unnamed_addr constant [13 x i8] c"Numpad Enter\00", align 1
@.str.184 = private unnamed_addr constant [12 x i8] c"NUMPAD_PLUS\00", align 1
@.str.185 = private unnamed_addr constant [9 x i8] c"Numpad +\00", align 1
@.str.186 = private unnamed_addr constant [3 x i8] c"F1\00", align 1
@.str.187 = private unnamed_addr constant [3 x i8] c"F2\00", align 1
@.str.188 = private unnamed_addr constant [3 x i8] c"F3\00", align 1
@.str.189 = private unnamed_addr constant [3 x i8] c"F4\00", align 1
@.str.190 = private unnamed_addr constant [3 x i8] c"F5\00", align 1
@.str.191 = private unnamed_addr constant [3 x i8] c"F6\00", align 1
@.str.192 = private unnamed_addr constant [3 x i8] c"F7\00", align 1
@.str.193 = private unnamed_addr constant [3 x i8] c"F8\00", align 1
@.str.194 = private unnamed_addr constant [3 x i8] c"F9\00", align 1
@.str.195 = private unnamed_addr constant [4 x i8] c"F10\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"F11\00", align 1
@.str.197 = private unnamed_addr constant [4 x i8] c"F12\00", align 1
@.str.198 = private unnamed_addr constant [4 x i8] c"F13\00", align 1
@.str.199 = private unnamed_addr constant [4 x i8] c"F14\00", align 1
@.str.200 = private unnamed_addr constant [4 x i8] c"F15\00", align 1
@.str.201 = private unnamed_addr constant [4 x i8] c"F16\00", align 1
@.str.202 = private unnamed_addr constant [4 x i8] c"F17\00", align 1
@.str.203 = private unnamed_addr constant [4 x i8] c"F18\00", align 1
@.str.204 = private unnamed_addr constant [4 x i8] c"F19\00", align 1
@.str.205 = private unnamed_addr constant [6 x i8] c"PAUSE\00", align 1
@.str.206 = private unnamed_addr constant [6 x i8] c"Pause\00", align 1
@.str.207 = private unnamed_addr constant [7 x i8] c"INSERT\00", align 1
@.str.208 = private unnamed_addr constant [7 x i8] c"Insert\00", align 1
@.str.209 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.210 = private unnamed_addr constant [5 x i8] c"Home\00", align 1
@.str.211 = private unnamed_addr constant [8 x i8] c"PAGE_UP\00", align 1
@.str.212 = private unnamed_addr constant [8 x i8] c"Page Up\00", align 1
@.str.213 = private unnamed_addr constant [10 x i8] c"PAGE_DOWN\00", align 1
@.str.214 = private unnamed_addr constant [10 x i8] c"Page Down\00", align 1
@.str.215 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.216 = private unnamed_addr constant [4 x i8] c"End\00", align 1
@.str.217 = private unnamed_addr constant [11 x i8] c"MEDIA_PLAY\00", align 1
@.str.218 = private unnamed_addr constant [17 x i8] c"Media Play/Pause\00", align 1
@.str.219 = private unnamed_addr constant [11 x i8] c"MEDIA_STOP\00", align 1
@.str.220 = private unnamed_addr constant [11 x i8] c"Media Stop\00", align 1
@.str.221 = private unnamed_addr constant [12 x i8] c"MEDIA_FIRST\00", align 1
@.str.222 = private unnamed_addr constant [12 x i8] c"Media First\00", align 1
@.str.223 = private unnamed_addr constant [11 x i8] c"MEDIA_LAST\00", align 1
@.str.224 = private unnamed_addr constant [11 x i8] c"Media Last\00", align 1
@.str.225 = private unnamed_addr constant [10 x i8] c"TEXTINPUT\00", align 1
@.str.226 = private unnamed_addr constant [11 x i8] c"Text Input\00", align 1
@.str.227 = private unnamed_addr constant [18 x i8] c"WINDOW_DEACTIVATE\00", align 1
@.str.228 = private unnamed_addr constant [18 x i8] c"Window Deactivate\00", align 1
@.str.229 = private unnamed_addr constant [6 x i8] c"TIMER\00", align 1
@.str.230 = private unnamed_addr constant [6 x i8] c"Timer\00", align 1
@.str.231 = private unnamed_addr constant [7 x i8] c"TIMER0\00", align 1
@.str.232 = private unnamed_addr constant [8 x i8] c"Timer 0\00", align 1
@.str.233 = private unnamed_addr constant [7 x i8] c"TIMER1\00", align 1
@.str.234 = private unnamed_addr constant [8 x i8] c"Timer 1\00", align 1
@.str.235 = private unnamed_addr constant [7 x i8] c"TIMER2\00", align 1
@.str.236 = private unnamed_addr constant [8 x i8] c"Timer 2\00", align 1
@.str.237 = private unnamed_addr constant [11 x i8] c"TIMER_JOBS\00", align 1
@.str.238 = private unnamed_addr constant [11 x i8] c"Timer Jobs\00", align 1
@.str.239 = private unnamed_addr constant [15 x i8] c"TIMER_AUTOSAVE\00", align 1
@.str.240 = private unnamed_addr constant [15 x i8] c"Timer Autosave\00", align 1
@.str.241 = private unnamed_addr constant [13 x i8] c"TIMER_REPORT\00", align 1
@.str.242 = private unnamed_addr constant [13 x i8] c"Timer Report\00", align 1
@.str.243 = private unnamed_addr constant [12 x i8] c"TIMERREGION\00", align 1
@.str.244 = private unnamed_addr constant [13 x i8] c"Timer Region\00", align 1
@.str.245 = private unnamed_addr constant [12 x i8] c"NDOF_MOTION\00", align 1
@.str.246 = private unnamed_addr constant [12 x i8] c"NDOF Motion\00", align 1
@.str.247 = private unnamed_addr constant [17 x i8] c"NDOF_BUTTON_MENU\00", align 1
@.str.248 = private unnamed_addr constant [10 x i8] c"NDOF Menu\00", align 1
@.str.249 = private unnamed_addr constant [16 x i8] c"NDOF_BUTTON_FIT\00", align 1
@.str.250 = private unnamed_addr constant [9 x i8] c"NDOF Fit\00", align 1
@.str.251 = private unnamed_addr constant [16 x i8] c"NDOF_BUTTON_TOP\00", align 1
@.str.252 = private unnamed_addr constant [9 x i8] c"NDOF Top\00", align 1
@.str.253 = private unnamed_addr constant [19 x i8] c"NDOF_BUTTON_BOTTOM\00", align 1
@.str.254 = private unnamed_addr constant [12 x i8] c"NDOF Bottom\00", align 1
@.str.255 = private unnamed_addr constant [17 x i8] c"NDOF_BUTTON_LEFT\00", align 1
@.str.256 = private unnamed_addr constant [10 x i8] c"NDOF Left\00", align 1
@.str.257 = private unnamed_addr constant [18 x i8] c"NDOF_BUTTON_RIGHT\00", align 1
@.str.258 = private unnamed_addr constant [11 x i8] c"NDOF Right\00", align 1
@.str.259 = private unnamed_addr constant [18 x i8] c"NDOF_BUTTON_FRONT\00", align 1
@.str.260 = private unnamed_addr constant [11 x i8] c"NDOF Front\00", align 1
@.str.261 = private unnamed_addr constant [17 x i8] c"NDOF_BUTTON_BACK\00", align 1
@.str.262 = private unnamed_addr constant [10 x i8] c"NDOF Back\00", align 1
@.str.263 = private unnamed_addr constant [17 x i8] c"NDOF_BUTTON_ISO1\00", align 1
@.str.264 = private unnamed_addr constant [17 x i8] c"NDOF Isometric 1\00", align 1
@.str.265 = private unnamed_addr constant [17 x i8] c"NDOF_BUTTON_ISO2\00", align 1
@.str.266 = private unnamed_addr constant [17 x i8] c"NDOF Isometric 2\00", align 1
@.str.267 = private unnamed_addr constant [20 x i8] c"NDOF_BUTTON_ROLL_CW\00", align 1
@.str.268 = private unnamed_addr constant [13 x i8] c"NDOF Roll CW\00", align 1
@.str.269 = private unnamed_addr constant [21 x i8] c"NDOF_BUTTON_ROLL_CCW\00", align 1
@.str.270 = private unnamed_addr constant [14 x i8] c"NDOF Roll CCW\00", align 1
@.str.271 = private unnamed_addr constant [20 x i8] c"NDOF_BUTTON_SPIN_CW\00", align 1
@.str.272 = private unnamed_addr constant [13 x i8] c"NDOF Spin CW\00", align 1
@.str.273 = private unnamed_addr constant [21 x i8] c"NDOF_BUTTON_SPIN_CCW\00", align 1
@.str.274 = private unnamed_addr constant [14 x i8] c"NDOF Spin CCW\00", align 1
@.str.275 = private unnamed_addr constant [20 x i8] c"NDOF_BUTTON_TILT_CW\00", align 1
@.str.276 = private unnamed_addr constant [13 x i8] c"NDOF Tilt CW\00", align 1
@.str.277 = private unnamed_addr constant [21 x i8] c"NDOF_BUTTON_TILT_CCW\00", align 1
@.str.278 = private unnamed_addr constant [14 x i8] c"NDOF Tilt CCW\00", align 1
@.str.279 = private unnamed_addr constant [19 x i8] c"NDOF_BUTTON_ROTATE\00", align 1
@.str.280 = private unnamed_addr constant [12 x i8] c"NDOF Rotate\00", align 1
@.str.281 = private unnamed_addr constant [20 x i8] c"NDOF_BUTTON_PANZOOM\00", align 1
@.str.282 = private unnamed_addr constant [14 x i8] c"NDOF Pan/Zoom\00", align 1
@.str.283 = private unnamed_addr constant [21 x i8] c"NDOF_BUTTON_DOMINANT\00", align 1
@.str.284 = private unnamed_addr constant [14 x i8] c"NDOF Dominant\00", align 1
@.str.285 = private unnamed_addr constant [17 x i8] c"NDOF_BUTTON_PLUS\00", align 1
@.str.286 = private unnamed_addr constant [10 x i8] c"NDOF Plus\00", align 1
@.str.287 = private unnamed_addr constant [18 x i8] c"NDOF_BUTTON_MINUS\00", align 1
@.str.288 = private unnamed_addr constant [11 x i8] c"NDOF Minus\00", align 1
@.str.289 = private unnamed_addr constant [16 x i8] c"NDOF_BUTTON_ESC\00", align 1
@.str.290 = private unnamed_addr constant [9 x i8] c"NDOF Esc\00", align 1
@.str.291 = private unnamed_addr constant [16 x i8] c"NDOF_BUTTON_ALT\00", align 1
@.str.292 = private unnamed_addr constant [9 x i8] c"NDOF Alt\00", align 1
@.str.293 = private unnamed_addr constant [18 x i8] c"NDOF_BUTTON_SHIFT\00", align 1
@.str.294 = private unnamed_addr constant [11 x i8] c"NDOF Shift\00", align 1
@.str.295 = private unnamed_addr constant [17 x i8] c"NDOF_BUTTON_CTRL\00", align 1
@.str.296 = private unnamed_addr constant [10 x i8] c"NDOF Ctrl\00", align 1
@.str.297 = private unnamed_addr constant [14 x i8] c"NDOF_BUTTON_1\00", align 1
@.str.298 = private unnamed_addr constant [14 x i8] c"NDOF Button 1\00", align 1
@.str.299 = private unnamed_addr constant [14 x i8] c"NDOF_BUTTON_2\00", align 1
@.str.300 = private unnamed_addr constant [14 x i8] c"NDOF Button 2\00", align 1
@.str.301 = private unnamed_addr constant [14 x i8] c"NDOF_BUTTON_3\00", align 1
@.str.302 = private unnamed_addr constant [14 x i8] c"NDOF Button 3\00", align 1
@.str.303 = private unnamed_addr constant [14 x i8] c"NDOF_BUTTON_4\00", align 1
@.str.304 = private unnamed_addr constant [14 x i8] c"NDOF Button 4\00", align 1
@.str.305 = private unnamed_addr constant [14 x i8] c"NDOF_BUTTON_5\00", align 1
@.str.306 = private unnamed_addr constant [14 x i8] c"NDOF Button 5\00", align 1
@.str.307 = private unnamed_addr constant [14 x i8] c"NDOF_BUTTON_6\00", align 1
@.str.308 = private unnamed_addr constant [14 x i8] c"NDOF Button 6\00", align 1
@.str.309 = private unnamed_addr constant [14 x i8] c"NDOF_BUTTON_7\00", align 1
@.str.310 = private unnamed_addr constant [14 x i8] c"NDOF Button 7\00", align 1
@.str.311 = private unnamed_addr constant [14 x i8] c"NDOF_BUTTON_8\00", align 1
@.str.312 = private unnamed_addr constant [14 x i8] c"NDOF Button 8\00", align 1
@.str.313 = private unnamed_addr constant [14 x i8] c"NDOF_BUTTON_9\00", align 1
@.str.314 = private unnamed_addr constant [14 x i8] c"NDOF Button 9\00", align 1
@.str.315 = private unnamed_addr constant [15 x i8] c"NDOF_BUTTON_10\00", align 1
@.str.316 = private unnamed_addr constant [15 x i8] c"NDOF Button 10\00", align 1
@.str.317 = private unnamed_addr constant [14 x i8] c"NDOF_BUTTON_A\00", align 1
@.str.318 = private unnamed_addr constant [14 x i8] c"NDOF Button A\00", align 1
@.str.319 = private unnamed_addr constant [14 x i8] c"NDOF_BUTTON_B\00", align 1
@.str.320 = private unnamed_addr constant [14 x i8] c"NDOF Button B\00", align 1
@.str.321 = private unnamed_addr constant [14 x i8] c"NDOF_BUTTON_C\00", align 1
@.str.322 = private unnamed_addr constant [14 x i8] c"NDOF Button C\00", align 1
@event_type_items = dso_local global [196 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.2, i32 0, ptr @.str.3, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.4, i32 0, ptr @.str.5, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.1 }, %struct.EnumPropertyItem { i32 7, ptr @.str.8, i32 0, ptr @.str.9, ptr @.str.1 }, %struct.EnumPropertyItem { i32 8, ptr @.str.10, i32 0, ptr @.str.11, ptr @.str.1 }, %struct.EnumPropertyItem { i32 18, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.1 }, %struct.EnumPropertyItem { i32 19, ptr @.str.14, i32 0, ptr @.str.15, ptr @.str.1 }, %struct.EnumPropertyItem { i32 5, ptr @.str.16, i32 0, ptr @.str.17, ptr @.str.1 }, %struct.EnumPropertyItem { i32 6, ptr @.str.18, i32 0, ptr @.str.19, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 4, ptr @.str.20, i32 0, ptr @.str.21, ptr @.str.1 }, %struct.EnumPropertyItem { i32 17, ptr @.str.22, i32 0, ptr @.str.23, ptr @.str.1 }, %struct.EnumPropertyItem { i32 14, ptr @.str.24, i32 0, ptr @.str.25, ptr @.str.1 }, %struct.EnumPropertyItem { i32 15, ptr @.str.26, i32 0, ptr @.str.27, ptr @.str.1 }, %struct.EnumPropertyItem { i32 16, ptr @.str.28, i32 0, ptr @.str.29, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 10, ptr @.str.30, i32 0, ptr @.str.31, ptr @.str.1 }, %struct.EnumPropertyItem { i32 11, ptr @.str.32, i32 0, ptr @.str.33, ptr @.str.1 }, %struct.EnumPropertyItem { i32 12, ptr @.str.34, i32 0, ptr @.str.35, ptr @.str.1 }, %struct.EnumPropertyItem { i32 13, ptr @.str.36, i32 0, ptr @.str.37, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 20483, ptr @.str.38, i32 0, ptr @.str.39, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20484, ptr @.str.40, i32 0, ptr @.str.41, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20485, ptr @.str.42, i32 0, ptr @.str.43, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20486, ptr @.str.44, i32 0, ptr @.str.45, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20487, ptr @.str.46, i32 0, ptr @.str.47, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 97, ptr @.str.48, i32 0, ptr @.str.48, ptr @.str.1 }, %struct.EnumPropertyItem { i32 98, ptr @.str.49, i32 0, ptr @.str.49, ptr @.str.1 }, %struct.EnumPropertyItem { i32 99, ptr @.str.50, i32 0, ptr @.str.50, ptr @.str.1 }, %struct.EnumPropertyItem { i32 100, ptr @.str.51, i32 0, ptr @.str.51, ptr @.str.1 }, %struct.EnumPropertyItem { i32 101, ptr @.str.52, i32 0, ptr @.str.52, ptr @.str.1 }, %struct.EnumPropertyItem { i32 102, ptr @.str.53, i32 0, ptr @.str.53, ptr @.str.1 }, %struct.EnumPropertyItem { i32 103, ptr @.str.54, i32 0, ptr @.str.54, ptr @.str.1 }, %struct.EnumPropertyItem { i32 104, ptr @.str.55, i32 0, ptr @.str.55, ptr @.str.1 }, %struct.EnumPropertyItem { i32 105, ptr @.str.56, i32 0, ptr @.str.56, ptr @.str.1 }, %struct.EnumPropertyItem { i32 106, ptr @.str.57, i32 0, ptr @.str.57, ptr @.str.1 }, %struct.EnumPropertyItem { i32 107, ptr @.str.58, i32 0, ptr @.str.58, ptr @.str.1 }, %struct.EnumPropertyItem { i32 108, ptr @.str.59, i32 0, ptr @.str.59, ptr @.str.1 }, %struct.EnumPropertyItem { i32 109, ptr @.str.60, i32 0, ptr @.str.60, ptr @.str.1 }, %struct.EnumPropertyItem { i32 110, ptr @.str.61, i32 0, ptr @.str.61, ptr @.str.1 }, %struct.EnumPropertyItem { i32 111, ptr @.str.62, i32 0, ptr @.str.62, ptr @.str.1 }, %struct.EnumPropertyItem { i32 112, ptr @.str.63, i32 0, ptr @.str.63, ptr @.str.1 }, %struct.EnumPropertyItem { i32 113, ptr @.str.64, i32 0, ptr @.str.64, ptr @.str.1 }, %struct.EnumPropertyItem { i32 114, ptr @.str.65, i32 0, ptr @.str.65, ptr @.str.1 }, %struct.EnumPropertyItem { i32 115, ptr @.str.66, i32 0, ptr @.str.66, ptr @.str.1 }, %struct.EnumPropertyItem { i32 116, ptr @.str.67, i32 0, ptr @.str.67, ptr @.str.1 }, %struct.EnumPropertyItem { i32 117, ptr @.str.68, i32 0, ptr @.str.68, ptr @.str.1 }, %struct.EnumPropertyItem { i32 118, ptr @.str.69, i32 0, ptr @.str.69, ptr @.str.1 }, %struct.EnumPropertyItem { i32 119, ptr @.str.70, i32 0, ptr @.str.70, ptr @.str.1 }, %struct.EnumPropertyItem { i32 120, ptr @.str.71, i32 0, ptr @.str.71, ptr @.str.1 }, %struct.EnumPropertyItem { i32 121, ptr @.str.72, i32 0, ptr @.str.72, ptr @.str.1 }, %struct.EnumPropertyItem { i32 122, ptr @.str.73, i32 0, ptr @.str.73, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 48, ptr @.str.74, i32 0, ptr @.str.75, ptr @.str.1 }, %struct.EnumPropertyItem { i32 49, ptr @.str.76, i32 0, ptr @.str.77, ptr @.str.1 }, %struct.EnumPropertyItem { i32 50, ptr @.str.78, i32 0, ptr @.str.79, ptr @.str.1 }, %struct.EnumPropertyItem { i32 51, ptr @.str.80, i32 0, ptr @.str.81, ptr @.str.1 }, %struct.EnumPropertyItem { i32 52, ptr @.str.82, i32 0, ptr @.str.83, ptr @.str.1 }, %struct.EnumPropertyItem { i32 53, ptr @.str.84, i32 0, ptr @.str.85, ptr @.str.1 }, %struct.EnumPropertyItem { i32 54, ptr @.str.86, i32 0, ptr @.str.87, ptr @.str.1 }, %struct.EnumPropertyItem { i32 55, ptr @.str.88, i32 0, ptr @.str.89, ptr @.str.1 }, %struct.EnumPropertyItem { i32 56, ptr @.str.90, i32 0, ptr @.str.91, ptr @.str.1 }, %struct.EnumPropertyItem { i32 57, ptr @.str.92, i32 0, ptr @.str.93, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 212, ptr @.str.94, i32 0, ptr @.str.95, ptr @.str.1 }, %struct.EnumPropertyItem { i32 213, ptr @.str.96, i32 0, ptr @.str.97, ptr @.str.1 }, %struct.EnumPropertyItem { i32 217, ptr @.str.98, i32 0, ptr @.str.99, ptr @.str.1 }, %struct.EnumPropertyItem { i32 214, ptr @.str.100, i32 0, ptr @.str.101, ptr @.str.1 }, %struct.EnumPropertyItem { i32 215, ptr @.str.102, i32 0, ptr @.str.103, ptr @.str.1 }, %struct.EnumPropertyItem { i32 216, ptr @.str.104, i32 0, ptr @.str.105, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 172, ptr @.str.106, i32 0, ptr @.str.107, ptr @.str.1 }, %struct.EnumPropertyItem { i32 173, ptr @.str.108, i32 0, ptr @.str.109, ptr @.str.1 }, %struct.EnumPropertyItem { i32 218, ptr @.str.110, i32 0, ptr @.str.111, ptr @.str.1 }, %struct.EnumPropertyItem { i32 219, ptr @.str.112, i32 0, ptr @.str.113, ptr @.str.1 }, %struct.EnumPropertyItem { i32 220, ptr @.str.114, i32 0, ptr @.str.115, ptr @.str.1 }, %struct.EnumPropertyItem { i32 221, ptr @.str.116, i32 0, ptr @.str.117, ptr @.str.1 }, %struct.EnumPropertyItem { i32 222, ptr @.str.118, i32 0, ptr @.str.119, ptr @.str.1 }, %struct.EnumPropertyItem { i32 223, ptr @.str.120, i32 0, ptr @.str.121, ptr @.str.1 }, %struct.EnumPropertyItem { i32 224, ptr @.str.122, i32 0, ptr @.str.123, ptr @.str.1 }, %struct.EnumPropertyItem { i32 225, ptr @.str.124, i32 0, ptr @.str.125, ptr @.str.1 }, %struct.EnumPropertyItem { i32 226, ptr @.str.126, i32 0, ptr @.str.127, ptr @.str.1 }, %struct.EnumPropertyItem { i32 227, ptr @.str.128, i32 0, ptr @.str.129, ptr @.str.1 }, %struct.EnumPropertyItem { i32 228, ptr @.str.130, i32 0, ptr @.str.131, ptr @.str.1 }, %struct.EnumPropertyItem { i32 229, ptr @.str.132, i32 0, ptr @.str.133, ptr @.str.1 }, %struct.EnumPropertyItem { i32 230, ptr @.str.134, i32 0, ptr @.str.135, ptr @.str.1 }, %struct.EnumPropertyItem { i32 232, ptr @.str.136, i32 0, ptr @.str.137, ptr @.str.1 }, %struct.EnumPropertyItem { i32 233, ptr @.str.138, i32 0, ptr @.str.139, ptr @.str.1 }, %struct.EnumPropertyItem { i32 234, ptr @.str.140, i32 0, ptr @.str.141, ptr @.str.1 }, %struct.EnumPropertyItem { i32 235, ptr @.str.142, i32 0, ptr @.str.143, ptr @.str.1 }, %struct.EnumPropertyItem { i32 236, ptr @.str.144, i32 0, ptr @.str.145, ptr @.str.1 }, %struct.EnumPropertyItem { i32 137, ptr @.str.146, i32 0, ptr @.str.147, ptr @.str.1 }, %struct.EnumPropertyItem { i32 138, ptr @.str.148, i32 0, ptr @.str.149, ptr @.str.1 }, %struct.EnumPropertyItem { i32 139, ptr @.str.150, i32 0, ptr @.str.151, ptr @.str.1 }, %struct.EnumPropertyItem { i32 140, ptr @.str.152, i32 0, ptr @.str.153, ptr @.str.1 }, %struct.EnumPropertyItem { i32 152, ptr @.str.154, i32 0, ptr @.str.155, ptr @.str.1 }, %struct.EnumPropertyItem { i32 154, ptr @.str.156, i32 0, ptr @.str.157, ptr @.str.1 }, %struct.EnumPropertyItem { i32 156, ptr @.str.158, i32 0, ptr @.str.159, ptr @.str.1 }, %struct.EnumPropertyItem { i32 158, ptr @.str.160, i32 0, ptr @.str.161, ptr @.str.1 }, %struct.EnumPropertyItem { i32 151, ptr @.str.162, i32 0, ptr @.str.163, ptr @.str.1 }, %struct.EnumPropertyItem { i32 153, ptr @.str.164, i32 0, ptr @.str.165, ptr @.str.1 }, %struct.EnumPropertyItem { i32 155, ptr @.str.166, i32 0, ptr @.str.167, ptr @.str.1 }, %struct.EnumPropertyItem { i32 157, ptr @.str.168, i32 0, ptr @.str.169, ptr @.str.1 }, %struct.EnumPropertyItem { i32 159, ptr @.str.170, i32 0, ptr @.str.171, ptr @.str.1 }, %struct.EnumPropertyItem { i32 199, ptr @.str.172, i32 0, ptr @.str.173, ptr @.str.1 }, %struct.EnumPropertyItem { i32 161, ptr @.str.174, i32 0, ptr @.str.175, ptr @.str.1 }, %struct.EnumPropertyItem { i32 160, ptr @.str.176, i32 0, ptr @.str.177, ptr @.str.1 }, %struct.EnumPropertyItem { i32 150, ptr @.str.178, i32 0, ptr @.str.179, ptr @.str.1 }, %struct.EnumPropertyItem { i32 162, ptr @.str.180, i32 0, ptr @.str.181, ptr @.str.1 }, %struct.EnumPropertyItem { i32 163, ptr @.str.182, i32 0, ptr @.str.183, ptr @.str.1 }, %struct.EnumPropertyItem { i32 164, ptr @.str.184, i32 0, ptr @.str.185, ptr @.str.1 }, %struct.EnumPropertyItem { i32 300, ptr @.str.186, i32 0, ptr @.str.186, ptr @.str.1 }, %struct.EnumPropertyItem { i32 301, ptr @.str.187, i32 0, ptr @.str.187, ptr @.str.1 }, %struct.EnumPropertyItem { i32 302, ptr @.str.188, i32 0, ptr @.str.188, ptr @.str.1 }, %struct.EnumPropertyItem { i32 303, ptr @.str.189, i32 0, ptr @.str.189, ptr @.str.1 }, %struct.EnumPropertyItem { i32 304, ptr @.str.190, i32 0, ptr @.str.190, ptr @.str.1 }, %struct.EnumPropertyItem { i32 305, ptr @.str.191, i32 0, ptr @.str.191, ptr @.str.1 }, %struct.EnumPropertyItem { i32 306, ptr @.str.192, i32 0, ptr @.str.192, ptr @.str.1 }, %struct.EnumPropertyItem { i32 307, ptr @.str.193, i32 0, ptr @.str.193, ptr @.str.1 }, %struct.EnumPropertyItem { i32 308, ptr @.str.194, i32 0, ptr @.str.194, ptr @.str.1 }, %struct.EnumPropertyItem { i32 309, ptr @.str.195, i32 0, ptr @.str.195, ptr @.str.1 }, %struct.EnumPropertyItem { i32 310, ptr @.str.196, i32 0, ptr @.str.196, ptr @.str.1 }, %struct.EnumPropertyItem { i32 311, ptr @.str.197, i32 0, ptr @.str.197, ptr @.str.1 }, %struct.EnumPropertyItem { i32 312, ptr @.str.198, i32 0, ptr @.str.198, ptr @.str.1 }, %struct.EnumPropertyItem { i32 313, ptr @.str.199, i32 0, ptr @.str.199, ptr @.str.1 }, %struct.EnumPropertyItem { i32 314, ptr @.str.200, i32 0, ptr @.str.200, ptr @.str.1 }, %struct.EnumPropertyItem { i32 315, ptr @.str.201, i32 0, ptr @.str.201, ptr @.str.1 }, %struct.EnumPropertyItem { i32 316, ptr @.str.202, i32 0, ptr @.str.202, ptr @.str.1 }, %struct.EnumPropertyItem { i32 317, ptr @.str.203, i32 0, ptr @.str.203, ptr @.str.1 }, %struct.EnumPropertyItem { i32 318, ptr @.str.204, i32 0, ptr @.str.204, ptr @.str.1 }, %struct.EnumPropertyItem { i32 165, ptr @.str.205, i32 0, ptr @.str.206, ptr @.str.1 }, %struct.EnumPropertyItem { i32 166, ptr @.str.207, i32 0, ptr @.str.208, ptr @.str.1 }, %struct.EnumPropertyItem { i32 167, ptr @.str.209, i32 0, ptr @.str.210, ptr @.str.1 }, %struct.EnumPropertyItem { i32 168, ptr @.str.211, i32 0, ptr @.str.212, ptr @.str.1 }, %struct.EnumPropertyItem { i32 169, ptr @.str.213, i32 0, ptr @.str.214, ptr @.str.1 }, %struct.EnumPropertyItem { i32 170, ptr @.str.215, i32 0, ptr @.str.216, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 174, ptr @.str.217, i32 0, ptr @.str.218, ptr @.str.1 }, %struct.EnumPropertyItem { i32 175, ptr @.str.219, i32 0, ptr @.str.220, ptr @.str.1 }, %struct.EnumPropertyItem { i32 176, ptr @.str.221, i32 0, ptr @.str.222, ptr @.str.1 }, %struct.EnumPropertyItem { i32 177, ptr @.str.223, i32 0, ptr @.str.224, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 -2, ptr @.str.225, i32 0, ptr @.str.226, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 260, ptr @.str.227, i32 0, ptr @.str.228, ptr @.str.1 }, %struct.EnumPropertyItem { i32 272, ptr @.str.229, i32 0, ptr @.str.230, ptr @.str.1 }, %struct.EnumPropertyItem { i32 273, ptr @.str.231, i32 0, ptr @.str.232, ptr @.str.1 }, %struct.EnumPropertyItem { i32 274, ptr @.str.233, i32 0, ptr @.str.234, ptr @.str.1 }, %struct.EnumPropertyItem { i32 275, ptr @.str.235, i32 0, ptr @.str.236, ptr @.str.1 }, %struct.EnumPropertyItem { i32 276, ptr @.str.237, i32 0, ptr @.str.238, ptr @.str.1 }, %struct.EnumPropertyItem { i32 277, ptr @.str.239, i32 0, ptr @.str.240, ptr @.str.1 }, %struct.EnumPropertyItem { i32 278, ptr @.str.241, i32 0, ptr @.str.242, ptr @.str.1 }, %struct.EnumPropertyItem { i32 279, ptr @.str.243, i32 0, ptr @.str.244, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 400, ptr @.str.245, i32 0, ptr @.str.246, ptr @.str.1 }, %struct.EnumPropertyItem { i32 401, ptr @.str.247, i32 0, ptr @.str.248, ptr @.str.1 }, %struct.EnumPropertyItem { i32 402, ptr @.str.249, i32 0, ptr @.str.250, ptr @.str.1 }, %struct.EnumPropertyItem { i32 403, ptr @.str.251, i32 0, ptr @.str.252, ptr @.str.1 }, %struct.EnumPropertyItem { i32 404, ptr @.str.253, i32 0, ptr @.str.254, ptr @.str.1 }, %struct.EnumPropertyItem { i32 405, ptr @.str.255, i32 0, ptr @.str.256, ptr @.str.1 }, %struct.EnumPropertyItem { i32 406, ptr @.str.257, i32 0, ptr @.str.258, ptr @.str.1 }, %struct.EnumPropertyItem { i32 407, ptr @.str.259, i32 0, ptr @.str.260, ptr @.str.1 }, %struct.EnumPropertyItem { i32 408, ptr @.str.261, i32 0, ptr @.str.262, ptr @.str.1 }, %struct.EnumPropertyItem { i32 409, ptr @.str.263, i32 0, ptr @.str.264, ptr @.str.1 }, %struct.EnumPropertyItem { i32 410, ptr @.str.265, i32 0, ptr @.str.266, ptr @.str.1 }, %struct.EnumPropertyItem { i32 411, ptr @.str.267, i32 0, ptr @.str.268, ptr @.str.1 }, %struct.EnumPropertyItem { i32 412, ptr @.str.269, i32 0, ptr @.str.270, ptr @.str.1 }, %struct.EnumPropertyItem { i32 413, ptr @.str.271, i32 0, ptr @.str.272, ptr @.str.1 }, %struct.EnumPropertyItem { i32 414, ptr @.str.273, i32 0, ptr @.str.274, ptr @.str.1 }, %struct.EnumPropertyItem { i32 415, ptr @.str.275, i32 0, ptr @.str.276, ptr @.str.1 }, %struct.EnumPropertyItem { i32 416, ptr @.str.277, i32 0, ptr @.str.278, ptr @.str.1 }, %struct.EnumPropertyItem { i32 417, ptr @.str.279, i32 0, ptr @.str.280, ptr @.str.1 }, %struct.EnumPropertyItem { i32 418, ptr @.str.281, i32 0, ptr @.str.282, ptr @.str.1 }, %struct.EnumPropertyItem { i32 419, ptr @.str.283, i32 0, ptr @.str.284, ptr @.str.1 }, %struct.EnumPropertyItem { i32 420, ptr @.str.285, i32 0, ptr @.str.286, ptr @.str.1 }, %struct.EnumPropertyItem { i32 421, ptr @.str.287, i32 0, ptr @.str.288, ptr @.str.1 }, %struct.EnumPropertyItem { i32 422, ptr @.str.289, i32 0, ptr @.str.290, ptr null }, %struct.EnumPropertyItem { i32 423, ptr @.str.291, i32 0, ptr @.str.292, ptr null }, %struct.EnumPropertyItem { i32 424, ptr @.str.293, i32 0, ptr @.str.294, ptr null }, %struct.EnumPropertyItem { i32 425, ptr @.str.295, i32 0, ptr @.str.296, ptr null }, %struct.EnumPropertyItem { i32 426, ptr @.str.297, i32 0, ptr @.str.298, ptr @.str.1 }, %struct.EnumPropertyItem { i32 427, ptr @.str.299, i32 0, ptr @.str.300, ptr @.str.1 }, %struct.EnumPropertyItem { i32 428, ptr @.str.301, i32 0, ptr @.str.302, ptr @.str.1 }, %struct.EnumPropertyItem { i32 429, ptr @.str.303, i32 0, ptr @.str.304, ptr @.str.1 }, %struct.EnumPropertyItem { i32 430, ptr @.str.305, i32 0, ptr @.str.306, ptr @.str.1 }, %struct.EnumPropertyItem { i32 431, ptr @.str.307, i32 0, ptr @.str.308, ptr @.str.1 }, %struct.EnumPropertyItem { i32 432, ptr @.str.309, i32 0, ptr @.str.310, ptr @.str.1 }, %struct.EnumPropertyItem { i32 433, ptr @.str.311, i32 0, ptr @.str.312, ptr @.str.1 }, %struct.EnumPropertyItem { i32 434, ptr @.str.313, i32 0, ptr @.str.314, ptr @.str.1 }, %struct.EnumPropertyItem { i32 435, ptr @.str.315, i32 0, ptr @.str.316, ptr @.str.1 }, %struct.EnumPropertyItem { i32 436, ptr @.str.317, i32 0, ptr @.str.318, ptr @.str.1 }, %struct.EnumPropertyItem { i32 437, ptr @.str.319, i32 0, ptr @.str.320, ptr @.str.1 }, %struct.EnumPropertyItem { i32 438, ptr @.str.321, i32 0, ptr @.str.322, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.323 = private unnamed_addr constant [4 x i8] c"ANY\00", align 1
@.str.324 = private unnamed_addr constant [4 x i8] c"Any\00", align 1
@.str.325 = private unnamed_addr constant [8 x i8] c"NOTHING\00", align 1
@.str.326 = private unnamed_addr constant [8 x i8] c"Nothing\00", align 1
@.str.327 = private unnamed_addr constant [6 x i8] c"PRESS\00", align 1
@.str.328 = private unnamed_addr constant [6 x i8] c"Press\00", align 1
@.str.329 = private unnamed_addr constant [8 x i8] c"RELEASE\00", align 1
@.str.330 = private unnamed_addr constant [8 x i8] c"Release\00", align 1
@.str.331 = private unnamed_addr constant [6 x i8] c"CLICK\00", align 1
@.str.332 = private unnamed_addr constant [6 x i8] c"Click\00", align 1
@.str.333 = private unnamed_addr constant [13 x i8] c"DOUBLE_CLICK\00", align 1
@.str.334 = private unnamed_addr constant [13 x i8] c"Double Click\00", align 1
@.str.335 = private unnamed_addr constant [6 x i8] c"NORTH\00", align 1
@.str.336 = private unnamed_addr constant [6 x i8] c"North\00", align 1
@.str.337 = private unnamed_addr constant [11 x i8] c"NORTH_EAST\00", align 1
@.str.338 = private unnamed_addr constant [11 x i8] c"North-East\00", align 1
@.str.339 = private unnamed_addr constant [5 x i8] c"EAST\00", align 1
@.str.340 = private unnamed_addr constant [5 x i8] c"East\00", align 1
@.str.341 = private unnamed_addr constant [11 x i8] c"SOUTH_EAST\00", align 1
@.str.342 = private unnamed_addr constant [11 x i8] c"South-East\00", align 1
@.str.343 = private unnamed_addr constant [6 x i8] c"SOUTH\00", align 1
@.str.344 = private unnamed_addr constant [6 x i8] c"South\00", align 1
@.str.345 = private unnamed_addr constant [11 x i8] c"SOUTH_WEST\00", align 1
@.str.346 = private unnamed_addr constant [11 x i8] c"South-West\00", align 1
@.str.347 = private unnamed_addr constant [5 x i8] c"WEST\00", align 1
@.str.348 = private unnamed_addr constant [5 x i8] c"West\00", align 1
@.str.349 = private unnamed_addr constant [11 x i8] c"NORTH_WEST\00", align 1
@.str.350 = private unnamed_addr constant [11 x i8] c"North-West\00", align 1
@event_value_items = dso_local global [15 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 -1, ptr @.str.323, i32 0, ptr @.str.324, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.325, i32 0, ptr @.str.326, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.327, i32 0, ptr @.str.328, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.329, i32 0, ptr @.str.330, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.331, i32 0, ptr @.str.332, ptr @.str.1 }, %struct.EnumPropertyItem { i32 4, ptr @.str.333, i32 0, ptr @.str.334, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.335, i32 0, ptr @.str.336, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.337, i32 0, ptr @.str.338, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.339, i32 0, ptr @.str.340, ptr @.str.1 }, %struct.EnumPropertyItem { i32 4, ptr @.str.341, i32 0, ptr @.str.342, ptr @.str.1 }, %struct.EnumPropertyItem { i32 5, ptr @.str.343, i32 0, ptr @.str.344, ptr @.str.1 }, %struct.EnumPropertyItem { i32 6, ptr @.str.345, i32 0, ptr @.str.346, ptr @.str.1 }, %struct.EnumPropertyItem { i32 7, ptr @.str.347, i32 0, ptr @.str.348, ptr @.str.1 }, %struct.EnumPropertyItem { i32 8, ptr @.str.349, i32 0, ptr @.str.350, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@keymap_propvalue_items = dso_local global [2 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.351 = private unnamed_addr constant [14 x i8] c"RUNNING_MODAL\00", align 1
@.str.352 = private unnamed_addr constant [14 x i8] c"Running Modal\00", align 1
@.str.353 = private unnamed_addr constant [39 x i8] c"Keep the operator running with blender\00", align 1
@.str.354 = private unnamed_addr constant [10 x i8] c"CANCELLED\00", align 1
@.str.355 = private unnamed_addr constant [10 x i8] c"Cancelled\00", align 1
@.str.356 = private unnamed_addr constant [46 x i8] c"When no action has been taken, operator exits\00", align 1
@.str.357 = private unnamed_addr constant [9 x i8] c"FINISHED\00", align 1
@.str.358 = private unnamed_addr constant [9 x i8] c"Finished\00", align 1
@.str.359 = private unnamed_addr constant [46 x i8] c"When the operator is complete, operator exits\00", align 1
@.str.360 = private unnamed_addr constant [13 x i8] c"PASS_THROUGH\00", align 1
@.str.361 = private unnamed_addr constant [13 x i8] c"Pass Through\00", align 1
@.str.362 = private unnamed_addr constant [33 x i8] c"Do nothing and pass the event on\00", align 1
@.str.363 = private unnamed_addr constant [10 x i8] c"INTERFACE\00", align 1
@.str.364 = private unnamed_addr constant [10 x i8] c"Interface\00", align 1
@.str.365 = private unnamed_addr constant [39 x i8] c"Handled but not executed (popup menus)\00", align 1
@operator_return_items = dso_local local_unnamed_addr global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.351, i32 0, ptr @.str.352, ptr @.str.353 }, %struct.EnumPropertyItem { i32 2, ptr @.str.354, i32 0, ptr @.str.355, ptr @.str.356 }, %struct.EnumPropertyItem { i32 4, ptr @.str.357, i32 0, ptr @.str.358, ptr @.str.359 }, %struct.EnumPropertyItem { i32 8, ptr @.str.360, i32 0, ptr @.str.361, ptr @.str.362 }, %struct.EnumPropertyItem { i32 32, ptr @.str.363, i32 0, ptr @.str.364, ptr @.str.365 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.366 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@.str.367 = private unnamed_addr constant [6 x i8] c"Debug\00", align 1
@.str.368 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.369 = private unnamed_addr constant [5 x i8] c"Info\00", align 1
@.str.370 = private unnamed_addr constant [9 x i8] c"OPERATOR\00", align 1
@.str.371 = private unnamed_addr constant [9 x i8] c"Operator\00", align 1
@.str.372 = private unnamed_addr constant [9 x i8] c"PROPERTY\00", align 1
@.str.373 = private unnamed_addr constant [9 x i8] c"Property\00", align 1
@.str.374 = private unnamed_addr constant [8 x i8] c"WARNING\00", align 1
@.str.375 = private unnamed_addr constant [8 x i8] c"Warning\00", align 1
@.str.376 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.377 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.378 = private unnamed_addr constant [20 x i8] c"ERROR_INVALID_INPUT\00", align 1
@.str.379 = private unnamed_addr constant [14 x i8] c"Invalid Input\00", align 1
@.str.380 = private unnamed_addr constant [22 x i8] c"ERROR_INVALID_CONTEXT\00", align 1
@.str.381 = private unnamed_addr constant [16 x i8] c"Invalid Context\00", align 1
@.str.382 = private unnamed_addr constant [20 x i8] c"ERROR_OUT_OF_MEMORY\00", align 1
@.str.383 = private unnamed_addr constant [14 x i8] c"Out of Memory\00", align 1
@wm_report_items = dso_local local_unnamed_addr global [10 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.366, i32 0, ptr @.str.367, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.368, i32 0, ptr @.str.369, ptr @.str.1 }, %struct.EnumPropertyItem { i32 4, ptr @.str.370, i32 0, ptr @.str.371, ptr @.str.1 }, %struct.EnumPropertyItem { i32 8, ptr @.str.372, i32 0, ptr @.str.373, ptr @.str.1 }, %struct.EnumPropertyItem { i32 16, ptr @.str.374, i32 0, ptr @.str.375, ptr @.str.1 }, %struct.EnumPropertyItem { i32 32, ptr @.str.376, i32 0, ptr @.str.377, ptr @.str.1 }, %struct.EnumPropertyItem { i32 64, ptr @.str.378, i32 0, ptr @.str.379, ptr @.str.1 }, %struct.EnumPropertyItem { i32 128, ptr @.str.380, i32 0, ptr @.str.381, ptr @.str.1 }, %struct.EnumPropertyItem { i32 256, ptr @.str.382, i32 0, ptr @.str.383, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.384 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.385 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.386 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.387 = private unnamed_addr constant [5 x i8] c"WAIT\00", align 1
@.str.388 = private unnamed_addr constant [5 x i8] c"Wait\00", align 1
@.str.389 = private unnamed_addr constant [10 x i8] c"CROSSHAIR\00", align 1
@.str.390 = private unnamed_addr constant [10 x i8] c"Crosshair\00", align 1
@.str.391 = private unnamed_addr constant [7 x i8] c"MOVE_X\00", align 1
@.str.392 = private unnamed_addr constant [7 x i8] c"Move-X\00", align 1
@.str.393 = private unnamed_addr constant [7 x i8] c"MOVE_Y\00", align 1
@.str.394 = private unnamed_addr constant [7 x i8] c"Move-Y\00", align 1
@.str.395 = private unnamed_addr constant [6 x i8] c"KNIFE\00", align 1
@.str.396 = private unnamed_addr constant [6 x i8] c"Knife\00", align 1
@.str.397 = private unnamed_addr constant [5 x i8] c"TEXT\00", align 1
@.str.398 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.399 = private unnamed_addr constant [12 x i8] c"PAINT_BRUSH\00", align 1
@.str.400 = private unnamed_addr constant [12 x i8] c"Paint Brush\00", align 1
@.str.401 = private unnamed_addr constant [5 x i8] c"HAND\00", align 1
@.str.402 = private unnamed_addr constant [5 x i8] c"Hand\00", align 1
@.str.403 = private unnamed_addr constant [9 x i8] c"SCROLL_X\00", align 1
@.str.404 = private unnamed_addr constant [9 x i8] c"Scroll-X\00", align 1
@.str.405 = private unnamed_addr constant [9 x i8] c"SCROLL_Y\00", align 1
@.str.406 = private unnamed_addr constant [9 x i8] c"Scroll-Y\00", align 1
@.str.407 = private unnamed_addr constant [10 x i8] c"SCROLL_XY\00", align 1
@.str.408 = private unnamed_addr constant [10 x i8] c"Scroll-XY\00", align 1
@.str.409 = private unnamed_addr constant [11 x i8] c"EYEDROPPER\00", align 1
@.str.410 = private unnamed_addr constant [11 x i8] c"Eyedropper\00", align 1
@window_cursor_items = dso_local local_unnamed_addr global [15 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1006, ptr @.str.384, i32 0, ptr @.str.385, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1007, ptr @.str, i32 0, ptr @.str.386, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1001, ptr @.str.387, i32 0, ptr @.str.388, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1002, ptr @.str.389, i32 0, ptr @.str.390, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1003, ptr @.str.391, i32 0, ptr @.str.392, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1004, ptr @.str.393, i32 0, ptr @.str.394, ptr @.str.1 }, %struct.EnumPropertyItem { i32 9, ptr @.str.395, i32 0, ptr @.str.396, ptr @.str.1 }, %struct.EnumPropertyItem { i32 11, ptr @.str.397, i32 0, ptr @.str.398, ptr @.str.1 }, %struct.EnumPropertyItem { i32 12, ptr @.str.399, i32 0, ptr @.str.400, ptr @.str.1 }, %struct.EnumPropertyItem { i32 13, ptr @.str.401, i32 0, ptr @.str.402, ptr @.str.1 }, %struct.EnumPropertyItem { i32 16, ptr @.str.403, i32 0, ptr @.str.404, ptr @.str.1 }, %struct.EnumPropertyItem { i32 15, ptr @.str.405, i32 0, ptr @.str.406, ptr @.str.1 }, %struct.EnumPropertyItem { i32 14, ptr @.str.407, i32 0, ptr @.str.408, ptr @.str.1 }, %struct.EnumPropertyItem { i32 17, ptr @.str.409, i32 0, ptr @.str.410, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Operator_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Operator_rna_type, ptr null, i32 -1, ptr @.str.412, i32 128, ptr @.str.413, ptr @.str.414, i32 0, ptr @.str.415, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Operator_rna_properties_begin, ptr @Operator_rna_properties_next, ptr @Operator_rna_properties_end, ptr @Operator_rna_properties_get, ptr null, ptr null, ptr @Operator_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_UILayout = external global %struct.StructRNA, align 8
@rna_OperatorProperties_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_OperatorProperties_rna_type, ptr null, i32 -1, ptr @.str.412, i32 128, ptr @.str.413, ptr @.str.414, i32 0, ptr @.str.415, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @OperatorProperties_rna_properties_begin, ptr @OperatorProperties_rna_properties_next, ptr @OperatorProperties_rna_properties_end, ptr @OperatorProperties_rna_properties_get, ptr null, ptr null, ptr @OperatorProperties_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_Macro_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Macro_rna_type, ptr null, i32 -1, ptr @.str.412, i32 128, ptr @.str.413, ptr @.str.414, i32 0, ptr @.str.415, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Macro_rna_properties_begin, ptr @Macro_rna_properties_next, ptr @Macro_rna_properties_end, ptr @Macro_rna_properties_get, ptr null, ptr null, ptr @Macro_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_OperatorMacro_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_OperatorMacro_rna_type, ptr null, i32 -1, ptr @.str.412, i32 128, ptr @.str.413, ptr @.str.414, i32 0, ptr @.str.415, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @OperatorMacro_rna_properties_begin, ptr @OperatorMacro_rna_properties_next, ptr @OperatorMacro_rna_properties_end, ptr @OperatorMacro_rna_properties_get, ptr null, ptr null, ptr @OperatorMacro_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_Event_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Event_rna_type, ptr null, i32 -1, ptr @.str.412, i32 128, ptr @.str.413, ptr @.str.414, i32 0, ptr @.str.415, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Event_rna_properties_begin, ptr @Event_rna_properties_next, ptr @Event_rna_properties_end, ptr @Event_rna_properties_get, ptr null, ptr null, ptr @Event_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_Timer_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Timer_rna_type, ptr null, i32 -1, ptr @.str.412, i32 128, ptr @.str.413, ptr @.str.414, i32 0, ptr @.str.415, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Timer_rna_properties_begin, ptr @Timer_rna_properties_next, ptr @Timer_rna_properties_end, ptr @Timer_rna_properties_get, ptr null, ptr null, ptr @Timer_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_UIPopupMenu_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_UIPopupMenu_rna_type, ptr null, i32 -1, ptr @.str.412, i32 128, ptr @.str.413, ptr @.str.414, i32 0, ptr @.str.415, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UIPopupMenu_rna_properties_begin, ptr @UIPopupMenu_rna_properties_next, ptr @UIPopupMenu_rna_properties_end, ptr @UIPopupMenu_rna_properties_get, ptr null, ptr null, ptr @UIPopupMenu_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_UIPieMenu_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_UIPieMenu_rna_type, ptr null, i32 -1, ptr @.str.412, i32 128, ptr @.str.413, ptr @.str.414, i32 0, ptr @.str.415, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UIPieMenu_rna_properties_begin, ptr @UIPieMenu_rna_properties_next, ptr @UIPieMenu_rna_properties_end, ptr @UIPieMenu_rna_properties_get, ptr null, ptr null, ptr @UIPieMenu_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_Window_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_Window_rna_type, ptr null, i32 -1, ptr @.str.412, i32 128, ptr @.str.413, ptr @.str.414, i32 0, ptr @.str.415, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Window_rna_properties_begin, ptr @Window_rna_properties_next, ptr @Window_rna_properties_end, ptr @Window_rna_properties_get, ptr null, ptr null, ptr @Window_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_Screen = external global %struct.StructRNA, align 8
@rna_WindowManager_operators = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_WindowManager_windows, ptr null, i32 -1, ptr @.str.557, i32 0, ptr @.str.558, ptr @.str.559, i32 0, ptr @.str.415, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WindowManager_operators_begin, ptr @WindowManager_operators_next, ptr @WindowManager_operators_end, ptr @WindowManager_operators_get, ptr null, ptr @WindowManager_operators_lookup_int, ptr @WindowManager_operators_lookup_string, ptr null, ptr @RNA_Operator }, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.411 = private unnamed_addr constant [12 x i8] c"name string\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@rna_WindowManager_windows = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_WindowManager_keyconfigs, ptr @rna_WindowManager_operators, i32 -1, ptr @.str.560, i32 0, ptr @.str.561, ptr @.str.562, i32 0, ptr @.str.415, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WindowManager_windows_begin, ptr @WindowManager_windows_next, ptr @WindowManager_windows_end, ptr @WindowManager_windows_get, ptr null, ptr @WindowManager_windows_lookup_int, ptr null, ptr null, ptr @RNA_Window }, align 8
@rna_WindowManager_keyconfigs = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_WindowManager_clipboard, ptr @rna_WindowManager_windows, i32 -1, ptr @.str.563, i32 0, ptr @.str.564, ptr @.str.565, i32 0, ptr @.str.415, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_KeyConfigurations, ptr null }, ptr @WindowManager_keyconfigs_begin, ptr @WindowManager_keyconfigs_next, ptr @WindowManager_keyconfigs_end, ptr @WindowManager_keyconfigs_get, ptr null, ptr @WindowManager_keyconfigs_lookup_int, ptr @WindowManager_keyconfigs_lookup_string, ptr null, ptr @RNA_KeyConfig }, align 8
@rna_KeyConfigurations_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyConfigurations_rna_type, ptr null, i32 -1, ptr @.str.412, i32 128, ptr @.str.413, ptr @.str.414, i32 0, ptr @.str.415, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyConfigurations_rna_properties_begin, ptr @KeyConfigurations_rna_properties_next, ptr @KeyConfigurations_rna_properties_end, ptr @KeyConfigurations_rna_properties_get, ptr null, ptr null, ptr @KeyConfigurations_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@RNA_KeyConfig = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_KeyMaps, ptr @RNA_KeyConfigurations, ptr null, %struct.ListBase { ptr @rna_KeyConfig_rna_properties, ptr @rna_KeyConfig_is_user_defined } }, ptr @.str.639, ptr null, ptr null, i32 4, ptr @.str.624, ptr @.str.640, ptr @.str.415, i32 17, ptr @rna_KeyConfig_name, ptr @rna_KeyConfig_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_KeyConfig_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyConfig_rna_type, ptr null, i32 -1, ptr @.str.412, i32 128, ptr @.str.413, ptr @.str.414, i32 0, ptr @.str.415, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyConfig_rna_properties_begin, ptr @KeyConfig_rna_properties_next, ptr @KeyConfig_rna_properties_end, ptr @KeyConfig_rna_properties_get, ptr null, ptr null, ptr @KeyConfig_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_KeyConfig_keymaps = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyConfig_is_user_defined, ptr @rna_KeyConfig_name, i32 -1, ptr @.str.633, i32 0, ptr @.str.634, ptr @.str.635, i32 0, ptr @.str.415, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_KeyMaps, ptr null }, ptr @KeyConfig_keymaps_begin, ptr @KeyConfig_keymaps_next, ptr @KeyConfig_keymaps_end, ptr @KeyConfig_keymaps_get, ptr null, ptr @KeyConfig_keymaps_lookup_int, ptr @KeyConfig_keymaps_lookup_string, ptr null, ptr @RNA_KeyMap }, align 8
@rna_KeyMaps_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMaps_rna_type, ptr null, i32 -1, ptr @.str.412, i32 128, ptr @.str.413, ptr @.str.414, i32 0, ptr @.str.415, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMaps_rna_properties_begin, ptr @KeyMaps_rna_properties_next, ptr @KeyMaps_rna_properties_end, ptr @KeyMaps_rna_properties_get, ptr null, ptr null, ptr @KeyMaps_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_KeyMap_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMap_rna_type, ptr null, i32 -1, ptr @.str.412, i32 128, ptr @.str.413, ptr @.str.414, i32 0, ptr @.str.415, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMap_rna_properties_begin, ptr @KeyMap_rna_properties_next, ptr @KeyMap_rna_properties_end, ptr @KeyMap_rna_properties_get, ptr null, ptr null, ptr @KeyMap_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_KeyMap_keymap_items = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMap_is_user_modified, ptr @rna_KeyMap_region_type, i32 -1, ptr @.str.659, i32 0, ptr @.str.660, ptr @.str.661, i32 0, ptr @.str.415, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr @RNA_KeyMapItems, ptr null }, ptr @KeyMap_keymap_items_begin, ptr @KeyMap_keymap_items_next, ptr @KeyMap_keymap_items_end, ptr @KeyMap_keymap_items_get, ptr null, ptr @KeyMap_keymap_items_lookup_int, ptr @KeyMap_keymap_items_lookup_string, ptr null, ptr @RNA_KeyMapItem }, align 8
@rna_KeyMapItems_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItems_rna_type, ptr null, i32 -1, ptr @.str.412, i32 128, ptr @.str.413, ptr @.str.414, i32 0, ptr @.str.415, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMapItems_rna_properties_begin, ptr @KeyMapItems_rna_properties_next, ptr @KeyMapItems_rna_properties_end, ptr @KeyMapItems_rna_properties_get, ptr null, ptr null, ptr @KeyMapItems_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_KeyMapItem_rna_properties = dso_local global %struct.CollectionPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItem_rna_type, ptr null, i32 -1, ptr @.str.412, i32 128, ptr @.str.413, ptr @.str.414, i32 0, ptr @.str.415, i32 6, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMapItem_rna_properties_begin, ptr @KeyMapItem_rna_properties_next, ptr @KeyMapItem_rna_properties_end, ptr @KeyMapItem_rna_properties_get, ptr null, ptr null, ptr @KeyMapItem_rna_properties_lookup_string, ptr null, ptr @RNA_Property }, align 8
@rna_Operator_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Operator_name, ptr @rna_Operator_rna_properties, i32 -1, ptr @.str.416, i32 8912896, ptr @.str.417, ptr @.str.418, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Operator_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@.str.412 = private unnamed_addr constant [15 x i8] c"rna_properties\00", align 1
@.str.413 = private unnamed_addr constant [11 x i8] c"Properties\00", align 1
@.str.414 = private unnamed_addr constant [24 x i8] c"RNA property collection\00", align 1
@.str.415 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RNA_Property = external global %struct.StructRNA, align 8
@rna_Operator_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Operator_properties, ptr @rna_Operator_rna_type, i32 -1, ptr @.str.419, i32 262144, ptr @.str.420, ptr @.str.1, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Operator_name_get, ptr @Operator_name_length, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.1 }, align 8
@.str.416 = private unnamed_addr constant [9 x i8] c"rna_type\00", align 1
@.str.417 = private unnamed_addr constant [4 x i8] c"RNA\00", align 1
@.str.418 = private unnamed_addr constant [20 x i8] c"RNA type definition\00", align 1
@RNA_Struct = external global %struct.StructRNA, align 8
@rna_Operator_properties = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Operator_has_reports, ptr @rna_Operator_name, i32 -1, ptr @.str.421, i32 8650752, ptr @.str.413, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Operator_properties_get, ptr null, ptr null, ptr null, ptr @RNA_OperatorProperties }, align 8
@.str.419 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.420 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@rna_Operator_has_reports = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Operator_layout, ptr @rna_Operator_properties, i32 -1, ptr @.str.422, i32 2, ptr @.str.423, ptr @.str.424, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Operator_has_reports_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.421 = private unnamed_addr constant [11 x i8] c"properties\00", align 1
@RNA_OperatorProperties = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_OperatorMousePath, ptr @RNA_Operator, ptr null, %struct.ListBase { ptr @rna_OperatorProperties_rna_properties, ptr @rna_OperatorProperties_rna_type } }, ptr @.str.457, ptr null, ptr null, i32 4, ptr @.str.458, ptr @.str.459, ptr @.str.415, i32 17, ptr null, ptr @rna_OperatorProperties_rna_properties, ptr null, ptr null, ptr @rna_OperatorProperties_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_OperatorProperties_idprops, %struct.ListBase zeroinitializer }, align 8
@rna_Operator_layout = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Operator_bl_idname, ptr @rna_Operator_has_reports, i32 -1, ptr @.str.425, i32 8388608, ptr @.str.425, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Operator_layout_get, ptr null, ptr null, ptr null, ptr @RNA_UILayout }, align 8
@.str.422 = private unnamed_addr constant [12 x i8] c"has_reports\00", align 1
@.str.423 = private unnamed_addr constant [12 x i8] c"Has Reports\00", align 1
@.str.424 = private unnamed_addr constant [72 x i8] c"Operator has a set of reports (warnings and errors) from last execution\00", align 1
@rna_Operator_bl_idname = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Operator_bl_label, ptr @rna_Operator_layout, i32 -1, ptr @.str.426, i32 262161, ptr @.str.426, ptr @.str.1, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Operator_bl_idname_get, ptr @Operator_bl_idname_length, ptr @Operator_bl_idname_set, ptr null, ptr null, ptr null, i32 61, ptr @.str.1 }, align 8
@.str.425 = private unnamed_addr constant [7 x i8] c"layout\00", align 1
@rna_Operator_bl_label = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Operator_bl_translation_context, ptr @rna_Operator_bl_idname, i32 -1, ptr @.str.427, i32 262161, ptr @.str.427, ptr @.str.1, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Operator_bl_label_get, ptr @Operator_bl_label_length, ptr @Operator_bl_label_set, ptr null, ptr null, ptr null, i32 240, ptr @.str.1 }, align 8
@.str.426 = private unnamed_addr constant [10 x i8] c"bl_idname\00", align 1
@rna_Operator_bl_translation_context = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Operator_bl_description, ptr @rna_Operator_bl_label, i32 -1, ptr @.str.428, i32 49, ptr @.str.428, ptr @.str.1, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Operator_bl_translation_context_get, ptr @Operator_bl_translation_context_length, ptr @Operator_bl_translation_context_set, ptr null, ptr null, ptr null, i32 240, ptr @.str.371 }, align 8
@.str.427 = private unnamed_addr constant [9 x i8] c"bl_label\00", align 1
@rna_Operator_bl_description = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Operator_bl_options, ptr @rna_Operator_bl_translation_context, i32 -1, ptr @.str.429, i32 49, ptr @.str.429, ptr @.str.1, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Operator_bl_description_get, ptr @Operator_bl_description_length, ptr @Operator_bl_description_set, ptr null, ptr null, ptr null, i32 240, ptr @.str.1 }, align 8
@.str.428 = private unnamed_addr constant [23 x i8] c"bl_translation_context\00", align 1
@rna_Operator_bl_options = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Operator_bl_description, i32 -1, ptr @.str.430, i32 2097203, ptr @.str.431, ptr @.str.432, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Operator_bl_options_get, ptr @Operator_bl_options_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Operator_bl_options_items, i32 7, i32 1 }, align 8
@.str.429 = private unnamed_addr constant [15 x i8] c"bl_description\00", align 1
@.str.430 = private unnamed_addr constant [11 x i8] c"bl_options\00", align 1
@.str.431 = private unnamed_addr constant [8 x i8] c"Options\00", align 1
@.str.432 = private unnamed_addr constant [31 x i8] c"Options for this operator type\00", align 1
@rna_Operator_bl_options_items = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.731, i32 0, ptr @.str.732, ptr @.str.733 }, %struct.EnumPropertyItem { i32 2, ptr @.str.734, i32 0, ptr @.str.735, ptr @.str.736 }, %struct.EnumPropertyItem { i32 4, ptr @.str.737, i32 0, ptr @.str.738, ptr @.str.739 }, %struct.EnumPropertyItem { i32 8, ptr @.str.740, i32 0, ptr @.str.472, ptr @.str.741 }, %struct.EnumPropertyItem { i32 16, ptr @.str.742, i32 0, ptr @.str.743, ptr @.str.744 }, %struct.EnumPropertyItem { i32 32, ptr @.str.745, i32 0, ptr @.str.746, ptr @.str.747 }, %struct.EnumPropertyItem { i32 64, ptr @.str.748, i32 0, ptr @.str.749, ptr @.str.750 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Operator_report_message = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Operator_report_type, i32 -1, ptr @.str.435, i32 262149, ptr @.str.436, ptr @.str.1, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.1 }, align 8
@.str.433 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.434 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@rna_Operator_report_type_items = internal global [10 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.366, i32 0, ptr @.str.367, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.368, i32 0, ptr @.str.369, ptr @.str.1 }, %struct.EnumPropertyItem { i32 4, ptr @.str.370, i32 0, ptr @.str.371, ptr @.str.1 }, %struct.EnumPropertyItem { i32 8, ptr @.str.372, i32 0, ptr @.str.373, ptr @.str.1 }, %struct.EnumPropertyItem { i32 16, ptr @.str.374, i32 0, ptr @.str.375, ptr @.str.1 }, %struct.EnumPropertyItem { i32 32, ptr @.str.376, i32 0, ptr @.str.377, ptr @.str.1 }, %struct.EnumPropertyItem { i32 64, ptr @.str.378, i32 0, ptr @.str.379, ptr @.str.1 }, %struct.EnumPropertyItem { i32 128, ptr @.str.380, i32 0, ptr @.str.381, ptr @.str.1 }, %struct.EnumPropertyItem { i32 256, ptr @.str.382, i32 0, ptr @.str.383, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Operator_report_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Operator_report_message, ptr null, i32 -1, ptr @.str.433, i32 2097159, ptr @.str.434, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_Operator_report_type_items, i32 9, i32 0 }, align 8
@.str.435 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.436 = private unnamed_addr constant [15 x i8] c"Report Message\00", align 1
@rna_Operator_poll_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Operator_execute_func, ptr @rna_Operator_report_func, ptr null, %struct.ListBase { ptr @rna_Operator_poll_visible, ptr @rna_Operator_poll_context } }, ptr @.str.440, i32 97, ptr @.str.441, ptr null, ptr @rna_Operator_poll_visible }, align 8
@.str.437 = private unnamed_addr constant [7 x i8] c"report\00", align 1
@rna_Operator_report_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Operator_poll_func, ptr null, ptr null, %struct.ListBase { ptr @rna_Operator_report_type, ptr @rna_Operator_report_message } }, ptr @.str.437, i32 0, ptr @.str.437, ptr @Operator_report_call, ptr null }, align 8
@rna_Operator_poll_context = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Operator_poll_visible, i32 -1, ptr @.str.439, i32 8650756, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Context }, align 8
@.str.438 = private unnamed_addr constant [8 x i8] c"visible\00", align 1
@rna_Operator_poll_visible = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Operator_poll_context, ptr null, i32 -1, ptr @.str.438, i32 11, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, ptr null }, align 8
@.str.439 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@RNA_Context = external global %struct.StructRNA, align 8
@rna_Operator_execute_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Operator_check_func, ptr @rna_Operator_poll_func, ptr null, %struct.ListBase { ptr @rna_Operator_execute_context, ptr @rna_Operator_execute_result } }, ptr @.str.443, i32 4192, ptr @.str.444, ptr null, ptr @rna_Operator_execute_result }, align 8
@.str.440 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@.str.441 = private unnamed_addr constant [42 x i8] c"Test if the operator can be called or not\00", align 1
@rna_Operator_execute_result = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Operator_execute_context, i32 -1, ptr @.str.442, i32 2097163, ptr @.str.442, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_Operator_execute_result_items, i32 5, i32 2 }, align 8
@rna_Operator_execute_context = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Operator_execute_result, ptr null, i32 -1, ptr @.str.439, i32 8650756, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Context }, align 8
@.str.442 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@rna_Operator_execute_result_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.351, i32 0, ptr @.str.352, ptr @.str.353 }, %struct.EnumPropertyItem { i32 2, ptr @.str.354, i32 0, ptr @.str.355, ptr @.str.356 }, %struct.EnumPropertyItem { i32 4, ptr @.str.357, i32 0, ptr @.str.358, ptr @.str.359 }, %struct.EnumPropertyItem { i32 8, ptr @.str.360, i32 0, ptr @.str.361, ptr @.str.362 }, %struct.EnumPropertyItem { i32 32, ptr @.str.363, i32 0, ptr @.str.364, ptr @.str.365 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Operator_check_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Operator_invoke_func, ptr @rna_Operator_execute_func, ptr null, %struct.ListBase { ptr @rna_Operator_check_context, ptr @rna_Operator_check_result } }, ptr @.str.445, i32 4192, ptr @.str.446, ptr null, ptr @rna_Operator_check_result }, align 8
@.str.443 = private unnamed_addr constant [8 x i8] c"execute\00", align 1
@.str.444 = private unnamed_addr constant [21 x i8] c"Execute the operator\00", align 1
@rna_Operator_check_result = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Operator_check_context, i32 -1, ptr @.str.442, i32 11, ptr @.str.442, ptr @.str.1, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_Operator_check_context = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Operator_check_result, ptr null, i32 -1, ptr @.str.439, i32 8650756, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Context }, align 8
@rna_Operator_invoke_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Operator_modal_func, ptr @rna_Operator_check_func, ptr null, %struct.ListBase { ptr @rna_Operator_invoke_context, ptr @rna_Operator_invoke_result } }, ptr @.str.448, i32 4192, ptr @.str.449, ptr null, ptr @rna_Operator_invoke_result }, align 8
@.str.445 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.446 = private unnamed_addr constant [70 x i8] c"Check the operator settings, return True to signal a change to redraw\00", align 1
@rna_Operator_invoke_event = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Operator_invoke_result, ptr @rna_Operator_invoke_context, i32 -1, ptr @.str.447, i32 8650756, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Event }, align 8
@rna_Operator_invoke_context = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Operator_invoke_event, ptr null, i32 -1, ptr @.str.439, i32 8650756, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Context }, align 8
@rna_Operator_invoke_result = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Operator_invoke_event, i32 -1, ptr @.str.442, i32 2097163, ptr @.str.442, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_Operator_invoke_result_items, i32 5, i32 2 }, align 8
@.str.447 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@RNA_Event = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Timer, ptr @RNA_OperatorMacro, ptr null, %struct.ListBase { ptr @rna_Event_rna_properties, ptr @rna_Event_oskey } }, ptr @.str.519, ptr null, ptr null, i32 4, ptr @.str.519, ptr @.str.520, ptr @.str.415, i32 17, ptr null, ptr @rna_Event_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@rna_Operator_invoke_result_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.351, i32 0, ptr @.str.352, ptr @.str.353 }, %struct.EnumPropertyItem { i32 2, ptr @.str.354, i32 0, ptr @.str.355, ptr @.str.356 }, %struct.EnumPropertyItem { i32 4, ptr @.str.357, i32 0, ptr @.str.358, ptr @.str.359 }, %struct.EnumPropertyItem { i32 8, ptr @.str.360, i32 0, ptr @.str.361, ptr @.str.362 }, %struct.EnumPropertyItem { i32 32, ptr @.str.363, i32 0, ptr @.str.364, ptr @.str.365 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Operator_modal_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Operator_draw_func, ptr @rna_Operator_invoke_func, ptr null, %struct.ListBase { ptr @rna_Operator_modal_context, ptr @rna_Operator_modal_result } }, ptr @.str.450, i32 4192, ptr @.str.451, ptr null, ptr @rna_Operator_modal_result }, align 8
@.str.448 = private unnamed_addr constant [7 x i8] c"invoke\00", align 1
@.str.449 = private unnamed_addr constant [20 x i8] c"Invoke the operator\00", align 1
@rna_Operator_modal_event = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Operator_modal_result, ptr @rna_Operator_modal_context, i32 -1, ptr @.str.447, i32 8650756, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Event }, align 8
@rna_Operator_modal_context = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Operator_modal_event, ptr null, i32 -1, ptr @.str.439, i32 8650756, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Context }, align 8
@rna_Operator_modal_result = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Operator_modal_event, i32 -1, ptr @.str.442, i32 2097163, ptr @.str.442, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_Operator_modal_result_items, i32 5, i32 2 }, align 8
@rna_Operator_modal_result_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.351, i32 0, ptr @.str.352, ptr @.str.353 }, %struct.EnumPropertyItem { i32 2, ptr @.str.354, i32 0, ptr @.str.355, ptr @.str.356 }, %struct.EnumPropertyItem { i32 4, ptr @.str.357, i32 0, ptr @.str.358, ptr @.str.359 }, %struct.EnumPropertyItem { i32 8, ptr @.str.360, i32 0, ptr @.str.361, ptr @.str.362 }, %struct.EnumPropertyItem { i32 32, ptr @.str.363, i32 0, ptr @.str.364, ptr @.str.365 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Operator_draw_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Operator_cancel_func, ptr @rna_Operator_modal_func, ptr null, %struct.ListBase { ptr @rna_Operator_draw_context, ptr @rna_Operator_draw_context } }, ptr @.str.452, i32 96, ptr @.str.453, ptr null, ptr null }, align 8
@.str.450 = private unnamed_addr constant [6 x i8] c"modal\00", align 1
@.str.451 = private unnamed_addr constant [24 x i8] c"Modal operator function\00", align 1
@rna_Operator_draw_context = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.439, i32 8650756, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Context }, align 8
@rna_Operator_cancel_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_Operator_draw_func, ptr null, %struct.ListBase { ptr @rna_Operator_cancel_context, ptr @rna_Operator_cancel_context } }, ptr @.str.454, i32 4192, ptr @.str.455, ptr null, ptr null }, align 8
@.str.452 = private unnamed_addr constant [5 x i8] c"draw\00", align 1
@.str.453 = private unnamed_addr constant [31 x i8] c"Draw function for the operator\00", align 1
@rna_Operator_cancel_context = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.439, i32 8650756, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Context }, align 8
@.str.454 = private unnamed_addr constant [7 x i8] c"cancel\00", align 1
@.str.455 = private unnamed_addr constant [37 x i8] c"Called when the operator is canceled\00", align 1
@RNA_VectorFont = external global %struct.StructRNA, align 8
@.str.456 = private unnamed_addr constant [69 x i8] c"Storage of an operator being executed, or registered after execution\00", align 1
@RNA_Operator = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_OperatorProperties, ptr @RNA_VectorFont, ptr null, %struct.ListBase { ptr @rna_Operator_rna_properties, ptr @rna_Operator_bl_options } }, ptr @.str.371, ptr null, ptr null, i32 4, ptr @.str.371, ptr @.str.456, ptr @.str.371, i32 17, ptr @rna_Operator_bl_idname, ptr @rna_Operator_rna_properties, ptr null, ptr null, ptr @rna_Operator_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_Operator_report_func, ptr @rna_Operator_cancel_func } }, align 8
@rna_OperatorProperties_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_OperatorProperties_rna_properties, i32 -1, ptr @.str.416, i32 8912896, ptr @.str.417, ptr @.str.418, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @OperatorProperties_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@RNA_OperatorMousePath = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_OperatorFileListElement, ptr @RNA_OperatorProperties, ptr null, %struct.ListBase { ptr @rna_OperatorMousePath_loc, ptr @rna_OperatorMousePath_time } }, ptr @.str.466, ptr null, ptr null, i32 4, ptr @.str.467, ptr @.str.468, ptr @.str.415, i32 17, ptr @rna_PropertyGroup_name, ptr @rna_PropertyGroup_rna_properties, ptr @RNA_PropertyGroup, ptr null, ptr @rna_PropertyGroup_refine, ptr null, ptr @rna_PropertyGroup_register, ptr @rna_PropertyGroup_unregister, ptr null, ptr @rna_PropertyGroup_idprops, %struct.ListBase zeroinitializer }, align 8
@.str.457 = private unnamed_addr constant [19 x i8] c"OperatorProperties\00", align 1
@.str.458 = private unnamed_addr constant [20 x i8] c"Operator Properties\00", align 1
@.str.459 = private unnamed_addr constant [32 x i8] c"Input properties of an Operator\00", align 1
@rna_OperatorMousePath_time = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_OperatorMousePath_loc, i32 -1, ptr @.str.463, i32 1027, ptr @.str.464, ptr @.str.465, i32 0, ptr @.str.415, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.460 = private unnamed_addr constant [4 x i8] c"loc\00", align 1
@.str.461 = private unnamed_addr constant [9 x i8] c"Location\00", align 1
@.str.462 = private unnamed_addr constant [15 x i8] c"Mouse location\00", align 1
@rna_OperatorMousePath_loc_default = internal global [2 x float] zeroinitializer, align 4
@rna_OperatorMousePath_loc = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_OperatorMousePath_time, ptr null, i32 -1, ptr @.str.460, i32 1027, ptr @.str.461, ptr @.str.462, i32 0, ptr @.str.415, i32 2, i32 29, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_OperatorMousePath_loc_default }, align 8
@.str.463 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.464 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str.465 = private unnamed_addr constant [23 x i8] c"Time of mouse location\00", align 1
@RNA_OperatorFileListElement = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Macro, ptr @RNA_OperatorMousePath, ptr null, %struct.ListBase { ptr @rna_OperatorFileListElement_name, ptr @rna_OperatorFileListElement_name } }, ptr @.str.470, ptr null, ptr null, i32 4, ptr @.str.471, ptr @.str.1, ptr @.str.415, i32 17, ptr @rna_PropertyGroup_name, ptr @rna_PropertyGroup_rna_properties, ptr @RNA_PropertyGroup, ptr null, ptr @rna_PropertyGroup_refine, ptr null, ptr @rna_PropertyGroup_register, ptr @rna_PropertyGroup_unregister, ptr null, ptr @rna_PropertyGroup_idprops, %struct.ListBase zeroinitializer }, align 8
@.str.466 = private unnamed_addr constant [18 x i8] c"OperatorMousePath\00", align 1
@.str.467 = private unnamed_addr constant [20 x i8] c"Operator Mouse Path\00", align 1
@.str.468 = private unnamed_addr constant [55 x i8] c"Mouse path values for operators that record such paths\00", align 1
@rna_PropertyGroup_name = external global %struct.StringPropertyRNA, align 8
@rna_PropertyGroup_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@RNA_PropertyGroup = external global %struct.StructRNA, align 8
@.str.469 = private unnamed_addr constant [47 x i8] c"Name of a file or directory within a file list\00", align 1
@rna_OperatorFileListElement_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.419, i32 263169, ptr @.str.420, ptr @.str.469, i32 0, ptr @.str.415, i32 3, i32 3, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.1 }, align 8
@RNA_Macro = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_OperatorMacro, ptr @RNA_OperatorFileListElement, ptr null, %struct.ListBase { ptr @rna_Macro_rna_properties, ptr @rna_Macro_bl_options } }, ptr @.str.472, ptr null, ptr null, i32 4, ptr @.str.473, ptr @.str.474, ptr @.str.371, i32 17, ptr @rna_Macro_bl_idname, ptr @rna_Macro_rna_properties, ptr null, ptr null, ptr @rna_MacroOperator_refine, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_Macro_report_func, ptr @rna_Macro_draw_func } }, align 8
@.str.470 = private unnamed_addr constant [24 x i8] c"OperatorFileListElement\00", align 1
@.str.471 = private unnamed_addr constant [27 x i8] c"Operator File List Element\00", align 1
@rna_Macro_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Macro_name, ptr @rna_Macro_rna_properties, i32 -1, ptr @.str.416, i32 8912896, ptr @.str.417, ptr @.str.418, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Macro_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_Macro_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Macro_properties, ptr @rna_Macro_rna_type, i32 -1, ptr @.str.419, i32 262144, ptr @.str.420, ptr @.str.1, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Macro_name_get, ptr @Macro_name_length, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.1 }, align 8
@rna_Macro_properties = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Macro_bl_idname, ptr @rna_Macro_name, i32 -1, ptr @.str.421, i32 8650752, ptr @.str.413, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Macro_properties_get, ptr null, ptr null, ptr null, ptr @RNA_OperatorProperties }, align 8
@rna_Macro_bl_idname = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Macro_bl_label, ptr @rna_Macro_properties, i32 -1, ptr @.str.426, i32 262161, ptr @.str.426, ptr @.str.1, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Macro_bl_idname_get, ptr @Macro_bl_idname_length, ptr @Macro_bl_idname_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.1 }, align 8
@rna_Macro_bl_label = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Macro_bl_translation_context, ptr @rna_Macro_bl_idname, i32 -1, ptr @.str.427, i32 262161, ptr @.str.427, ptr @.str.1, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Macro_bl_label_get, ptr @Macro_bl_label_length, ptr @Macro_bl_label_set, ptr null, ptr null, ptr null, i32 240, ptr @.str.1 }, align 8
@rna_Macro_bl_translation_context = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Macro_bl_description, ptr @rna_Macro_bl_label, i32 -1, ptr @.str.428, i32 49, ptr @.str.428, ptr @.str.1, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Macro_bl_translation_context_get, ptr @Macro_bl_translation_context_length, ptr @Macro_bl_translation_context_set, ptr null, ptr null, ptr null, i32 240, ptr @.str.371 }, align 8
@rna_Macro_bl_description = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Macro_bl_options, ptr @rna_Macro_bl_translation_context, i32 -1, ptr @.str.429, i32 49, ptr @.str.429, ptr @.str.1, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Macro_bl_description_get, ptr @Macro_bl_description_length, ptr @Macro_bl_description_set, ptr null, ptr null, ptr null, i32 240, ptr @.str.1 }, align 8
@rna_Macro_bl_options = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Macro_bl_description, i32 -1, ptr @.str.430, i32 2097203, ptr @.str.431, ptr @.str.432, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Macro_bl_options_get, ptr @Macro_bl_options_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_Macro_bl_options_items, i32 7, i32 1 }, align 8
@rna_Macro_bl_options_items = internal global [8 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.731, i32 0, ptr @.str.732, ptr @.str.733 }, %struct.EnumPropertyItem { i32 2, ptr @.str.734, i32 0, ptr @.str.735, ptr @.str.736 }, %struct.EnumPropertyItem { i32 4, ptr @.str.737, i32 0, ptr @.str.738, ptr @.str.739 }, %struct.EnumPropertyItem { i32 8, ptr @.str.740, i32 0, ptr @.str.472, ptr @.str.741 }, %struct.EnumPropertyItem { i32 16, ptr @.str.742, i32 0, ptr @.str.743, ptr @.str.744 }, %struct.EnumPropertyItem { i32 32, ptr @.str.745, i32 0, ptr @.str.746, ptr @.str.747 }, %struct.EnumPropertyItem { i32 64, ptr @.str.748, i32 0, ptr @.str.749, ptr @.str.750 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Macro_report_message = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Macro_report_type, i32 -1, ptr @.str.435, i32 262149, ptr @.str.436, ptr @.str.1, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.1 }, align 8
@rna_Macro_report_type_items = internal global [10 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.366, i32 0, ptr @.str.367, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.368, i32 0, ptr @.str.369, ptr @.str.1 }, %struct.EnumPropertyItem { i32 4, ptr @.str.370, i32 0, ptr @.str.371, ptr @.str.1 }, %struct.EnumPropertyItem { i32 8, ptr @.str.372, i32 0, ptr @.str.373, ptr @.str.1 }, %struct.EnumPropertyItem { i32 16, ptr @.str.374, i32 0, ptr @.str.375, ptr @.str.1 }, %struct.EnumPropertyItem { i32 32, ptr @.str.376, i32 0, ptr @.str.377, ptr @.str.1 }, %struct.EnumPropertyItem { i32 64, ptr @.str.378, i32 0, ptr @.str.379, ptr @.str.1 }, %struct.EnumPropertyItem { i32 128, ptr @.str.380, i32 0, ptr @.str.381, ptr @.str.1 }, %struct.EnumPropertyItem { i32 256, ptr @.str.382, i32 0, ptr @.str.383, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Macro_report_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Macro_report_message, ptr null, i32 -1, ptr @.str.433, i32 2097159, ptr @.str.434, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_Macro_report_type_items, i32 9, i32 0 }, align 8
@rna_Macro_poll_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Macro_draw_func, ptr @rna_Macro_report_func, ptr null, %struct.ListBase { ptr @rna_Macro_poll_visible, ptr @rna_Macro_poll_context } }, ptr @.str.440, i32 97, ptr @.str.441, ptr null, ptr @rna_Macro_poll_visible }, align 8
@rna_Macro_report_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Macro_poll_func, ptr null, ptr null, %struct.ListBase { ptr @rna_Macro_report_type, ptr @rna_Macro_report_message } }, ptr @.str.437, i32 0, ptr @.str.437, ptr @Macro_report_call, ptr null }, align 8
@rna_Macro_poll_context = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Macro_poll_visible, i32 -1, ptr @.str.439, i32 8650756, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Context }, align 8
@rna_Macro_poll_visible = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Macro_poll_context, ptr null, i32 -1, ptr @.str.438, i32 11, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, ptr null }, align 8
@rna_Macro_draw_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_Macro_poll_func, ptr null, %struct.ListBase { ptr @rna_Macro_draw_context, ptr @rna_Macro_draw_context } }, ptr @.str.452, i32 96, ptr @.str.453, ptr null, ptr null }, align 8
@rna_Macro_draw_context = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.439, i32 8650756, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Context }, align 8
@RNA_OperatorMacro = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Event, ptr @RNA_Macro, ptr null, %struct.ListBase { ptr @rna_OperatorMacro_rna_properties, ptr @rna_OperatorMacro_properties } }, ptr @.str.475, ptr null, ptr null, i32 4, ptr @.str.476, ptr @.str.477, ptr @.str.415, i32 17, ptr null, ptr @rna_OperatorMacro_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.472 = private unnamed_addr constant [6 x i8] c"Macro\00", align 1
@.str.473 = private unnamed_addr constant [15 x i8] c"Macro Operator\00", align 1
@.str.474 = private unnamed_addr constant [74 x i8] c"Storage of a macro operator being executed, or registered after execution\00", align 1
@rna_OperatorMacro_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_OperatorMacro_properties, ptr @rna_OperatorMacro_rna_properties, i32 -1, ptr @.str.416, i32 8912896, ptr @.str.417, ptr @.str.418, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @OperatorMacro_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_OperatorMacro_properties = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_OperatorMacro_rna_type, i32 -1, ptr @.str.421, i32 8650752, ptr @.str.413, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @OperatorMacro_properties_get, ptr null, ptr null, ptr null, ptr @RNA_OperatorProperties }, align 8
@.str.475 = private unnamed_addr constant [14 x i8] c"OperatorMacro\00", align 1
@.str.476 = private unnamed_addr constant [15 x i8] c"Operator Macro\00", align 1
@.str.477 = private unnamed_addr constant [61 x i8] c"Storage of a sub operator in a macro after it has been added\00", align 1
@rna_Event_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Event_ascii, ptr @rna_Event_rna_properties, i32 -1, ptr @.str.416, i32 8912896, ptr @.str.417, ptr @.str.418, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Event_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_Event_ascii = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Event_unicode, ptr @rna_Event_rna_type, i32 -1, ptr @.str.478, i32 262144, ptr @.str.479, ptr @.str.480, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Event_ascii_get, ptr @Event_ascii_length, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.1 }, align 8
@rna_Event_unicode = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_Event_value, ptr @rna_Event_ascii, i32 -1, ptr @.str.481, i32 262144, ptr @.str.482, ptr @.str.483, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Event_unicode_get, ptr @Event_unicode_length, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.1 }, align 8
@.str.478 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.479 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1
@.str.480 = private unnamed_addr constant [38 x i8] c"Single ASCII character for this event\00", align 1
@rna_Event_value = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Event_type, ptr @rna_Event_unicode, i32 -1, ptr @.str.484, i32 2, ptr @.str.485, ptr @.str.486, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Event_value_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_Event_value_items, i32 14, i32 0 }, align 8
@.str.481 = private unnamed_addr constant [8 x i8] c"unicode\00", align 1
@.str.482 = private unnamed_addr constant [8 x i8] c"Unicode\00", align 1
@.str.483 = private unnamed_addr constant [40 x i8] c"Single unicode character for this event\00", align 1
@rna_Event_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_Event_mouse_x, ptr @rna_Event_value, i32 -1, ptr @.str.433, i32 2, ptr @.str.434, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Event_type_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_Event_type_items, i32 195, i32 0 }, align 8
@.str.484 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.485 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.486 = private unnamed_addr constant [40 x i8] c"The type of event, only applies to some\00", align 1
@rna_Event_value_items = internal global [15 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 -1, ptr @.str.323, i32 0, ptr @.str.324, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.325, i32 0, ptr @.str.326, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.327, i32 0, ptr @.str.328, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.329, i32 0, ptr @.str.330, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.331, i32 0, ptr @.str.332, ptr @.str.1 }, %struct.EnumPropertyItem { i32 4, ptr @.str.333, i32 0, ptr @.str.334, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.335, i32 0, ptr @.str.336, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.337, i32 0, ptr @.str.338, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.339, i32 0, ptr @.str.340, ptr @.str.1 }, %struct.EnumPropertyItem { i32 4, ptr @.str.341, i32 0, ptr @.str.342, ptr @.str.1 }, %struct.EnumPropertyItem { i32 5, ptr @.str.343, i32 0, ptr @.str.344, ptr @.str.1 }, %struct.EnumPropertyItem { i32 6, ptr @.str.345, i32 0, ptr @.str.346, ptr @.str.1 }, %struct.EnumPropertyItem { i32 7, ptr @.str.347, i32 0, ptr @.str.348, ptr @.str.1 }, %struct.EnumPropertyItem { i32 8, ptr @.str.349, i32 0, ptr @.str.350, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Event_mouse_x = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Event_mouse_y, ptr @rna_Event_type, i32 -1, ptr @.str.487, i32 2, ptr @.str.488, ptr @.str.489, i32 0, ptr @.str.415, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Event_mouse_x_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_Event_type_items = internal global [196 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.2, i32 0, ptr @.str.3, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.4, i32 0, ptr @.str.5, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.1 }, %struct.EnumPropertyItem { i32 7, ptr @.str.8, i32 0, ptr @.str.9, ptr @.str.1 }, %struct.EnumPropertyItem { i32 8, ptr @.str.10, i32 0, ptr @.str.11, ptr @.str.1 }, %struct.EnumPropertyItem { i32 18, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.1 }, %struct.EnumPropertyItem { i32 19, ptr @.str.14, i32 0, ptr @.str.15, ptr @.str.1 }, %struct.EnumPropertyItem { i32 5, ptr @.str.16, i32 0, ptr @.str.17, ptr @.str.1 }, %struct.EnumPropertyItem { i32 6, ptr @.str.18, i32 0, ptr @.str.19, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 4, ptr @.str.20, i32 0, ptr @.str.21, ptr @.str.1 }, %struct.EnumPropertyItem { i32 17, ptr @.str.22, i32 0, ptr @.str.23, ptr @.str.1 }, %struct.EnumPropertyItem { i32 14, ptr @.str.24, i32 0, ptr @.str.25, ptr @.str.1 }, %struct.EnumPropertyItem { i32 15, ptr @.str.26, i32 0, ptr @.str.27, ptr @.str.1 }, %struct.EnumPropertyItem { i32 16, ptr @.str.28, i32 0, ptr @.str.29, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 10, ptr @.str.30, i32 0, ptr @.str.31, ptr @.str.1 }, %struct.EnumPropertyItem { i32 11, ptr @.str.32, i32 0, ptr @.str.33, ptr @.str.1 }, %struct.EnumPropertyItem { i32 12, ptr @.str.34, i32 0, ptr @.str.35, ptr @.str.1 }, %struct.EnumPropertyItem { i32 13, ptr @.str.36, i32 0, ptr @.str.37, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 20483, ptr @.str.38, i32 0, ptr @.str.39, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20484, ptr @.str.40, i32 0, ptr @.str.41, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20485, ptr @.str.42, i32 0, ptr @.str.43, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20486, ptr @.str.44, i32 0, ptr @.str.45, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20487, ptr @.str.46, i32 0, ptr @.str.47, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 97, ptr @.str.48, i32 0, ptr @.str.48, ptr @.str.1 }, %struct.EnumPropertyItem { i32 98, ptr @.str.49, i32 0, ptr @.str.49, ptr @.str.1 }, %struct.EnumPropertyItem { i32 99, ptr @.str.50, i32 0, ptr @.str.50, ptr @.str.1 }, %struct.EnumPropertyItem { i32 100, ptr @.str.51, i32 0, ptr @.str.51, ptr @.str.1 }, %struct.EnumPropertyItem { i32 101, ptr @.str.52, i32 0, ptr @.str.52, ptr @.str.1 }, %struct.EnumPropertyItem { i32 102, ptr @.str.53, i32 0, ptr @.str.53, ptr @.str.1 }, %struct.EnumPropertyItem { i32 103, ptr @.str.54, i32 0, ptr @.str.54, ptr @.str.1 }, %struct.EnumPropertyItem { i32 104, ptr @.str.55, i32 0, ptr @.str.55, ptr @.str.1 }, %struct.EnumPropertyItem { i32 105, ptr @.str.56, i32 0, ptr @.str.56, ptr @.str.1 }, %struct.EnumPropertyItem { i32 106, ptr @.str.57, i32 0, ptr @.str.57, ptr @.str.1 }, %struct.EnumPropertyItem { i32 107, ptr @.str.58, i32 0, ptr @.str.58, ptr @.str.1 }, %struct.EnumPropertyItem { i32 108, ptr @.str.59, i32 0, ptr @.str.59, ptr @.str.1 }, %struct.EnumPropertyItem { i32 109, ptr @.str.60, i32 0, ptr @.str.60, ptr @.str.1 }, %struct.EnumPropertyItem { i32 110, ptr @.str.61, i32 0, ptr @.str.61, ptr @.str.1 }, %struct.EnumPropertyItem { i32 111, ptr @.str.62, i32 0, ptr @.str.62, ptr @.str.1 }, %struct.EnumPropertyItem { i32 112, ptr @.str.63, i32 0, ptr @.str.63, ptr @.str.1 }, %struct.EnumPropertyItem { i32 113, ptr @.str.64, i32 0, ptr @.str.64, ptr @.str.1 }, %struct.EnumPropertyItem { i32 114, ptr @.str.65, i32 0, ptr @.str.65, ptr @.str.1 }, %struct.EnumPropertyItem { i32 115, ptr @.str.66, i32 0, ptr @.str.66, ptr @.str.1 }, %struct.EnumPropertyItem { i32 116, ptr @.str.67, i32 0, ptr @.str.67, ptr @.str.1 }, %struct.EnumPropertyItem { i32 117, ptr @.str.68, i32 0, ptr @.str.68, ptr @.str.1 }, %struct.EnumPropertyItem { i32 118, ptr @.str.69, i32 0, ptr @.str.69, ptr @.str.1 }, %struct.EnumPropertyItem { i32 119, ptr @.str.70, i32 0, ptr @.str.70, ptr @.str.1 }, %struct.EnumPropertyItem { i32 120, ptr @.str.71, i32 0, ptr @.str.71, ptr @.str.1 }, %struct.EnumPropertyItem { i32 121, ptr @.str.72, i32 0, ptr @.str.72, ptr @.str.1 }, %struct.EnumPropertyItem { i32 122, ptr @.str.73, i32 0, ptr @.str.73, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 48, ptr @.str.74, i32 0, ptr @.str.75, ptr @.str.1 }, %struct.EnumPropertyItem { i32 49, ptr @.str.76, i32 0, ptr @.str.77, ptr @.str.1 }, %struct.EnumPropertyItem { i32 50, ptr @.str.78, i32 0, ptr @.str.79, ptr @.str.1 }, %struct.EnumPropertyItem { i32 51, ptr @.str.80, i32 0, ptr @.str.81, ptr @.str.1 }, %struct.EnumPropertyItem { i32 52, ptr @.str.82, i32 0, ptr @.str.83, ptr @.str.1 }, %struct.EnumPropertyItem { i32 53, ptr @.str.84, i32 0, ptr @.str.85, ptr @.str.1 }, %struct.EnumPropertyItem { i32 54, ptr @.str.86, i32 0, ptr @.str.87, ptr @.str.1 }, %struct.EnumPropertyItem { i32 55, ptr @.str.88, i32 0, ptr @.str.89, ptr @.str.1 }, %struct.EnumPropertyItem { i32 56, ptr @.str.90, i32 0, ptr @.str.91, ptr @.str.1 }, %struct.EnumPropertyItem { i32 57, ptr @.str.92, i32 0, ptr @.str.93, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 212, ptr @.str.94, i32 0, ptr @.str.95, ptr @.str.1 }, %struct.EnumPropertyItem { i32 213, ptr @.str.96, i32 0, ptr @.str.97, ptr @.str.1 }, %struct.EnumPropertyItem { i32 217, ptr @.str.98, i32 0, ptr @.str.99, ptr @.str.1 }, %struct.EnumPropertyItem { i32 214, ptr @.str.100, i32 0, ptr @.str.101, ptr @.str.1 }, %struct.EnumPropertyItem { i32 215, ptr @.str.102, i32 0, ptr @.str.103, ptr @.str.1 }, %struct.EnumPropertyItem { i32 216, ptr @.str.104, i32 0, ptr @.str.105, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 172, ptr @.str.106, i32 0, ptr @.str.107, ptr @.str.1 }, %struct.EnumPropertyItem { i32 173, ptr @.str.108, i32 0, ptr @.str.109, ptr @.str.1 }, %struct.EnumPropertyItem { i32 218, ptr @.str.110, i32 0, ptr @.str.111, ptr @.str.1 }, %struct.EnumPropertyItem { i32 219, ptr @.str.112, i32 0, ptr @.str.113, ptr @.str.1 }, %struct.EnumPropertyItem { i32 220, ptr @.str.114, i32 0, ptr @.str.115, ptr @.str.1 }, %struct.EnumPropertyItem { i32 221, ptr @.str.116, i32 0, ptr @.str.117, ptr @.str.1 }, %struct.EnumPropertyItem { i32 222, ptr @.str.118, i32 0, ptr @.str.119, ptr @.str.1 }, %struct.EnumPropertyItem { i32 223, ptr @.str.120, i32 0, ptr @.str.121, ptr @.str.1 }, %struct.EnumPropertyItem { i32 224, ptr @.str.122, i32 0, ptr @.str.123, ptr @.str.1 }, %struct.EnumPropertyItem { i32 225, ptr @.str.124, i32 0, ptr @.str.125, ptr @.str.1 }, %struct.EnumPropertyItem { i32 226, ptr @.str.126, i32 0, ptr @.str.127, ptr @.str.1 }, %struct.EnumPropertyItem { i32 227, ptr @.str.128, i32 0, ptr @.str.129, ptr @.str.1 }, %struct.EnumPropertyItem { i32 228, ptr @.str.130, i32 0, ptr @.str.131, ptr @.str.1 }, %struct.EnumPropertyItem { i32 229, ptr @.str.132, i32 0, ptr @.str.133, ptr @.str.1 }, %struct.EnumPropertyItem { i32 230, ptr @.str.134, i32 0, ptr @.str.135, ptr @.str.1 }, %struct.EnumPropertyItem { i32 232, ptr @.str.136, i32 0, ptr @.str.137, ptr @.str.1 }, %struct.EnumPropertyItem { i32 233, ptr @.str.138, i32 0, ptr @.str.139, ptr @.str.1 }, %struct.EnumPropertyItem { i32 234, ptr @.str.140, i32 0, ptr @.str.141, ptr @.str.1 }, %struct.EnumPropertyItem { i32 235, ptr @.str.142, i32 0, ptr @.str.143, ptr @.str.1 }, %struct.EnumPropertyItem { i32 236, ptr @.str.144, i32 0, ptr @.str.145, ptr @.str.1 }, %struct.EnumPropertyItem { i32 137, ptr @.str.146, i32 0, ptr @.str.147, ptr @.str.1 }, %struct.EnumPropertyItem { i32 138, ptr @.str.148, i32 0, ptr @.str.149, ptr @.str.1 }, %struct.EnumPropertyItem { i32 139, ptr @.str.150, i32 0, ptr @.str.151, ptr @.str.1 }, %struct.EnumPropertyItem { i32 140, ptr @.str.152, i32 0, ptr @.str.153, ptr @.str.1 }, %struct.EnumPropertyItem { i32 152, ptr @.str.154, i32 0, ptr @.str.155, ptr @.str.1 }, %struct.EnumPropertyItem { i32 154, ptr @.str.156, i32 0, ptr @.str.157, ptr @.str.1 }, %struct.EnumPropertyItem { i32 156, ptr @.str.158, i32 0, ptr @.str.159, ptr @.str.1 }, %struct.EnumPropertyItem { i32 158, ptr @.str.160, i32 0, ptr @.str.161, ptr @.str.1 }, %struct.EnumPropertyItem { i32 151, ptr @.str.162, i32 0, ptr @.str.163, ptr @.str.1 }, %struct.EnumPropertyItem { i32 153, ptr @.str.164, i32 0, ptr @.str.165, ptr @.str.1 }, %struct.EnumPropertyItem { i32 155, ptr @.str.166, i32 0, ptr @.str.167, ptr @.str.1 }, %struct.EnumPropertyItem { i32 157, ptr @.str.168, i32 0, ptr @.str.169, ptr @.str.1 }, %struct.EnumPropertyItem { i32 159, ptr @.str.170, i32 0, ptr @.str.171, ptr @.str.1 }, %struct.EnumPropertyItem { i32 199, ptr @.str.172, i32 0, ptr @.str.173, ptr @.str.1 }, %struct.EnumPropertyItem { i32 161, ptr @.str.174, i32 0, ptr @.str.175, ptr @.str.1 }, %struct.EnumPropertyItem { i32 160, ptr @.str.176, i32 0, ptr @.str.177, ptr @.str.1 }, %struct.EnumPropertyItem { i32 150, ptr @.str.178, i32 0, ptr @.str.179, ptr @.str.1 }, %struct.EnumPropertyItem { i32 162, ptr @.str.180, i32 0, ptr @.str.181, ptr @.str.1 }, %struct.EnumPropertyItem { i32 163, ptr @.str.182, i32 0, ptr @.str.183, ptr @.str.1 }, %struct.EnumPropertyItem { i32 164, ptr @.str.184, i32 0, ptr @.str.185, ptr @.str.1 }, %struct.EnumPropertyItem { i32 300, ptr @.str.186, i32 0, ptr @.str.186, ptr @.str.1 }, %struct.EnumPropertyItem { i32 301, ptr @.str.187, i32 0, ptr @.str.187, ptr @.str.1 }, %struct.EnumPropertyItem { i32 302, ptr @.str.188, i32 0, ptr @.str.188, ptr @.str.1 }, %struct.EnumPropertyItem { i32 303, ptr @.str.189, i32 0, ptr @.str.189, ptr @.str.1 }, %struct.EnumPropertyItem { i32 304, ptr @.str.190, i32 0, ptr @.str.190, ptr @.str.1 }, %struct.EnumPropertyItem { i32 305, ptr @.str.191, i32 0, ptr @.str.191, ptr @.str.1 }, %struct.EnumPropertyItem { i32 306, ptr @.str.192, i32 0, ptr @.str.192, ptr @.str.1 }, %struct.EnumPropertyItem { i32 307, ptr @.str.193, i32 0, ptr @.str.193, ptr @.str.1 }, %struct.EnumPropertyItem { i32 308, ptr @.str.194, i32 0, ptr @.str.194, ptr @.str.1 }, %struct.EnumPropertyItem { i32 309, ptr @.str.195, i32 0, ptr @.str.195, ptr @.str.1 }, %struct.EnumPropertyItem { i32 310, ptr @.str.196, i32 0, ptr @.str.196, ptr @.str.1 }, %struct.EnumPropertyItem { i32 311, ptr @.str.197, i32 0, ptr @.str.197, ptr @.str.1 }, %struct.EnumPropertyItem { i32 312, ptr @.str.198, i32 0, ptr @.str.198, ptr @.str.1 }, %struct.EnumPropertyItem { i32 313, ptr @.str.199, i32 0, ptr @.str.199, ptr @.str.1 }, %struct.EnumPropertyItem { i32 314, ptr @.str.200, i32 0, ptr @.str.200, ptr @.str.1 }, %struct.EnumPropertyItem { i32 315, ptr @.str.201, i32 0, ptr @.str.201, ptr @.str.1 }, %struct.EnumPropertyItem { i32 316, ptr @.str.202, i32 0, ptr @.str.202, ptr @.str.1 }, %struct.EnumPropertyItem { i32 317, ptr @.str.203, i32 0, ptr @.str.203, ptr @.str.1 }, %struct.EnumPropertyItem { i32 318, ptr @.str.204, i32 0, ptr @.str.204, ptr @.str.1 }, %struct.EnumPropertyItem { i32 165, ptr @.str.205, i32 0, ptr @.str.206, ptr @.str.1 }, %struct.EnumPropertyItem { i32 166, ptr @.str.207, i32 0, ptr @.str.208, ptr @.str.1 }, %struct.EnumPropertyItem { i32 167, ptr @.str.209, i32 0, ptr @.str.210, ptr @.str.1 }, %struct.EnumPropertyItem { i32 168, ptr @.str.211, i32 0, ptr @.str.212, ptr @.str.1 }, %struct.EnumPropertyItem { i32 169, ptr @.str.213, i32 0, ptr @.str.214, ptr @.str.1 }, %struct.EnumPropertyItem { i32 170, ptr @.str.215, i32 0, ptr @.str.216, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 174, ptr @.str.217, i32 0, ptr @.str.218, ptr @.str.1 }, %struct.EnumPropertyItem { i32 175, ptr @.str.219, i32 0, ptr @.str.220, ptr @.str.1 }, %struct.EnumPropertyItem { i32 176, ptr @.str.221, i32 0, ptr @.str.222, ptr @.str.1 }, %struct.EnumPropertyItem { i32 177, ptr @.str.223, i32 0, ptr @.str.224, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 -2, ptr @.str.225, i32 0, ptr @.str.226, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 260, ptr @.str.227, i32 0, ptr @.str.228, ptr @.str.1 }, %struct.EnumPropertyItem { i32 272, ptr @.str.229, i32 0, ptr @.str.230, ptr @.str.1 }, %struct.EnumPropertyItem { i32 273, ptr @.str.231, i32 0, ptr @.str.232, ptr @.str.1 }, %struct.EnumPropertyItem { i32 274, ptr @.str.233, i32 0, ptr @.str.234, ptr @.str.1 }, %struct.EnumPropertyItem { i32 275, ptr @.str.235, i32 0, ptr @.str.236, ptr @.str.1 }, %struct.EnumPropertyItem { i32 276, ptr @.str.237, i32 0, ptr @.str.238, ptr @.str.1 }, %struct.EnumPropertyItem { i32 277, ptr @.str.239, i32 0, ptr @.str.240, ptr @.str.1 }, %struct.EnumPropertyItem { i32 278, ptr @.str.241, i32 0, ptr @.str.242, ptr @.str.1 }, %struct.EnumPropertyItem { i32 279, ptr @.str.243, i32 0, ptr @.str.244, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 400, ptr @.str.245, i32 0, ptr @.str.246, ptr @.str.1 }, %struct.EnumPropertyItem { i32 401, ptr @.str.247, i32 0, ptr @.str.248, ptr @.str.1 }, %struct.EnumPropertyItem { i32 402, ptr @.str.249, i32 0, ptr @.str.250, ptr @.str.1 }, %struct.EnumPropertyItem { i32 403, ptr @.str.251, i32 0, ptr @.str.252, ptr @.str.1 }, %struct.EnumPropertyItem { i32 404, ptr @.str.253, i32 0, ptr @.str.254, ptr @.str.1 }, %struct.EnumPropertyItem { i32 405, ptr @.str.255, i32 0, ptr @.str.256, ptr @.str.1 }, %struct.EnumPropertyItem { i32 406, ptr @.str.257, i32 0, ptr @.str.258, ptr @.str.1 }, %struct.EnumPropertyItem { i32 407, ptr @.str.259, i32 0, ptr @.str.260, ptr @.str.1 }, %struct.EnumPropertyItem { i32 408, ptr @.str.261, i32 0, ptr @.str.262, ptr @.str.1 }, %struct.EnumPropertyItem { i32 409, ptr @.str.263, i32 0, ptr @.str.264, ptr @.str.1 }, %struct.EnumPropertyItem { i32 410, ptr @.str.265, i32 0, ptr @.str.266, ptr @.str.1 }, %struct.EnumPropertyItem { i32 411, ptr @.str.267, i32 0, ptr @.str.268, ptr @.str.1 }, %struct.EnumPropertyItem { i32 412, ptr @.str.269, i32 0, ptr @.str.270, ptr @.str.1 }, %struct.EnumPropertyItem { i32 413, ptr @.str.271, i32 0, ptr @.str.272, ptr @.str.1 }, %struct.EnumPropertyItem { i32 414, ptr @.str.273, i32 0, ptr @.str.274, ptr @.str.1 }, %struct.EnumPropertyItem { i32 415, ptr @.str.275, i32 0, ptr @.str.276, ptr @.str.1 }, %struct.EnumPropertyItem { i32 416, ptr @.str.277, i32 0, ptr @.str.278, ptr @.str.1 }, %struct.EnumPropertyItem { i32 417, ptr @.str.279, i32 0, ptr @.str.280, ptr @.str.1 }, %struct.EnumPropertyItem { i32 418, ptr @.str.281, i32 0, ptr @.str.282, ptr @.str.1 }, %struct.EnumPropertyItem { i32 419, ptr @.str.283, i32 0, ptr @.str.284, ptr @.str.1 }, %struct.EnumPropertyItem { i32 420, ptr @.str.285, i32 0, ptr @.str.286, ptr @.str.1 }, %struct.EnumPropertyItem { i32 421, ptr @.str.287, i32 0, ptr @.str.288, ptr @.str.1 }, %struct.EnumPropertyItem { i32 422, ptr @.str.289, i32 0, ptr @.str.290, ptr null }, %struct.EnumPropertyItem { i32 423, ptr @.str.291, i32 0, ptr @.str.292, ptr null }, %struct.EnumPropertyItem { i32 424, ptr @.str.293, i32 0, ptr @.str.294, ptr null }, %struct.EnumPropertyItem { i32 425, ptr @.str.295, i32 0, ptr @.str.296, ptr null }, %struct.EnumPropertyItem { i32 426, ptr @.str.297, i32 0, ptr @.str.298, ptr @.str.1 }, %struct.EnumPropertyItem { i32 427, ptr @.str.299, i32 0, ptr @.str.300, ptr @.str.1 }, %struct.EnumPropertyItem { i32 428, ptr @.str.301, i32 0, ptr @.str.302, ptr @.str.1 }, %struct.EnumPropertyItem { i32 429, ptr @.str.303, i32 0, ptr @.str.304, ptr @.str.1 }, %struct.EnumPropertyItem { i32 430, ptr @.str.305, i32 0, ptr @.str.306, ptr @.str.1 }, %struct.EnumPropertyItem { i32 431, ptr @.str.307, i32 0, ptr @.str.308, ptr @.str.1 }, %struct.EnumPropertyItem { i32 432, ptr @.str.309, i32 0, ptr @.str.310, ptr @.str.1 }, %struct.EnumPropertyItem { i32 433, ptr @.str.311, i32 0, ptr @.str.312, ptr @.str.1 }, %struct.EnumPropertyItem { i32 434, ptr @.str.313, i32 0, ptr @.str.314, ptr @.str.1 }, %struct.EnumPropertyItem { i32 435, ptr @.str.315, i32 0, ptr @.str.316, ptr @.str.1 }, %struct.EnumPropertyItem { i32 436, ptr @.str.317, i32 0, ptr @.str.318, ptr @.str.1 }, %struct.EnumPropertyItem { i32 437, ptr @.str.319, i32 0, ptr @.str.320, ptr @.str.1 }, %struct.EnumPropertyItem { i32 438, ptr @.str.321, i32 0, ptr @.str.322, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Event_mouse_y = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Event_mouse_region_x, ptr @rna_Event_mouse_x, i32 -1, ptr @.str.490, i32 2, ptr @.str.491, ptr @.str.492, i32 0, ptr @.str.415, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Event_mouse_y_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.487 = private unnamed_addr constant [8 x i8] c"mouse_x\00", align 1
@.str.488 = private unnamed_addr constant [17 x i8] c"Mouse X Position\00", align 1
@.str.489 = private unnamed_addr constant [53 x i8] c"The window relative horizontal location of the mouse\00", align 1
@rna_Event_mouse_region_x = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Event_mouse_region_y, ptr @rna_Event_mouse_y, i32 -1, ptr @.str.493, i32 2, ptr @.str.488, ptr @.str.494, i32 0, ptr @.str.415, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Event_mouse_region_x_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.490 = private unnamed_addr constant [8 x i8] c"mouse_y\00", align 1
@.str.491 = private unnamed_addr constant [17 x i8] c"Mouse Y Position\00", align 1
@.str.492 = private unnamed_addr constant [51 x i8] c"The window relative vertical location of the mouse\00", align 1
@rna_Event_mouse_region_y = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Event_mouse_prev_x, ptr @rna_Event_mouse_region_x, i32 -1, ptr @.str.495, i32 2, ptr @.str.491, ptr @.str.496, i32 0, ptr @.str.415, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Event_mouse_region_y_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.493 = private unnamed_addr constant [15 x i8] c"mouse_region_x\00", align 1
@.str.494 = private unnamed_addr constant [53 x i8] c"The region relative horizontal location of the mouse\00", align 1
@rna_Event_mouse_prev_x = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Event_mouse_prev_y, ptr @rna_Event_mouse_region_y, i32 -1, ptr @.str.497, i32 2, ptr @.str.498, ptr @.str.489, i32 0, ptr @.str.415, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Event_mouse_prev_x_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.495 = private unnamed_addr constant [15 x i8] c"mouse_region_y\00", align 1
@.str.496 = private unnamed_addr constant [51 x i8] c"The region relative vertical location of the mouse\00", align 1
@rna_Event_mouse_prev_y = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Event_pressure, ptr @rna_Event_mouse_prev_x, i32 -1, ptr @.str.499, i32 2, ptr @.str.500, ptr @.str.492, i32 0, ptr @.str.415, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Event_mouse_prev_y_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.497 = private unnamed_addr constant [13 x i8] c"mouse_prev_x\00", align 1
@.str.498 = private unnamed_addr constant [26 x i8] c"Mouse Previous X Position\00", align 1
@rna_Event_pressure = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Event_tilt, ptr @rna_Event_mouse_prev_y, i32 -1, ptr @.str.501, i32 2, ptr @.str.502, ptr @.str.503, i32 0, ptr @.str.415, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Event_pressure_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.499 = private unnamed_addr constant [13 x i8] c"mouse_prev_y\00", align 1
@.str.500 = private unnamed_addr constant [26 x i8] c"Mouse Previous Y Position\00", align 1
@rna_Event_tilt = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Event_is_tablet, ptr @rna_Event_pressure, i32 -1, ptr @.str.504, i32 2, ptr @.str.505, ptr @.str.506, i32 0, ptr @.str.415, i32 2, i32 65565, ptr null, i32 1, [3 x i32] [i32 2, i32 0, i32 0], i32 2, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr @Event_tilt_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr @rna_Event_tilt_default }, align 8
@.str.501 = private unnamed_addr constant [9 x i8] c"pressure\00", align 1
@.str.502 = private unnamed_addr constant [16 x i8] c"Tablet Pressure\00", align 1
@.str.503 = private unnamed_addr constant [55 x i8] c"The pressure of the tablet or 1.0 if no tablet present\00", align 1
@rna_Event_is_tablet = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Event_shift, ptr @rna_Event_tilt, i32 -1, ptr @.str.507, i32 2, ptr @.str.502, ptr @.str.503, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Event_is_tablet_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.504 = private unnamed_addr constant [5 x i8] c"tilt\00", align 1
@.str.505 = private unnamed_addr constant [12 x i8] c"Tablet Tilt\00", align 1
@.str.506 = private unnamed_addr constant [58 x i8] c"The pressure of the tablet or zeroes if no tablet present\00", align 1
@rna_Event_tilt_default = internal global [2 x float] zeroinitializer, align 4
@rna_Event_shift = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Event_ctrl, ptr @rna_Event_is_tablet, i32 -1, ptr @.str.508, i32 2, ptr @.str.509, ptr @.str.510, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Event_shift_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.507 = private unnamed_addr constant [10 x i8] c"is_tablet\00", align 1
@rna_Event_ctrl = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Event_alt, ptr @rna_Event_shift, i32 -1, ptr @.str.511, i32 2, ptr @.str.512, ptr @.str.513, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Event_ctrl_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.508 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@.str.509 = private unnamed_addr constant [6 x i8] c"Shift\00", align 1
@.str.510 = private unnamed_addr constant [32 x i8] c"True when the Shift key is held\00", align 1
@rna_Event_alt = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_Event_oskey, ptr @rna_Event_ctrl, i32 -1, ptr @.str.514, i32 2, ptr @.str.515, ptr @.str.516, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Event_alt_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.511 = private unnamed_addr constant [5 x i8] c"ctrl\00", align 1
@.str.512 = private unnamed_addr constant [5 x i8] c"Ctrl\00", align 1
@.str.513 = private unnamed_addr constant [31 x i8] c"True when the Ctrl key is held\00", align 1
@rna_Event_oskey = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Event_alt, i32 -1, ptr @.str.517, i32 2, ptr @.str.107, ptr @.str.518, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Event_oskey_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.514 = private unnamed_addr constant [4 x i8] c"alt\00", align 1
@.str.515 = private unnamed_addr constant [4 x i8] c"Alt\00", align 1
@.str.516 = private unnamed_addr constant [37 x i8] c"True when the Alt/Option key is held\00", align 1
@.str.517 = private unnamed_addr constant [6 x i8] c"oskey\00", align 1
@.str.518 = private unnamed_addr constant [30 x i8] c"True when the Cmd key is held\00", align 1
@RNA_Timer = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_UIPopupMenu, ptr @RNA_Event, ptr null, %struct.ListBase { ptr @rna_Timer_rna_properties, ptr @rna_Timer_time_duration } }, ptr @.str.230, ptr null, ptr null, i32 4, ptr @.str.230, ptr @.str.527, ptr @.str.415, i32 17, ptr null, ptr @rna_Timer_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.519 = private unnamed_addr constant [6 x i8] c"Event\00", align 1
@.str.520 = private unnamed_addr constant [21 x i8] c"Window Manager Event\00", align 1
@rna_Timer_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Timer_time_step, ptr @rna_Timer_rna_properties, i32 -1, ptr @.str.416, i32 8912896, ptr @.str.417, ptr @.str.418, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Timer_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_Timer_time_step = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Timer_time_delta, ptr @rna_Timer_rna_type, i32 -1, ptr @.str.521, i32 2, ptr @.str.522, ptr @.str.1, i32 0, ptr @.str.415, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Timer_time_step_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_Timer_time_delta = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_Timer_time_duration, ptr @rna_Timer_time_step, i32 -1, ptr @.str.523, i32 2, ptr @.str.524, ptr @.str.525, i32 0, ptr @.str.415, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Timer_time_delta_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.521 = private unnamed_addr constant [10 x i8] c"time_step\00", align 1
@.str.522 = private unnamed_addr constant [10 x i8] c"Time Step\00", align 1
@rna_Timer_time_duration = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Timer_time_delta, i32 -1, ptr @.str.526, i32 2, ptr @.str.524, ptr @.str.525, i32 0, ptr @.str.415, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Timer_time_duration_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.523 = private unnamed_addr constant [11 x i8] c"time_delta\00", align 1
@.str.524 = private unnamed_addr constant [6 x i8] c"Delta\00", align 1
@.str.525 = private unnamed_addr constant [32 x i8] c"Time since last step in seconds\00", align 1
@.str.526 = private unnamed_addr constant [14 x i8] c"time_duration\00", align 1
@RNA_UIPopupMenu = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_UIPieMenu, ptr @RNA_Timer, ptr null, %struct.ListBase { ptr @rna_UIPopupMenu_rna_properties, ptr @rna_UIPopupMenu_layout } }, ptr @.str.528, ptr null, ptr null, i32 4, ptr @.str.529, ptr @.str.1, ptr @.str.415, i32 17, ptr null, ptr @rna_UIPopupMenu_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.527 = private unnamed_addr constant [19 x i8] c"Window event timer\00", align 1
@rna_UIPopupMenu_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_UIPopupMenu_layout, ptr @rna_UIPopupMenu_rna_properties, i32 -1, ptr @.str.416, i32 8912896, ptr @.str.417, ptr @.str.418, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UIPopupMenu_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_UIPopupMenu_layout = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_UIPopupMenu_rna_type, i32 -1, ptr @.str.425, i32 8388608, ptr @.str.425, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UIPopupMenu_layout_get, ptr null, ptr null, ptr null, ptr @RNA_UILayout }, align 8
@RNA_UIPieMenu = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_Window, ptr @RNA_UIPopupMenu, ptr null, %struct.ListBase { ptr @rna_UIPieMenu_rna_properties, ptr @rna_UIPieMenu_layout } }, ptr @.str.530, ptr null, ptr null, i32 4, ptr @.str.531, ptr @.str.1, ptr @.str.415, i32 17, ptr null, ptr @rna_UIPieMenu_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase zeroinitializer }, align 8
@.str.528 = private unnamed_addr constant [12 x i8] c"UIPopupMenu\00", align 1
@.str.529 = private unnamed_addr constant [10 x i8] c"PopupMenu\00", align 1
@rna_UIPieMenu_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_UIPieMenu_layout, ptr @rna_UIPieMenu_rna_properties, i32 -1, ptr @.str.416, i32 8912896, ptr @.str.417, ptr @.str.418, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UIPieMenu_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_UIPieMenu_layout = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_UIPieMenu_rna_type, i32 -1, ptr @.str.425, i32 8388608, ptr @.str.425, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @UIPieMenu_layout_get, ptr null, ptr null, ptr null, ptr @RNA_UILayout }, align 8
@RNA_Window = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_WindowManager, ptr @RNA_UIPieMenu, ptr null, %struct.ListBase { ptr @rna_Window_rna_properties, ptr @rna_Window_height } }, ptr @.str.555, ptr null, ptr null, i32 4, ptr @.str.555, ptr @.str.556, ptr @.str.415, i32 17, ptr null, ptr @rna_Window_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_Window_cursor_warp_func, ptr @rna_Window_cursor_modal_restore_func } }, align 8
@.str.530 = private unnamed_addr constant [10 x i8] c"UIPieMenu\00", align 1
@.str.531 = private unnamed_addr constant [8 x i8] c"PieMenu\00", align 1
@rna_Window_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Window_screen, ptr @rna_Window_rna_properties, i32 -1, ptr @.str.416, i32 8912896, ptr @.str.417, ptr @.str.418, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Window_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_Window_screen = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_Window_x, ptr @rna_Window_rna_type, i32 -1, ptr @.str.532, i32 12845121, ptr @.str.533, ptr @.str.534, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_Window_screen_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @Window_screen_get, ptr @Window_screen_set, ptr null, ptr @rna_Window_screen_assign_poll, ptr @RNA_Screen }, align 8
@rna_Window_x = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Window_y, ptr @rna_Window_screen, i32 -1, ptr @.str.535, i32 8194, ptr @.str.536, ptr @.str.537, i32 0, ptr @.str.415, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 104, i32 1, ptr null, ptr null }, ptr @Window_x_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -32768, i32 32767, i32 -32768, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.532 = private unnamed_addr constant [7 x i8] c"screen\00", align 1
@.str.533 = private unnamed_addr constant [7 x i8] c"Screen\00", align 1
@.str.534 = private unnamed_addr constant [36 x i8] c"Active screen showing in the window\00", align 1
@rna_Window_y = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Window_width, ptr @rna_Window_x, i32 -1, ptr @.str.538, i32 8194, ptr @.str.539, ptr @.str.540, i32 0, ptr @.str.415, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 106, i32 1, ptr null, ptr null }, ptr @Window_y_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -32768, i32 32767, i32 -32768, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.535 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.536 = private unnamed_addr constant [11 x i8] c"X Position\00", align 1
@.str.537 = private unnamed_addr constant [34 x i8] c"Horizontal location of the window\00", align 1
@rna_Window_width = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Window_height, ptr @rna_Window_y, i32 -1, ptr @.str.541, i32 8194, ptr @.str.542, ptr @.str.543, i32 0, ptr @.str.415, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 108, i32 1, ptr null, ptr null }, ptr @Window_width_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 32767, i32 0, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.538 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.539 = private unnamed_addr constant [11 x i8] c"Y Position\00", align 1
@.str.540 = private unnamed_addr constant [32 x i8] c"Vertical location of the window\00", align 1
@rna_Window_height = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Window_width, i32 -1, ptr @.str.544, i32 8194, ptr @.str.545, ptr @.str.546, i32 0, ptr @.str.415, i32 1, i32 13, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 110, i32 1, ptr null, ptr null }, ptr @Window_height_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 32767, i32 0, i32 32767, i32 1, i32 0, ptr null }, align 8
@.str.541 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.542 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.543 = private unnamed_addr constant [13 x i8] c"Window width\00", align 1
@.str.544 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.545 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.546 = private unnamed_addr constant [14 x i8] c"Window height\00", align 1
@rna_Window_cursor_warp_y = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_Window_cursor_warp_x, i32 -1, ptr @.str.538, i32 7, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -2147483648, i32 2147483647, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_Window_cursor_warp_x = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_Window_cursor_warp_y, ptr null, i32 -1, ptr @.str.535, i32 7, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -2147483648, i32 2147483647, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@rna_Window_cursor_set_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Window_cursor_modal_set_func, ptr @rna_Window_cursor_warp_func, ptr null, %struct.ListBase { ptr @rna_Window_cursor_set_cursor, ptr @rna_Window_cursor_set_cursor } }, ptr @.str.550, i32 0, ptr @.str.551, ptr @Window_cursor_set_call, ptr null }, align 8
@.str.547 = private unnamed_addr constant [12 x i8] c"cursor_warp\00", align 1
@.str.548 = private unnamed_addr constant [24 x i8] c"Set the cursor position\00", align 1
@rna_Window_cursor_warp_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Window_cursor_set_func, ptr null, ptr null, %struct.ListBase { ptr @rna_Window_cursor_warp_x, ptr @rna_Window_cursor_warp_y } }, ptr @.str.547, i32 0, ptr @.str.548, ptr @Window_cursor_warp_call, ptr null }, align 8
@.str.549 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@rna_Window_cursor_set_cursor_items = internal global [15 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1006, ptr @.str.384, i32 0, ptr @.str.385, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1007, ptr @.str, i32 0, ptr @.str.386, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1001, ptr @.str.387, i32 0, ptr @.str.388, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1002, ptr @.str.389, i32 0, ptr @.str.390, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1003, ptr @.str.391, i32 0, ptr @.str.392, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1004, ptr @.str.393, i32 0, ptr @.str.394, ptr @.str.1 }, %struct.EnumPropertyItem { i32 9, ptr @.str.395, i32 0, ptr @.str.396, ptr @.str.1 }, %struct.EnumPropertyItem { i32 11, ptr @.str.397, i32 0, ptr @.str.398, ptr @.str.1 }, %struct.EnumPropertyItem { i32 12, ptr @.str.399, i32 0, ptr @.str.400, ptr @.str.1 }, %struct.EnumPropertyItem { i32 13, ptr @.str.401, i32 0, ptr @.str.402, ptr @.str.1 }, %struct.EnumPropertyItem { i32 16, ptr @.str.403, i32 0, ptr @.str.404, ptr @.str.1 }, %struct.EnumPropertyItem { i32 15, ptr @.str.405, i32 0, ptr @.str.406, ptr @.str.1 }, %struct.EnumPropertyItem { i32 14, ptr @.str.407, i32 0, ptr @.str.408, ptr @.str.1 }, %struct.EnumPropertyItem { i32 17, ptr @.str.409, i32 0, ptr @.str.410, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Window_cursor_set_cursor = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.549, i32 7, ptr @.str.549, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_Window_cursor_set_cursor_items, i32 14, i32 1006 }, align 8
@rna_Window_cursor_modal_set_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_Window_cursor_modal_restore_func, ptr @rna_Window_cursor_set_func, ptr null, %struct.ListBase { ptr @rna_Window_cursor_modal_set_cursor, ptr @rna_Window_cursor_modal_set_cursor } }, ptr @.str.552, i32 0, ptr @.str.553, ptr @Window_cursor_modal_set_call, ptr null }, align 8
@.str.550 = private unnamed_addr constant [11 x i8] c"cursor_set\00", align 1
@.str.551 = private unnamed_addr constant [15 x i8] c"Set the cursor\00", align 1
@rna_Window_cursor_modal_set_cursor_items = internal global [15 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1006, ptr @.str.384, i32 0, ptr @.str.385, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1007, ptr @.str, i32 0, ptr @.str.386, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1001, ptr @.str.387, i32 0, ptr @.str.388, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1002, ptr @.str.389, i32 0, ptr @.str.390, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1003, ptr @.str.391, i32 0, ptr @.str.392, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1004, ptr @.str.393, i32 0, ptr @.str.394, ptr @.str.1 }, %struct.EnumPropertyItem { i32 9, ptr @.str.395, i32 0, ptr @.str.396, ptr @.str.1 }, %struct.EnumPropertyItem { i32 11, ptr @.str.397, i32 0, ptr @.str.398, ptr @.str.1 }, %struct.EnumPropertyItem { i32 12, ptr @.str.399, i32 0, ptr @.str.400, ptr @.str.1 }, %struct.EnumPropertyItem { i32 13, ptr @.str.401, i32 0, ptr @.str.402, ptr @.str.1 }, %struct.EnumPropertyItem { i32 16, ptr @.str.403, i32 0, ptr @.str.404, ptr @.str.1 }, %struct.EnumPropertyItem { i32 15, ptr @.str.405, i32 0, ptr @.str.406, ptr @.str.1 }, %struct.EnumPropertyItem { i32 14, ptr @.str.407, i32 0, ptr @.str.408, ptr @.str.1 }, %struct.EnumPropertyItem { i32 17, ptr @.str.409, i32 0, ptr @.str.410, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_Window_cursor_modal_set_cursor = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.549, i32 7, ptr @.str.549, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_Window_cursor_modal_set_cursor_items, i32 14, i32 1006 }, align 8
@rna_Window_cursor_modal_restore_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_Window_cursor_modal_set_func, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.554, i32 0, ptr @.str.554, ptr @Window_cursor_modal_restore_call, ptr null }, align 8
@.str.552 = private unnamed_addr constant [17 x i8] c"cursor_modal_set\00", align 1
@.str.553 = private unnamed_addr constant [63 x i8] c"Restore the previous cursor after calling ``cursor_modal_set``\00", align 1
@.str.554 = private unnamed_addr constant [21 x i8] c"cursor_modal_restore\00", align 1
@RNA_WindowManager = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_KeyConfigurations, ptr @RNA_Window, ptr null, %struct.ListBase { ptr @rna_WindowManager_operators, ptr @rna_WindowManager_clipboard } }, ptr @.str.608, ptr null, ptr null, i32 5, ptr @.str.609, ptr @.str.610, ptr @.str.415, i32 17, ptr @rna_ID_name, ptr @rna_ID_rna_properties, ptr @RNA_ID, ptr null, ptr @rna_ID_refine, ptr null, ptr null, ptr null, ptr null, ptr @rna_ID_idprops, %struct.ListBase { ptr @rna_WindowManager_fileselect_add_func, ptr @rna_WindowManager_piemenu_end__internal_func } }, align 8
@.str.555 = private unnamed_addr constant [7 x i8] c"Window\00", align 1
@.str.556 = private unnamed_addr constant [12 x i8] c"Open window\00", align 1
@.str.557 = private unnamed_addr constant [10 x i8] c"operators\00", align 1
@.str.558 = private unnamed_addr constant [10 x i8] c"Operators\00", align 1
@.str.559 = private unnamed_addr constant [18 x i8] c"Operator registry\00", align 1
@.str.560 = private unnamed_addr constant [8 x i8] c"windows\00", align 1
@.str.561 = private unnamed_addr constant [8 x i8] c"Windows\00", align 1
@.str.562 = private unnamed_addr constant [13 x i8] c"Open windows\00", align 1
@rna_WindowManager_clipboard = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_WindowManager_keyconfigs, i32 -1, ptr @.str.566, i32 262145, ptr @.str.567, ptr @.str.1, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @WindowManager_clipboard_get, ptr @WindowManager_clipboard_length, ptr @WindowManager_clipboard_set, ptr null, ptr null, ptr null, i32 0, ptr @.str.1 }, align 8
@.str.563 = private unnamed_addr constant [11 x i8] c"keyconfigs\00", align 1
@.str.564 = private unnamed_addr constant [19 x i8] c"Key Configurations\00", align 1
@.str.565 = private unnamed_addr constant [30 x i8] c"Registered key configurations\00", align 1
@RNA_KeyConfigurations = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_KeyConfig, ptr @RNA_WindowManager, ptr null, %struct.ListBase { ptr @rna_KeyConfigurations_rna_properties, ptr @rna_KeyConfigurations_user } }, ptr @.str.629, ptr null, ptr null, i32 4, ptr @.str.630, ptr @.str.631, ptr @.str.415, i32 17, ptr null, ptr @rna_KeyConfigurations_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_KeyConfigurations_new_func, ptr @rna_KeyConfigurations_remove_func } }, align 8
@.str.566 = private unnamed_addr constant [10 x i8] c"clipboard\00", align 1
@.str.567 = private unnamed_addr constant [15 x i8] c"Text Clipboard\00", align 1
@.str.568 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@.str.569 = private unnamed_addr constant [17 x i8] c"Operator to call\00", align 1
@rna_WindowManager_fileselect_add_operator = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.568, i32 8388612, ptr @.str.1, ptr @.str.569, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Operator }, align 8
@rna_WindowManager_modal_handler_add_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_WindowManager_event_timer_add_func, ptr @rna_WindowManager_fileselect_add_func, ptr null, %struct.ListBase { ptr @rna_WindowManager_modal_handler_add_operator, ptr @rna_WindowManager_modal_handler_add_handle } }, ptr @.str.573, i32 9, ptr @.str.573, ptr @WindowManager_modal_handler_add_call, ptr @rna_WindowManager_modal_handler_add_handle }, align 8
@.str.570 = private unnamed_addr constant [15 x i8] c"fileselect_add\00", align 1
@.str.571 = private unnamed_addr constant [165 x i8] c"Opens a file selector with an operator. The string properties 'filepath', 'filename', 'directory' and a 'files' collection are assigned when present in the operator\00", align 1
@rna_WindowManager_fileselect_add_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_WindowManager_modal_handler_add_func, ptr null, ptr null, %struct.ListBase { ptr @rna_WindowManager_fileselect_add_operator, ptr @rna_WindowManager_fileselect_add_operator } }, ptr @.str.570, i32 9, ptr @.str.571, ptr @WindowManager_fileselect_add_call, ptr null }, align 8
@rna_WindowManager_modal_handler_add_handle = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_WindowManager_modal_handler_add_operator, i32 -1, ptr @.str.572, i32 11, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, ptr null }, align 8
@rna_WindowManager_modal_handler_add_operator = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_WindowManager_modal_handler_add_handle, ptr null, i32 -1, ptr @.str.568, i32 8388612, ptr @.str.1, ptr @.str.569, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Operator }, align 8
@.str.572 = private unnamed_addr constant [7 x i8] c"handle\00", align 1
@rna_WindowManager_event_timer_add_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_WindowManager_event_timer_remove_func, ptr @rna_WindowManager_modal_handler_add_func, ptr null, %struct.ListBase { ptr @rna_WindowManager_event_timer_add_time_step, ptr @rna_WindowManager_event_timer_add_result } }, ptr @.str.577, i32 0, ptr @.str.577, ptr @WindowManager_event_timer_add_call, ptr @rna_WindowManager_event_timer_add_result }, align 8
@.str.573 = private unnamed_addr constant [18 x i8] c"modal_handler_add\00", align 1
@rna_WindowManager_event_timer_add_window = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_WindowManager_event_timer_add_result, ptr @rna_WindowManager_event_timer_add_time_step, i32 -1, ptr @.str.575, i32 8388608, ptr @.str.1, ptr @.str.576, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Window }, align 8
@.str.574 = private unnamed_addr constant [41 x i8] c"Interval in seconds between timer events\00", align 1
@rna_WindowManager_event_timer_add_time_step = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WindowManager_event_timer_add_window, ptr null, i32 -1, ptr @.str.521, i32 7, ptr @.str.522, ptr @.str.574, i32 0, ptr @.str.415, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float 0.000000e+00, float 0x47EFFFFFE0000000, float 0.000000e+00, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_WindowManager_event_timer_add_result = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_WindowManager_event_timer_add_window, i32 -1, ptr @.str.442, i32 8388616, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Timer }, align 8
@.str.575 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@.str.576 = private unnamed_addr constant [38 x i8] c"Window to attach the timer to or None\00", align 1
@rna_WindowManager_event_timer_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_WindowManager_progress_begin_func, ptr @rna_WindowManager_event_timer_add_func, ptr null, %struct.ListBase { ptr @rna_WindowManager_event_timer_remove_timer, ptr @rna_WindowManager_event_timer_remove_timer } }, ptr @.str.579, i32 0, ptr @.str.579, ptr @WindowManager_event_timer_remove_call, ptr null }, align 8
@.str.577 = private unnamed_addr constant [16 x i8] c"event_timer_add\00", align 1
@.str.578 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@rna_WindowManager_event_timer_remove_timer = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.578, i32 8650756, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Timer }, align 8
@rna_WindowManager_progress_begin_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_WindowManager_progress_update_func, ptr @rna_WindowManager_event_timer_remove_func, ptr null, %struct.ListBase { ptr @rna_WindowManager_progress_begin_min, ptr @rna_WindowManager_progress_begin_max } }, ptr @.str.584, i32 0, ptr @.str.585, ptr @WindowManager_progress_begin_call, ptr null }, align 8
@.str.579 = private unnamed_addr constant [19 x i8] c"event_timer_remove\00", align 1
@rna_WindowManager_progress_begin_max = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_WindowManager_progress_begin_min, i32 -1, ptr @.str.582, i32 7, ptr @.str.582, ptr @.str.583, i32 0, ptr @.str.415, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.580 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.581 = private unnamed_addr constant [28 x i8] c"any value in range [0,9999]\00", align 1
@rna_WindowManager_progress_begin_min = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr @rna_WindowManager_progress_begin_max, ptr null, i32 -1, ptr @.str.580, i32 7, ptr @.str.580, ptr @.str.581, i32 0, ptr @.str.415, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@.str.582 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.583 = private unnamed_addr constant [32 x i8] c"any value in range [min+1,9998]\00", align 1
@rna_WindowManager_progress_update_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_WindowManager_progress_end_func, ptr @rna_WindowManager_progress_begin_func, ptr null, %struct.ListBase { ptr @rna_WindowManager_progress_update_value, ptr @rna_WindowManager_progress_update_value } }, ptr @.str.587, i32 0, ptr @.str.587, ptr @WindowManager_progress_update_call, ptr null }, align 8
@.str.584 = private unnamed_addr constant [15 x i8] c"progress_begin\00", align 1
@.str.585 = private unnamed_addr constant [19 x i8] c"Start Progress bar\00", align 1
@.str.586 = private unnamed_addr constant [57 x i8] c"any value between min and max as set in progress_begin()\00", align 1
@rna_WindowManager_progress_update_value = dso_local global %struct.FloatPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.484, i32 7, ptr @.str.484, ptr @.str.586, i32 0, ptr @.str.415, i32 2, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, float -1.000000e+04, float 1.000000e+04, float 0xC7EFFFFFE0000000, float 0x47EFFFFFE0000000, float 1.000000e+01, i32 3, float 0.000000e+00, ptr null }, align 8
@rna_WindowManager_progress_end_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_WindowManager_invoke_props_popup_func, ptr @rna_WindowManager_progress_update_func, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.588, i32 0, ptr @.str.589, ptr @WindowManager_progress_end_call, ptr null }, align 8
@.str.587 = private unnamed_addr constant [16 x i8] c"progress_update\00", align 1
@rna_WindowManager_invoke_props_popup_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_WindowManager_invoke_props_dialog_func, ptr @rna_WindowManager_progress_end_func, ptr null, %struct.ListBase { ptr @rna_WindowManager_invoke_props_popup_operator, ptr @rna_WindowManager_invoke_props_popup_result } }, ptr @.str.590, i32 9, ptr @.str.591, ptr @WindowManager_invoke_props_popup_call, ptr @rna_WindowManager_invoke_props_popup_result }, align 8
@.str.588 = private unnamed_addr constant [13 x i8] c"progress_end\00", align 1
@.str.589 = private unnamed_addr constant [23 x i8] c"Terminate Progress bar\00", align 1
@rna_WindowManager_invoke_props_popup_event = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_WindowManager_invoke_props_popup_result, ptr @rna_WindowManager_invoke_props_popup_operator, i32 -1, ptr @.str.447, i32 8388612, ptr @.str.1, ptr @.str.519, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Event }, align 8
@rna_WindowManager_invoke_props_popup_operator = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_WindowManager_invoke_props_popup_event, ptr null, i32 -1, ptr @.str.568, i32 8388612, ptr @.str.1, ptr @.str.569, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Operator }, align 8
@rna_WindowManager_invoke_props_popup_result = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_WindowManager_invoke_props_popup_event, i32 -1, ptr @.str.442, i32 2097163, ptr @.str.442, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_WindowManager_invoke_props_popup_result_items, i32 5, i32 2 }, align 8
@rna_WindowManager_invoke_props_popup_result_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.351, i32 0, ptr @.str.352, ptr @.str.353 }, %struct.EnumPropertyItem { i32 2, ptr @.str.354, i32 0, ptr @.str.355, ptr @.str.356 }, %struct.EnumPropertyItem { i32 4, ptr @.str.357, i32 0, ptr @.str.358, ptr @.str.359 }, %struct.EnumPropertyItem { i32 8, ptr @.str.360, i32 0, ptr @.str.361, ptr @.str.362 }, %struct.EnumPropertyItem { i32 32, ptr @.str.363, i32 0, ptr @.str.364, ptr @.str.365 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_WindowManager_invoke_props_dialog_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_WindowManager_invoke_search_popup_func, ptr @rna_WindowManager_invoke_props_popup_func, ptr null, %struct.ListBase { ptr @rna_WindowManager_invoke_props_dialog_operator, ptr @rna_WindowManager_invoke_props_dialog_result } }, ptr @.str.594, i32 9, ptr @.str.595, ptr @WindowManager_invoke_props_dialog_call, ptr @rna_WindowManager_invoke_props_dialog_result }, align 8
@.str.590 = private unnamed_addr constant [19 x i8] c"invoke_props_popup\00", align 1
@.str.591 = private unnamed_addr constant [22 x i8] c"Operator popup invoke\00", align 1
@rna_WindowManager_invoke_props_dialog_width = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_WindowManager_invoke_props_dialog_height, ptr @rna_WindowManager_invoke_props_dialog_operator, i32 -1, ptr @.str.541, i32 3, ptr @.str.1, ptr @.str.592, i32 0, ptr @.str.415, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 1, i32 300, ptr null }, align 8
@rna_WindowManager_invoke_props_dialog_operator = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_WindowManager_invoke_props_dialog_width, ptr null, i32 -1, ptr @.str.568, i32 8388612, ptr @.str.1, ptr @.str.569, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Operator }, align 8
@rna_WindowManager_invoke_props_dialog_height = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_WindowManager_invoke_props_dialog_result, ptr @rna_WindowManager_invoke_props_dialog_width, i32 -1, ptr @.str.544, i32 3, ptr @.str.1, ptr @.str.593, i32 0, ptr @.str.415, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 1, i32 20, ptr null }, align 8
@.str.592 = private unnamed_addr constant [19 x i8] c"Width of the popup\00", align 1
@rna_WindowManager_invoke_props_dialog_result = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_WindowManager_invoke_props_dialog_height, i32 -1, ptr @.str.442, i32 2097163, ptr @.str.442, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_WindowManager_invoke_props_dialog_result_items, i32 5, i32 2 }, align 8
@.str.593 = private unnamed_addr constant [20 x i8] c"Height of the popup\00", align 1
@rna_WindowManager_invoke_props_dialog_result_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.351, i32 0, ptr @.str.352, ptr @.str.353 }, %struct.EnumPropertyItem { i32 2, ptr @.str.354, i32 0, ptr @.str.355, ptr @.str.356 }, %struct.EnumPropertyItem { i32 4, ptr @.str.357, i32 0, ptr @.str.358, ptr @.str.359 }, %struct.EnumPropertyItem { i32 8, ptr @.str.360, i32 0, ptr @.str.361, ptr @.str.362 }, %struct.EnumPropertyItem { i32 32, ptr @.str.363, i32 0, ptr @.str.364, ptr @.str.365 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_WindowManager_invoke_search_popup_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_WindowManager_invoke_popup_func, ptr @rna_WindowManager_invoke_props_dialog_func, ptr null, %struct.ListBase { ptr @rna_WindowManager_invoke_search_popup_operator, ptr @rna_WindowManager_invoke_search_popup_operator } }, ptr @.str.596, i32 9, ptr @.str.596, ptr @WindowManager_invoke_search_popup_call, ptr null }, align 8
@.str.594 = private unnamed_addr constant [20 x i8] c"invoke_props_dialog\00", align 1
@.str.595 = private unnamed_addr constant [44 x i8] c"Operator dialog (non-autoexec popup) invoke\00", align 1
@rna_WindowManager_invoke_search_popup_operator = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.568, i32 8388612, ptr @.str.1, ptr @.str.569, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Operator }, align 8
@rna_WindowManager_invoke_popup_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_WindowManager_invoke_confirm_func, ptr @rna_WindowManager_invoke_search_popup_func, ptr null, %struct.ListBase { ptr @rna_WindowManager_invoke_popup_operator, ptr @rna_WindowManager_invoke_popup_result } }, ptr @.str.597, i32 9, ptr @.str.591, ptr @WindowManager_invoke_popup_call, ptr @rna_WindowManager_invoke_popup_result }, align 8
@.str.596 = private unnamed_addr constant [20 x i8] c"invoke_search_popup\00", align 1
@rna_WindowManager_invoke_popup_width = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_WindowManager_invoke_popup_height, ptr @rna_WindowManager_invoke_popup_operator, i32 -1, ptr @.str.541, i32 3, ptr @.str.1, ptr @.str.592, i32 0, ptr @.str.415, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 1, i32 300, ptr null }, align 8
@rna_WindowManager_invoke_popup_operator = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_WindowManager_invoke_popup_width, ptr null, i32 -1, ptr @.str.568, i32 8388612, ptr @.str.1, ptr @.str.569, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Operator }, align 8
@rna_WindowManager_invoke_popup_height = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_WindowManager_invoke_popup_result, ptr @rna_WindowManager_invoke_popup_width, i32 -1, ptr @.str.544, i32 3, ptr @.str.1, ptr @.str.593, i32 0, ptr @.str.415, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 2147483647, i32 0, i32 2147483647, i32 1, i32 20, ptr null }, align 8
@rna_WindowManager_invoke_popup_result = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_WindowManager_invoke_popup_height, i32 -1, ptr @.str.442, i32 2097163, ptr @.str.442, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_WindowManager_invoke_popup_result_items, i32 5, i32 2 }, align 8
@rna_WindowManager_invoke_popup_result_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.351, i32 0, ptr @.str.352, ptr @.str.353 }, %struct.EnumPropertyItem { i32 2, ptr @.str.354, i32 0, ptr @.str.355, ptr @.str.356 }, %struct.EnumPropertyItem { i32 4, ptr @.str.357, i32 0, ptr @.str.358, ptr @.str.359 }, %struct.EnumPropertyItem { i32 8, ptr @.str.360, i32 0, ptr @.str.361, ptr @.str.362 }, %struct.EnumPropertyItem { i32 32, ptr @.str.363, i32 0, ptr @.str.364, ptr @.str.365 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_WindowManager_invoke_confirm_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_WindowManager_pupmenu_begin__internal_func, ptr @rna_WindowManager_invoke_popup_func, ptr null, %struct.ListBase { ptr @rna_WindowManager_invoke_confirm_operator, ptr @rna_WindowManager_invoke_confirm_result } }, ptr @.str.598, i32 9, ptr @.str.599, ptr @WindowManager_invoke_confirm_call, ptr @rna_WindowManager_invoke_confirm_result }, align 8
@.str.597 = private unnamed_addr constant [13 x i8] c"invoke_popup\00", align 1
@rna_WindowManager_invoke_confirm_event = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_WindowManager_invoke_confirm_result, ptr @rna_WindowManager_invoke_confirm_operator, i32 -1, ptr @.str.447, i32 8388612, ptr @.str.1, ptr @.str.519, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Event }, align 8
@rna_WindowManager_invoke_confirm_operator = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_WindowManager_invoke_confirm_event, ptr null, i32 -1, ptr @.str.568, i32 8388612, ptr @.str.1, ptr @.str.569, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Operator }, align 8
@rna_WindowManager_invoke_confirm_result = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_WindowManager_invoke_confirm_event, i32 -1, ptr @.str.442, i32 2097163, ptr @.str.442, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_WindowManager_invoke_confirm_result_items, i32 5, i32 2 }, align 8
@rna_WindowManager_invoke_confirm_result_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.351, i32 0, ptr @.str.352, ptr @.str.353 }, %struct.EnumPropertyItem { i32 2, ptr @.str.354, i32 0, ptr @.str.355, ptr @.str.356 }, %struct.EnumPropertyItem { i32 4, ptr @.str.357, i32 0, ptr @.str.358, ptr @.str.359 }, %struct.EnumPropertyItem { i32 8, ptr @.str.360, i32 0, ptr @.str.361, ptr @.str.362 }, %struct.EnumPropertyItem { i32 32, ptr @.str.363, i32 0, ptr @.str.364, ptr @.str.365 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_WindowManager_pupmenu_begin__internal_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_WindowManager_pupmenu_end__internal_func, ptr @rna_WindowManager_invoke_confirm_func, ptr null, %struct.ListBase { ptr @rna_WindowManager_pupmenu_begin__internal_title, ptr @rna_WindowManager_pupmenu_begin__internal_menu } }, ptr @.str.603, i32 9, ptr @.str.603, ptr @WindowManager_pupmenu_begin__internal_call, ptr @rna_WindowManager_pupmenu_begin__internal_menu }, align 8
@.str.598 = private unnamed_addr constant [15 x i8] c"invoke_confirm\00", align 1
@.str.599 = private unnamed_addr constant [22 x i8] c"Operator confirmation\00", align 1
@rna_WindowManager_pupmenu_begin__internal_icon = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_WindowManager_pupmenu_begin__internal_menu, ptr @rna_WindowManager_pupmenu_begin__internal_title, i32 -1, ptr @.str.601, i32 3, ptr @.str.601, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_WindowManager_pupmenu_begin__internal_icon_items, i32 542, i32 0 }, align 8
@.str.600 = private unnamed_addr constant [6 x i8] c"title\00", align 1
@rna_WindowManager_pupmenu_begin__internal_title = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_WindowManager_pupmenu_begin__internal_icon, ptr null, i32 -1, ptr @.str.600, i32 262149, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.1 }, align 8
@rna_WindowManager_pupmenu_begin__internal_menu = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_WindowManager_pupmenu_begin__internal_icon, i32 -1, ptr @.str.602, i32 8652808, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_UIPopupMenu }, align 8
@.str.601 = private unnamed_addr constant [5 x i8] c"icon\00", align 1
@rna_WindowManager_pupmenu_begin__internal_icon_items = internal global [543 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.752, i32 0, ptr @.str.752, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.376, i32 0, ptr @.str.376, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.753, i32 0, ptr @.str.753, ptr @.str.1 }, %struct.EnumPropertyItem { i32 4, ptr @.str.754, i32 0, ptr @.str.754, ptr @.str.1 }, %struct.EnumPropertyItem { i32 5, ptr @.str.755, i32 0, ptr @.str.755, ptr @.str.1 }, %struct.EnumPropertyItem { i32 6, ptr @.str.756, i32 0, ptr @.str.756, ptr @.str.1 }, %struct.EnumPropertyItem { i32 7, ptr @.str.757, i32 0, ptr @.str.757, ptr @.str.1 }, %struct.EnumPropertyItem { i32 8, ptr @.str.758, i32 0, ptr @.str.758, ptr @.str.1 }, %struct.EnumPropertyItem { i32 9, ptr @.str.759, i32 0, ptr @.str.759, ptr @.str.1 }, %struct.EnumPropertyItem { i32 10, ptr @.str.760, i32 0, ptr @.str.760, ptr @.str.1 }, %struct.EnumPropertyItem { i32 11, ptr @.str.761, i32 0, ptr @.str.761, ptr @.str.1 }, %struct.EnumPropertyItem { i32 12, ptr @.str.762, i32 0, ptr @.str.762, ptr @.str.1 }, %struct.EnumPropertyItem { i32 13, ptr @.str.763, i32 0, ptr @.str.763, ptr @.str.1 }, %struct.EnumPropertyItem { i32 14, ptr @.str.764, i32 0, ptr @.str.764, ptr @.str.1 }, %struct.EnumPropertyItem { i32 15, ptr @.str.765, i32 0, ptr @.str.765, ptr @.str.1 }, %struct.EnumPropertyItem { i32 16, ptr @.str.766, i32 0, ptr @.str.766, ptr @.str.1 }, %struct.EnumPropertyItem { i32 17, ptr @.str.767, i32 0, ptr @.str.767, ptr @.str.1 }, %struct.EnumPropertyItem { i32 18, ptr @.str.768, i32 0, ptr @.str.768, ptr @.str.1 }, %struct.EnumPropertyItem { i32 19, ptr @.str.71, i32 0, ptr @.str.71, ptr @.str.1 }, %struct.EnumPropertyItem { i32 21, ptr @.str.769, i32 0, ptr @.str.769, ptr @.str.1 }, %struct.EnumPropertyItem { i32 22, ptr @.str.770, i32 0, ptr @.str.770, ptr @.str.1 }, %struct.EnumPropertyItem { i32 23, ptr @.str.771, i32 0, ptr @.str.771, ptr @.str.1 }, %struct.EnumPropertyItem { i32 24, ptr @.str.772, i32 0, ptr @.str.772, ptr @.str.1 }, %struct.EnumPropertyItem { i32 25, ptr @.str.773, i32 0, ptr @.str.773, ptr @.str.1 }, %struct.EnumPropertyItem { i32 26, ptr @.str.774, i32 0, ptr @.str.774, ptr @.str.1 }, %struct.EnumPropertyItem { i32 27, ptr @.str.775, i32 0, ptr @.str.775, ptr @.str.1 }, %struct.EnumPropertyItem { i32 28, ptr @.str.776, i32 0, ptr @.str.776, ptr @.str.1 }, %struct.EnumPropertyItem { i32 29, ptr @.str.777, i32 0, ptr @.str.777, ptr @.str.1 }, %struct.EnumPropertyItem { i32 30, ptr @.str.778, i32 0, ptr @.str.778, ptr @.str.1 }, %struct.EnumPropertyItem { i32 31, ptr @.str.779, i32 0, ptr @.str.779, ptr @.str.1 }, %struct.EnumPropertyItem { i32 32, ptr @.str.780, i32 0, ptr @.str.780, ptr @.str.1 }, %struct.EnumPropertyItem { i32 33, ptr @.str.781, i32 0, ptr @.str.781, ptr @.str.1 }, %struct.EnumPropertyItem { i32 34, ptr @.str.782, i32 0, ptr @.str.782, ptr @.str.1 }, %struct.EnumPropertyItem { i32 35, ptr @.str.409, i32 0, ptr @.str.409, ptr @.str.1 }, %struct.EnumPropertyItem { i32 36, ptr @.str.783, i32 0, ptr @.str.783, ptr @.str.1 }, %struct.EnumPropertyItem { i32 37, ptr @.str.784, i32 0, ptr @.str.784, ptr @.str.1 }, %struct.EnumPropertyItem { i32 38, ptr @.str.785, i32 0, ptr @.str.785, ptr @.str.1 }, %struct.EnumPropertyItem { i32 39, ptr @.str.786, i32 0, ptr @.str.786, ptr @.str.1 }, %struct.EnumPropertyItem { i32 40, ptr @.str.787, i32 0, ptr @.str.787, ptr @.str.1 }, %struct.EnumPropertyItem { i32 41, ptr @.str.788, i32 0, ptr @.str.788, ptr @.str.1 }, %struct.EnumPropertyItem { i32 42, ptr @.str.789, i32 0, ptr @.str.789, ptr @.str.1 }, %struct.EnumPropertyItem { i32 43, ptr @.str.790, i32 0, ptr @.str.790, ptr @.str.1 }, %struct.EnumPropertyItem { i32 44, ptr @.str.791, i32 0, ptr @.str.791, ptr @.str.1 }, %struct.EnumPropertyItem { i32 45, ptr @.str.792, i32 0, ptr @.str.792, ptr @.str.1 }, %struct.EnumPropertyItem { i32 46, ptr @.str.793, i32 0, ptr @.str.793, ptr @.str.1 }, %struct.EnumPropertyItem { i32 47, ptr @.str.794, i32 0, ptr @.str.794, ptr @.str.1 }, %struct.EnumPropertyItem { i32 48, ptr @.str.795, i32 0, ptr @.str.795, ptr @.str.1 }, %struct.EnumPropertyItem { i32 49, ptr @.str.796, i32 0, ptr @.str.796, ptr @.str.1 }, %struct.EnumPropertyItem { i32 50, ptr @.str.797, i32 0, ptr @.str.797, ptr @.str.1 }, %struct.EnumPropertyItem { i32 51, ptr @.str.798, i32 0, ptr @.str.798, ptr @.str.1 }, %struct.EnumPropertyItem { i32 52, ptr @.str.799, i32 0, ptr @.str.799, ptr @.str.1 }, %struct.EnumPropertyItem { i32 53, ptr @.str.800, i32 0, ptr @.str.800, ptr @.str.1 }, %struct.EnumPropertyItem { i32 54, ptr @.str.801, i32 0, ptr @.str.801, ptr @.str.1 }, %struct.EnumPropertyItem { i32 55, ptr @.str.802, i32 0, ptr @.str.802, ptr @.str.1 }, %struct.EnumPropertyItem { i32 56, ptr @.str.803, i32 0, ptr @.str.803, ptr @.str.1 }, %struct.EnumPropertyItem { i32 57, ptr @.str.401, i32 0, ptr @.str.401, ptr @.str.1 }, %struct.EnumPropertyItem { i32 58, ptr @.str.804, i32 0, ptr @.str.804, ptr @.str.1 }, %struct.EnumPropertyItem { i32 59, ptr @.str.805, i32 0, ptr @.str.805, ptr @.str.1 }, %struct.EnumPropertyItem { i32 60, ptr @.str.806, i32 0, ptr @.str.806, ptr @.str.1 }, %struct.EnumPropertyItem { i32 61, ptr @.str.807, i32 0, ptr @.str.807, ptr @.str.1 }, %struct.EnumPropertyItem { i32 62, ptr @.str.808, i32 0, ptr @.str.808, ptr @.str.1 }, %struct.EnumPropertyItem { i32 63, ptr @.str.809, i32 0, ptr @.str.809, ptr @.str.1 }, %struct.EnumPropertyItem { i32 64, ptr @.str.810, i32 0, ptr @.str.810, ptr @.str.1 }, %struct.EnumPropertyItem { i32 65, ptr @.str.811, i32 0, ptr @.str.811, ptr @.str.1 }, %struct.EnumPropertyItem { i32 66, ptr @.str.812, i32 0, ptr @.str.812, ptr @.str.1 }, %struct.EnumPropertyItem { i32 67, ptr @.str.813, i32 0, ptr @.str.813, ptr @.str.1 }, %struct.EnumPropertyItem { i32 68, ptr @.str.814, i32 0, ptr @.str.814, ptr @.str.1 }, %struct.EnumPropertyItem { i32 69, ptr @.str.815, i32 0, ptr @.str.815, ptr @.str.1 }, %struct.EnumPropertyItem { i32 70, ptr @.str.816, i32 0, ptr @.str.816, ptr @.str.1 }, %struct.EnumPropertyItem { i32 71, ptr @.str.817, i32 0, ptr @.str.817, ptr @.str.1 }, %struct.EnumPropertyItem { i32 72, ptr @.str.818, i32 0, ptr @.str.818, ptr @.str.1 }, %struct.EnumPropertyItem { i32 73, ptr @.str.819, i32 0, ptr @.str.819, ptr @.str.1 }, %struct.EnumPropertyItem { i32 75, ptr @.str.820, i32 0, ptr @.str.820, ptr @.str.1 }, %struct.EnumPropertyItem { i32 76, ptr @.str.821, i32 0, ptr @.str.821, ptr @.str.1 }, %struct.EnumPropertyItem { i32 77, ptr @.str.822, i32 0, ptr @.str.822, ptr @.str.1 }, %struct.EnumPropertyItem { i32 78, ptr @.str.823, i32 0, ptr @.str.823, ptr @.str.1 }, %struct.EnumPropertyItem { i32 79, ptr @.str.824, i32 0, ptr @.str.824, ptr @.str.1 }, %struct.EnumPropertyItem { i32 80, ptr @.str.825, i32 0, ptr @.str.825, ptr @.str.1 }, %struct.EnumPropertyItem { i32 81, ptr @.str.826, i32 0, ptr @.str.826, ptr @.str.1 }, %struct.EnumPropertyItem { i32 82, ptr @.str.827, i32 0, ptr @.str.827, ptr @.str.1 }, %struct.EnumPropertyItem { i32 83, ptr @.str.828, i32 0, ptr @.str.828, ptr @.str.1 }, %struct.EnumPropertyItem { i32 84, ptr @.str.829, i32 0, ptr @.str.829, ptr @.str.1 }, %struct.EnumPropertyItem { i32 85, ptr @.str.830, i32 0, ptr @.str.830, ptr @.str.1 }, %struct.EnumPropertyItem { i32 86, ptr @.str.831, i32 0, ptr @.str.831, ptr @.str.1 }, %struct.EnumPropertyItem { i32 87, ptr @.str.832, i32 0, ptr @.str.832, ptr @.str.1 }, %struct.EnumPropertyItem { i32 88, ptr @.str.833, i32 0, ptr @.str.833, ptr @.str.1 }, %struct.EnumPropertyItem { i32 89, ptr @.str.834, i32 0, ptr @.str.834, ptr @.str.1 }, %struct.EnumPropertyItem { i32 90, ptr @.str.835, i32 0, ptr @.str.835, ptr @.str.1 }, %struct.EnumPropertyItem { i32 91, ptr @.str.836, i32 0, ptr @.str.836, ptr @.str.1 }, %struct.EnumPropertyItem { i32 104, ptr @.str.837, i32 0, ptr @.str.837, ptr @.str.1 }, %struct.EnumPropertyItem { i32 105, ptr @.str.838, i32 0, ptr @.str.838, ptr @.str.1 }, %struct.EnumPropertyItem { i32 106, ptr @.str.839, i32 0, ptr @.str.839, ptr @.str.1 }, %struct.EnumPropertyItem { i32 107, ptr @.str.840, i32 0, ptr @.str.840, ptr @.str.1 }, %struct.EnumPropertyItem { i32 108, ptr @.str.841, i32 0, ptr @.str.841, ptr @.str.1 }, %struct.EnumPropertyItem { i32 109, ptr @.str.842, i32 0, ptr @.str.842, ptr @.str.1 }, %struct.EnumPropertyItem { i32 110, ptr @.str.368, i32 0, ptr @.str.368, ptr @.str.1 }, %struct.EnumPropertyItem { i32 111, ptr @.str.843, i32 0, ptr @.str.843, ptr @.str.1 }, %struct.EnumPropertyItem { i32 112, ptr @.str.397, i32 0, ptr @.str.397, ptr @.str.1 }, %struct.EnumPropertyItem { i32 113, ptr @.str.844, i32 0, ptr @.str.844, ptr @.str.1 }, %struct.EnumPropertyItem { i32 114, ptr @.str.845, i32 0, ptr @.str.845, ptr @.str.1 }, %struct.EnumPropertyItem { i32 115, ptr @.str.846, i32 0, ptr @.str.846, ptr @.str.1 }, %struct.EnumPropertyItem { i32 116, ptr @.str.847, i32 0, ptr @.str.847, ptr @.str.1 }, %struct.EnumPropertyItem { i32 117, ptr @.str.848, i32 0, ptr @.str.848, ptr @.str.1 }, %struct.EnumPropertyItem { i32 118, ptr @.str.849, i32 0, ptr @.str.849, ptr @.str.1 }, %struct.EnumPropertyItem { i32 119, ptr @.str.850, i32 0, ptr @.str.850, ptr @.str.1 }, %struct.EnumPropertyItem { i32 120, ptr @.str.851, i32 0, ptr @.str.851, ptr @.str.1 }, %struct.EnumPropertyItem { i32 121, ptr @.str.852, i32 0, ptr @.str.852, ptr @.str.1 }, %struct.EnumPropertyItem { i32 122, ptr @.str.853, i32 0, ptr @.str.853, ptr @.str.1 }, %struct.EnumPropertyItem { i32 123, ptr @.str.854, i32 0, ptr @.str.854, ptr @.str.1 }, %struct.EnumPropertyItem { i32 124, ptr @.str.855, i32 0, ptr @.str.855, ptr @.str.1 }, %struct.EnumPropertyItem { i32 130, ptr @.str.856, i32 0, ptr @.str.856, ptr @.str.1 }, %struct.EnumPropertyItem { i32 131, ptr @.str.857, i32 0, ptr @.str.857, ptr @.str.1 }, %struct.EnumPropertyItem { i32 132, ptr @.str.858, i32 0, ptr @.str.858, ptr @.str.1 }, %struct.EnumPropertyItem { i32 133, ptr @.str.859, i32 0, ptr @.str.859, ptr @.str.1 }, %struct.EnumPropertyItem { i32 134, ptr @.str.860, i32 0, ptr @.str.860, ptr @.str.1 }, %struct.EnumPropertyItem { i32 135, ptr @.str.861, i32 0, ptr @.str.861, ptr @.str.1 }, %struct.EnumPropertyItem { i32 136, ptr @.str.862, i32 0, ptr @.str.862, ptr @.str.1 }, %struct.EnumPropertyItem { i32 137, ptr @.str.863, i32 0, ptr @.str.863, ptr @.str.1 }, %struct.EnumPropertyItem { i32 138, ptr @.str.864, i32 0, ptr @.str.864, ptr @.str.1 }, %struct.EnumPropertyItem { i32 139, ptr @.str.865, i32 0, ptr @.str.865, ptr @.str.1 }, %struct.EnumPropertyItem { i32 156, ptr @.str.866, i32 0, ptr @.str.866, ptr @.str.1 }, %struct.EnumPropertyItem { i32 157, ptr @.str.867, i32 0, ptr @.str.867, ptr @.str.1 }, %struct.EnumPropertyItem { i32 158, ptr @.str.868, i32 0, ptr @.str.868, ptr @.str.1 }, %struct.EnumPropertyItem { i32 159, ptr @.str.869, i32 0, ptr @.str.869, ptr @.str.1 }, %struct.EnumPropertyItem { i32 160, ptr @.str.870, i32 0, ptr @.str.870, ptr @.str.1 }, %struct.EnumPropertyItem { i32 161, ptr @.str.871, i32 0, ptr @.str.871, ptr @.str.1 }, %struct.EnumPropertyItem { i32 162, ptr @.str.872, i32 0, ptr @.str.872, ptr @.str.1 }, %struct.EnumPropertyItem { i32 163, ptr @.str.873, i32 0, ptr @.str.873, ptr @.str.1 }, %struct.EnumPropertyItem { i32 164, ptr @.str.874, i32 0, ptr @.str.874, ptr @.str.1 }, %struct.EnumPropertyItem { i32 165, ptr @.str.875, i32 0, ptr @.str.875, ptr @.str.1 }, %struct.EnumPropertyItem { i32 166, ptr @.str.876, i32 0, ptr @.str.876, ptr @.str.1 }, %struct.EnumPropertyItem { i32 167, ptr @.str.877, i32 0, ptr @.str.877, ptr @.str.1 }, %struct.EnumPropertyItem { i32 168, ptr @.str.878, i32 0, ptr @.str.878, ptr @.str.1 }, %struct.EnumPropertyItem { i32 169, ptr @.str.879, i32 0, ptr @.str.879, ptr @.str.1 }, %struct.EnumPropertyItem { i32 170, ptr @.str.880, i32 0, ptr @.str.880, ptr @.str.1 }, %struct.EnumPropertyItem { i32 171, ptr @.str.881, i32 0, ptr @.str.881, ptr @.str.1 }, %struct.EnumPropertyItem { i32 172, ptr @.str.882, i32 0, ptr @.str.882, ptr @.str.1 }, %struct.EnumPropertyItem { i32 173, ptr @.str.883, i32 0, ptr @.str.883, ptr @.str.1 }, %struct.EnumPropertyItem { i32 174, ptr @.str.884, i32 0, ptr @.str.884, ptr @.str.1 }, %struct.EnumPropertyItem { i32 175, ptr @.str.885, i32 0, ptr @.str.885, ptr @.str.1 }, %struct.EnumPropertyItem { i32 176, ptr @.str.886, i32 0, ptr @.str.886, ptr @.str.1 }, %struct.EnumPropertyItem { i32 177, ptr @.str.887, i32 0, ptr @.str.887, ptr @.str.1 }, %struct.EnumPropertyItem { i32 178, ptr @.str.888, i32 0, ptr @.str.888, ptr @.str.1 }, %struct.EnumPropertyItem { i32 179, ptr @.str.889, i32 0, ptr @.str.889, ptr @.str.1 }, %struct.EnumPropertyItem { i32 180, ptr @.str.890, i32 0, ptr @.str.890, ptr @.str.1 }, %struct.EnumPropertyItem { i32 182, ptr @.str.891, i32 0, ptr @.str.891, ptr @.str.1 }, %struct.EnumPropertyItem { i32 183, ptr @.str.892, i32 0, ptr @.str.892, ptr @.str.1 }, %struct.EnumPropertyItem { i32 184, ptr @.str.893, i32 0, ptr @.str.893, ptr @.str.1 }, %struct.EnumPropertyItem { i32 185, ptr @.str.894, i32 0, ptr @.str.894, ptr @.str.1 }, %struct.EnumPropertyItem { i32 186, ptr @.str.895, i32 0, ptr @.str.895, ptr @.str.1 }, %struct.EnumPropertyItem { i32 187, ptr @.str.896, i32 0, ptr @.str.896, ptr @.str.1 }, %struct.EnumPropertyItem { i32 188, ptr @.str.897, i32 0, ptr @.str.897, ptr @.str.1 }, %struct.EnumPropertyItem { i32 189, ptr @.str.898, i32 0, ptr @.str.898, ptr @.str.1 }, %struct.EnumPropertyItem { i32 190, ptr @.str.899, i32 0, ptr @.str.899, ptr @.str.1 }, %struct.EnumPropertyItem { i32 191, ptr @.str.900, i32 0, ptr @.str.900, ptr @.str.1 }, %struct.EnumPropertyItem { i32 192, ptr @.str.901, i32 0, ptr @.str.901, ptr @.str.1 }, %struct.EnumPropertyItem { i32 194, ptr @.str.902, i32 0, ptr @.str.902, ptr @.str.1 }, %struct.EnumPropertyItem { i32 195, ptr @.str.903, i32 0, ptr @.str.903, ptr @.str.1 }, %struct.EnumPropertyItem { i32 196, ptr @.str.904, i32 0, ptr @.str.904, ptr @.str.1 }, %struct.EnumPropertyItem { i32 197, ptr @.str.905, i32 0, ptr @.str.905, ptr @.str.1 }, %struct.EnumPropertyItem { i32 198, ptr @.str.906, i32 0, ptr @.str.906, ptr @.str.1 }, %struct.EnumPropertyItem { i32 200, ptr @.str.907, i32 0, ptr @.str.907, ptr @.str.1 }, %struct.EnumPropertyItem { i32 201, ptr @.str.908, i32 0, ptr @.str.908, ptr @.str.1 }, %struct.EnumPropertyItem { i32 202, ptr @.str.909, i32 0, ptr @.str.909, ptr @.str.1 }, %struct.EnumPropertyItem { i32 203, ptr @.str.910, i32 0, ptr @.str.910, ptr @.str.1 }, %struct.EnumPropertyItem { i32 206, ptr @.str.417, i32 0, ptr @.str.417, ptr @.str.1 }, %struct.EnumPropertyItem { i32 207, ptr @.str.911, i32 0, ptr @.str.911, ptr @.str.1 }, %struct.EnumPropertyItem { i32 234, ptr @.str.912, i32 0, ptr @.str.912, ptr @.str.1 }, %struct.EnumPropertyItem { i32 235, ptr @.str.913, i32 0, ptr @.str.913, ptr @.str.1 }, %struct.EnumPropertyItem { i32 236, ptr @.str.914, i32 0, ptr @.str.914, ptr @.str.1 }, %struct.EnumPropertyItem { i32 237, ptr @.str.915, i32 0, ptr @.str.915, ptr @.str.1 }, %struct.EnumPropertyItem { i32 238, ptr @.str.916, i32 0, ptr @.str.916, ptr @.str.1 }, %struct.EnumPropertyItem { i32 239, ptr @.str.917, i32 0, ptr @.str.917, ptr @.str.1 }, %struct.EnumPropertyItem { i32 240, ptr @.str.918, i32 0, ptr @.str.918, ptr @.str.1 }, %struct.EnumPropertyItem { i32 241, ptr @.str.919, i32 0, ptr @.str.919, ptr @.str.1 }, %struct.EnumPropertyItem { i32 242, ptr @.str.920, i32 0, ptr @.str.920, ptr @.str.1 }, %struct.EnumPropertyItem { i32 243, ptr @.str.921, i32 0, ptr @.str.921, ptr @.str.1 }, %struct.EnumPropertyItem { i32 244, ptr @.str.922, i32 0, ptr @.str.922, ptr @.str.1 }, %struct.EnumPropertyItem { i32 253, ptr @.str.923, i32 0, ptr @.str.923, ptr @.str.1 }, %struct.EnumPropertyItem { i32 254, ptr @.str.924, i32 0, ptr @.str.924, ptr @.str.1 }, %struct.EnumPropertyItem { i32 255, ptr @.str.925, i32 0, ptr @.str.925, ptr @.str.1 }, %struct.EnumPropertyItem { i32 256, ptr @.str.926, i32 0, ptr @.str.926, ptr @.str.1 }, %struct.EnumPropertyItem { i32 257, ptr @.str.927, i32 0, ptr @.str.927, ptr @.str.1 }, %struct.EnumPropertyItem { i32 258, ptr @.str.928, i32 0, ptr @.str.928, ptr @.str.1 }, %struct.EnumPropertyItem { i32 260, ptr @.str.929, i32 0, ptr @.str.929, ptr @.str.1 }, %struct.EnumPropertyItem { i32 261, ptr @.str.930, i32 0, ptr @.str.930, ptr @.str.1 }, %struct.EnumPropertyItem { i32 262, ptr @.str.931, i32 0, ptr @.str.931, ptr @.str.1 }, %struct.EnumPropertyItem { i32 263, ptr @.str.932, i32 0, ptr @.str.932, ptr @.str.1 }, %struct.EnumPropertyItem { i32 264, ptr @.str.933, i32 0, ptr @.str.933, ptr @.str.1 }, %struct.EnumPropertyItem { i32 265, ptr @.str.934, i32 0, ptr @.str.934, ptr @.str.1 }, %struct.EnumPropertyItem { i32 266, ptr @.str.935, i32 0, ptr @.str.935, ptr @.str.1 }, %struct.EnumPropertyItem { i32 267, ptr @.str.936, i32 0, ptr @.str.936, ptr @.str.1 }, %struct.EnumPropertyItem { i32 268, ptr @.str.937, i32 0, ptr @.str.937, ptr @.str.1 }, %struct.EnumPropertyItem { i32 269, ptr @.str.938, i32 0, ptr @.str.938, ptr @.str.1 }, %struct.EnumPropertyItem { i32 270, ptr @.str.939, i32 0, ptr @.str.939, ptr @.str.1 }, %struct.EnumPropertyItem { i32 271, ptr @.str.940, i32 0, ptr @.str.940, ptr @.str.1 }, %struct.EnumPropertyItem { i32 286, ptr @.str.941, i32 0, ptr @.str.941, ptr @.str.1 }, %struct.EnumPropertyItem { i32 287, ptr @.str.942, i32 0, ptr @.str.942, ptr @.str.1 }, %struct.EnumPropertyItem { i32 288, ptr @.str.943, i32 0, ptr @.str.943, ptr @.str.1 }, %struct.EnumPropertyItem { i32 289, ptr @.str.944, i32 0, ptr @.str.944, ptr @.str.1 }, %struct.EnumPropertyItem { i32 290, ptr @.str.945, i32 0, ptr @.str.945, ptr @.str.1 }, %struct.EnumPropertyItem { i32 291, ptr @.str.946, i32 0, ptr @.str.946, ptr @.str.1 }, %struct.EnumPropertyItem { i32 292, ptr @.str.947, i32 0, ptr @.str.947, ptr @.str.1 }, %struct.EnumPropertyItem { i32 293, ptr @.str.948, i32 0, ptr @.str.948, ptr @.str.1 }, %struct.EnumPropertyItem { i32 294, ptr @.str.949, i32 0, ptr @.str.949, ptr @.str.1 }, %struct.EnumPropertyItem { i32 295, ptr @.str.950, i32 0, ptr @.str.950, ptr @.str.1 }, %struct.EnumPropertyItem { i32 298, ptr @.str.951, i32 0, ptr @.str.951, ptr @.str.1 }, %struct.EnumPropertyItem { i32 299, ptr @.str.952, i32 0, ptr @.str.952, ptr @.str.1 }, %struct.EnumPropertyItem { i32 300, ptr @.str.953, i32 0, ptr @.str.953, ptr @.str.1 }, %struct.EnumPropertyItem { i32 301, ptr @.str.954, i32 0, ptr @.str.954, ptr @.str.1 }, %struct.EnumPropertyItem { i32 302, ptr @.str.955, i32 0, ptr @.str.955, ptr @.str.1 }, %struct.EnumPropertyItem { i32 305, ptr @.str.956, i32 0, ptr @.str.956, ptr @.str.1 }, %struct.EnumPropertyItem { i32 306, ptr @.str.957, i32 0, ptr @.str.957, ptr @.str.1 }, %struct.EnumPropertyItem { i32 307, ptr @.str.958, i32 0, ptr @.str.958, ptr @.str.1 }, %struct.EnumPropertyItem { i32 308, ptr @.str.959, i32 0, ptr @.str.959, ptr @.str.1 }, %struct.EnumPropertyItem { i32 309, ptr @.str.960, i32 0, ptr @.str.960, ptr @.str.1 }, %struct.EnumPropertyItem { i32 310, ptr @.str.961, i32 0, ptr @.str.961, ptr @.str.1 }, %struct.EnumPropertyItem { i32 312, ptr @.str.962, i32 0, ptr @.str.962, ptr @.str.1 }, %struct.EnumPropertyItem { i32 313, ptr @.str.963, i32 0, ptr @.str.963, ptr @.str.1 }, %struct.EnumPropertyItem { i32 314, ptr @.str.964, i32 0, ptr @.str.964, ptr @.str.1 }, %struct.EnumPropertyItem { i32 315, ptr @.str.965, i32 0, ptr @.str.965, ptr @.str.1 }, %struct.EnumPropertyItem { i32 316, ptr @.str.966, i32 0, ptr @.str.966, ptr @.str.1 }, %struct.EnumPropertyItem { i32 317, ptr @.str.967, i32 0, ptr @.str.967, ptr @.str.1 }, %struct.EnumPropertyItem { i32 321, ptr @.str.968, i32 0, ptr @.str.968, ptr @.str.1 }, %struct.EnumPropertyItem { i32 322, ptr @.str.969, i32 0, ptr @.str.969, ptr @.str.1 }, %struct.EnumPropertyItem { i32 323, ptr @.str.970, i32 0, ptr @.str.970, ptr @.str.1 }, %struct.EnumPropertyItem { i32 324, ptr @.str.971, i32 0, ptr @.str.971, ptr @.str.1 }, %struct.EnumPropertyItem { i32 325, ptr @.str.972, i32 0, ptr @.str.972, ptr @.str.1 }, %struct.EnumPropertyItem { i32 331, ptr @.str.973, i32 0, ptr @.str.973, ptr @.str.1 }, %struct.EnumPropertyItem { i32 332, ptr @.str.974, i32 0, ptr @.str.974, ptr @.str.1 }, %struct.EnumPropertyItem { i32 333, ptr @.str.975, i32 0, ptr @.str.975, ptr @.str.1 }, %struct.EnumPropertyItem { i32 334, ptr @.str.976, i32 0, ptr @.str.976, ptr @.str.1 }, %struct.EnumPropertyItem { i32 335, ptr @.str.977, i32 0, ptr @.str.977, ptr @.str.1 }, %struct.EnumPropertyItem { i32 336, ptr @.str.978, i32 0, ptr @.str.978, ptr @.str.1 }, %struct.EnumPropertyItem { i32 337, ptr @.str.979, i32 0, ptr @.str.979, ptr @.str.1 }, %struct.EnumPropertyItem { i32 338, ptr @.str.980, i32 0, ptr @.str.980, ptr @.str.1 }, %struct.EnumPropertyItem { i32 339, ptr @.str.981, i32 0, ptr @.str.981, ptr @.str.1 }, %struct.EnumPropertyItem { i32 340, ptr @.str.982, i32 0, ptr @.str.982, ptr @.str.1 }, %struct.EnumPropertyItem { i32 341, ptr @.str.983, i32 0, ptr @.str.983, ptr @.str.1 }, %struct.EnumPropertyItem { i32 342, ptr @.str.984, i32 0, ptr @.str.984, ptr @.str.1 }, %struct.EnumPropertyItem { i32 343, ptr @.str.985, i32 0, ptr @.str.985, ptr @.str.1 }, %struct.EnumPropertyItem { i32 344, ptr @.str.986, i32 0, ptr @.str.986, ptr @.str.1 }, %struct.EnumPropertyItem { i32 345, ptr @.str.987, i32 0, ptr @.str.987, ptr @.str.1 }, %struct.EnumPropertyItem { i32 346, ptr @.str.988, i32 0, ptr @.str.988, ptr @.str.1 }, %struct.EnumPropertyItem { i32 347, ptr @.str.989, i32 0, ptr @.str.989, ptr @.str.1 }, %struct.EnumPropertyItem { i32 348, ptr @.str.990, i32 0, ptr @.str.990, ptr @.str.1 }, %struct.EnumPropertyItem { i32 349, ptr @.str.991, i32 0, ptr @.str.991, ptr @.str.1 }, %struct.EnumPropertyItem { i32 350, ptr @.str.992, i32 0, ptr @.str.992, ptr @.str.1 }, %struct.EnumPropertyItem { i32 442, ptr @.str.993, i32 0, ptr @.str.993, ptr @.str.1 }, %struct.EnumPropertyItem { i32 443, ptr @.str.994, i32 0, ptr @.str.994, ptr @.str.1 }, %struct.EnumPropertyItem { i32 444, ptr @.str.995, i32 0, ptr @.str.995, ptr @.str.1 }, %struct.EnumPropertyItem { i32 445, ptr @.str.996, i32 0, ptr @.str.996, ptr @.str.1 }, %struct.EnumPropertyItem { i32 446, ptr @.str.997, i32 0, ptr @.str.997, ptr @.str.1 }, %struct.EnumPropertyItem { i32 447, ptr @.str.998, i32 0, ptr @.str.998, ptr @.str.1 }, %struct.EnumPropertyItem { i32 448, ptr @.str.999, i32 0, ptr @.str.999, ptr @.str.1 }, %struct.EnumPropertyItem { i32 449, ptr @.str.1000, i32 0, ptr @.str.1000, ptr @.str.1 }, %struct.EnumPropertyItem { i32 450, ptr @.str.1001, i32 0, ptr @.str.1001, ptr @.str.1 }, %struct.EnumPropertyItem { i32 451, ptr @.str.1002, i32 0, ptr @.str.1002, ptr @.str.1 }, %struct.EnumPropertyItem { i32 452, ptr @.str.1003, i32 0, ptr @.str.1003, ptr @.str.1 }, %struct.EnumPropertyItem { i32 453, ptr @.str.1004, i32 0, ptr @.str.1004, ptr @.str.1 }, %struct.EnumPropertyItem { i32 454, ptr @.str.1005, i32 0, ptr @.str.1005, ptr @.str.1 }, %struct.EnumPropertyItem { i32 455, ptr @.str.1006, i32 0, ptr @.str.1006, ptr @.str.1 }, %struct.EnumPropertyItem { i32 456, ptr @.str.1007, i32 0, ptr @.str.1007, ptr @.str.1 }, %struct.EnumPropertyItem { i32 457, ptr @.str.1008, i32 0, ptr @.str.1008, ptr @.str.1 }, %struct.EnumPropertyItem { i32 458, ptr @.str.1009, i32 0, ptr @.str.1009, ptr @.str.1 }, %struct.EnumPropertyItem { i32 459, ptr @.str.1010, i32 0, ptr @.str.1010, ptr @.str.1 }, %struct.EnumPropertyItem { i32 460, ptr @.str.1011, i32 0, ptr @.str.1011, ptr @.str.1 }, %struct.EnumPropertyItem { i32 461, ptr @.str.1012, i32 0, ptr @.str.1012, ptr @.str.1 }, %struct.EnumPropertyItem { i32 462, ptr @.str.1013, i32 0, ptr @.str.1013, ptr @.str.1 }, %struct.EnumPropertyItem { i32 463, ptr @.str.1014, i32 0, ptr @.str.1014, ptr @.str.1 }, %struct.EnumPropertyItem { i32 464, ptr @.str.1015, i32 0, ptr @.str.1015, ptr @.str.1 }, %struct.EnumPropertyItem { i32 465, ptr @.str.1016, i32 0, ptr @.str.1016, ptr @.str.1 }, %struct.EnumPropertyItem { i32 466, ptr @.str.1017, i32 0, ptr @.str.1017, ptr @.str.1 }, %struct.EnumPropertyItem { i32 467, ptr @.str.1018, i32 0, ptr @.str.1018, ptr @.str.1 }, %struct.EnumPropertyItem { i32 468, ptr @.str.1019, i32 0, ptr @.str.1019, ptr @.str.1 }, %struct.EnumPropertyItem { i32 469, ptr @.str.1020, i32 0, ptr @.str.1020, ptr @.str.1 }, %struct.EnumPropertyItem { i32 470, ptr @.str.1021, i32 0, ptr @.str.1021, ptr @.str.1 }, %struct.EnumPropertyItem { i32 471, ptr @.str.1022, i32 0, ptr @.str.1022, ptr @.str.1 }, %struct.EnumPropertyItem { i32 472, ptr @.str.1023, i32 0, ptr @.str.1023, ptr @.str.1 }, %struct.EnumPropertyItem { i32 473, ptr @.str.1024, i32 0, ptr @.str.1024, ptr @.str.1 }, %struct.EnumPropertyItem { i32 474, ptr @.str.1025, i32 0, ptr @.str.1025, ptr @.str.1 }, %struct.EnumPropertyItem { i32 475, ptr @.str.1026, i32 0, ptr @.str.1026, ptr @.str.1 }, %struct.EnumPropertyItem { i32 476, ptr @.str.1027, i32 0, ptr @.str.1027, ptr @.str.1 }, %struct.EnumPropertyItem { i32 477, ptr @.str.1028, i32 0, ptr @.str.1028, ptr @.str.1 }, %struct.EnumPropertyItem { i32 478, ptr @.str.1029, i32 0, ptr @.str.1029, ptr @.str.1 }, %struct.EnumPropertyItem { i32 479, ptr @.str.1030, i32 0, ptr @.str.1030, ptr @.str.1 }, %struct.EnumPropertyItem { i32 480, ptr @.str.1031, i32 0, ptr @.str.1031, ptr @.str.1 }, %struct.EnumPropertyItem { i32 481, ptr @.str.1032, i32 0, ptr @.str.1032, ptr @.str.1 }, %struct.EnumPropertyItem { i32 482, ptr @.str.1033, i32 0, ptr @.str.1033, ptr @.str.1 }, %struct.EnumPropertyItem { i32 494, ptr @.str.1034, i32 0, ptr @.str.1034, ptr @.str.1 }, %struct.EnumPropertyItem { i32 495, ptr @.str.1035, i32 0, ptr @.str.1035, ptr @.str.1 }, %struct.EnumPropertyItem { i32 496, ptr @.str.1036, i32 0, ptr @.str.1036, ptr @.str.1 }, %struct.EnumPropertyItem { i32 497, ptr @.str.1037, i32 0, ptr @.str.1037, ptr @.str.1 }, %struct.EnumPropertyItem { i32 498, ptr @.str.205, i32 0, ptr @.str.205, ptr @.str.1 }, %struct.EnumPropertyItem { i32 499, ptr @.str.1038, i32 0, ptr @.str.1038, ptr @.str.1 }, %struct.EnumPropertyItem { i32 500, ptr @.str.1039, i32 0, ptr @.str.1039, ptr @.str.1 }, %struct.EnumPropertyItem { i32 501, ptr @.str.1040, i32 0, ptr @.str.1040, ptr @.str.1 }, %struct.EnumPropertyItem { i32 502, ptr @.str.1041, i32 0, ptr @.str.1041, ptr @.str.1 }, %struct.EnumPropertyItem { i32 503, ptr @.str.1042, i32 0, ptr @.str.1042, ptr @.str.1 }, %struct.EnumPropertyItem { i32 504, ptr @.str.1043, i32 0, ptr @.str.1043, ptr @.str.1 }, %struct.EnumPropertyItem { i32 505, ptr @.str.1044, i32 0, ptr @.str.1044, ptr @.str.1 }, %struct.EnumPropertyItem { i32 506, ptr @.str.1045, i32 0, ptr @.str.1045, ptr @.str.1 }, %struct.EnumPropertyItem { i32 507, ptr @.str.1046, i32 0, ptr @.str.1046, ptr @.str.1 }, %struct.EnumPropertyItem { i32 508, ptr @.str.1047, i32 0, ptr @.str.1047, ptr @.str.1 }, %struct.EnumPropertyItem { i32 509, ptr @.str.1048, i32 0, ptr @.str.1048, ptr @.str.1 }, %struct.EnumPropertyItem { i32 510, ptr @.str.1049, i32 0, ptr @.str.1049, ptr @.str.1 }, %struct.EnumPropertyItem { i32 511, ptr @.str.1050, i32 0, ptr @.str.1050, ptr @.str.1 }, %struct.EnumPropertyItem { i32 512, ptr @.str.1051, i32 0, ptr @.str.1051, ptr @.str.1 }, %struct.EnumPropertyItem { i32 513, ptr @.str.1052, i32 0, ptr @.str.1052, ptr @.str.1 }, %struct.EnumPropertyItem { i32 514, ptr @.str.1053, i32 0, ptr @.str.1053, ptr @.str.1 }, %struct.EnumPropertyItem { i32 515, ptr @.str.1054, i32 0, ptr @.str.1054, ptr @.str.1 }, %struct.EnumPropertyItem { i32 516, ptr @.str.1055, i32 0, ptr @.str.1055, ptr @.str.1 }, %struct.EnumPropertyItem { i32 517, ptr @.str.1056, i32 0, ptr @.str.1056, ptr @.str.1 }, %struct.EnumPropertyItem { i32 518, ptr @.str.1057, i32 0, ptr @.str.1057, ptr @.str.1 }, %struct.EnumPropertyItem { i32 519, ptr @.str.1058, i32 0, ptr @.str.1058, ptr @.str.1 }, %struct.EnumPropertyItem { i32 520, ptr @.str.1059, i32 0, ptr @.str.1059, ptr @.str.1 }, %struct.EnumPropertyItem { i32 521, ptr @.str.1060, i32 0, ptr @.str.1060, ptr @.str.1 }, %struct.EnumPropertyItem { i32 522, ptr @.str.1061, i32 0, ptr @.str.1061, ptr @.str.1 }, %struct.EnumPropertyItem { i32 523, ptr @.str.1062, i32 0, ptr @.str.1062, ptr @.str.1 }, %struct.EnumPropertyItem { i32 524, ptr @.str.1063, i32 0, ptr @.str.1063, ptr @.str.1 }, %struct.EnumPropertyItem { i32 525, ptr @.str.1064, i32 0, ptr @.str.1064, ptr @.str.1 }, %struct.EnumPropertyItem { i32 526, ptr @.str.1065, i32 0, ptr @.str.1065, ptr @.str.1 }, %struct.EnumPropertyItem { i32 527, ptr @.str.1066, i32 0, ptr @.str.1066, ptr @.str.1 }, %struct.EnumPropertyItem { i32 528, ptr @.str.1067, i32 0, ptr @.str.1067, ptr @.str.1 }, %struct.EnumPropertyItem { i32 529, ptr @.str.1068, i32 0, ptr @.str.1068, ptr @.str.1 }, %struct.EnumPropertyItem { i32 530, ptr @.str.1069, i32 0, ptr @.str.1069, ptr @.str.1 }, %struct.EnumPropertyItem { i32 531, ptr @.str.1070, i32 0, ptr @.str.1070, ptr @.str.1 }, %struct.EnumPropertyItem { i32 532, ptr @.str.1071, i32 0, ptr @.str.1071, ptr @.str.1 }, %struct.EnumPropertyItem { i32 533, ptr @.str.1072, i32 0, ptr @.str.1072, ptr @.str.1 }, %struct.EnumPropertyItem { i32 534, ptr @.str.1073, i32 0, ptr @.str.1073, ptr @.str.1 }, %struct.EnumPropertyItem { i32 535, ptr @.str.1074, i32 0, ptr @.str.1074, ptr @.str.1 }, %struct.EnumPropertyItem { i32 536, ptr @.str.1075, i32 0, ptr @.str.1075, ptr @.str.1 }, %struct.EnumPropertyItem { i32 537, ptr @.str.1076, i32 0, ptr @.str.1076, ptr @.str.1 }, %struct.EnumPropertyItem { i32 538, ptr @.str.1077, i32 0, ptr @.str.1077, ptr @.str.1 }, %struct.EnumPropertyItem { i32 539, ptr @.str.1078, i32 0, ptr @.str.1078, ptr @.str.1 }, %struct.EnumPropertyItem { i32 540, ptr @.str.1079, i32 0, ptr @.str.1079, ptr @.str.1 }, %struct.EnumPropertyItem { i32 546, ptr @.str.1080, i32 0, ptr @.str.1080, ptr @.str.1 }, %struct.EnumPropertyItem { i32 547, ptr @.str.1081, i32 0, ptr @.str.1081, ptr @.str.1 }, %struct.EnumPropertyItem { i32 548, ptr @.str.1082, i32 0, ptr @.str.1082, ptr @.str.1 }, %struct.EnumPropertyItem { i32 549, ptr @.str.1083, i32 0, ptr @.str.1083, ptr @.str.1 }, %struct.EnumPropertyItem { i32 551, ptr @.str.1084, i32 0, ptr @.str.1084, ptr @.str.1 }, %struct.EnumPropertyItem { i32 552, ptr @.str.1085, i32 0, ptr @.str.1085, ptr @.str.1 }, %struct.EnumPropertyItem { i32 553, ptr @.str.1086, i32 0, ptr @.str.1086, ptr @.str.1 }, %struct.EnumPropertyItem { i32 554, ptr @.str.1087, i32 0, ptr @.str.1087, ptr @.str.1 }, %struct.EnumPropertyItem { i32 555, ptr @.str.1088, i32 0, ptr @.str.1088, ptr @.str.1 }, %struct.EnumPropertyItem { i32 556, ptr @.str.1089, i32 0, ptr @.str.1089, ptr @.str.1 }, %struct.EnumPropertyItem { i32 558, ptr @.str.1090, i32 0, ptr @.str.1090, ptr @.str.1 }, %struct.EnumPropertyItem { i32 559, ptr @.str.1091, i32 0, ptr @.str.1091, ptr @.str.1 }, %struct.EnumPropertyItem { i32 560, ptr @.str.1092, i32 0, ptr @.str.1092, ptr @.str.1 }, %struct.EnumPropertyItem { i32 561, ptr @.str.1093, i32 0, ptr @.str.1093, ptr @.str.1 }, %struct.EnumPropertyItem { i32 562, ptr @.str.1094, i32 0, ptr @.str.1094, ptr @.str.1 }, %struct.EnumPropertyItem { i32 563, ptr @.str.1095, i32 0, ptr @.str.1095, ptr @.str.1 }, %struct.EnumPropertyItem { i32 564, ptr @.str.1096, i32 0, ptr @.str.1096, ptr @.str.1 }, %struct.EnumPropertyItem { i32 565, ptr @.str.1097, i32 0, ptr @.str.1097, ptr @.str.1 }, %struct.EnumPropertyItem { i32 566, ptr @.str.1098, i32 0, ptr @.str.1098, ptr @.str.1 }, %struct.EnumPropertyItem { i32 567, ptr @.str.1099, i32 0, ptr @.str.1099, ptr @.str.1 }, %struct.EnumPropertyItem { i32 568, ptr @.str.1100, i32 0, ptr @.str.1100, ptr @.str.1 }, %struct.EnumPropertyItem { i32 569, ptr @.str.1101, i32 0, ptr @.str.1101, ptr @.str.1 }, %struct.EnumPropertyItem { i32 570, ptr @.str.1102, i32 0, ptr @.str.1102, ptr @.str.1 }, %struct.EnumPropertyItem { i32 571, ptr @.str.1103, i32 0, ptr @.str.1103, ptr @.str.1 }, %struct.EnumPropertyItem { i32 572, ptr @.str.1104, i32 0, ptr @.str.1104, ptr @.str.1 }, %struct.EnumPropertyItem { i32 573, ptr @.str.1105, i32 0, ptr @.str.1105, ptr @.str.1 }, %struct.EnumPropertyItem { i32 574, ptr @.str.1106, i32 0, ptr @.str.1106, ptr @.str.1 }, %struct.EnumPropertyItem { i32 575, ptr @.str.1107, i32 0, ptr @.str.1107, ptr @.str.1 }, %struct.EnumPropertyItem { i32 576, ptr @.str.1108, i32 0, ptr @.str.1108, ptr @.str.1 }, %struct.EnumPropertyItem { i32 577, ptr @.str.1109, i32 0, ptr @.str.1109, ptr @.str.1 }, %struct.EnumPropertyItem { i32 578, ptr @.str.1110, i32 0, ptr @.str.1110, ptr @.str.1 }, %struct.EnumPropertyItem { i32 579, ptr @.str.1111, i32 0, ptr @.str.1111, ptr @.str.1 }, %struct.EnumPropertyItem { i32 580, ptr @.str.1112, i32 0, ptr @.str.1112, ptr @.str.1 }, %struct.EnumPropertyItem { i32 581, ptr @.str.1113, i32 0, ptr @.str.1113, ptr @.str.1 }, %struct.EnumPropertyItem { i32 582, ptr @.str.1114, i32 0, ptr @.str.1114, ptr @.str.1 }, %struct.EnumPropertyItem { i32 583, ptr @.str.1115, i32 0, ptr @.str.1115, ptr @.str.1 }, %struct.EnumPropertyItem { i32 585, ptr @.str.1116, i32 0, ptr @.str.1116, ptr @.str.1 }, %struct.EnumPropertyItem { i32 586, ptr @.str.1117, i32 0, ptr @.str.1117, ptr @.str.1 }, %struct.EnumPropertyItem { i32 587, ptr @.str.1118, i32 0, ptr @.str.1118, ptr @.str.1 }, %struct.EnumPropertyItem { i32 588, ptr @.str.1119, i32 0, ptr @.str.1119, ptr @.str.1 }, %struct.EnumPropertyItem { i32 589, ptr @.str.1120, i32 0, ptr @.str.1120, ptr @.str.1 }, %struct.EnumPropertyItem { i32 590, ptr @.str.1121, i32 0, ptr @.str.1121, ptr @.str.1 }, %struct.EnumPropertyItem { i32 591, ptr @.str.1122, i32 0, ptr @.str.1122, ptr @.str.1 }, %struct.EnumPropertyItem { i32 598, ptr @.str.1123, i32 0, ptr @.str.1123, ptr @.str.1 }, %struct.EnumPropertyItem { i32 599, ptr @.str.1124, i32 0, ptr @.str.1124, ptr @.str.1 }, %struct.EnumPropertyItem { i32 600, ptr @.str.1125, i32 0, ptr @.str.1125, ptr @.str.1 }, %struct.EnumPropertyItem { i32 601, ptr @.str.1126, i32 0, ptr @.str.1126, ptr @.str.1 }, %struct.EnumPropertyItem { i32 606, ptr @.str.1127, i32 0, ptr @.str.1127, ptr @.str.1 }, %struct.EnumPropertyItem { i32 607, ptr @.str.1128, i32 0, ptr @.str.1128, ptr @.str.1 }, %struct.EnumPropertyItem { i32 608, ptr @.str.1129, i32 0, ptr @.str.1129, ptr @.str.1 }, %struct.EnumPropertyItem { i32 609, ptr @.str.1130, i32 0, ptr @.str.1130, ptr @.str.1 }, %struct.EnumPropertyItem { i32 610, ptr @.str.1131, i32 0, ptr @.str.1131, ptr @.str.1 }, %struct.EnumPropertyItem { i32 611, ptr @.str.1132, i32 0, ptr @.str.1132, ptr @.str.1 }, %struct.EnumPropertyItem { i32 612, ptr @.str.1133, i32 0, ptr @.str.1133, ptr @.str.1 }, %struct.EnumPropertyItem { i32 613, ptr @.str.1134, i32 0, ptr @.str.1134, ptr @.str.1 }, %struct.EnumPropertyItem { i32 614, ptr @.str.1135, i32 0, ptr @.str.1135, ptr @.str.1 }, %struct.EnumPropertyItem { i32 624, ptr @.str.1136, i32 0, ptr @.str.1136, ptr @.str.1 }, %struct.EnumPropertyItem { i32 625, ptr @.str.1137, i32 0, ptr @.str.1137, ptr @.str.1 }, %struct.EnumPropertyItem { i32 626, ptr @.str.1138, i32 0, ptr @.str.1138, ptr @.str.1 }, %struct.EnumPropertyItem { i32 627, ptr @.str.1139, i32 0, ptr @.str.1139, ptr @.str.1 }, %struct.EnumPropertyItem { i32 628, ptr @.str.1140, i32 0, ptr @.str.1140, ptr @.str.1 }, %struct.EnumPropertyItem { i32 630, ptr @.str.1141, i32 0, ptr @.str.1141, ptr @.str.1 }, %struct.EnumPropertyItem { i32 633, ptr @.str.1142, i32 0, ptr @.str.1142, ptr @.str.1 }, %struct.EnumPropertyItem { i32 634, ptr @.str.1143, i32 0, ptr @.str.1143, ptr @.str.1 }, %struct.EnumPropertyItem { i32 636, ptr @.str.1144, i32 0, ptr @.str.1144, ptr @.str.1 }, %struct.EnumPropertyItem { i32 637, ptr @.str.1145, i32 0, ptr @.str.1145, ptr @.str.1 }, %struct.EnumPropertyItem { i32 638, ptr @.str.1146, i32 0, ptr @.str.1146, ptr @.str.1 }, %struct.EnumPropertyItem { i32 639, ptr @.str.1147, i32 0, ptr @.str.1147, ptr @.str.1 }, %struct.EnumPropertyItem { i32 640, ptr @.str.1148, i32 0, ptr @.str.1148, ptr @.str.1 }, %struct.EnumPropertyItem { i32 641, ptr @.str.1149, i32 0, ptr @.str.1149, ptr @.str.1 }, %struct.EnumPropertyItem { i32 642, ptr @.str.1150, i32 0, ptr @.str.1150, ptr @.str.1 }, %struct.EnumPropertyItem { i32 643, ptr @.str.1151, i32 0, ptr @.str.1151, ptr @.str.1 }, %struct.EnumPropertyItem { i32 644, ptr @.str.1152, i32 0, ptr @.str.1152, ptr @.str.1 }, %struct.EnumPropertyItem { i32 676, ptr @.str.1153, i32 0, ptr @.str.1153, ptr @.str.1 }, %struct.EnumPropertyItem { i32 677, ptr @.str.1154, i32 0, ptr @.str.1154, ptr @.str.1 }, %struct.EnumPropertyItem { i32 678, ptr @.str.1155, i32 0, ptr @.str.1155, ptr @.str.1 }, %struct.EnumPropertyItem { i32 679, ptr @.str.1156, i32 0, ptr @.str.1156, ptr @.str.1 }, %struct.EnumPropertyItem { i32 680, ptr @.str.1157, i32 0, ptr @.str.1157, ptr @.str.1 }, %struct.EnumPropertyItem { i32 681, ptr @.str.1158, i32 0, ptr @.str.1158, ptr @.str.1 }, %struct.EnumPropertyItem { i32 682, ptr @.str.1159, i32 0, ptr @.str.1159, ptr @.str.1 }, %struct.EnumPropertyItem { i32 683, ptr @.str.1160, i32 0, ptr @.str.1160, ptr @.str.1 }, %struct.EnumPropertyItem { i32 684, ptr @.str.1161, i32 0, ptr @.str.1161, ptr @.str.1 }, %struct.EnumPropertyItem { i32 685, ptr @.str.1162, i32 0, ptr @.str.1162, ptr @.str.1 }, %struct.EnumPropertyItem { i32 686, ptr @.str.1163, i32 0, ptr @.str.1163, ptr @.str.1 }, %struct.EnumPropertyItem { i32 687, ptr @.str.1164, i32 0, ptr @.str.1164, ptr @.str.1 }, %struct.EnumPropertyItem { i32 688, ptr @.str.1165, i32 0, ptr @.str.1165, ptr @.str.1 }, %struct.EnumPropertyItem { i32 689, ptr @.str.1166, i32 0, ptr @.str.1166, ptr @.str.1 }, %struct.EnumPropertyItem { i32 690, ptr @.str.1167, i32 0, ptr @.str.1167, ptr @.str.1 }, %struct.EnumPropertyItem { i32 691, ptr @.str.1168, i32 0, ptr @.str.1168, ptr @.str.1 }, %struct.EnumPropertyItem { i32 692, ptr @.str.1169, i32 0, ptr @.str.1169, ptr @.str.1 }, %struct.EnumPropertyItem { i32 693, ptr @.str.1170, i32 0, ptr @.str.1170, ptr @.str.1 }, %struct.EnumPropertyItem { i32 694, ptr @.str.1171, i32 0, ptr @.str.1171, ptr @.str.1 }, %struct.EnumPropertyItem { i32 695, ptr @.str.1172, i32 0, ptr @.str.1172, ptr @.str.1 }, %struct.EnumPropertyItem { i32 696, ptr @.str.1173, i32 0, ptr @.str.1173, ptr @.str.1 }, %struct.EnumPropertyItem { i32 697, ptr @.str.1174, i32 0, ptr @.str.1174, ptr @.str.1 }, %struct.EnumPropertyItem { i32 698, ptr @.str.1175, i32 0, ptr @.str.1175, ptr @.str.1 }, %struct.EnumPropertyItem { i32 699, ptr @.str.1176, i32 0, ptr @.str.1176, ptr @.str.1 }, %struct.EnumPropertyItem { i32 700, ptr @.str.1177, i32 0, ptr @.str.1177, ptr @.str.1 }, %struct.EnumPropertyItem { i32 701, ptr @.str.1178, i32 0, ptr @.str.1178, ptr @.str.1 }, %struct.EnumPropertyItem { i32 702, ptr @.str.1179, i32 0, ptr @.str.1179, ptr @.str.1 }, %struct.EnumPropertyItem { i32 703, ptr @.str.1180, i32 0, ptr @.str.1180, ptr @.str.1 }, %struct.EnumPropertyItem { i32 704, ptr @.str.1181, i32 0, ptr @.str.1181, ptr @.str.1 }, %struct.EnumPropertyItem { i32 705, ptr @.str.1182, i32 0, ptr @.str.1182, ptr @.str.1 }, %struct.EnumPropertyItem { i32 706, ptr @.str.1183, i32 0, ptr @.str.1183, ptr @.str.1 }, %struct.EnumPropertyItem { i32 707, ptr @.str.1184, i32 0, ptr @.str.1184, ptr @.str.1 }, %struct.EnumPropertyItem { i32 708, ptr @.str.1185, i32 0, ptr @.str.1185, ptr @.str.1 }, %struct.EnumPropertyItem { i32 709, ptr @.str.1186, i32 0, ptr @.str.1186, ptr @.str.1 }, %struct.EnumPropertyItem { i32 715, ptr @.str.1187, i32 0, ptr @.str.1187, ptr @.str.1 }, %struct.EnumPropertyItem { i32 716, ptr @.str.1188, i32 0, ptr @.str.1188, ptr @.str.1 }, %struct.EnumPropertyItem { i32 717, ptr @.str.1189, i32 0, ptr @.str.1189, ptr @.str.1 }, %struct.EnumPropertyItem { i32 718, ptr @.str.1190, i32 0, ptr @.str.1190, ptr @.str.1 }, %struct.EnumPropertyItem { i32 726, ptr @.str.1191, i32 0, ptr @.str.1191, ptr @.str.1 }, %struct.EnumPropertyItem { i32 727, ptr @.str.1192, i32 0, ptr @.str.1192, ptr @.str.1 }, %struct.EnumPropertyItem { i32 728, ptr @.str.1193, i32 0, ptr @.str.1193, ptr @.str.1 }, %struct.EnumPropertyItem { i32 729, ptr @.str.1194, i32 0, ptr @.str.1194, ptr @.str.1 }, %struct.EnumPropertyItem { i32 730, ptr @.str.1195, i32 0, ptr @.str.1195, ptr @.str.1 }, %struct.EnumPropertyItem { i32 731, ptr @.str.1196, i32 0, ptr @.str.1196, ptr @.str.1 }, %struct.EnumPropertyItem { i32 732, ptr @.str.1197, i32 0, ptr @.str.1197, ptr @.str.1 }, %struct.EnumPropertyItem { i32 733, ptr @.str.1198, i32 0, ptr @.str.1198, ptr @.str.1 }, %struct.EnumPropertyItem { i32 734, ptr @.str.1199, i32 0, ptr @.str.1199, ptr @.str.1 }, %struct.EnumPropertyItem { i32 735, ptr @.str.1200, i32 0, ptr @.str.1200, ptr @.str.1 }, %struct.EnumPropertyItem { i32 740, ptr @.str.1201, i32 0, ptr @.str.1201, ptr @.str.1 }, %struct.EnumPropertyItem { i32 741, ptr @.str.1202, i32 0, ptr @.str.1202, ptr @.str.1 }, %struct.EnumPropertyItem { i32 742, ptr @.str.1203, i32 0, ptr @.str.1203, ptr @.str.1 }, %struct.EnumPropertyItem { i32 743, ptr @.str.1204, i32 0, ptr @.str.1204, ptr @.str.1 }, %struct.EnumPropertyItem { i32 744, ptr @.str.1205, i32 0, ptr @.str.1205, ptr @.str.1 }, %struct.EnumPropertyItem { i32 745, ptr @.str.1206, i32 0, ptr @.str.1206, ptr @.str.1 }, %struct.EnumPropertyItem { i32 746, ptr @.str.1207, i32 0, ptr @.str.1207, ptr @.str.1 }, %struct.EnumPropertyItem { i32 754, ptr @.str.1208, i32 0, ptr @.str.1208, ptr @.str.1 }, %struct.EnumPropertyItem { i32 755, ptr @.str.1209, i32 0, ptr @.str.1209, ptr @.str.1 }, %struct.EnumPropertyItem { i32 756, ptr @.str.1210, i32 0, ptr @.str.1210, ptr @.str.1 }, %struct.EnumPropertyItem { i32 757, ptr @.str.1211, i32 0, ptr @.str.1211, ptr @.str.1 }, %struct.EnumPropertyItem { i32 758, ptr @.str.1212, i32 0, ptr @.str.1212, ptr @.str.1 }, %struct.EnumPropertyItem { i32 759, ptr @.str.1213, i32 0, ptr @.str.1213, ptr @.str.1 }, %struct.EnumPropertyItem { i32 763, ptr @.str.1214, i32 0, ptr @.str.1214, ptr @.str.1 }, %struct.EnumPropertyItem { i32 764, ptr @.str.1215, i32 0, ptr @.str.1215, ptr @.str.1 }, %struct.EnumPropertyItem { i32 765, ptr @.str.1216, i32 0, ptr @.str.1216, ptr @.str.1 }, %struct.EnumPropertyItem { i32 766, ptr @.str.1217, i32 0, ptr @.str.1217, ptr @.str.1 }, %struct.EnumPropertyItem { i32 767, ptr @.str.1218, i32 0, ptr @.str.1218, ptr @.str.1 }, %struct.EnumPropertyItem { i32 780, ptr @.str.1219, i32 0, ptr @.str.1219, ptr @.str.1 }, %struct.EnumPropertyItem { i32 781, ptr @.str.1220, i32 0, ptr @.str.1220, ptr @.str.1 }, %struct.EnumPropertyItem { i32 782, ptr @.str.1221, i32 0, ptr @.str.1221, ptr @.str.1 }, %struct.EnumPropertyItem { i32 783, ptr @.str.1222, i32 0, ptr @.str.1222, ptr @.str.1 }, %struct.EnumPropertyItem { i32 784, ptr @.str.1223, i32 0, ptr @.str.1223, ptr @.str.1 }, %struct.EnumPropertyItem { i32 785, ptr @.str.1224, i32 0, ptr @.str.1224, ptr @.str.1 }, %struct.EnumPropertyItem { i32 786, ptr @.str.1225, i32 0, ptr @.str.1225, ptr @.str.1 }, %struct.EnumPropertyItem { i32 787, ptr @.str.1226, i32 0, ptr @.str.1226, ptr @.str.1 }, %struct.EnumPropertyItem { i32 788, ptr @.str.1227, i32 0, ptr @.str.1227, ptr @.str.1 }, %struct.EnumPropertyItem { i32 789, ptr @.str.1228, i32 0, ptr @.str.1228, ptr @.str.1 }, %struct.EnumPropertyItem { i32 790, ptr @.str.1229, i32 0, ptr @.str.1229, ptr @.str.1 }, %struct.EnumPropertyItem { i32 791, ptr @.str.1230, i32 0, ptr @.str.1230, ptr @.str.1 }, %struct.EnumPropertyItem { i32 792, ptr @.str.1231, i32 0, ptr @.str.1231, ptr @.str.1 }, %struct.EnumPropertyItem { i32 793, ptr @.str.1232, i32 0, ptr @.str.1232, ptr @.str.1 }, %struct.EnumPropertyItem { i32 794, ptr @.str.1233, i32 0, ptr @.str.1233, ptr @.str.1 }, %struct.EnumPropertyItem { i32 795, ptr @.str.1234, i32 0, ptr @.str.1234, ptr @.str.1 }, %struct.EnumPropertyItem { i32 796, ptr @.str.1235, i32 0, ptr @.str.1235, ptr @.str.1 }, %struct.EnumPropertyItem { i32 797, ptr @.str.1236, i32 0, ptr @.str.1236, ptr @.str.1 }, %struct.EnumPropertyItem { i32 798, ptr @.str.1237, i32 0, ptr @.str.1237, ptr @.str.1 }, %struct.EnumPropertyItem { i32 799, ptr @.str.1238, i32 0, ptr @.str.1238, ptr @.str.1 }, %struct.EnumPropertyItem { i32 800, ptr @.str.1239, i32 0, ptr @.str.1239, ptr @.str.1 }, %struct.EnumPropertyItem { i32 801, ptr @.str.1240, i32 0, ptr @.str.1240, ptr @.str.1 }, %struct.EnumPropertyItem { i32 802, ptr @.str.1241, i32 0, ptr @.str.1241, ptr @.str.1 }, %struct.EnumPropertyItem { i32 803, ptr @.str.1242, i32 0, ptr @.str.1242, ptr @.str.1 }, %struct.EnumPropertyItem { i32 804, ptr @.str.1243, i32 0, ptr @.str.1243, ptr @.str.1 }, %struct.EnumPropertyItem { i32 805, ptr @.str.1244, i32 0, ptr @.str.1244, ptr @.str.1 }, %struct.EnumPropertyItem { i32 806, ptr @.str.1245, i32 0, ptr @.str.1245, ptr @.str.1 }, %struct.EnumPropertyItem { i32 807, ptr @.str.1246, i32 0, ptr @.str.1246, ptr @.str.1 }, %struct.EnumPropertyItem { i32 808, ptr @.str.1247, i32 0, ptr @.str.1247, ptr @.str.1 }, %struct.EnumPropertyItem { i32 809, ptr @.str.1248, i32 0, ptr @.str.1248, ptr @.str.1 }, %struct.EnumPropertyItem { i32 810, ptr @.str.1249, i32 0, ptr @.str.1249, ptr @.str.1 }, %struct.EnumPropertyItem { i32 811, ptr @.str.1250, i32 0, ptr @.str.1250, ptr @.str.1 }, %struct.EnumPropertyItem { i32 812, ptr @.str.1251, i32 0, ptr @.str.1251, ptr @.str.1 }, %struct.EnumPropertyItem { i32 813, ptr @.str.1252, i32 0, ptr @.str.1252, ptr @.str.1 }, %struct.EnumPropertyItem { i32 814, ptr @.str.1253, i32 0, ptr @.str.1253, ptr @.str.1 }, %struct.EnumPropertyItem { i32 815, ptr @.str.1254, i32 0, ptr @.str.1254, ptr @.str.1 }, %struct.EnumPropertyItem { i32 816, ptr @.str.1255, i32 0, ptr @.str.1255, ptr @.str.1 }, %struct.EnumPropertyItem { i32 817, ptr @.str.1256, i32 0, ptr @.str.1256, ptr @.str.1 }, %struct.EnumPropertyItem { i32 818, ptr @.str.1257, i32 0, ptr @.str.1257, ptr @.str.1 }, %struct.EnumPropertyItem { i32 819, ptr @.str.1258, i32 0, ptr @.str.1258, ptr @.str.1 }, %struct.EnumPropertyItem { i32 820, ptr @.str.1259, i32 0, ptr @.str.1259, ptr @.str.1 }, %struct.EnumPropertyItem { i32 821, ptr @.str.1260, i32 0, ptr @.str.1260, ptr @.str.1 }, %struct.EnumPropertyItem { i32 822, ptr @.str.1261, i32 0, ptr @.str.1261, ptr @.str.1 }, %struct.EnumPropertyItem { i32 823, ptr @.str.1262, i32 0, ptr @.str.1262, ptr @.str.1 }, %struct.EnumPropertyItem { i32 824, ptr @.str.1263, i32 0, ptr @.str.1263, ptr @.str.1 }, %struct.EnumPropertyItem { i32 825, ptr @.str.1264, i32 0, ptr @.str.1264, ptr @.str.1 }, %struct.EnumPropertyItem { i32 826, ptr @.str.1265, i32 0, ptr @.str.1265, ptr @.str.1 }, %struct.EnumPropertyItem { i32 827, ptr @.str.1266, i32 0, ptr @.str.1266, ptr @.str.1 }, %struct.EnumPropertyItem { i32 828, ptr @.str.1267, i32 0, ptr @.str.1267, ptr @.str.1 }, %struct.EnumPropertyItem { i32 829, ptr @.str.1268, i32 0, ptr @.str.1268, ptr @.str.1 }, %struct.EnumPropertyItem { i32 830, ptr @.str.1269, i32 0, ptr @.str.1269, ptr @.str.1 }, %struct.EnumPropertyItem { i32 831, ptr @.str.1270, i32 0, ptr @.str.1270, ptr @.str.1 }, %struct.EnumPropertyItem { i32 832, ptr @.str.1271, i32 0, ptr @.str.1271, ptr @.str.1 }, %struct.EnumPropertyItem { i32 833, ptr @.str.1272, i32 0, ptr @.str.1272, ptr @.str.1 }, %struct.EnumPropertyItem { i32 834, ptr @.str.1273, i32 0, ptr @.str.1273, ptr @.str.1 }, %struct.EnumPropertyItem { i32 835, ptr @.str.1274, i32 0, ptr @.str.1274, ptr @.str.1 }, %struct.EnumPropertyItem { i32 836, ptr @.str.1275, i32 0, ptr @.str.1275, ptr @.str.1 }, %struct.EnumPropertyItem { i32 837, ptr @.str.1276, i32 0, ptr @.str.1276, ptr @.str.1 }, %struct.EnumPropertyItem { i32 838, ptr @.str.1277, i32 0, ptr @.str.1277, ptr @.str.1 }, %struct.EnumPropertyItem { i32 839, ptr @.str.1278, i32 0, ptr @.str.1278, ptr @.str.1 }, %struct.EnumPropertyItem { i32 840, ptr @.str.1279, i32 0, ptr @.str.1279, ptr @.str.1 }, %struct.EnumPropertyItem { i32 841, ptr @.str.1280, i32 0, ptr @.str.1280, ptr @.str.1 }, %struct.EnumPropertyItem { i32 842, ptr @.str.1281, i32 0, ptr @.str.1281, ptr @.str.1 }, %struct.EnumPropertyItem { i32 843, ptr @.str.1282, i32 0, ptr @.str.1282, ptr @.str.1 }, %struct.EnumPropertyItem { i32 844, ptr @.str.1283, i32 0, ptr @.str.1283, ptr @.str.1 }, %struct.EnumPropertyItem { i32 845, ptr @.str.1284, i32 0, ptr @.str.1284, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.602 = private unnamed_addr constant [5 x i8] c"menu\00", align 1
@rna_WindowManager_pupmenu_end__internal_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_WindowManager_piemenu_begin__internal_func, ptr @rna_WindowManager_pupmenu_begin__internal_func, ptr null, %struct.ListBase { ptr @rna_WindowManager_pupmenu_end__internal_menu, ptr @rna_WindowManager_pupmenu_end__internal_menu } }, ptr @.str.604, i32 9, ptr @.str.604, ptr @WindowManager_pupmenu_end__internal_call, ptr null }, align 8
@.str.603 = private unnamed_addr constant [24 x i8] c"pupmenu_begin__internal\00", align 1
@rna_WindowManager_pupmenu_end__internal_menu = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.602, i32 8652800, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_UIPopupMenu }, align 8
@rna_WindowManager_piemenu_begin__internal_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_WindowManager_piemenu_end__internal_func, ptr @rna_WindowManager_pupmenu_end__internal_func, ptr null, %struct.ListBase { ptr @rna_WindowManager_piemenu_begin__internal_title, ptr @rna_WindowManager_piemenu_begin__internal_menu_pie } }, ptr @.str.606, i32 9, ptr @.str.606, ptr @WindowManager_piemenu_begin__internal_call, ptr @rna_WindowManager_piemenu_begin__internal_menu_pie }, align 8
@.str.604 = private unnamed_addr constant [22 x i8] c"pupmenu_end__internal\00", align 1
@rna_WindowManager_piemenu_begin__internal_icon = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_WindowManager_piemenu_begin__internal_event, ptr @rna_WindowManager_piemenu_begin__internal_title, i32 -1, ptr @.str.601, i32 3, ptr @.str.601, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_WindowManager_piemenu_begin__internal_icon_items, i32 542, i32 0 }, align 8
@rna_WindowManager_piemenu_begin__internal_title = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_WindowManager_piemenu_begin__internal_icon, ptr null, i32 -1, ptr @.str.600, i32 262149, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.1 }, align 8
@rna_WindowManager_piemenu_begin__internal_event = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_WindowManager_piemenu_begin__internal_menu_pie, ptr @rna_WindowManager_piemenu_begin__internal_icon, i32 -1, ptr @.str.447, i32 8652800, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_Event }, align 8
@rna_WindowManager_piemenu_begin__internal_icon_items = internal global [543 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.752, i32 0, ptr @.str.752, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.376, i32 0, ptr @.str.376, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.753, i32 0, ptr @.str.753, ptr @.str.1 }, %struct.EnumPropertyItem { i32 4, ptr @.str.754, i32 0, ptr @.str.754, ptr @.str.1 }, %struct.EnumPropertyItem { i32 5, ptr @.str.755, i32 0, ptr @.str.755, ptr @.str.1 }, %struct.EnumPropertyItem { i32 6, ptr @.str.756, i32 0, ptr @.str.756, ptr @.str.1 }, %struct.EnumPropertyItem { i32 7, ptr @.str.757, i32 0, ptr @.str.757, ptr @.str.1 }, %struct.EnumPropertyItem { i32 8, ptr @.str.758, i32 0, ptr @.str.758, ptr @.str.1 }, %struct.EnumPropertyItem { i32 9, ptr @.str.759, i32 0, ptr @.str.759, ptr @.str.1 }, %struct.EnumPropertyItem { i32 10, ptr @.str.760, i32 0, ptr @.str.760, ptr @.str.1 }, %struct.EnumPropertyItem { i32 11, ptr @.str.761, i32 0, ptr @.str.761, ptr @.str.1 }, %struct.EnumPropertyItem { i32 12, ptr @.str.762, i32 0, ptr @.str.762, ptr @.str.1 }, %struct.EnumPropertyItem { i32 13, ptr @.str.763, i32 0, ptr @.str.763, ptr @.str.1 }, %struct.EnumPropertyItem { i32 14, ptr @.str.764, i32 0, ptr @.str.764, ptr @.str.1 }, %struct.EnumPropertyItem { i32 15, ptr @.str.765, i32 0, ptr @.str.765, ptr @.str.1 }, %struct.EnumPropertyItem { i32 16, ptr @.str.766, i32 0, ptr @.str.766, ptr @.str.1 }, %struct.EnumPropertyItem { i32 17, ptr @.str.767, i32 0, ptr @.str.767, ptr @.str.1 }, %struct.EnumPropertyItem { i32 18, ptr @.str.768, i32 0, ptr @.str.768, ptr @.str.1 }, %struct.EnumPropertyItem { i32 19, ptr @.str.71, i32 0, ptr @.str.71, ptr @.str.1 }, %struct.EnumPropertyItem { i32 21, ptr @.str.769, i32 0, ptr @.str.769, ptr @.str.1 }, %struct.EnumPropertyItem { i32 22, ptr @.str.770, i32 0, ptr @.str.770, ptr @.str.1 }, %struct.EnumPropertyItem { i32 23, ptr @.str.771, i32 0, ptr @.str.771, ptr @.str.1 }, %struct.EnumPropertyItem { i32 24, ptr @.str.772, i32 0, ptr @.str.772, ptr @.str.1 }, %struct.EnumPropertyItem { i32 25, ptr @.str.773, i32 0, ptr @.str.773, ptr @.str.1 }, %struct.EnumPropertyItem { i32 26, ptr @.str.774, i32 0, ptr @.str.774, ptr @.str.1 }, %struct.EnumPropertyItem { i32 27, ptr @.str.775, i32 0, ptr @.str.775, ptr @.str.1 }, %struct.EnumPropertyItem { i32 28, ptr @.str.776, i32 0, ptr @.str.776, ptr @.str.1 }, %struct.EnumPropertyItem { i32 29, ptr @.str.777, i32 0, ptr @.str.777, ptr @.str.1 }, %struct.EnumPropertyItem { i32 30, ptr @.str.778, i32 0, ptr @.str.778, ptr @.str.1 }, %struct.EnumPropertyItem { i32 31, ptr @.str.779, i32 0, ptr @.str.779, ptr @.str.1 }, %struct.EnumPropertyItem { i32 32, ptr @.str.780, i32 0, ptr @.str.780, ptr @.str.1 }, %struct.EnumPropertyItem { i32 33, ptr @.str.781, i32 0, ptr @.str.781, ptr @.str.1 }, %struct.EnumPropertyItem { i32 34, ptr @.str.782, i32 0, ptr @.str.782, ptr @.str.1 }, %struct.EnumPropertyItem { i32 35, ptr @.str.409, i32 0, ptr @.str.409, ptr @.str.1 }, %struct.EnumPropertyItem { i32 36, ptr @.str.783, i32 0, ptr @.str.783, ptr @.str.1 }, %struct.EnumPropertyItem { i32 37, ptr @.str.784, i32 0, ptr @.str.784, ptr @.str.1 }, %struct.EnumPropertyItem { i32 38, ptr @.str.785, i32 0, ptr @.str.785, ptr @.str.1 }, %struct.EnumPropertyItem { i32 39, ptr @.str.786, i32 0, ptr @.str.786, ptr @.str.1 }, %struct.EnumPropertyItem { i32 40, ptr @.str.787, i32 0, ptr @.str.787, ptr @.str.1 }, %struct.EnumPropertyItem { i32 41, ptr @.str.788, i32 0, ptr @.str.788, ptr @.str.1 }, %struct.EnumPropertyItem { i32 42, ptr @.str.789, i32 0, ptr @.str.789, ptr @.str.1 }, %struct.EnumPropertyItem { i32 43, ptr @.str.790, i32 0, ptr @.str.790, ptr @.str.1 }, %struct.EnumPropertyItem { i32 44, ptr @.str.791, i32 0, ptr @.str.791, ptr @.str.1 }, %struct.EnumPropertyItem { i32 45, ptr @.str.792, i32 0, ptr @.str.792, ptr @.str.1 }, %struct.EnumPropertyItem { i32 46, ptr @.str.793, i32 0, ptr @.str.793, ptr @.str.1 }, %struct.EnumPropertyItem { i32 47, ptr @.str.794, i32 0, ptr @.str.794, ptr @.str.1 }, %struct.EnumPropertyItem { i32 48, ptr @.str.795, i32 0, ptr @.str.795, ptr @.str.1 }, %struct.EnumPropertyItem { i32 49, ptr @.str.796, i32 0, ptr @.str.796, ptr @.str.1 }, %struct.EnumPropertyItem { i32 50, ptr @.str.797, i32 0, ptr @.str.797, ptr @.str.1 }, %struct.EnumPropertyItem { i32 51, ptr @.str.798, i32 0, ptr @.str.798, ptr @.str.1 }, %struct.EnumPropertyItem { i32 52, ptr @.str.799, i32 0, ptr @.str.799, ptr @.str.1 }, %struct.EnumPropertyItem { i32 53, ptr @.str.800, i32 0, ptr @.str.800, ptr @.str.1 }, %struct.EnumPropertyItem { i32 54, ptr @.str.801, i32 0, ptr @.str.801, ptr @.str.1 }, %struct.EnumPropertyItem { i32 55, ptr @.str.802, i32 0, ptr @.str.802, ptr @.str.1 }, %struct.EnumPropertyItem { i32 56, ptr @.str.803, i32 0, ptr @.str.803, ptr @.str.1 }, %struct.EnumPropertyItem { i32 57, ptr @.str.401, i32 0, ptr @.str.401, ptr @.str.1 }, %struct.EnumPropertyItem { i32 58, ptr @.str.804, i32 0, ptr @.str.804, ptr @.str.1 }, %struct.EnumPropertyItem { i32 59, ptr @.str.805, i32 0, ptr @.str.805, ptr @.str.1 }, %struct.EnumPropertyItem { i32 60, ptr @.str.806, i32 0, ptr @.str.806, ptr @.str.1 }, %struct.EnumPropertyItem { i32 61, ptr @.str.807, i32 0, ptr @.str.807, ptr @.str.1 }, %struct.EnumPropertyItem { i32 62, ptr @.str.808, i32 0, ptr @.str.808, ptr @.str.1 }, %struct.EnumPropertyItem { i32 63, ptr @.str.809, i32 0, ptr @.str.809, ptr @.str.1 }, %struct.EnumPropertyItem { i32 64, ptr @.str.810, i32 0, ptr @.str.810, ptr @.str.1 }, %struct.EnumPropertyItem { i32 65, ptr @.str.811, i32 0, ptr @.str.811, ptr @.str.1 }, %struct.EnumPropertyItem { i32 66, ptr @.str.812, i32 0, ptr @.str.812, ptr @.str.1 }, %struct.EnumPropertyItem { i32 67, ptr @.str.813, i32 0, ptr @.str.813, ptr @.str.1 }, %struct.EnumPropertyItem { i32 68, ptr @.str.814, i32 0, ptr @.str.814, ptr @.str.1 }, %struct.EnumPropertyItem { i32 69, ptr @.str.815, i32 0, ptr @.str.815, ptr @.str.1 }, %struct.EnumPropertyItem { i32 70, ptr @.str.816, i32 0, ptr @.str.816, ptr @.str.1 }, %struct.EnumPropertyItem { i32 71, ptr @.str.817, i32 0, ptr @.str.817, ptr @.str.1 }, %struct.EnumPropertyItem { i32 72, ptr @.str.818, i32 0, ptr @.str.818, ptr @.str.1 }, %struct.EnumPropertyItem { i32 73, ptr @.str.819, i32 0, ptr @.str.819, ptr @.str.1 }, %struct.EnumPropertyItem { i32 75, ptr @.str.820, i32 0, ptr @.str.820, ptr @.str.1 }, %struct.EnumPropertyItem { i32 76, ptr @.str.821, i32 0, ptr @.str.821, ptr @.str.1 }, %struct.EnumPropertyItem { i32 77, ptr @.str.822, i32 0, ptr @.str.822, ptr @.str.1 }, %struct.EnumPropertyItem { i32 78, ptr @.str.823, i32 0, ptr @.str.823, ptr @.str.1 }, %struct.EnumPropertyItem { i32 79, ptr @.str.824, i32 0, ptr @.str.824, ptr @.str.1 }, %struct.EnumPropertyItem { i32 80, ptr @.str.825, i32 0, ptr @.str.825, ptr @.str.1 }, %struct.EnumPropertyItem { i32 81, ptr @.str.826, i32 0, ptr @.str.826, ptr @.str.1 }, %struct.EnumPropertyItem { i32 82, ptr @.str.827, i32 0, ptr @.str.827, ptr @.str.1 }, %struct.EnumPropertyItem { i32 83, ptr @.str.828, i32 0, ptr @.str.828, ptr @.str.1 }, %struct.EnumPropertyItem { i32 84, ptr @.str.829, i32 0, ptr @.str.829, ptr @.str.1 }, %struct.EnumPropertyItem { i32 85, ptr @.str.830, i32 0, ptr @.str.830, ptr @.str.1 }, %struct.EnumPropertyItem { i32 86, ptr @.str.831, i32 0, ptr @.str.831, ptr @.str.1 }, %struct.EnumPropertyItem { i32 87, ptr @.str.832, i32 0, ptr @.str.832, ptr @.str.1 }, %struct.EnumPropertyItem { i32 88, ptr @.str.833, i32 0, ptr @.str.833, ptr @.str.1 }, %struct.EnumPropertyItem { i32 89, ptr @.str.834, i32 0, ptr @.str.834, ptr @.str.1 }, %struct.EnumPropertyItem { i32 90, ptr @.str.835, i32 0, ptr @.str.835, ptr @.str.1 }, %struct.EnumPropertyItem { i32 91, ptr @.str.836, i32 0, ptr @.str.836, ptr @.str.1 }, %struct.EnumPropertyItem { i32 104, ptr @.str.837, i32 0, ptr @.str.837, ptr @.str.1 }, %struct.EnumPropertyItem { i32 105, ptr @.str.838, i32 0, ptr @.str.838, ptr @.str.1 }, %struct.EnumPropertyItem { i32 106, ptr @.str.839, i32 0, ptr @.str.839, ptr @.str.1 }, %struct.EnumPropertyItem { i32 107, ptr @.str.840, i32 0, ptr @.str.840, ptr @.str.1 }, %struct.EnumPropertyItem { i32 108, ptr @.str.841, i32 0, ptr @.str.841, ptr @.str.1 }, %struct.EnumPropertyItem { i32 109, ptr @.str.842, i32 0, ptr @.str.842, ptr @.str.1 }, %struct.EnumPropertyItem { i32 110, ptr @.str.368, i32 0, ptr @.str.368, ptr @.str.1 }, %struct.EnumPropertyItem { i32 111, ptr @.str.843, i32 0, ptr @.str.843, ptr @.str.1 }, %struct.EnumPropertyItem { i32 112, ptr @.str.397, i32 0, ptr @.str.397, ptr @.str.1 }, %struct.EnumPropertyItem { i32 113, ptr @.str.844, i32 0, ptr @.str.844, ptr @.str.1 }, %struct.EnumPropertyItem { i32 114, ptr @.str.845, i32 0, ptr @.str.845, ptr @.str.1 }, %struct.EnumPropertyItem { i32 115, ptr @.str.846, i32 0, ptr @.str.846, ptr @.str.1 }, %struct.EnumPropertyItem { i32 116, ptr @.str.847, i32 0, ptr @.str.847, ptr @.str.1 }, %struct.EnumPropertyItem { i32 117, ptr @.str.848, i32 0, ptr @.str.848, ptr @.str.1 }, %struct.EnumPropertyItem { i32 118, ptr @.str.849, i32 0, ptr @.str.849, ptr @.str.1 }, %struct.EnumPropertyItem { i32 119, ptr @.str.850, i32 0, ptr @.str.850, ptr @.str.1 }, %struct.EnumPropertyItem { i32 120, ptr @.str.851, i32 0, ptr @.str.851, ptr @.str.1 }, %struct.EnumPropertyItem { i32 121, ptr @.str.852, i32 0, ptr @.str.852, ptr @.str.1 }, %struct.EnumPropertyItem { i32 122, ptr @.str.853, i32 0, ptr @.str.853, ptr @.str.1 }, %struct.EnumPropertyItem { i32 123, ptr @.str.854, i32 0, ptr @.str.854, ptr @.str.1 }, %struct.EnumPropertyItem { i32 124, ptr @.str.855, i32 0, ptr @.str.855, ptr @.str.1 }, %struct.EnumPropertyItem { i32 130, ptr @.str.856, i32 0, ptr @.str.856, ptr @.str.1 }, %struct.EnumPropertyItem { i32 131, ptr @.str.857, i32 0, ptr @.str.857, ptr @.str.1 }, %struct.EnumPropertyItem { i32 132, ptr @.str.858, i32 0, ptr @.str.858, ptr @.str.1 }, %struct.EnumPropertyItem { i32 133, ptr @.str.859, i32 0, ptr @.str.859, ptr @.str.1 }, %struct.EnumPropertyItem { i32 134, ptr @.str.860, i32 0, ptr @.str.860, ptr @.str.1 }, %struct.EnumPropertyItem { i32 135, ptr @.str.861, i32 0, ptr @.str.861, ptr @.str.1 }, %struct.EnumPropertyItem { i32 136, ptr @.str.862, i32 0, ptr @.str.862, ptr @.str.1 }, %struct.EnumPropertyItem { i32 137, ptr @.str.863, i32 0, ptr @.str.863, ptr @.str.1 }, %struct.EnumPropertyItem { i32 138, ptr @.str.864, i32 0, ptr @.str.864, ptr @.str.1 }, %struct.EnumPropertyItem { i32 139, ptr @.str.865, i32 0, ptr @.str.865, ptr @.str.1 }, %struct.EnumPropertyItem { i32 156, ptr @.str.866, i32 0, ptr @.str.866, ptr @.str.1 }, %struct.EnumPropertyItem { i32 157, ptr @.str.867, i32 0, ptr @.str.867, ptr @.str.1 }, %struct.EnumPropertyItem { i32 158, ptr @.str.868, i32 0, ptr @.str.868, ptr @.str.1 }, %struct.EnumPropertyItem { i32 159, ptr @.str.869, i32 0, ptr @.str.869, ptr @.str.1 }, %struct.EnumPropertyItem { i32 160, ptr @.str.870, i32 0, ptr @.str.870, ptr @.str.1 }, %struct.EnumPropertyItem { i32 161, ptr @.str.871, i32 0, ptr @.str.871, ptr @.str.1 }, %struct.EnumPropertyItem { i32 162, ptr @.str.872, i32 0, ptr @.str.872, ptr @.str.1 }, %struct.EnumPropertyItem { i32 163, ptr @.str.873, i32 0, ptr @.str.873, ptr @.str.1 }, %struct.EnumPropertyItem { i32 164, ptr @.str.874, i32 0, ptr @.str.874, ptr @.str.1 }, %struct.EnumPropertyItem { i32 165, ptr @.str.875, i32 0, ptr @.str.875, ptr @.str.1 }, %struct.EnumPropertyItem { i32 166, ptr @.str.876, i32 0, ptr @.str.876, ptr @.str.1 }, %struct.EnumPropertyItem { i32 167, ptr @.str.877, i32 0, ptr @.str.877, ptr @.str.1 }, %struct.EnumPropertyItem { i32 168, ptr @.str.878, i32 0, ptr @.str.878, ptr @.str.1 }, %struct.EnumPropertyItem { i32 169, ptr @.str.879, i32 0, ptr @.str.879, ptr @.str.1 }, %struct.EnumPropertyItem { i32 170, ptr @.str.880, i32 0, ptr @.str.880, ptr @.str.1 }, %struct.EnumPropertyItem { i32 171, ptr @.str.881, i32 0, ptr @.str.881, ptr @.str.1 }, %struct.EnumPropertyItem { i32 172, ptr @.str.882, i32 0, ptr @.str.882, ptr @.str.1 }, %struct.EnumPropertyItem { i32 173, ptr @.str.883, i32 0, ptr @.str.883, ptr @.str.1 }, %struct.EnumPropertyItem { i32 174, ptr @.str.884, i32 0, ptr @.str.884, ptr @.str.1 }, %struct.EnumPropertyItem { i32 175, ptr @.str.885, i32 0, ptr @.str.885, ptr @.str.1 }, %struct.EnumPropertyItem { i32 176, ptr @.str.886, i32 0, ptr @.str.886, ptr @.str.1 }, %struct.EnumPropertyItem { i32 177, ptr @.str.887, i32 0, ptr @.str.887, ptr @.str.1 }, %struct.EnumPropertyItem { i32 178, ptr @.str.888, i32 0, ptr @.str.888, ptr @.str.1 }, %struct.EnumPropertyItem { i32 179, ptr @.str.889, i32 0, ptr @.str.889, ptr @.str.1 }, %struct.EnumPropertyItem { i32 180, ptr @.str.890, i32 0, ptr @.str.890, ptr @.str.1 }, %struct.EnumPropertyItem { i32 182, ptr @.str.891, i32 0, ptr @.str.891, ptr @.str.1 }, %struct.EnumPropertyItem { i32 183, ptr @.str.892, i32 0, ptr @.str.892, ptr @.str.1 }, %struct.EnumPropertyItem { i32 184, ptr @.str.893, i32 0, ptr @.str.893, ptr @.str.1 }, %struct.EnumPropertyItem { i32 185, ptr @.str.894, i32 0, ptr @.str.894, ptr @.str.1 }, %struct.EnumPropertyItem { i32 186, ptr @.str.895, i32 0, ptr @.str.895, ptr @.str.1 }, %struct.EnumPropertyItem { i32 187, ptr @.str.896, i32 0, ptr @.str.896, ptr @.str.1 }, %struct.EnumPropertyItem { i32 188, ptr @.str.897, i32 0, ptr @.str.897, ptr @.str.1 }, %struct.EnumPropertyItem { i32 189, ptr @.str.898, i32 0, ptr @.str.898, ptr @.str.1 }, %struct.EnumPropertyItem { i32 190, ptr @.str.899, i32 0, ptr @.str.899, ptr @.str.1 }, %struct.EnumPropertyItem { i32 191, ptr @.str.900, i32 0, ptr @.str.900, ptr @.str.1 }, %struct.EnumPropertyItem { i32 192, ptr @.str.901, i32 0, ptr @.str.901, ptr @.str.1 }, %struct.EnumPropertyItem { i32 194, ptr @.str.902, i32 0, ptr @.str.902, ptr @.str.1 }, %struct.EnumPropertyItem { i32 195, ptr @.str.903, i32 0, ptr @.str.903, ptr @.str.1 }, %struct.EnumPropertyItem { i32 196, ptr @.str.904, i32 0, ptr @.str.904, ptr @.str.1 }, %struct.EnumPropertyItem { i32 197, ptr @.str.905, i32 0, ptr @.str.905, ptr @.str.1 }, %struct.EnumPropertyItem { i32 198, ptr @.str.906, i32 0, ptr @.str.906, ptr @.str.1 }, %struct.EnumPropertyItem { i32 200, ptr @.str.907, i32 0, ptr @.str.907, ptr @.str.1 }, %struct.EnumPropertyItem { i32 201, ptr @.str.908, i32 0, ptr @.str.908, ptr @.str.1 }, %struct.EnumPropertyItem { i32 202, ptr @.str.909, i32 0, ptr @.str.909, ptr @.str.1 }, %struct.EnumPropertyItem { i32 203, ptr @.str.910, i32 0, ptr @.str.910, ptr @.str.1 }, %struct.EnumPropertyItem { i32 206, ptr @.str.417, i32 0, ptr @.str.417, ptr @.str.1 }, %struct.EnumPropertyItem { i32 207, ptr @.str.911, i32 0, ptr @.str.911, ptr @.str.1 }, %struct.EnumPropertyItem { i32 234, ptr @.str.912, i32 0, ptr @.str.912, ptr @.str.1 }, %struct.EnumPropertyItem { i32 235, ptr @.str.913, i32 0, ptr @.str.913, ptr @.str.1 }, %struct.EnumPropertyItem { i32 236, ptr @.str.914, i32 0, ptr @.str.914, ptr @.str.1 }, %struct.EnumPropertyItem { i32 237, ptr @.str.915, i32 0, ptr @.str.915, ptr @.str.1 }, %struct.EnumPropertyItem { i32 238, ptr @.str.916, i32 0, ptr @.str.916, ptr @.str.1 }, %struct.EnumPropertyItem { i32 239, ptr @.str.917, i32 0, ptr @.str.917, ptr @.str.1 }, %struct.EnumPropertyItem { i32 240, ptr @.str.918, i32 0, ptr @.str.918, ptr @.str.1 }, %struct.EnumPropertyItem { i32 241, ptr @.str.919, i32 0, ptr @.str.919, ptr @.str.1 }, %struct.EnumPropertyItem { i32 242, ptr @.str.920, i32 0, ptr @.str.920, ptr @.str.1 }, %struct.EnumPropertyItem { i32 243, ptr @.str.921, i32 0, ptr @.str.921, ptr @.str.1 }, %struct.EnumPropertyItem { i32 244, ptr @.str.922, i32 0, ptr @.str.922, ptr @.str.1 }, %struct.EnumPropertyItem { i32 253, ptr @.str.923, i32 0, ptr @.str.923, ptr @.str.1 }, %struct.EnumPropertyItem { i32 254, ptr @.str.924, i32 0, ptr @.str.924, ptr @.str.1 }, %struct.EnumPropertyItem { i32 255, ptr @.str.925, i32 0, ptr @.str.925, ptr @.str.1 }, %struct.EnumPropertyItem { i32 256, ptr @.str.926, i32 0, ptr @.str.926, ptr @.str.1 }, %struct.EnumPropertyItem { i32 257, ptr @.str.927, i32 0, ptr @.str.927, ptr @.str.1 }, %struct.EnumPropertyItem { i32 258, ptr @.str.928, i32 0, ptr @.str.928, ptr @.str.1 }, %struct.EnumPropertyItem { i32 260, ptr @.str.929, i32 0, ptr @.str.929, ptr @.str.1 }, %struct.EnumPropertyItem { i32 261, ptr @.str.930, i32 0, ptr @.str.930, ptr @.str.1 }, %struct.EnumPropertyItem { i32 262, ptr @.str.931, i32 0, ptr @.str.931, ptr @.str.1 }, %struct.EnumPropertyItem { i32 263, ptr @.str.932, i32 0, ptr @.str.932, ptr @.str.1 }, %struct.EnumPropertyItem { i32 264, ptr @.str.933, i32 0, ptr @.str.933, ptr @.str.1 }, %struct.EnumPropertyItem { i32 265, ptr @.str.934, i32 0, ptr @.str.934, ptr @.str.1 }, %struct.EnumPropertyItem { i32 266, ptr @.str.935, i32 0, ptr @.str.935, ptr @.str.1 }, %struct.EnumPropertyItem { i32 267, ptr @.str.936, i32 0, ptr @.str.936, ptr @.str.1 }, %struct.EnumPropertyItem { i32 268, ptr @.str.937, i32 0, ptr @.str.937, ptr @.str.1 }, %struct.EnumPropertyItem { i32 269, ptr @.str.938, i32 0, ptr @.str.938, ptr @.str.1 }, %struct.EnumPropertyItem { i32 270, ptr @.str.939, i32 0, ptr @.str.939, ptr @.str.1 }, %struct.EnumPropertyItem { i32 271, ptr @.str.940, i32 0, ptr @.str.940, ptr @.str.1 }, %struct.EnumPropertyItem { i32 286, ptr @.str.941, i32 0, ptr @.str.941, ptr @.str.1 }, %struct.EnumPropertyItem { i32 287, ptr @.str.942, i32 0, ptr @.str.942, ptr @.str.1 }, %struct.EnumPropertyItem { i32 288, ptr @.str.943, i32 0, ptr @.str.943, ptr @.str.1 }, %struct.EnumPropertyItem { i32 289, ptr @.str.944, i32 0, ptr @.str.944, ptr @.str.1 }, %struct.EnumPropertyItem { i32 290, ptr @.str.945, i32 0, ptr @.str.945, ptr @.str.1 }, %struct.EnumPropertyItem { i32 291, ptr @.str.946, i32 0, ptr @.str.946, ptr @.str.1 }, %struct.EnumPropertyItem { i32 292, ptr @.str.947, i32 0, ptr @.str.947, ptr @.str.1 }, %struct.EnumPropertyItem { i32 293, ptr @.str.948, i32 0, ptr @.str.948, ptr @.str.1 }, %struct.EnumPropertyItem { i32 294, ptr @.str.949, i32 0, ptr @.str.949, ptr @.str.1 }, %struct.EnumPropertyItem { i32 295, ptr @.str.950, i32 0, ptr @.str.950, ptr @.str.1 }, %struct.EnumPropertyItem { i32 298, ptr @.str.951, i32 0, ptr @.str.951, ptr @.str.1 }, %struct.EnumPropertyItem { i32 299, ptr @.str.952, i32 0, ptr @.str.952, ptr @.str.1 }, %struct.EnumPropertyItem { i32 300, ptr @.str.953, i32 0, ptr @.str.953, ptr @.str.1 }, %struct.EnumPropertyItem { i32 301, ptr @.str.954, i32 0, ptr @.str.954, ptr @.str.1 }, %struct.EnumPropertyItem { i32 302, ptr @.str.955, i32 0, ptr @.str.955, ptr @.str.1 }, %struct.EnumPropertyItem { i32 305, ptr @.str.956, i32 0, ptr @.str.956, ptr @.str.1 }, %struct.EnumPropertyItem { i32 306, ptr @.str.957, i32 0, ptr @.str.957, ptr @.str.1 }, %struct.EnumPropertyItem { i32 307, ptr @.str.958, i32 0, ptr @.str.958, ptr @.str.1 }, %struct.EnumPropertyItem { i32 308, ptr @.str.959, i32 0, ptr @.str.959, ptr @.str.1 }, %struct.EnumPropertyItem { i32 309, ptr @.str.960, i32 0, ptr @.str.960, ptr @.str.1 }, %struct.EnumPropertyItem { i32 310, ptr @.str.961, i32 0, ptr @.str.961, ptr @.str.1 }, %struct.EnumPropertyItem { i32 312, ptr @.str.962, i32 0, ptr @.str.962, ptr @.str.1 }, %struct.EnumPropertyItem { i32 313, ptr @.str.963, i32 0, ptr @.str.963, ptr @.str.1 }, %struct.EnumPropertyItem { i32 314, ptr @.str.964, i32 0, ptr @.str.964, ptr @.str.1 }, %struct.EnumPropertyItem { i32 315, ptr @.str.965, i32 0, ptr @.str.965, ptr @.str.1 }, %struct.EnumPropertyItem { i32 316, ptr @.str.966, i32 0, ptr @.str.966, ptr @.str.1 }, %struct.EnumPropertyItem { i32 317, ptr @.str.967, i32 0, ptr @.str.967, ptr @.str.1 }, %struct.EnumPropertyItem { i32 321, ptr @.str.968, i32 0, ptr @.str.968, ptr @.str.1 }, %struct.EnumPropertyItem { i32 322, ptr @.str.969, i32 0, ptr @.str.969, ptr @.str.1 }, %struct.EnumPropertyItem { i32 323, ptr @.str.970, i32 0, ptr @.str.970, ptr @.str.1 }, %struct.EnumPropertyItem { i32 324, ptr @.str.971, i32 0, ptr @.str.971, ptr @.str.1 }, %struct.EnumPropertyItem { i32 325, ptr @.str.972, i32 0, ptr @.str.972, ptr @.str.1 }, %struct.EnumPropertyItem { i32 331, ptr @.str.973, i32 0, ptr @.str.973, ptr @.str.1 }, %struct.EnumPropertyItem { i32 332, ptr @.str.974, i32 0, ptr @.str.974, ptr @.str.1 }, %struct.EnumPropertyItem { i32 333, ptr @.str.975, i32 0, ptr @.str.975, ptr @.str.1 }, %struct.EnumPropertyItem { i32 334, ptr @.str.976, i32 0, ptr @.str.976, ptr @.str.1 }, %struct.EnumPropertyItem { i32 335, ptr @.str.977, i32 0, ptr @.str.977, ptr @.str.1 }, %struct.EnumPropertyItem { i32 336, ptr @.str.978, i32 0, ptr @.str.978, ptr @.str.1 }, %struct.EnumPropertyItem { i32 337, ptr @.str.979, i32 0, ptr @.str.979, ptr @.str.1 }, %struct.EnumPropertyItem { i32 338, ptr @.str.980, i32 0, ptr @.str.980, ptr @.str.1 }, %struct.EnumPropertyItem { i32 339, ptr @.str.981, i32 0, ptr @.str.981, ptr @.str.1 }, %struct.EnumPropertyItem { i32 340, ptr @.str.982, i32 0, ptr @.str.982, ptr @.str.1 }, %struct.EnumPropertyItem { i32 341, ptr @.str.983, i32 0, ptr @.str.983, ptr @.str.1 }, %struct.EnumPropertyItem { i32 342, ptr @.str.984, i32 0, ptr @.str.984, ptr @.str.1 }, %struct.EnumPropertyItem { i32 343, ptr @.str.985, i32 0, ptr @.str.985, ptr @.str.1 }, %struct.EnumPropertyItem { i32 344, ptr @.str.986, i32 0, ptr @.str.986, ptr @.str.1 }, %struct.EnumPropertyItem { i32 345, ptr @.str.987, i32 0, ptr @.str.987, ptr @.str.1 }, %struct.EnumPropertyItem { i32 346, ptr @.str.988, i32 0, ptr @.str.988, ptr @.str.1 }, %struct.EnumPropertyItem { i32 347, ptr @.str.989, i32 0, ptr @.str.989, ptr @.str.1 }, %struct.EnumPropertyItem { i32 348, ptr @.str.990, i32 0, ptr @.str.990, ptr @.str.1 }, %struct.EnumPropertyItem { i32 349, ptr @.str.991, i32 0, ptr @.str.991, ptr @.str.1 }, %struct.EnumPropertyItem { i32 350, ptr @.str.992, i32 0, ptr @.str.992, ptr @.str.1 }, %struct.EnumPropertyItem { i32 442, ptr @.str.993, i32 0, ptr @.str.993, ptr @.str.1 }, %struct.EnumPropertyItem { i32 443, ptr @.str.994, i32 0, ptr @.str.994, ptr @.str.1 }, %struct.EnumPropertyItem { i32 444, ptr @.str.995, i32 0, ptr @.str.995, ptr @.str.1 }, %struct.EnumPropertyItem { i32 445, ptr @.str.996, i32 0, ptr @.str.996, ptr @.str.1 }, %struct.EnumPropertyItem { i32 446, ptr @.str.997, i32 0, ptr @.str.997, ptr @.str.1 }, %struct.EnumPropertyItem { i32 447, ptr @.str.998, i32 0, ptr @.str.998, ptr @.str.1 }, %struct.EnumPropertyItem { i32 448, ptr @.str.999, i32 0, ptr @.str.999, ptr @.str.1 }, %struct.EnumPropertyItem { i32 449, ptr @.str.1000, i32 0, ptr @.str.1000, ptr @.str.1 }, %struct.EnumPropertyItem { i32 450, ptr @.str.1001, i32 0, ptr @.str.1001, ptr @.str.1 }, %struct.EnumPropertyItem { i32 451, ptr @.str.1002, i32 0, ptr @.str.1002, ptr @.str.1 }, %struct.EnumPropertyItem { i32 452, ptr @.str.1003, i32 0, ptr @.str.1003, ptr @.str.1 }, %struct.EnumPropertyItem { i32 453, ptr @.str.1004, i32 0, ptr @.str.1004, ptr @.str.1 }, %struct.EnumPropertyItem { i32 454, ptr @.str.1005, i32 0, ptr @.str.1005, ptr @.str.1 }, %struct.EnumPropertyItem { i32 455, ptr @.str.1006, i32 0, ptr @.str.1006, ptr @.str.1 }, %struct.EnumPropertyItem { i32 456, ptr @.str.1007, i32 0, ptr @.str.1007, ptr @.str.1 }, %struct.EnumPropertyItem { i32 457, ptr @.str.1008, i32 0, ptr @.str.1008, ptr @.str.1 }, %struct.EnumPropertyItem { i32 458, ptr @.str.1009, i32 0, ptr @.str.1009, ptr @.str.1 }, %struct.EnumPropertyItem { i32 459, ptr @.str.1010, i32 0, ptr @.str.1010, ptr @.str.1 }, %struct.EnumPropertyItem { i32 460, ptr @.str.1011, i32 0, ptr @.str.1011, ptr @.str.1 }, %struct.EnumPropertyItem { i32 461, ptr @.str.1012, i32 0, ptr @.str.1012, ptr @.str.1 }, %struct.EnumPropertyItem { i32 462, ptr @.str.1013, i32 0, ptr @.str.1013, ptr @.str.1 }, %struct.EnumPropertyItem { i32 463, ptr @.str.1014, i32 0, ptr @.str.1014, ptr @.str.1 }, %struct.EnumPropertyItem { i32 464, ptr @.str.1015, i32 0, ptr @.str.1015, ptr @.str.1 }, %struct.EnumPropertyItem { i32 465, ptr @.str.1016, i32 0, ptr @.str.1016, ptr @.str.1 }, %struct.EnumPropertyItem { i32 466, ptr @.str.1017, i32 0, ptr @.str.1017, ptr @.str.1 }, %struct.EnumPropertyItem { i32 467, ptr @.str.1018, i32 0, ptr @.str.1018, ptr @.str.1 }, %struct.EnumPropertyItem { i32 468, ptr @.str.1019, i32 0, ptr @.str.1019, ptr @.str.1 }, %struct.EnumPropertyItem { i32 469, ptr @.str.1020, i32 0, ptr @.str.1020, ptr @.str.1 }, %struct.EnumPropertyItem { i32 470, ptr @.str.1021, i32 0, ptr @.str.1021, ptr @.str.1 }, %struct.EnumPropertyItem { i32 471, ptr @.str.1022, i32 0, ptr @.str.1022, ptr @.str.1 }, %struct.EnumPropertyItem { i32 472, ptr @.str.1023, i32 0, ptr @.str.1023, ptr @.str.1 }, %struct.EnumPropertyItem { i32 473, ptr @.str.1024, i32 0, ptr @.str.1024, ptr @.str.1 }, %struct.EnumPropertyItem { i32 474, ptr @.str.1025, i32 0, ptr @.str.1025, ptr @.str.1 }, %struct.EnumPropertyItem { i32 475, ptr @.str.1026, i32 0, ptr @.str.1026, ptr @.str.1 }, %struct.EnumPropertyItem { i32 476, ptr @.str.1027, i32 0, ptr @.str.1027, ptr @.str.1 }, %struct.EnumPropertyItem { i32 477, ptr @.str.1028, i32 0, ptr @.str.1028, ptr @.str.1 }, %struct.EnumPropertyItem { i32 478, ptr @.str.1029, i32 0, ptr @.str.1029, ptr @.str.1 }, %struct.EnumPropertyItem { i32 479, ptr @.str.1030, i32 0, ptr @.str.1030, ptr @.str.1 }, %struct.EnumPropertyItem { i32 480, ptr @.str.1031, i32 0, ptr @.str.1031, ptr @.str.1 }, %struct.EnumPropertyItem { i32 481, ptr @.str.1032, i32 0, ptr @.str.1032, ptr @.str.1 }, %struct.EnumPropertyItem { i32 482, ptr @.str.1033, i32 0, ptr @.str.1033, ptr @.str.1 }, %struct.EnumPropertyItem { i32 494, ptr @.str.1034, i32 0, ptr @.str.1034, ptr @.str.1 }, %struct.EnumPropertyItem { i32 495, ptr @.str.1035, i32 0, ptr @.str.1035, ptr @.str.1 }, %struct.EnumPropertyItem { i32 496, ptr @.str.1036, i32 0, ptr @.str.1036, ptr @.str.1 }, %struct.EnumPropertyItem { i32 497, ptr @.str.1037, i32 0, ptr @.str.1037, ptr @.str.1 }, %struct.EnumPropertyItem { i32 498, ptr @.str.205, i32 0, ptr @.str.205, ptr @.str.1 }, %struct.EnumPropertyItem { i32 499, ptr @.str.1038, i32 0, ptr @.str.1038, ptr @.str.1 }, %struct.EnumPropertyItem { i32 500, ptr @.str.1039, i32 0, ptr @.str.1039, ptr @.str.1 }, %struct.EnumPropertyItem { i32 501, ptr @.str.1040, i32 0, ptr @.str.1040, ptr @.str.1 }, %struct.EnumPropertyItem { i32 502, ptr @.str.1041, i32 0, ptr @.str.1041, ptr @.str.1 }, %struct.EnumPropertyItem { i32 503, ptr @.str.1042, i32 0, ptr @.str.1042, ptr @.str.1 }, %struct.EnumPropertyItem { i32 504, ptr @.str.1043, i32 0, ptr @.str.1043, ptr @.str.1 }, %struct.EnumPropertyItem { i32 505, ptr @.str.1044, i32 0, ptr @.str.1044, ptr @.str.1 }, %struct.EnumPropertyItem { i32 506, ptr @.str.1045, i32 0, ptr @.str.1045, ptr @.str.1 }, %struct.EnumPropertyItem { i32 507, ptr @.str.1046, i32 0, ptr @.str.1046, ptr @.str.1 }, %struct.EnumPropertyItem { i32 508, ptr @.str.1047, i32 0, ptr @.str.1047, ptr @.str.1 }, %struct.EnumPropertyItem { i32 509, ptr @.str.1048, i32 0, ptr @.str.1048, ptr @.str.1 }, %struct.EnumPropertyItem { i32 510, ptr @.str.1049, i32 0, ptr @.str.1049, ptr @.str.1 }, %struct.EnumPropertyItem { i32 511, ptr @.str.1050, i32 0, ptr @.str.1050, ptr @.str.1 }, %struct.EnumPropertyItem { i32 512, ptr @.str.1051, i32 0, ptr @.str.1051, ptr @.str.1 }, %struct.EnumPropertyItem { i32 513, ptr @.str.1052, i32 0, ptr @.str.1052, ptr @.str.1 }, %struct.EnumPropertyItem { i32 514, ptr @.str.1053, i32 0, ptr @.str.1053, ptr @.str.1 }, %struct.EnumPropertyItem { i32 515, ptr @.str.1054, i32 0, ptr @.str.1054, ptr @.str.1 }, %struct.EnumPropertyItem { i32 516, ptr @.str.1055, i32 0, ptr @.str.1055, ptr @.str.1 }, %struct.EnumPropertyItem { i32 517, ptr @.str.1056, i32 0, ptr @.str.1056, ptr @.str.1 }, %struct.EnumPropertyItem { i32 518, ptr @.str.1057, i32 0, ptr @.str.1057, ptr @.str.1 }, %struct.EnumPropertyItem { i32 519, ptr @.str.1058, i32 0, ptr @.str.1058, ptr @.str.1 }, %struct.EnumPropertyItem { i32 520, ptr @.str.1059, i32 0, ptr @.str.1059, ptr @.str.1 }, %struct.EnumPropertyItem { i32 521, ptr @.str.1060, i32 0, ptr @.str.1060, ptr @.str.1 }, %struct.EnumPropertyItem { i32 522, ptr @.str.1061, i32 0, ptr @.str.1061, ptr @.str.1 }, %struct.EnumPropertyItem { i32 523, ptr @.str.1062, i32 0, ptr @.str.1062, ptr @.str.1 }, %struct.EnumPropertyItem { i32 524, ptr @.str.1063, i32 0, ptr @.str.1063, ptr @.str.1 }, %struct.EnumPropertyItem { i32 525, ptr @.str.1064, i32 0, ptr @.str.1064, ptr @.str.1 }, %struct.EnumPropertyItem { i32 526, ptr @.str.1065, i32 0, ptr @.str.1065, ptr @.str.1 }, %struct.EnumPropertyItem { i32 527, ptr @.str.1066, i32 0, ptr @.str.1066, ptr @.str.1 }, %struct.EnumPropertyItem { i32 528, ptr @.str.1067, i32 0, ptr @.str.1067, ptr @.str.1 }, %struct.EnumPropertyItem { i32 529, ptr @.str.1068, i32 0, ptr @.str.1068, ptr @.str.1 }, %struct.EnumPropertyItem { i32 530, ptr @.str.1069, i32 0, ptr @.str.1069, ptr @.str.1 }, %struct.EnumPropertyItem { i32 531, ptr @.str.1070, i32 0, ptr @.str.1070, ptr @.str.1 }, %struct.EnumPropertyItem { i32 532, ptr @.str.1071, i32 0, ptr @.str.1071, ptr @.str.1 }, %struct.EnumPropertyItem { i32 533, ptr @.str.1072, i32 0, ptr @.str.1072, ptr @.str.1 }, %struct.EnumPropertyItem { i32 534, ptr @.str.1073, i32 0, ptr @.str.1073, ptr @.str.1 }, %struct.EnumPropertyItem { i32 535, ptr @.str.1074, i32 0, ptr @.str.1074, ptr @.str.1 }, %struct.EnumPropertyItem { i32 536, ptr @.str.1075, i32 0, ptr @.str.1075, ptr @.str.1 }, %struct.EnumPropertyItem { i32 537, ptr @.str.1076, i32 0, ptr @.str.1076, ptr @.str.1 }, %struct.EnumPropertyItem { i32 538, ptr @.str.1077, i32 0, ptr @.str.1077, ptr @.str.1 }, %struct.EnumPropertyItem { i32 539, ptr @.str.1078, i32 0, ptr @.str.1078, ptr @.str.1 }, %struct.EnumPropertyItem { i32 540, ptr @.str.1079, i32 0, ptr @.str.1079, ptr @.str.1 }, %struct.EnumPropertyItem { i32 546, ptr @.str.1080, i32 0, ptr @.str.1080, ptr @.str.1 }, %struct.EnumPropertyItem { i32 547, ptr @.str.1081, i32 0, ptr @.str.1081, ptr @.str.1 }, %struct.EnumPropertyItem { i32 548, ptr @.str.1082, i32 0, ptr @.str.1082, ptr @.str.1 }, %struct.EnumPropertyItem { i32 549, ptr @.str.1083, i32 0, ptr @.str.1083, ptr @.str.1 }, %struct.EnumPropertyItem { i32 551, ptr @.str.1084, i32 0, ptr @.str.1084, ptr @.str.1 }, %struct.EnumPropertyItem { i32 552, ptr @.str.1085, i32 0, ptr @.str.1085, ptr @.str.1 }, %struct.EnumPropertyItem { i32 553, ptr @.str.1086, i32 0, ptr @.str.1086, ptr @.str.1 }, %struct.EnumPropertyItem { i32 554, ptr @.str.1087, i32 0, ptr @.str.1087, ptr @.str.1 }, %struct.EnumPropertyItem { i32 555, ptr @.str.1088, i32 0, ptr @.str.1088, ptr @.str.1 }, %struct.EnumPropertyItem { i32 556, ptr @.str.1089, i32 0, ptr @.str.1089, ptr @.str.1 }, %struct.EnumPropertyItem { i32 558, ptr @.str.1090, i32 0, ptr @.str.1090, ptr @.str.1 }, %struct.EnumPropertyItem { i32 559, ptr @.str.1091, i32 0, ptr @.str.1091, ptr @.str.1 }, %struct.EnumPropertyItem { i32 560, ptr @.str.1092, i32 0, ptr @.str.1092, ptr @.str.1 }, %struct.EnumPropertyItem { i32 561, ptr @.str.1093, i32 0, ptr @.str.1093, ptr @.str.1 }, %struct.EnumPropertyItem { i32 562, ptr @.str.1094, i32 0, ptr @.str.1094, ptr @.str.1 }, %struct.EnumPropertyItem { i32 563, ptr @.str.1095, i32 0, ptr @.str.1095, ptr @.str.1 }, %struct.EnumPropertyItem { i32 564, ptr @.str.1096, i32 0, ptr @.str.1096, ptr @.str.1 }, %struct.EnumPropertyItem { i32 565, ptr @.str.1097, i32 0, ptr @.str.1097, ptr @.str.1 }, %struct.EnumPropertyItem { i32 566, ptr @.str.1098, i32 0, ptr @.str.1098, ptr @.str.1 }, %struct.EnumPropertyItem { i32 567, ptr @.str.1099, i32 0, ptr @.str.1099, ptr @.str.1 }, %struct.EnumPropertyItem { i32 568, ptr @.str.1100, i32 0, ptr @.str.1100, ptr @.str.1 }, %struct.EnumPropertyItem { i32 569, ptr @.str.1101, i32 0, ptr @.str.1101, ptr @.str.1 }, %struct.EnumPropertyItem { i32 570, ptr @.str.1102, i32 0, ptr @.str.1102, ptr @.str.1 }, %struct.EnumPropertyItem { i32 571, ptr @.str.1103, i32 0, ptr @.str.1103, ptr @.str.1 }, %struct.EnumPropertyItem { i32 572, ptr @.str.1104, i32 0, ptr @.str.1104, ptr @.str.1 }, %struct.EnumPropertyItem { i32 573, ptr @.str.1105, i32 0, ptr @.str.1105, ptr @.str.1 }, %struct.EnumPropertyItem { i32 574, ptr @.str.1106, i32 0, ptr @.str.1106, ptr @.str.1 }, %struct.EnumPropertyItem { i32 575, ptr @.str.1107, i32 0, ptr @.str.1107, ptr @.str.1 }, %struct.EnumPropertyItem { i32 576, ptr @.str.1108, i32 0, ptr @.str.1108, ptr @.str.1 }, %struct.EnumPropertyItem { i32 577, ptr @.str.1109, i32 0, ptr @.str.1109, ptr @.str.1 }, %struct.EnumPropertyItem { i32 578, ptr @.str.1110, i32 0, ptr @.str.1110, ptr @.str.1 }, %struct.EnumPropertyItem { i32 579, ptr @.str.1111, i32 0, ptr @.str.1111, ptr @.str.1 }, %struct.EnumPropertyItem { i32 580, ptr @.str.1112, i32 0, ptr @.str.1112, ptr @.str.1 }, %struct.EnumPropertyItem { i32 581, ptr @.str.1113, i32 0, ptr @.str.1113, ptr @.str.1 }, %struct.EnumPropertyItem { i32 582, ptr @.str.1114, i32 0, ptr @.str.1114, ptr @.str.1 }, %struct.EnumPropertyItem { i32 583, ptr @.str.1115, i32 0, ptr @.str.1115, ptr @.str.1 }, %struct.EnumPropertyItem { i32 585, ptr @.str.1116, i32 0, ptr @.str.1116, ptr @.str.1 }, %struct.EnumPropertyItem { i32 586, ptr @.str.1117, i32 0, ptr @.str.1117, ptr @.str.1 }, %struct.EnumPropertyItem { i32 587, ptr @.str.1118, i32 0, ptr @.str.1118, ptr @.str.1 }, %struct.EnumPropertyItem { i32 588, ptr @.str.1119, i32 0, ptr @.str.1119, ptr @.str.1 }, %struct.EnumPropertyItem { i32 589, ptr @.str.1120, i32 0, ptr @.str.1120, ptr @.str.1 }, %struct.EnumPropertyItem { i32 590, ptr @.str.1121, i32 0, ptr @.str.1121, ptr @.str.1 }, %struct.EnumPropertyItem { i32 591, ptr @.str.1122, i32 0, ptr @.str.1122, ptr @.str.1 }, %struct.EnumPropertyItem { i32 598, ptr @.str.1123, i32 0, ptr @.str.1123, ptr @.str.1 }, %struct.EnumPropertyItem { i32 599, ptr @.str.1124, i32 0, ptr @.str.1124, ptr @.str.1 }, %struct.EnumPropertyItem { i32 600, ptr @.str.1125, i32 0, ptr @.str.1125, ptr @.str.1 }, %struct.EnumPropertyItem { i32 601, ptr @.str.1126, i32 0, ptr @.str.1126, ptr @.str.1 }, %struct.EnumPropertyItem { i32 606, ptr @.str.1127, i32 0, ptr @.str.1127, ptr @.str.1 }, %struct.EnumPropertyItem { i32 607, ptr @.str.1128, i32 0, ptr @.str.1128, ptr @.str.1 }, %struct.EnumPropertyItem { i32 608, ptr @.str.1129, i32 0, ptr @.str.1129, ptr @.str.1 }, %struct.EnumPropertyItem { i32 609, ptr @.str.1130, i32 0, ptr @.str.1130, ptr @.str.1 }, %struct.EnumPropertyItem { i32 610, ptr @.str.1131, i32 0, ptr @.str.1131, ptr @.str.1 }, %struct.EnumPropertyItem { i32 611, ptr @.str.1132, i32 0, ptr @.str.1132, ptr @.str.1 }, %struct.EnumPropertyItem { i32 612, ptr @.str.1133, i32 0, ptr @.str.1133, ptr @.str.1 }, %struct.EnumPropertyItem { i32 613, ptr @.str.1134, i32 0, ptr @.str.1134, ptr @.str.1 }, %struct.EnumPropertyItem { i32 614, ptr @.str.1135, i32 0, ptr @.str.1135, ptr @.str.1 }, %struct.EnumPropertyItem { i32 624, ptr @.str.1136, i32 0, ptr @.str.1136, ptr @.str.1 }, %struct.EnumPropertyItem { i32 625, ptr @.str.1137, i32 0, ptr @.str.1137, ptr @.str.1 }, %struct.EnumPropertyItem { i32 626, ptr @.str.1138, i32 0, ptr @.str.1138, ptr @.str.1 }, %struct.EnumPropertyItem { i32 627, ptr @.str.1139, i32 0, ptr @.str.1139, ptr @.str.1 }, %struct.EnumPropertyItem { i32 628, ptr @.str.1140, i32 0, ptr @.str.1140, ptr @.str.1 }, %struct.EnumPropertyItem { i32 630, ptr @.str.1141, i32 0, ptr @.str.1141, ptr @.str.1 }, %struct.EnumPropertyItem { i32 633, ptr @.str.1142, i32 0, ptr @.str.1142, ptr @.str.1 }, %struct.EnumPropertyItem { i32 634, ptr @.str.1143, i32 0, ptr @.str.1143, ptr @.str.1 }, %struct.EnumPropertyItem { i32 636, ptr @.str.1144, i32 0, ptr @.str.1144, ptr @.str.1 }, %struct.EnumPropertyItem { i32 637, ptr @.str.1145, i32 0, ptr @.str.1145, ptr @.str.1 }, %struct.EnumPropertyItem { i32 638, ptr @.str.1146, i32 0, ptr @.str.1146, ptr @.str.1 }, %struct.EnumPropertyItem { i32 639, ptr @.str.1147, i32 0, ptr @.str.1147, ptr @.str.1 }, %struct.EnumPropertyItem { i32 640, ptr @.str.1148, i32 0, ptr @.str.1148, ptr @.str.1 }, %struct.EnumPropertyItem { i32 641, ptr @.str.1149, i32 0, ptr @.str.1149, ptr @.str.1 }, %struct.EnumPropertyItem { i32 642, ptr @.str.1150, i32 0, ptr @.str.1150, ptr @.str.1 }, %struct.EnumPropertyItem { i32 643, ptr @.str.1151, i32 0, ptr @.str.1151, ptr @.str.1 }, %struct.EnumPropertyItem { i32 644, ptr @.str.1152, i32 0, ptr @.str.1152, ptr @.str.1 }, %struct.EnumPropertyItem { i32 676, ptr @.str.1153, i32 0, ptr @.str.1153, ptr @.str.1 }, %struct.EnumPropertyItem { i32 677, ptr @.str.1154, i32 0, ptr @.str.1154, ptr @.str.1 }, %struct.EnumPropertyItem { i32 678, ptr @.str.1155, i32 0, ptr @.str.1155, ptr @.str.1 }, %struct.EnumPropertyItem { i32 679, ptr @.str.1156, i32 0, ptr @.str.1156, ptr @.str.1 }, %struct.EnumPropertyItem { i32 680, ptr @.str.1157, i32 0, ptr @.str.1157, ptr @.str.1 }, %struct.EnumPropertyItem { i32 681, ptr @.str.1158, i32 0, ptr @.str.1158, ptr @.str.1 }, %struct.EnumPropertyItem { i32 682, ptr @.str.1159, i32 0, ptr @.str.1159, ptr @.str.1 }, %struct.EnumPropertyItem { i32 683, ptr @.str.1160, i32 0, ptr @.str.1160, ptr @.str.1 }, %struct.EnumPropertyItem { i32 684, ptr @.str.1161, i32 0, ptr @.str.1161, ptr @.str.1 }, %struct.EnumPropertyItem { i32 685, ptr @.str.1162, i32 0, ptr @.str.1162, ptr @.str.1 }, %struct.EnumPropertyItem { i32 686, ptr @.str.1163, i32 0, ptr @.str.1163, ptr @.str.1 }, %struct.EnumPropertyItem { i32 687, ptr @.str.1164, i32 0, ptr @.str.1164, ptr @.str.1 }, %struct.EnumPropertyItem { i32 688, ptr @.str.1165, i32 0, ptr @.str.1165, ptr @.str.1 }, %struct.EnumPropertyItem { i32 689, ptr @.str.1166, i32 0, ptr @.str.1166, ptr @.str.1 }, %struct.EnumPropertyItem { i32 690, ptr @.str.1167, i32 0, ptr @.str.1167, ptr @.str.1 }, %struct.EnumPropertyItem { i32 691, ptr @.str.1168, i32 0, ptr @.str.1168, ptr @.str.1 }, %struct.EnumPropertyItem { i32 692, ptr @.str.1169, i32 0, ptr @.str.1169, ptr @.str.1 }, %struct.EnumPropertyItem { i32 693, ptr @.str.1170, i32 0, ptr @.str.1170, ptr @.str.1 }, %struct.EnumPropertyItem { i32 694, ptr @.str.1171, i32 0, ptr @.str.1171, ptr @.str.1 }, %struct.EnumPropertyItem { i32 695, ptr @.str.1172, i32 0, ptr @.str.1172, ptr @.str.1 }, %struct.EnumPropertyItem { i32 696, ptr @.str.1173, i32 0, ptr @.str.1173, ptr @.str.1 }, %struct.EnumPropertyItem { i32 697, ptr @.str.1174, i32 0, ptr @.str.1174, ptr @.str.1 }, %struct.EnumPropertyItem { i32 698, ptr @.str.1175, i32 0, ptr @.str.1175, ptr @.str.1 }, %struct.EnumPropertyItem { i32 699, ptr @.str.1176, i32 0, ptr @.str.1176, ptr @.str.1 }, %struct.EnumPropertyItem { i32 700, ptr @.str.1177, i32 0, ptr @.str.1177, ptr @.str.1 }, %struct.EnumPropertyItem { i32 701, ptr @.str.1178, i32 0, ptr @.str.1178, ptr @.str.1 }, %struct.EnumPropertyItem { i32 702, ptr @.str.1179, i32 0, ptr @.str.1179, ptr @.str.1 }, %struct.EnumPropertyItem { i32 703, ptr @.str.1180, i32 0, ptr @.str.1180, ptr @.str.1 }, %struct.EnumPropertyItem { i32 704, ptr @.str.1181, i32 0, ptr @.str.1181, ptr @.str.1 }, %struct.EnumPropertyItem { i32 705, ptr @.str.1182, i32 0, ptr @.str.1182, ptr @.str.1 }, %struct.EnumPropertyItem { i32 706, ptr @.str.1183, i32 0, ptr @.str.1183, ptr @.str.1 }, %struct.EnumPropertyItem { i32 707, ptr @.str.1184, i32 0, ptr @.str.1184, ptr @.str.1 }, %struct.EnumPropertyItem { i32 708, ptr @.str.1185, i32 0, ptr @.str.1185, ptr @.str.1 }, %struct.EnumPropertyItem { i32 709, ptr @.str.1186, i32 0, ptr @.str.1186, ptr @.str.1 }, %struct.EnumPropertyItem { i32 715, ptr @.str.1187, i32 0, ptr @.str.1187, ptr @.str.1 }, %struct.EnumPropertyItem { i32 716, ptr @.str.1188, i32 0, ptr @.str.1188, ptr @.str.1 }, %struct.EnumPropertyItem { i32 717, ptr @.str.1189, i32 0, ptr @.str.1189, ptr @.str.1 }, %struct.EnumPropertyItem { i32 718, ptr @.str.1190, i32 0, ptr @.str.1190, ptr @.str.1 }, %struct.EnumPropertyItem { i32 726, ptr @.str.1191, i32 0, ptr @.str.1191, ptr @.str.1 }, %struct.EnumPropertyItem { i32 727, ptr @.str.1192, i32 0, ptr @.str.1192, ptr @.str.1 }, %struct.EnumPropertyItem { i32 728, ptr @.str.1193, i32 0, ptr @.str.1193, ptr @.str.1 }, %struct.EnumPropertyItem { i32 729, ptr @.str.1194, i32 0, ptr @.str.1194, ptr @.str.1 }, %struct.EnumPropertyItem { i32 730, ptr @.str.1195, i32 0, ptr @.str.1195, ptr @.str.1 }, %struct.EnumPropertyItem { i32 731, ptr @.str.1196, i32 0, ptr @.str.1196, ptr @.str.1 }, %struct.EnumPropertyItem { i32 732, ptr @.str.1197, i32 0, ptr @.str.1197, ptr @.str.1 }, %struct.EnumPropertyItem { i32 733, ptr @.str.1198, i32 0, ptr @.str.1198, ptr @.str.1 }, %struct.EnumPropertyItem { i32 734, ptr @.str.1199, i32 0, ptr @.str.1199, ptr @.str.1 }, %struct.EnumPropertyItem { i32 735, ptr @.str.1200, i32 0, ptr @.str.1200, ptr @.str.1 }, %struct.EnumPropertyItem { i32 740, ptr @.str.1201, i32 0, ptr @.str.1201, ptr @.str.1 }, %struct.EnumPropertyItem { i32 741, ptr @.str.1202, i32 0, ptr @.str.1202, ptr @.str.1 }, %struct.EnumPropertyItem { i32 742, ptr @.str.1203, i32 0, ptr @.str.1203, ptr @.str.1 }, %struct.EnumPropertyItem { i32 743, ptr @.str.1204, i32 0, ptr @.str.1204, ptr @.str.1 }, %struct.EnumPropertyItem { i32 744, ptr @.str.1205, i32 0, ptr @.str.1205, ptr @.str.1 }, %struct.EnumPropertyItem { i32 745, ptr @.str.1206, i32 0, ptr @.str.1206, ptr @.str.1 }, %struct.EnumPropertyItem { i32 746, ptr @.str.1207, i32 0, ptr @.str.1207, ptr @.str.1 }, %struct.EnumPropertyItem { i32 754, ptr @.str.1208, i32 0, ptr @.str.1208, ptr @.str.1 }, %struct.EnumPropertyItem { i32 755, ptr @.str.1209, i32 0, ptr @.str.1209, ptr @.str.1 }, %struct.EnumPropertyItem { i32 756, ptr @.str.1210, i32 0, ptr @.str.1210, ptr @.str.1 }, %struct.EnumPropertyItem { i32 757, ptr @.str.1211, i32 0, ptr @.str.1211, ptr @.str.1 }, %struct.EnumPropertyItem { i32 758, ptr @.str.1212, i32 0, ptr @.str.1212, ptr @.str.1 }, %struct.EnumPropertyItem { i32 759, ptr @.str.1213, i32 0, ptr @.str.1213, ptr @.str.1 }, %struct.EnumPropertyItem { i32 763, ptr @.str.1214, i32 0, ptr @.str.1214, ptr @.str.1 }, %struct.EnumPropertyItem { i32 764, ptr @.str.1215, i32 0, ptr @.str.1215, ptr @.str.1 }, %struct.EnumPropertyItem { i32 765, ptr @.str.1216, i32 0, ptr @.str.1216, ptr @.str.1 }, %struct.EnumPropertyItem { i32 766, ptr @.str.1217, i32 0, ptr @.str.1217, ptr @.str.1 }, %struct.EnumPropertyItem { i32 767, ptr @.str.1218, i32 0, ptr @.str.1218, ptr @.str.1 }, %struct.EnumPropertyItem { i32 780, ptr @.str.1219, i32 0, ptr @.str.1219, ptr @.str.1 }, %struct.EnumPropertyItem { i32 781, ptr @.str.1220, i32 0, ptr @.str.1220, ptr @.str.1 }, %struct.EnumPropertyItem { i32 782, ptr @.str.1221, i32 0, ptr @.str.1221, ptr @.str.1 }, %struct.EnumPropertyItem { i32 783, ptr @.str.1222, i32 0, ptr @.str.1222, ptr @.str.1 }, %struct.EnumPropertyItem { i32 784, ptr @.str.1223, i32 0, ptr @.str.1223, ptr @.str.1 }, %struct.EnumPropertyItem { i32 785, ptr @.str.1224, i32 0, ptr @.str.1224, ptr @.str.1 }, %struct.EnumPropertyItem { i32 786, ptr @.str.1225, i32 0, ptr @.str.1225, ptr @.str.1 }, %struct.EnumPropertyItem { i32 787, ptr @.str.1226, i32 0, ptr @.str.1226, ptr @.str.1 }, %struct.EnumPropertyItem { i32 788, ptr @.str.1227, i32 0, ptr @.str.1227, ptr @.str.1 }, %struct.EnumPropertyItem { i32 789, ptr @.str.1228, i32 0, ptr @.str.1228, ptr @.str.1 }, %struct.EnumPropertyItem { i32 790, ptr @.str.1229, i32 0, ptr @.str.1229, ptr @.str.1 }, %struct.EnumPropertyItem { i32 791, ptr @.str.1230, i32 0, ptr @.str.1230, ptr @.str.1 }, %struct.EnumPropertyItem { i32 792, ptr @.str.1231, i32 0, ptr @.str.1231, ptr @.str.1 }, %struct.EnumPropertyItem { i32 793, ptr @.str.1232, i32 0, ptr @.str.1232, ptr @.str.1 }, %struct.EnumPropertyItem { i32 794, ptr @.str.1233, i32 0, ptr @.str.1233, ptr @.str.1 }, %struct.EnumPropertyItem { i32 795, ptr @.str.1234, i32 0, ptr @.str.1234, ptr @.str.1 }, %struct.EnumPropertyItem { i32 796, ptr @.str.1235, i32 0, ptr @.str.1235, ptr @.str.1 }, %struct.EnumPropertyItem { i32 797, ptr @.str.1236, i32 0, ptr @.str.1236, ptr @.str.1 }, %struct.EnumPropertyItem { i32 798, ptr @.str.1237, i32 0, ptr @.str.1237, ptr @.str.1 }, %struct.EnumPropertyItem { i32 799, ptr @.str.1238, i32 0, ptr @.str.1238, ptr @.str.1 }, %struct.EnumPropertyItem { i32 800, ptr @.str.1239, i32 0, ptr @.str.1239, ptr @.str.1 }, %struct.EnumPropertyItem { i32 801, ptr @.str.1240, i32 0, ptr @.str.1240, ptr @.str.1 }, %struct.EnumPropertyItem { i32 802, ptr @.str.1241, i32 0, ptr @.str.1241, ptr @.str.1 }, %struct.EnumPropertyItem { i32 803, ptr @.str.1242, i32 0, ptr @.str.1242, ptr @.str.1 }, %struct.EnumPropertyItem { i32 804, ptr @.str.1243, i32 0, ptr @.str.1243, ptr @.str.1 }, %struct.EnumPropertyItem { i32 805, ptr @.str.1244, i32 0, ptr @.str.1244, ptr @.str.1 }, %struct.EnumPropertyItem { i32 806, ptr @.str.1245, i32 0, ptr @.str.1245, ptr @.str.1 }, %struct.EnumPropertyItem { i32 807, ptr @.str.1246, i32 0, ptr @.str.1246, ptr @.str.1 }, %struct.EnumPropertyItem { i32 808, ptr @.str.1247, i32 0, ptr @.str.1247, ptr @.str.1 }, %struct.EnumPropertyItem { i32 809, ptr @.str.1248, i32 0, ptr @.str.1248, ptr @.str.1 }, %struct.EnumPropertyItem { i32 810, ptr @.str.1249, i32 0, ptr @.str.1249, ptr @.str.1 }, %struct.EnumPropertyItem { i32 811, ptr @.str.1250, i32 0, ptr @.str.1250, ptr @.str.1 }, %struct.EnumPropertyItem { i32 812, ptr @.str.1251, i32 0, ptr @.str.1251, ptr @.str.1 }, %struct.EnumPropertyItem { i32 813, ptr @.str.1252, i32 0, ptr @.str.1252, ptr @.str.1 }, %struct.EnumPropertyItem { i32 814, ptr @.str.1253, i32 0, ptr @.str.1253, ptr @.str.1 }, %struct.EnumPropertyItem { i32 815, ptr @.str.1254, i32 0, ptr @.str.1254, ptr @.str.1 }, %struct.EnumPropertyItem { i32 816, ptr @.str.1255, i32 0, ptr @.str.1255, ptr @.str.1 }, %struct.EnumPropertyItem { i32 817, ptr @.str.1256, i32 0, ptr @.str.1256, ptr @.str.1 }, %struct.EnumPropertyItem { i32 818, ptr @.str.1257, i32 0, ptr @.str.1257, ptr @.str.1 }, %struct.EnumPropertyItem { i32 819, ptr @.str.1258, i32 0, ptr @.str.1258, ptr @.str.1 }, %struct.EnumPropertyItem { i32 820, ptr @.str.1259, i32 0, ptr @.str.1259, ptr @.str.1 }, %struct.EnumPropertyItem { i32 821, ptr @.str.1260, i32 0, ptr @.str.1260, ptr @.str.1 }, %struct.EnumPropertyItem { i32 822, ptr @.str.1261, i32 0, ptr @.str.1261, ptr @.str.1 }, %struct.EnumPropertyItem { i32 823, ptr @.str.1262, i32 0, ptr @.str.1262, ptr @.str.1 }, %struct.EnumPropertyItem { i32 824, ptr @.str.1263, i32 0, ptr @.str.1263, ptr @.str.1 }, %struct.EnumPropertyItem { i32 825, ptr @.str.1264, i32 0, ptr @.str.1264, ptr @.str.1 }, %struct.EnumPropertyItem { i32 826, ptr @.str.1265, i32 0, ptr @.str.1265, ptr @.str.1 }, %struct.EnumPropertyItem { i32 827, ptr @.str.1266, i32 0, ptr @.str.1266, ptr @.str.1 }, %struct.EnumPropertyItem { i32 828, ptr @.str.1267, i32 0, ptr @.str.1267, ptr @.str.1 }, %struct.EnumPropertyItem { i32 829, ptr @.str.1268, i32 0, ptr @.str.1268, ptr @.str.1 }, %struct.EnumPropertyItem { i32 830, ptr @.str.1269, i32 0, ptr @.str.1269, ptr @.str.1 }, %struct.EnumPropertyItem { i32 831, ptr @.str.1270, i32 0, ptr @.str.1270, ptr @.str.1 }, %struct.EnumPropertyItem { i32 832, ptr @.str.1271, i32 0, ptr @.str.1271, ptr @.str.1 }, %struct.EnumPropertyItem { i32 833, ptr @.str.1272, i32 0, ptr @.str.1272, ptr @.str.1 }, %struct.EnumPropertyItem { i32 834, ptr @.str.1273, i32 0, ptr @.str.1273, ptr @.str.1 }, %struct.EnumPropertyItem { i32 835, ptr @.str.1274, i32 0, ptr @.str.1274, ptr @.str.1 }, %struct.EnumPropertyItem { i32 836, ptr @.str.1275, i32 0, ptr @.str.1275, ptr @.str.1 }, %struct.EnumPropertyItem { i32 837, ptr @.str.1276, i32 0, ptr @.str.1276, ptr @.str.1 }, %struct.EnumPropertyItem { i32 838, ptr @.str.1277, i32 0, ptr @.str.1277, ptr @.str.1 }, %struct.EnumPropertyItem { i32 839, ptr @.str.1278, i32 0, ptr @.str.1278, ptr @.str.1 }, %struct.EnumPropertyItem { i32 840, ptr @.str.1279, i32 0, ptr @.str.1279, ptr @.str.1 }, %struct.EnumPropertyItem { i32 841, ptr @.str.1280, i32 0, ptr @.str.1280, ptr @.str.1 }, %struct.EnumPropertyItem { i32 842, ptr @.str.1281, i32 0, ptr @.str.1281, ptr @.str.1 }, %struct.EnumPropertyItem { i32 843, ptr @.str.1282, i32 0, ptr @.str.1282, ptr @.str.1 }, %struct.EnumPropertyItem { i32 844, ptr @.str.1283, i32 0, ptr @.str.1283, ptr @.str.1 }, %struct.EnumPropertyItem { i32 845, ptr @.str.1284, i32 0, ptr @.str.1284, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_WindowManager_piemenu_begin__internal_menu_pie = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_WindowManager_piemenu_begin__internal_event, i32 -1, ptr @.str.605, i32 8652808, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_UIPieMenu }, align 8
@.str.605 = private unnamed_addr constant [9 x i8] c"menu_pie\00", align 1
@rna_WindowManager_piemenu_end__internal_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_WindowManager_piemenu_begin__internal_func, ptr null, %struct.ListBase { ptr @rna_WindowManager_piemenu_end__internal_menu, ptr @rna_WindowManager_piemenu_end__internal_menu } }, ptr @.str.607, i32 9, ptr @.str.607, ptr @WindowManager_piemenu_end__internal_call, ptr null }, align 8
@.str.606 = private unnamed_addr constant [24 x i8] c"piemenu_begin__internal\00", align 1
@rna_WindowManager_piemenu_end__internal_menu = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.602, i32 8652800, ptr @.str.1, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_UIPieMenu }, align 8
@.str.607 = private unnamed_addr constant [22 x i8] c"piemenu_end__internal\00", align 1
@.str.608 = private unnamed_addr constant [14 x i8] c"WindowManager\00", align 1
@.str.609 = private unnamed_addr constant [15 x i8] c"Window Manager\00", align 1
@.str.610 = private unnamed_addr constant [77 x i8] c"Window manager datablock defining open windows and other user interface data\00", align 1
@rna_ID_name = external global %struct.StringPropertyRNA, align 8
@rna_ID_rna_properties = external global %struct.CollectionPropertyRNA, align 8
@RNA_ID = external global %struct.StructRNA, align 8
@rna_KeyConfigurations_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyConfigurations_active, ptr @rna_KeyConfigurations_rna_properties, i32 -1, ptr @.str.416, i32 8912896, ptr @.str.417, ptr @.str.418, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyConfigurations_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_KeyConfigurations_active = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyConfigurations_default, ptr @rna_KeyConfigurations_rna_type, i32 -1, ptr @.str.611, i32 8388609, ptr @.str.612, ptr @.str.613, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyConfigurations_active_get, ptr @KeyConfigurations_active_set, ptr null, ptr null, ptr @RNA_KeyConfig }, align 8
@rna_KeyConfigurations_default = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyConfigurations_addon, ptr @rna_KeyConfigurations_active, i32 -1, ptr @.str.614, i32 8388608, ptr @.str.615, ptr @.str.616, i32 0, ptr @.str.415, i32 5, i32 262144, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyConfigurations_default_value_get, ptr null, ptr null, ptr null, ptr @RNA_KeyConfig }, align 8
@.str.611 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.612 = private unnamed_addr constant [17 x i8] c"Active KeyConfig\00", align 1
@.str.613 = private unnamed_addr constant [34 x i8] c"Active key configuration (preset)\00", align 1
@rna_KeyConfigurations_addon = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyConfigurations_user, ptr @rna_KeyConfigurations_default, i32 -1, ptr @.str.617, i32 8388608, ptr @.str.618, ptr @.str.619, i32 0, ptr @.str.415, i32 5, i32 262144, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyConfigurations_addon_get, ptr null, ptr null, ptr null, ptr @RNA_KeyConfig }, align 8
@.str.614 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.615 = private unnamed_addr constant [26 x i8] c"Default Key Configuration\00", align 1
@.str.616 = private unnamed_addr constant [34 x i8] c"Default builtin key configuration\00", align 1
@rna_KeyConfigurations_user = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_KeyConfigurations_addon, i32 -1, ptr @.str.620, i32 8388608, ptr @.str.621, ptr @.str.622, i32 0, ptr @.str.415, i32 5, i32 262144, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyConfigurations_user_get, ptr null, ptr null, ptr null, ptr @RNA_KeyConfig }, align 8
@.str.617 = private unnamed_addr constant [6 x i8] c"addon\00", align 1
@.str.618 = private unnamed_addr constant [24 x i8] c"Addon Key Configuration\00", align 1
@.str.619 = private unnamed_addr constant [112 x i8] c"Key configuration that can be extended by addons, and is added to the active configuration when handling events\00", align 1
@.str.620 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.621 = private unnamed_addr constant [23 x i8] c"User Key Configuration\00", align 1
@.str.622 = private unnamed_addr constant [118 x i8] c"Final key configuration that combines keymaps from the active and addon configurations, and can be edited by the user\00", align 1
@rna_KeyConfigurations_new_keyconfig = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_KeyConfigurations_new_name, i32 -1, ptr @.str.623, i32 8388616, ptr @.str.624, ptr @.str.625, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_KeyConfig }, align 8
@rna_KeyConfigurations_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyConfigurations_new_keyconfig, ptr null, i32 -1, ptr @.str.419, i32 262149, ptr @.str.420, ptr @.str.1, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.1 }, align 8
@.str.623 = private unnamed_addr constant [10 x i8] c"keyconfig\00", align 1
@.str.624 = private unnamed_addr constant [18 x i8] c"Key Configuration\00", align 1
@.str.625 = private unnamed_addr constant [24 x i8] c"Added key configuration\00", align 1
@rna_KeyConfigurations_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_KeyConfigurations_new_func, ptr null, %struct.ListBase { ptr @rna_KeyConfigurations_remove_keyconfig, ptr @rna_KeyConfigurations_remove_keyconfig } }, ptr @.str.628, i32 16, ptr @.str.628, ptr @KeyConfigurations_remove_call, ptr null }, align 8
@.str.626 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@rna_KeyConfigurations_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_KeyConfigurations_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_KeyConfigurations_new_name, ptr @rna_KeyConfigurations_new_keyconfig } }, ptr @.str.626, i32 0, ptr @.str.626, ptr @KeyConfigurations_new_call, ptr @rna_KeyConfigurations_new_keyconfig }, align 8
@.str.627 = private unnamed_addr constant [26 x i8] c"Removed key configuration\00", align 1
@rna_KeyConfigurations_remove_keyconfig = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.623, i32 264196, ptr @.str.624, ptr @.str.627, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_KeyConfig }, align 8
@.str.628 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.629 = private unnamed_addr constant [18 x i8] c"KeyConfigurations\00", align 1
@.str.630 = private unnamed_addr constant [11 x i8] c"KeyConfigs\00", align 1
@.str.631 = private unnamed_addr constant [25 x i8] c"Collection of KeyConfigs\00", align 1
@rna_KeyConfig_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyConfig_name, ptr @rna_KeyConfig_rna_properties, i32 -1, ptr @.str.416, i32 8912896, ptr @.str.417, ptr @.str.418, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyConfig_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_KeyConfig_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyConfig_keymaps, ptr @rna_KeyConfig_rna_type, i32 -1, ptr @.str.419, i32 262145, ptr @.str.420, ptr @.str.632, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyConfig_name_get, ptr @KeyConfig_name_length, ptr @KeyConfig_name_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.1 }, align 8
@.str.632 = private unnamed_addr constant [30 x i8] c"Name of the key configuration\00", align 1
@rna_KeyConfig_is_user_defined = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_KeyConfig_keymaps, i32 -1, ptr @.str.636, i32 2, ptr @.str.637, ptr @.str.638, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyConfig_is_user_defined_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.633 = private unnamed_addr constant [8 x i8] c"keymaps\00", align 1
@.str.634 = private unnamed_addr constant [9 x i8] c"Key Maps\00", align 1
@.str.635 = private unnamed_addr constant [50 x i8] c"Key maps configured as part of this configuration\00", align 1
@RNA_KeyMaps = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_KeyMap, ptr @RNA_KeyConfig, ptr null, %struct.ListBase { ptr @rna_KeyMaps_rna_properties, ptr @rna_KeyMaps_rna_type } }, ptr @.str.654, ptr null, ptr null, i32 4, ptr @.str.634, ptr @.str.655, ptr @.str.415, i32 17, ptr null, ptr @rna_KeyMaps_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_KeyMaps_new_func, ptr @rna_KeyMaps_find_modal_func } }, align 8
@RNA_KeyMap = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_KeyMapItems, ptr @RNA_KeyMaps, ptr null, %struct.ListBase { ptr @rna_KeyMap_rna_properties, ptr @rna_KeyMap_show_expanded_children } }, ptr @.str.678, ptr null, ptr null, i32 4, ptr @.str.647, ptr @.str.640, ptr @.str.415, i32 17, ptr @rna_KeyMap_name, ptr @rna_KeyMap_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_KeyMap_active_func, ptr @rna_KeyMap_restore_item_to_default_func } }, align 8
@.str.636 = private unnamed_addr constant [16 x i8] c"is_user_defined\00", align 1
@.str.637 = private unnamed_addr constant [13 x i8] c"User Defined\00", align 1
@.str.638 = private unnamed_addr constant [51 x i8] c"Indicates that a keyconfig was defined by the user\00", align 1
@.str.639 = private unnamed_addr constant [10 x i8] c"KeyConfig\00", align 1
@.str.640 = private unnamed_addr constant [39 x i8] c"Input configuration, including keymaps\00", align 1
@rna_KeyMaps_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_KeyMaps_rna_properties, i32 -1, ptr @.str.416, i32 8912896, ptr @.str.417, ptr @.str.418, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMaps_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_KeyMaps_new_space_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMaps_new_region_type, ptr @rna_KeyMaps_new_name, i32 -1, ptr @.str.641, i32 3, ptr @.str.642, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_KeyMaps_new_space_type_items, i32 23, i32 0 }, align 8
@rna_KeyMaps_new_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMaps_new_space_type, ptr null, i32 -1, ptr @.str.419, i32 262149, ptr @.str.420, ptr @.str.1, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.1 }, align 8
@rna_KeyMaps_new_region_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMaps_new_modal, ptr @rna_KeyMaps_new_space_type, i32 -1, ptr @.str.643, i32 3, ptr @.str.644, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_KeyMaps_new_region_type_items, i32 8, i32 0 }, align 8
@.str.641 = private unnamed_addr constant [11 x i8] c"space_type\00", align 1
@.str.642 = private unnamed_addr constant [11 x i8] c"Space Type\00", align 1
@rna_KeyMaps_new_space_type_items = internal global [24 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1285, i32 0, ptr @.str.1286, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1287, i32 104, ptr @.str.1288, ptr @.str.1289 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 15, ptr @.str.1290, i32 118, ptr @.str.1291, ptr @.str.1292 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1293, i32 105, ptr @.str.1294, ptr @.str.1295 }, %struct.EnumPropertyItem { i32 12, ptr @.str.1296, i32 115, ptr @.str.1297, ptr @.str.1298 }, %struct.EnumPropertyItem { i32 13, ptr @.str.1299, i32 116, ptr @.str.1300, ptr @.str.1301 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 6, ptr @.str.1302, i32 109, ptr @.str.1303, ptr @.str.1304 }, %struct.EnumPropertyItem { i32 8, ptr @.str.1305, i32 111, ptr @.str.1306, ptr @.str.1307 }, %struct.EnumPropertyItem { i32 20, ptr @.str.1308, i32 123, ptr @.str.1309, ptr @.str.1310 }, %struct.EnumPropertyItem { i32 9, ptr @.str.1311, i32 112, ptr @.str.1312, ptr @.str.1313 }, %struct.EnumPropertyItem { i32 16, ptr @.str.1314, i32 119, ptr @.str.1315, ptr @.str.1316 }, %struct.EnumPropertyItem { i32 17, ptr @.str.1317, i32 120, ptr @.str.1318, ptr @.str.1319 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 4, ptr @.str.1320, i32 107, ptr @.str.413, ptr @.str.1321 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1322, i32 106, ptr @.str.1323, ptr @.str.1324 }, %struct.EnumPropertyItem { i32 19, ptr @.str.1325, i32 122, ptr @.str.1326, ptr @.str.1327 }, %struct.EnumPropertyItem { i32 7, ptr @.str.368, i32 110, ptr @.str.369, ptr @.str.1328 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 5, ptr @.str.1329, i32 108, ptr @.str.1330, ptr @.str.1331 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 18, ptr @.str.852, i32 121, ptr @.str.1332, ptr @.str.1333 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_KeyMaps_new_modal = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMaps_new_keymap, ptr @rna_KeyMaps_new_region_type, i32 -1, ptr @.str.450, i32 3, ptr @.str.645, ptr @.str.1, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.643 = private unnamed_addr constant [12 x i8] c"region_type\00", align 1
@.str.644 = private unnamed_addr constant [12 x i8] c"Region Type\00", align 1
@rna_KeyMaps_new_region_type_items = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1334, i32 0, ptr @.str.555, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1335, i32 0, ptr @.str.1336, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1337, i32 0, ptr @.str.1338, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1339, i32 0, ptr @.str.1340, ptr @.str.1 }, %struct.EnumPropertyItem { i32 4, ptr @.str.771, i32 0, ptr @.str.771, ptr @.str.1 }, %struct.EnumPropertyItem { i32 5, ptr @.str.1341, i32 0, ptr @.str.1342, ptr @.str.1 }, %struct.EnumPropertyItem { i32 6, ptr @.str.1343, i32 0, ptr @.str.1344, ptr @.str.1 }, %struct.EnumPropertyItem { i32 7, ptr @.str.1345, i32 0, ptr @.str.1346, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_KeyMaps_new_keymap = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_KeyMaps_new_modal, i32 -1, ptr @.str.646, i32 8388616, ptr @.str.647, ptr @.str.648, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_KeyMap }, align 8
@.str.645 = private unnamed_addr constant [6 x i8] c"Modal\00", align 1
@.str.646 = private unnamed_addr constant [7 x i8] c"keymap\00", align 1
@.str.647 = private unnamed_addr constant [8 x i8] c"Key Map\00", align 1
@.str.648 = private unnamed_addr constant [14 x i8] c"Added key map\00", align 1
@rna_KeyMaps_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_KeyMaps_find_func, ptr @rna_KeyMaps_new_func, ptr null, %struct.ListBase { ptr @rna_KeyMaps_remove_keymap, ptr @rna_KeyMaps_remove_keymap } }, ptr @.str.628, i32 16, ptr @.str.628, ptr @KeyMaps_remove_call, ptr null }, align 8
@rna_KeyMaps_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_KeyMaps_remove_func, ptr null, ptr null, %struct.ListBase { ptr @rna_KeyMaps_new_name, ptr @rna_KeyMaps_new_keymap } }, ptr @.str.626, i32 0, ptr @.str.626, ptr @KeyMaps_new_call, ptr @rna_KeyMaps_new_keymap }, align 8
@.str.649 = private unnamed_addr constant [16 x i8] c"Removed key map\00", align 1
@rna_KeyMaps_remove_keymap = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.646, i32 264196, ptr @.str.647, ptr @.str.649, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_KeyMap }, align 8
@rna_KeyMaps_find_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_KeyMaps_find_modal_func, ptr @rna_KeyMaps_remove_func, ptr null, %struct.ListBase { ptr @rna_KeyMaps_find_name, ptr @rna_KeyMaps_find_keymap } }, ptr @.str.651, i32 0, ptr @.str.651, ptr @KeyMaps_find_call, ptr @rna_KeyMaps_find_keymap }, align 8
@rna_KeyMaps_find_space_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMaps_find_region_type, ptr @rna_KeyMaps_find_name, i32 -1, ptr @.str.641, i32 3, ptr @.str.642, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_KeyMaps_find_space_type_items, i32 23, i32 0 }, align 8
@rna_KeyMaps_find_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMaps_find_space_type, ptr null, i32 -1, ptr @.str.419, i32 262149, ptr @.str.420, ptr @.str.1, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.1 }, align 8
@rna_KeyMaps_find_region_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMaps_find_keymap, ptr @rna_KeyMaps_find_space_type, i32 -1, ptr @.str.643, i32 3, ptr @.str.644, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_KeyMaps_find_region_type_items, i32 8, i32 0 }, align 8
@rna_KeyMaps_find_space_type_items = internal global [24 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1285, i32 0, ptr @.str.1286, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1287, i32 104, ptr @.str.1288, ptr @.str.1289 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 15, ptr @.str.1290, i32 118, ptr @.str.1291, ptr @.str.1292 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1293, i32 105, ptr @.str.1294, ptr @.str.1295 }, %struct.EnumPropertyItem { i32 12, ptr @.str.1296, i32 115, ptr @.str.1297, ptr @.str.1298 }, %struct.EnumPropertyItem { i32 13, ptr @.str.1299, i32 116, ptr @.str.1300, ptr @.str.1301 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 6, ptr @.str.1302, i32 109, ptr @.str.1303, ptr @.str.1304 }, %struct.EnumPropertyItem { i32 8, ptr @.str.1305, i32 111, ptr @.str.1306, ptr @.str.1307 }, %struct.EnumPropertyItem { i32 20, ptr @.str.1308, i32 123, ptr @.str.1309, ptr @.str.1310 }, %struct.EnumPropertyItem { i32 9, ptr @.str.1311, i32 112, ptr @.str.1312, ptr @.str.1313 }, %struct.EnumPropertyItem { i32 16, ptr @.str.1314, i32 119, ptr @.str.1315, ptr @.str.1316 }, %struct.EnumPropertyItem { i32 17, ptr @.str.1317, i32 120, ptr @.str.1318, ptr @.str.1319 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 4, ptr @.str.1320, i32 107, ptr @.str.413, ptr @.str.1321 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1322, i32 106, ptr @.str.1323, ptr @.str.1324 }, %struct.EnumPropertyItem { i32 19, ptr @.str.1325, i32 122, ptr @.str.1326, ptr @.str.1327 }, %struct.EnumPropertyItem { i32 7, ptr @.str.368, i32 110, ptr @.str.369, ptr @.str.1328 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 5, ptr @.str.1329, i32 108, ptr @.str.1330, ptr @.str.1331 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 18, ptr @.str.852, i32 121, ptr @.str.1332, ptr @.str.1333 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_KeyMaps_find_keymap = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_KeyMaps_find_region_type, i32 -1, ptr @.str.646, i32 8388616, ptr @.str.647, ptr @.str.650, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_KeyMap }, align 8
@rna_KeyMaps_find_region_type_items = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1334, i32 0, ptr @.str.555, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1335, i32 0, ptr @.str.1336, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1337, i32 0, ptr @.str.1338, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1339, i32 0, ptr @.str.1340, ptr @.str.1 }, %struct.EnumPropertyItem { i32 4, ptr @.str.771, i32 0, ptr @.str.771, ptr @.str.1 }, %struct.EnumPropertyItem { i32 5, ptr @.str.1341, i32 0, ptr @.str.1342, ptr @.str.1 }, %struct.EnumPropertyItem { i32 6, ptr @.str.1343, i32 0, ptr @.str.1344, ptr @.str.1 }, %struct.EnumPropertyItem { i32 7, ptr @.str.1345, i32 0, ptr @.str.1346, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.650 = private unnamed_addr constant [22 x i8] c"Corresponding key map\00", align 1
@rna_KeyMaps_find_modal_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_KeyMaps_find_func, ptr null, %struct.ListBase { ptr @rna_KeyMaps_find_modal_name, ptr @rna_KeyMaps_find_modal_keymap } }, ptr @.str.653, i32 0, ptr @.str.653, ptr @KeyMaps_find_modal_call, ptr @rna_KeyMaps_find_modal_keymap }, align 8
@.str.651 = private unnamed_addr constant [5 x i8] c"find\00", align 1
@rna_KeyMaps_find_modal_keymap = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_KeyMaps_find_modal_name, i32 -1, ptr @.str.646, i32 8388616, ptr @.str.647, ptr @.str.650, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_KeyMap }, align 8
@.str.652 = private unnamed_addr constant [14 x i8] c"Operator Name\00", align 1
@rna_KeyMaps_find_modal_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMaps_find_modal_keymap, ptr null, i32 -1, ptr @.str.419, i32 262149, ptr @.str.652, ptr @.str.1, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.1 }, align 8
@.str.653 = private unnamed_addr constant [11 x i8] c"find_modal\00", align 1
@.str.654 = private unnamed_addr constant [8 x i8] c"KeyMaps\00", align 1
@.str.655 = private unnamed_addr constant [22 x i8] c"Collection of keymaps\00", align 1
@rna_KeyMap_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMap_name, ptr @rna_KeyMap_rna_properties, i32 -1, ptr @.str.416, i32 8912896, ptr @.str.417, ptr @.str.418, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMap_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_KeyMap_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMap_space_type, ptr @rna_KeyMap_rna_type, i32 -1, ptr @.str.419, i32 262144, ptr @.str.420, ptr @.str.656, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMap_name_get, ptr @KeyMap_name_length, ptr null, ptr null, ptr null, ptr null, i32 64, ptr @.str.1 }, align 8
@rna_KeyMap_space_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMap_region_type, ptr @rna_KeyMap_name, i32 -1, ptr @.str.641, i32 2, ptr @.str.642, ptr @.str.657, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMap_space_type_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_KeyMap_space_type_items, i32 23, i32 0 }, align 8
@.str.656 = private unnamed_addr constant [20 x i8] c"Name of the key map\00", align 1
@rna_KeyMap_region_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMap_keymap_items, ptr @rna_KeyMap_space_type, i32 -1, ptr @.str.643, i32 2, ptr @.str.644, ptr @.str.658, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMap_region_type_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_KeyMap_region_type_items, i32 8, i32 0 }, align 8
@.str.657 = private unnamed_addr constant [46 x i8] c"Optional space type keymap is associated with\00", align 1
@rna_KeyMap_space_type_items = internal global [24 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1285, i32 0, ptr @.str.1286, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1287, i32 104, ptr @.str.1288, ptr @.str.1289 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 15, ptr @.str.1290, i32 118, ptr @.str.1291, ptr @.str.1292 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1293, i32 105, ptr @.str.1294, ptr @.str.1295 }, %struct.EnumPropertyItem { i32 12, ptr @.str.1296, i32 115, ptr @.str.1297, ptr @.str.1298 }, %struct.EnumPropertyItem { i32 13, ptr @.str.1299, i32 116, ptr @.str.1300, ptr @.str.1301 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 6, ptr @.str.1302, i32 109, ptr @.str.1303, ptr @.str.1304 }, %struct.EnumPropertyItem { i32 8, ptr @.str.1305, i32 111, ptr @.str.1306, ptr @.str.1307 }, %struct.EnumPropertyItem { i32 20, ptr @.str.1308, i32 123, ptr @.str.1309, ptr @.str.1310 }, %struct.EnumPropertyItem { i32 9, ptr @.str.1311, i32 112, ptr @.str.1312, ptr @.str.1313 }, %struct.EnumPropertyItem { i32 16, ptr @.str.1314, i32 119, ptr @.str.1315, ptr @.str.1316 }, %struct.EnumPropertyItem { i32 17, ptr @.str.1317, i32 120, ptr @.str.1318, ptr @.str.1319 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 4, ptr @.str.1320, i32 107, ptr @.str.413, ptr @.str.1321 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1322, i32 106, ptr @.str.1323, ptr @.str.1324 }, %struct.EnumPropertyItem { i32 19, ptr @.str.1325, i32 122, ptr @.str.1326, ptr @.str.1327 }, %struct.EnumPropertyItem { i32 7, ptr @.str.368, i32 110, ptr @.str.369, ptr @.str.1328 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 5, ptr @.str.1329, i32 108, ptr @.str.1330, ptr @.str.1331 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 18, ptr @.str.852, i32 121, ptr @.str.1332, ptr @.str.1333 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.658 = private unnamed_addr constant [47 x i8] c"Optional region type keymap is associated with\00", align 1
@rna_KeyMap_region_type_items = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1334, i32 0, ptr @.str.555, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1335, i32 0, ptr @.str.1336, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1337, i32 0, ptr @.str.1338, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.1339, i32 0, ptr @.str.1340, ptr @.str.1 }, %struct.EnumPropertyItem { i32 4, ptr @.str.771, i32 0, ptr @.str.771, ptr @.str.1 }, %struct.EnumPropertyItem { i32 5, ptr @.str.1341, i32 0, ptr @.str.1342, ptr @.str.1 }, %struct.EnumPropertyItem { i32 6, ptr @.str.1343, i32 0, ptr @.str.1344, ptr @.str.1 }, %struct.EnumPropertyItem { i32 7, ptr @.str.1345, i32 0, ptr @.str.1346, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_KeyMap_is_user_modified = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMap_is_modal, ptr @rna_KeyMap_keymap_items, i32 -1, ptr @.str.662, i32 3, ptr @.str.637, ptr @.str.663, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMap_is_user_modified_get, ptr @KeyMap_is_user_modified_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.659 = private unnamed_addr constant [13 x i8] c"keymap_items\00", align 1
@.str.660 = private unnamed_addr constant [6 x i8] c"Items\00", align 1
@.str.661 = private unnamed_addr constant [59 x i8] c"Items in the keymap, linking an operator to an input event\00", align 1
@RNA_KeyMapItems = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_KeyMapItem, ptr @RNA_KeyMap, ptr null, %struct.ListBase { ptr @rna_KeyMapItems_rna_properties, ptr @rna_KeyMapItems_rna_type } }, ptr @.str.694, ptr null, ptr null, i32 4, ptr @.str.695, ptr @.str.696, ptr @.str.415, i32 17, ptr null, ptr @rna_KeyMapItems_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_KeyMapItems_new_func, ptr @rna_KeyMapItems_from_id_func } }, align 8
@RNA_KeyMapItem = dso_local global %struct.StructRNA { %struct.ContainerRNA { ptr @RNA_World, ptr @RNA_KeyMapItems, ptr null, %struct.ListBase { ptr @rna_KeyMapItem_rna_properties, ptr @rna_KeyMapItem_is_user_defined } }, ptr @.str.723, ptr null, ptr null, i32 4, ptr @.str.724, ptr @.str.725, ptr @.str.415, i32 17, ptr @rna_KeyMapItem_idname, ptr @rna_KeyMapItem_rna_properties, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_KeyMapItem_compare_func, ptr @rna_KeyMapItem_compare_func } }, align 8
@rna_KeyMap_is_modal = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMap_show_expanded_items, ptr @rna_KeyMap_is_user_modified, i32 -1, ptr @.str.664, i32 2, ptr @.str.665, ptr @.str.666, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMap_is_modal_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.662 = private unnamed_addr constant [17 x i8] c"is_user_modified\00", align 1
@.str.663 = private unnamed_addr constant [30 x i8] c"Keymap is defined by the user\00", align 1
@rna_KeyMap_show_expanded_items = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMap_show_expanded_children, ptr @rna_KeyMap_is_modal, i32 -1, ptr @.str.667, i32 4099, ptr @.str.668, ptr @.str.669, i32 4, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMap_show_expanded_items_get, ptr @KeyMap_show_expanded_items_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.664 = private unnamed_addr constant [9 x i8] c"is_modal\00", align 1
@.str.665 = private unnamed_addr constant [13 x i8] c"Modal Keymap\00", align 1
@.str.666 = private unnamed_addr constant [75 x i8] c"Indicates that a keymap is used for translate modal events for an operator\00", align 1
@rna_KeyMap_show_expanded_children = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_KeyMap_show_expanded_items, i32 -1, ptr @.str.670, i32 4099, ptr @.str.671, ptr @.str.672, i32 4, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMap_show_expanded_children_get, ptr @KeyMap_show_expanded_children_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.667 = private unnamed_addr constant [20 x i8] c"show_expanded_items\00", align 1
@.str.668 = private unnamed_addr constant [15 x i8] c"Items Expanded\00", align 1
@.str.669 = private unnamed_addr constant [31 x i8] c"Expanded in the user interface\00", align 1
@.str.670 = private unnamed_addr constant [23 x i8] c"show_expanded_children\00", align 1
@.str.671 = private unnamed_addr constant [18 x i8] c"Children Expanded\00", align 1
@.str.672 = private unnamed_addr constant [40 x i8] c"Children expanded in the user interface\00", align 1
@.str.673 = private unnamed_addr constant [15 x i8] c"Active key map\00", align 1
@rna_KeyMap_active_keymap = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.646, i32 8388616, ptr @.str.647, ptr @.str.673, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_KeyMap }, align 8
@rna_KeyMap_restore_to_default_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_KeyMap_restore_item_to_default_func, ptr @rna_KeyMap_active_func, ptr null, %struct.ListBase zeroinitializer }, ptr @.str.674, i32 8, ptr @.str.674, ptr @KeyMap_restore_to_default_call, ptr null }, align 8
@rna_KeyMap_active_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_KeyMap_restore_to_default_func, ptr null, ptr null, %struct.ListBase { ptr @rna_KeyMap_active_keymap, ptr @rna_KeyMap_active_keymap } }, ptr @.str.611, i32 8, ptr @.str.611, ptr @KeyMap_active_call, ptr @rna_KeyMap_active_keymap }, align 8
@rna_KeyMap_restore_item_to_default_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_KeyMap_restore_to_default_func, ptr null, %struct.ListBase { ptr @rna_KeyMap_restore_item_to_default_item, ptr @rna_KeyMap_restore_item_to_default_item } }, ptr @.str.677, i32 8, ptr @.str.677, ptr @KeyMap_restore_item_to_default_call, ptr null }, align 8
@.str.674 = private unnamed_addr constant [19 x i8] c"restore_to_default\00", align 1
@.str.675 = private unnamed_addr constant [5 x i8] c"item\00", align 1
@.str.676 = private unnamed_addr constant [5 x i8] c"Item\00", align 1
@rna_KeyMap_restore_item_to_default_item = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.675, i32 8650756, ptr @.str.676, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_KeyMapItem }, align 8
@.str.677 = private unnamed_addr constant [24 x i8] c"restore_item_to_default\00", align 1
@.str.678 = private unnamed_addr constant [7 x i8] c"KeyMap\00", align 1
@rna_KeyMapItems_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_KeyMapItems_rna_properties, i32 -1, ptr @.str.416, i32 8912896, ptr @.str.417, ptr @.str.418, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMapItems_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_KeyMapItems_new_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItems_new_value, ptr @rna_KeyMapItems_new_idname, i32 -1, ptr @.str.433, i32 7, ptr @.str.434, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_KeyMapItems_new_type_items, i32 195, i32 0 }, align 8
@.str.679 = private unnamed_addr constant [7 x i8] c"idname\00", align 1
@.str.680 = private unnamed_addr constant [20 x i8] c"Operator Identifier\00", align 1
@rna_KeyMapItems_new_idname = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItems_new_type, ptr null, i32 -1, ptr @.str.679, i32 262149, ptr @.str.680, ptr @.str.1, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.1 }, align 8
@rna_KeyMapItems_new_value = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItems_new_any, ptr @rna_KeyMapItems_new_type, i32 -1, ptr @.str.484, i32 7, ptr @.str.485, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_KeyMapItems_new_value_items, i32 14, i32 0 }, align 8
@rna_KeyMapItems_new_type_items = internal global [196 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.2, i32 0, ptr @.str.3, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.4, i32 0, ptr @.str.5, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.1 }, %struct.EnumPropertyItem { i32 7, ptr @.str.8, i32 0, ptr @.str.9, ptr @.str.1 }, %struct.EnumPropertyItem { i32 8, ptr @.str.10, i32 0, ptr @.str.11, ptr @.str.1 }, %struct.EnumPropertyItem { i32 18, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.1 }, %struct.EnumPropertyItem { i32 19, ptr @.str.14, i32 0, ptr @.str.15, ptr @.str.1 }, %struct.EnumPropertyItem { i32 5, ptr @.str.16, i32 0, ptr @.str.17, ptr @.str.1 }, %struct.EnumPropertyItem { i32 6, ptr @.str.18, i32 0, ptr @.str.19, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 4, ptr @.str.20, i32 0, ptr @.str.21, ptr @.str.1 }, %struct.EnumPropertyItem { i32 17, ptr @.str.22, i32 0, ptr @.str.23, ptr @.str.1 }, %struct.EnumPropertyItem { i32 14, ptr @.str.24, i32 0, ptr @.str.25, ptr @.str.1 }, %struct.EnumPropertyItem { i32 15, ptr @.str.26, i32 0, ptr @.str.27, ptr @.str.1 }, %struct.EnumPropertyItem { i32 16, ptr @.str.28, i32 0, ptr @.str.29, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 10, ptr @.str.30, i32 0, ptr @.str.31, ptr @.str.1 }, %struct.EnumPropertyItem { i32 11, ptr @.str.32, i32 0, ptr @.str.33, ptr @.str.1 }, %struct.EnumPropertyItem { i32 12, ptr @.str.34, i32 0, ptr @.str.35, ptr @.str.1 }, %struct.EnumPropertyItem { i32 13, ptr @.str.36, i32 0, ptr @.str.37, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 20483, ptr @.str.38, i32 0, ptr @.str.39, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20484, ptr @.str.40, i32 0, ptr @.str.41, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20485, ptr @.str.42, i32 0, ptr @.str.43, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20486, ptr @.str.44, i32 0, ptr @.str.45, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20487, ptr @.str.46, i32 0, ptr @.str.47, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 97, ptr @.str.48, i32 0, ptr @.str.48, ptr @.str.1 }, %struct.EnumPropertyItem { i32 98, ptr @.str.49, i32 0, ptr @.str.49, ptr @.str.1 }, %struct.EnumPropertyItem { i32 99, ptr @.str.50, i32 0, ptr @.str.50, ptr @.str.1 }, %struct.EnumPropertyItem { i32 100, ptr @.str.51, i32 0, ptr @.str.51, ptr @.str.1 }, %struct.EnumPropertyItem { i32 101, ptr @.str.52, i32 0, ptr @.str.52, ptr @.str.1 }, %struct.EnumPropertyItem { i32 102, ptr @.str.53, i32 0, ptr @.str.53, ptr @.str.1 }, %struct.EnumPropertyItem { i32 103, ptr @.str.54, i32 0, ptr @.str.54, ptr @.str.1 }, %struct.EnumPropertyItem { i32 104, ptr @.str.55, i32 0, ptr @.str.55, ptr @.str.1 }, %struct.EnumPropertyItem { i32 105, ptr @.str.56, i32 0, ptr @.str.56, ptr @.str.1 }, %struct.EnumPropertyItem { i32 106, ptr @.str.57, i32 0, ptr @.str.57, ptr @.str.1 }, %struct.EnumPropertyItem { i32 107, ptr @.str.58, i32 0, ptr @.str.58, ptr @.str.1 }, %struct.EnumPropertyItem { i32 108, ptr @.str.59, i32 0, ptr @.str.59, ptr @.str.1 }, %struct.EnumPropertyItem { i32 109, ptr @.str.60, i32 0, ptr @.str.60, ptr @.str.1 }, %struct.EnumPropertyItem { i32 110, ptr @.str.61, i32 0, ptr @.str.61, ptr @.str.1 }, %struct.EnumPropertyItem { i32 111, ptr @.str.62, i32 0, ptr @.str.62, ptr @.str.1 }, %struct.EnumPropertyItem { i32 112, ptr @.str.63, i32 0, ptr @.str.63, ptr @.str.1 }, %struct.EnumPropertyItem { i32 113, ptr @.str.64, i32 0, ptr @.str.64, ptr @.str.1 }, %struct.EnumPropertyItem { i32 114, ptr @.str.65, i32 0, ptr @.str.65, ptr @.str.1 }, %struct.EnumPropertyItem { i32 115, ptr @.str.66, i32 0, ptr @.str.66, ptr @.str.1 }, %struct.EnumPropertyItem { i32 116, ptr @.str.67, i32 0, ptr @.str.67, ptr @.str.1 }, %struct.EnumPropertyItem { i32 117, ptr @.str.68, i32 0, ptr @.str.68, ptr @.str.1 }, %struct.EnumPropertyItem { i32 118, ptr @.str.69, i32 0, ptr @.str.69, ptr @.str.1 }, %struct.EnumPropertyItem { i32 119, ptr @.str.70, i32 0, ptr @.str.70, ptr @.str.1 }, %struct.EnumPropertyItem { i32 120, ptr @.str.71, i32 0, ptr @.str.71, ptr @.str.1 }, %struct.EnumPropertyItem { i32 121, ptr @.str.72, i32 0, ptr @.str.72, ptr @.str.1 }, %struct.EnumPropertyItem { i32 122, ptr @.str.73, i32 0, ptr @.str.73, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 48, ptr @.str.74, i32 0, ptr @.str.75, ptr @.str.1 }, %struct.EnumPropertyItem { i32 49, ptr @.str.76, i32 0, ptr @.str.77, ptr @.str.1 }, %struct.EnumPropertyItem { i32 50, ptr @.str.78, i32 0, ptr @.str.79, ptr @.str.1 }, %struct.EnumPropertyItem { i32 51, ptr @.str.80, i32 0, ptr @.str.81, ptr @.str.1 }, %struct.EnumPropertyItem { i32 52, ptr @.str.82, i32 0, ptr @.str.83, ptr @.str.1 }, %struct.EnumPropertyItem { i32 53, ptr @.str.84, i32 0, ptr @.str.85, ptr @.str.1 }, %struct.EnumPropertyItem { i32 54, ptr @.str.86, i32 0, ptr @.str.87, ptr @.str.1 }, %struct.EnumPropertyItem { i32 55, ptr @.str.88, i32 0, ptr @.str.89, ptr @.str.1 }, %struct.EnumPropertyItem { i32 56, ptr @.str.90, i32 0, ptr @.str.91, ptr @.str.1 }, %struct.EnumPropertyItem { i32 57, ptr @.str.92, i32 0, ptr @.str.93, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 212, ptr @.str.94, i32 0, ptr @.str.95, ptr @.str.1 }, %struct.EnumPropertyItem { i32 213, ptr @.str.96, i32 0, ptr @.str.97, ptr @.str.1 }, %struct.EnumPropertyItem { i32 217, ptr @.str.98, i32 0, ptr @.str.99, ptr @.str.1 }, %struct.EnumPropertyItem { i32 214, ptr @.str.100, i32 0, ptr @.str.101, ptr @.str.1 }, %struct.EnumPropertyItem { i32 215, ptr @.str.102, i32 0, ptr @.str.103, ptr @.str.1 }, %struct.EnumPropertyItem { i32 216, ptr @.str.104, i32 0, ptr @.str.105, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 172, ptr @.str.106, i32 0, ptr @.str.107, ptr @.str.1 }, %struct.EnumPropertyItem { i32 173, ptr @.str.108, i32 0, ptr @.str.109, ptr @.str.1 }, %struct.EnumPropertyItem { i32 218, ptr @.str.110, i32 0, ptr @.str.111, ptr @.str.1 }, %struct.EnumPropertyItem { i32 219, ptr @.str.112, i32 0, ptr @.str.113, ptr @.str.1 }, %struct.EnumPropertyItem { i32 220, ptr @.str.114, i32 0, ptr @.str.115, ptr @.str.1 }, %struct.EnumPropertyItem { i32 221, ptr @.str.116, i32 0, ptr @.str.117, ptr @.str.1 }, %struct.EnumPropertyItem { i32 222, ptr @.str.118, i32 0, ptr @.str.119, ptr @.str.1 }, %struct.EnumPropertyItem { i32 223, ptr @.str.120, i32 0, ptr @.str.121, ptr @.str.1 }, %struct.EnumPropertyItem { i32 224, ptr @.str.122, i32 0, ptr @.str.123, ptr @.str.1 }, %struct.EnumPropertyItem { i32 225, ptr @.str.124, i32 0, ptr @.str.125, ptr @.str.1 }, %struct.EnumPropertyItem { i32 226, ptr @.str.126, i32 0, ptr @.str.127, ptr @.str.1 }, %struct.EnumPropertyItem { i32 227, ptr @.str.128, i32 0, ptr @.str.129, ptr @.str.1 }, %struct.EnumPropertyItem { i32 228, ptr @.str.130, i32 0, ptr @.str.131, ptr @.str.1 }, %struct.EnumPropertyItem { i32 229, ptr @.str.132, i32 0, ptr @.str.133, ptr @.str.1 }, %struct.EnumPropertyItem { i32 230, ptr @.str.134, i32 0, ptr @.str.135, ptr @.str.1 }, %struct.EnumPropertyItem { i32 232, ptr @.str.136, i32 0, ptr @.str.137, ptr @.str.1 }, %struct.EnumPropertyItem { i32 233, ptr @.str.138, i32 0, ptr @.str.139, ptr @.str.1 }, %struct.EnumPropertyItem { i32 234, ptr @.str.140, i32 0, ptr @.str.141, ptr @.str.1 }, %struct.EnumPropertyItem { i32 235, ptr @.str.142, i32 0, ptr @.str.143, ptr @.str.1 }, %struct.EnumPropertyItem { i32 236, ptr @.str.144, i32 0, ptr @.str.145, ptr @.str.1 }, %struct.EnumPropertyItem { i32 137, ptr @.str.146, i32 0, ptr @.str.147, ptr @.str.1 }, %struct.EnumPropertyItem { i32 138, ptr @.str.148, i32 0, ptr @.str.149, ptr @.str.1 }, %struct.EnumPropertyItem { i32 139, ptr @.str.150, i32 0, ptr @.str.151, ptr @.str.1 }, %struct.EnumPropertyItem { i32 140, ptr @.str.152, i32 0, ptr @.str.153, ptr @.str.1 }, %struct.EnumPropertyItem { i32 152, ptr @.str.154, i32 0, ptr @.str.155, ptr @.str.1 }, %struct.EnumPropertyItem { i32 154, ptr @.str.156, i32 0, ptr @.str.157, ptr @.str.1 }, %struct.EnumPropertyItem { i32 156, ptr @.str.158, i32 0, ptr @.str.159, ptr @.str.1 }, %struct.EnumPropertyItem { i32 158, ptr @.str.160, i32 0, ptr @.str.161, ptr @.str.1 }, %struct.EnumPropertyItem { i32 151, ptr @.str.162, i32 0, ptr @.str.163, ptr @.str.1 }, %struct.EnumPropertyItem { i32 153, ptr @.str.164, i32 0, ptr @.str.165, ptr @.str.1 }, %struct.EnumPropertyItem { i32 155, ptr @.str.166, i32 0, ptr @.str.167, ptr @.str.1 }, %struct.EnumPropertyItem { i32 157, ptr @.str.168, i32 0, ptr @.str.169, ptr @.str.1 }, %struct.EnumPropertyItem { i32 159, ptr @.str.170, i32 0, ptr @.str.171, ptr @.str.1 }, %struct.EnumPropertyItem { i32 199, ptr @.str.172, i32 0, ptr @.str.173, ptr @.str.1 }, %struct.EnumPropertyItem { i32 161, ptr @.str.174, i32 0, ptr @.str.175, ptr @.str.1 }, %struct.EnumPropertyItem { i32 160, ptr @.str.176, i32 0, ptr @.str.177, ptr @.str.1 }, %struct.EnumPropertyItem { i32 150, ptr @.str.178, i32 0, ptr @.str.179, ptr @.str.1 }, %struct.EnumPropertyItem { i32 162, ptr @.str.180, i32 0, ptr @.str.181, ptr @.str.1 }, %struct.EnumPropertyItem { i32 163, ptr @.str.182, i32 0, ptr @.str.183, ptr @.str.1 }, %struct.EnumPropertyItem { i32 164, ptr @.str.184, i32 0, ptr @.str.185, ptr @.str.1 }, %struct.EnumPropertyItem { i32 300, ptr @.str.186, i32 0, ptr @.str.186, ptr @.str.1 }, %struct.EnumPropertyItem { i32 301, ptr @.str.187, i32 0, ptr @.str.187, ptr @.str.1 }, %struct.EnumPropertyItem { i32 302, ptr @.str.188, i32 0, ptr @.str.188, ptr @.str.1 }, %struct.EnumPropertyItem { i32 303, ptr @.str.189, i32 0, ptr @.str.189, ptr @.str.1 }, %struct.EnumPropertyItem { i32 304, ptr @.str.190, i32 0, ptr @.str.190, ptr @.str.1 }, %struct.EnumPropertyItem { i32 305, ptr @.str.191, i32 0, ptr @.str.191, ptr @.str.1 }, %struct.EnumPropertyItem { i32 306, ptr @.str.192, i32 0, ptr @.str.192, ptr @.str.1 }, %struct.EnumPropertyItem { i32 307, ptr @.str.193, i32 0, ptr @.str.193, ptr @.str.1 }, %struct.EnumPropertyItem { i32 308, ptr @.str.194, i32 0, ptr @.str.194, ptr @.str.1 }, %struct.EnumPropertyItem { i32 309, ptr @.str.195, i32 0, ptr @.str.195, ptr @.str.1 }, %struct.EnumPropertyItem { i32 310, ptr @.str.196, i32 0, ptr @.str.196, ptr @.str.1 }, %struct.EnumPropertyItem { i32 311, ptr @.str.197, i32 0, ptr @.str.197, ptr @.str.1 }, %struct.EnumPropertyItem { i32 312, ptr @.str.198, i32 0, ptr @.str.198, ptr @.str.1 }, %struct.EnumPropertyItem { i32 313, ptr @.str.199, i32 0, ptr @.str.199, ptr @.str.1 }, %struct.EnumPropertyItem { i32 314, ptr @.str.200, i32 0, ptr @.str.200, ptr @.str.1 }, %struct.EnumPropertyItem { i32 315, ptr @.str.201, i32 0, ptr @.str.201, ptr @.str.1 }, %struct.EnumPropertyItem { i32 316, ptr @.str.202, i32 0, ptr @.str.202, ptr @.str.1 }, %struct.EnumPropertyItem { i32 317, ptr @.str.203, i32 0, ptr @.str.203, ptr @.str.1 }, %struct.EnumPropertyItem { i32 318, ptr @.str.204, i32 0, ptr @.str.204, ptr @.str.1 }, %struct.EnumPropertyItem { i32 165, ptr @.str.205, i32 0, ptr @.str.206, ptr @.str.1 }, %struct.EnumPropertyItem { i32 166, ptr @.str.207, i32 0, ptr @.str.208, ptr @.str.1 }, %struct.EnumPropertyItem { i32 167, ptr @.str.209, i32 0, ptr @.str.210, ptr @.str.1 }, %struct.EnumPropertyItem { i32 168, ptr @.str.211, i32 0, ptr @.str.212, ptr @.str.1 }, %struct.EnumPropertyItem { i32 169, ptr @.str.213, i32 0, ptr @.str.214, ptr @.str.1 }, %struct.EnumPropertyItem { i32 170, ptr @.str.215, i32 0, ptr @.str.216, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 174, ptr @.str.217, i32 0, ptr @.str.218, ptr @.str.1 }, %struct.EnumPropertyItem { i32 175, ptr @.str.219, i32 0, ptr @.str.220, ptr @.str.1 }, %struct.EnumPropertyItem { i32 176, ptr @.str.221, i32 0, ptr @.str.222, ptr @.str.1 }, %struct.EnumPropertyItem { i32 177, ptr @.str.223, i32 0, ptr @.str.224, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 -2, ptr @.str.225, i32 0, ptr @.str.226, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 260, ptr @.str.227, i32 0, ptr @.str.228, ptr @.str.1 }, %struct.EnumPropertyItem { i32 272, ptr @.str.229, i32 0, ptr @.str.230, ptr @.str.1 }, %struct.EnumPropertyItem { i32 273, ptr @.str.231, i32 0, ptr @.str.232, ptr @.str.1 }, %struct.EnumPropertyItem { i32 274, ptr @.str.233, i32 0, ptr @.str.234, ptr @.str.1 }, %struct.EnumPropertyItem { i32 275, ptr @.str.235, i32 0, ptr @.str.236, ptr @.str.1 }, %struct.EnumPropertyItem { i32 276, ptr @.str.237, i32 0, ptr @.str.238, ptr @.str.1 }, %struct.EnumPropertyItem { i32 277, ptr @.str.239, i32 0, ptr @.str.240, ptr @.str.1 }, %struct.EnumPropertyItem { i32 278, ptr @.str.241, i32 0, ptr @.str.242, ptr @.str.1 }, %struct.EnumPropertyItem { i32 279, ptr @.str.243, i32 0, ptr @.str.244, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 400, ptr @.str.245, i32 0, ptr @.str.246, ptr @.str.1 }, %struct.EnumPropertyItem { i32 401, ptr @.str.247, i32 0, ptr @.str.248, ptr @.str.1 }, %struct.EnumPropertyItem { i32 402, ptr @.str.249, i32 0, ptr @.str.250, ptr @.str.1 }, %struct.EnumPropertyItem { i32 403, ptr @.str.251, i32 0, ptr @.str.252, ptr @.str.1 }, %struct.EnumPropertyItem { i32 404, ptr @.str.253, i32 0, ptr @.str.254, ptr @.str.1 }, %struct.EnumPropertyItem { i32 405, ptr @.str.255, i32 0, ptr @.str.256, ptr @.str.1 }, %struct.EnumPropertyItem { i32 406, ptr @.str.257, i32 0, ptr @.str.258, ptr @.str.1 }, %struct.EnumPropertyItem { i32 407, ptr @.str.259, i32 0, ptr @.str.260, ptr @.str.1 }, %struct.EnumPropertyItem { i32 408, ptr @.str.261, i32 0, ptr @.str.262, ptr @.str.1 }, %struct.EnumPropertyItem { i32 409, ptr @.str.263, i32 0, ptr @.str.264, ptr @.str.1 }, %struct.EnumPropertyItem { i32 410, ptr @.str.265, i32 0, ptr @.str.266, ptr @.str.1 }, %struct.EnumPropertyItem { i32 411, ptr @.str.267, i32 0, ptr @.str.268, ptr @.str.1 }, %struct.EnumPropertyItem { i32 412, ptr @.str.269, i32 0, ptr @.str.270, ptr @.str.1 }, %struct.EnumPropertyItem { i32 413, ptr @.str.271, i32 0, ptr @.str.272, ptr @.str.1 }, %struct.EnumPropertyItem { i32 414, ptr @.str.273, i32 0, ptr @.str.274, ptr @.str.1 }, %struct.EnumPropertyItem { i32 415, ptr @.str.275, i32 0, ptr @.str.276, ptr @.str.1 }, %struct.EnumPropertyItem { i32 416, ptr @.str.277, i32 0, ptr @.str.278, ptr @.str.1 }, %struct.EnumPropertyItem { i32 417, ptr @.str.279, i32 0, ptr @.str.280, ptr @.str.1 }, %struct.EnumPropertyItem { i32 418, ptr @.str.281, i32 0, ptr @.str.282, ptr @.str.1 }, %struct.EnumPropertyItem { i32 419, ptr @.str.283, i32 0, ptr @.str.284, ptr @.str.1 }, %struct.EnumPropertyItem { i32 420, ptr @.str.285, i32 0, ptr @.str.286, ptr @.str.1 }, %struct.EnumPropertyItem { i32 421, ptr @.str.287, i32 0, ptr @.str.288, ptr @.str.1 }, %struct.EnumPropertyItem { i32 422, ptr @.str.289, i32 0, ptr @.str.290, ptr null }, %struct.EnumPropertyItem { i32 423, ptr @.str.291, i32 0, ptr @.str.292, ptr null }, %struct.EnumPropertyItem { i32 424, ptr @.str.293, i32 0, ptr @.str.294, ptr null }, %struct.EnumPropertyItem { i32 425, ptr @.str.295, i32 0, ptr @.str.296, ptr null }, %struct.EnumPropertyItem { i32 426, ptr @.str.297, i32 0, ptr @.str.298, ptr @.str.1 }, %struct.EnumPropertyItem { i32 427, ptr @.str.299, i32 0, ptr @.str.300, ptr @.str.1 }, %struct.EnumPropertyItem { i32 428, ptr @.str.301, i32 0, ptr @.str.302, ptr @.str.1 }, %struct.EnumPropertyItem { i32 429, ptr @.str.303, i32 0, ptr @.str.304, ptr @.str.1 }, %struct.EnumPropertyItem { i32 430, ptr @.str.305, i32 0, ptr @.str.306, ptr @.str.1 }, %struct.EnumPropertyItem { i32 431, ptr @.str.307, i32 0, ptr @.str.308, ptr @.str.1 }, %struct.EnumPropertyItem { i32 432, ptr @.str.309, i32 0, ptr @.str.310, ptr @.str.1 }, %struct.EnumPropertyItem { i32 433, ptr @.str.311, i32 0, ptr @.str.312, ptr @.str.1 }, %struct.EnumPropertyItem { i32 434, ptr @.str.313, i32 0, ptr @.str.314, ptr @.str.1 }, %struct.EnumPropertyItem { i32 435, ptr @.str.315, i32 0, ptr @.str.316, ptr @.str.1 }, %struct.EnumPropertyItem { i32 436, ptr @.str.317, i32 0, ptr @.str.318, ptr @.str.1 }, %struct.EnumPropertyItem { i32 437, ptr @.str.319, i32 0, ptr @.str.320, ptr @.str.1 }, %struct.EnumPropertyItem { i32 438, ptr @.str.321, i32 0, ptr @.str.322, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_KeyMapItems_new_any = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItems_new_shift, ptr @rna_KeyMapItems_new_value, i32 -1, ptr @.str.681, i32 3, ptr @.str.324, ptr @.str.1, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_KeyMapItems_new_value_items = internal global [15 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 -1, ptr @.str.323, i32 0, ptr @.str.324, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.325, i32 0, ptr @.str.326, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.327, i32 0, ptr @.str.328, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.329, i32 0, ptr @.str.330, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.331, i32 0, ptr @.str.332, ptr @.str.1 }, %struct.EnumPropertyItem { i32 4, ptr @.str.333, i32 0, ptr @.str.334, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.335, i32 0, ptr @.str.336, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.337, i32 0, ptr @.str.338, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.339, i32 0, ptr @.str.340, ptr @.str.1 }, %struct.EnumPropertyItem { i32 4, ptr @.str.341, i32 0, ptr @.str.342, ptr @.str.1 }, %struct.EnumPropertyItem { i32 5, ptr @.str.343, i32 0, ptr @.str.344, ptr @.str.1 }, %struct.EnumPropertyItem { i32 6, ptr @.str.345, i32 0, ptr @.str.346, ptr @.str.1 }, %struct.EnumPropertyItem { i32 7, ptr @.str.347, i32 0, ptr @.str.348, ptr @.str.1 }, %struct.EnumPropertyItem { i32 8, ptr @.str.349, i32 0, ptr @.str.350, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_KeyMapItems_new_shift = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItems_new_ctrl, ptr @rna_KeyMapItems_new_any, i32 -1, ptr @.str.508, i32 3, ptr @.str.509, ptr @.str.1, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.681 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@rna_KeyMapItems_new_ctrl = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItems_new_alt, ptr @rna_KeyMapItems_new_shift, i32 -1, ptr @.str.511, i32 3, ptr @.str.512, ptr @.str.1, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_KeyMapItems_new_alt = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItems_new_oskey, ptr @rna_KeyMapItems_new_ctrl, i32 -1, ptr @.str.514, i32 3, ptr @.str.515, ptr @.str.1, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_KeyMapItems_new_oskey = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItems_new_key_modifier, ptr @rna_KeyMapItems_new_alt, i32 -1, ptr @.str.517, i32 3, ptr @.str.107, ptr @.str.1, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_KeyMapItems_new_key_modifier = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItems_new_head, ptr @rna_KeyMapItems_new_oskey, i32 -1, ptr @.str.682, i32 3, ptr @.str.683, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_KeyMapItems_new_key_modifier_items, i32 195, i32 0 }, align 8
@rna_KeyMapItems_new_head = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItems_new_item, ptr @rna_KeyMapItems_new_key_modifier, i32 -1, ptr @.str.684, i32 3, ptr @.str.685, ptr @.str.686, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.682 = private unnamed_addr constant [13 x i8] c"key_modifier\00", align 1
@.str.683 = private unnamed_addr constant [13 x i8] c"Key Modifier\00", align 1
@rna_KeyMapItems_new_key_modifier_items = internal global [196 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.2, i32 0, ptr @.str.3, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.4, i32 0, ptr @.str.5, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.1 }, %struct.EnumPropertyItem { i32 7, ptr @.str.8, i32 0, ptr @.str.9, ptr @.str.1 }, %struct.EnumPropertyItem { i32 8, ptr @.str.10, i32 0, ptr @.str.11, ptr @.str.1 }, %struct.EnumPropertyItem { i32 18, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.1 }, %struct.EnumPropertyItem { i32 19, ptr @.str.14, i32 0, ptr @.str.15, ptr @.str.1 }, %struct.EnumPropertyItem { i32 5, ptr @.str.16, i32 0, ptr @.str.17, ptr @.str.1 }, %struct.EnumPropertyItem { i32 6, ptr @.str.18, i32 0, ptr @.str.19, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 4, ptr @.str.20, i32 0, ptr @.str.21, ptr @.str.1 }, %struct.EnumPropertyItem { i32 17, ptr @.str.22, i32 0, ptr @.str.23, ptr @.str.1 }, %struct.EnumPropertyItem { i32 14, ptr @.str.24, i32 0, ptr @.str.25, ptr @.str.1 }, %struct.EnumPropertyItem { i32 15, ptr @.str.26, i32 0, ptr @.str.27, ptr @.str.1 }, %struct.EnumPropertyItem { i32 16, ptr @.str.28, i32 0, ptr @.str.29, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 10, ptr @.str.30, i32 0, ptr @.str.31, ptr @.str.1 }, %struct.EnumPropertyItem { i32 11, ptr @.str.32, i32 0, ptr @.str.33, ptr @.str.1 }, %struct.EnumPropertyItem { i32 12, ptr @.str.34, i32 0, ptr @.str.35, ptr @.str.1 }, %struct.EnumPropertyItem { i32 13, ptr @.str.36, i32 0, ptr @.str.37, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 20483, ptr @.str.38, i32 0, ptr @.str.39, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20484, ptr @.str.40, i32 0, ptr @.str.41, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20485, ptr @.str.42, i32 0, ptr @.str.43, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20486, ptr @.str.44, i32 0, ptr @.str.45, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20487, ptr @.str.46, i32 0, ptr @.str.47, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 97, ptr @.str.48, i32 0, ptr @.str.48, ptr @.str.1 }, %struct.EnumPropertyItem { i32 98, ptr @.str.49, i32 0, ptr @.str.49, ptr @.str.1 }, %struct.EnumPropertyItem { i32 99, ptr @.str.50, i32 0, ptr @.str.50, ptr @.str.1 }, %struct.EnumPropertyItem { i32 100, ptr @.str.51, i32 0, ptr @.str.51, ptr @.str.1 }, %struct.EnumPropertyItem { i32 101, ptr @.str.52, i32 0, ptr @.str.52, ptr @.str.1 }, %struct.EnumPropertyItem { i32 102, ptr @.str.53, i32 0, ptr @.str.53, ptr @.str.1 }, %struct.EnumPropertyItem { i32 103, ptr @.str.54, i32 0, ptr @.str.54, ptr @.str.1 }, %struct.EnumPropertyItem { i32 104, ptr @.str.55, i32 0, ptr @.str.55, ptr @.str.1 }, %struct.EnumPropertyItem { i32 105, ptr @.str.56, i32 0, ptr @.str.56, ptr @.str.1 }, %struct.EnumPropertyItem { i32 106, ptr @.str.57, i32 0, ptr @.str.57, ptr @.str.1 }, %struct.EnumPropertyItem { i32 107, ptr @.str.58, i32 0, ptr @.str.58, ptr @.str.1 }, %struct.EnumPropertyItem { i32 108, ptr @.str.59, i32 0, ptr @.str.59, ptr @.str.1 }, %struct.EnumPropertyItem { i32 109, ptr @.str.60, i32 0, ptr @.str.60, ptr @.str.1 }, %struct.EnumPropertyItem { i32 110, ptr @.str.61, i32 0, ptr @.str.61, ptr @.str.1 }, %struct.EnumPropertyItem { i32 111, ptr @.str.62, i32 0, ptr @.str.62, ptr @.str.1 }, %struct.EnumPropertyItem { i32 112, ptr @.str.63, i32 0, ptr @.str.63, ptr @.str.1 }, %struct.EnumPropertyItem { i32 113, ptr @.str.64, i32 0, ptr @.str.64, ptr @.str.1 }, %struct.EnumPropertyItem { i32 114, ptr @.str.65, i32 0, ptr @.str.65, ptr @.str.1 }, %struct.EnumPropertyItem { i32 115, ptr @.str.66, i32 0, ptr @.str.66, ptr @.str.1 }, %struct.EnumPropertyItem { i32 116, ptr @.str.67, i32 0, ptr @.str.67, ptr @.str.1 }, %struct.EnumPropertyItem { i32 117, ptr @.str.68, i32 0, ptr @.str.68, ptr @.str.1 }, %struct.EnumPropertyItem { i32 118, ptr @.str.69, i32 0, ptr @.str.69, ptr @.str.1 }, %struct.EnumPropertyItem { i32 119, ptr @.str.70, i32 0, ptr @.str.70, ptr @.str.1 }, %struct.EnumPropertyItem { i32 120, ptr @.str.71, i32 0, ptr @.str.71, ptr @.str.1 }, %struct.EnumPropertyItem { i32 121, ptr @.str.72, i32 0, ptr @.str.72, ptr @.str.1 }, %struct.EnumPropertyItem { i32 122, ptr @.str.73, i32 0, ptr @.str.73, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 48, ptr @.str.74, i32 0, ptr @.str.75, ptr @.str.1 }, %struct.EnumPropertyItem { i32 49, ptr @.str.76, i32 0, ptr @.str.77, ptr @.str.1 }, %struct.EnumPropertyItem { i32 50, ptr @.str.78, i32 0, ptr @.str.79, ptr @.str.1 }, %struct.EnumPropertyItem { i32 51, ptr @.str.80, i32 0, ptr @.str.81, ptr @.str.1 }, %struct.EnumPropertyItem { i32 52, ptr @.str.82, i32 0, ptr @.str.83, ptr @.str.1 }, %struct.EnumPropertyItem { i32 53, ptr @.str.84, i32 0, ptr @.str.85, ptr @.str.1 }, %struct.EnumPropertyItem { i32 54, ptr @.str.86, i32 0, ptr @.str.87, ptr @.str.1 }, %struct.EnumPropertyItem { i32 55, ptr @.str.88, i32 0, ptr @.str.89, ptr @.str.1 }, %struct.EnumPropertyItem { i32 56, ptr @.str.90, i32 0, ptr @.str.91, ptr @.str.1 }, %struct.EnumPropertyItem { i32 57, ptr @.str.92, i32 0, ptr @.str.93, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 212, ptr @.str.94, i32 0, ptr @.str.95, ptr @.str.1 }, %struct.EnumPropertyItem { i32 213, ptr @.str.96, i32 0, ptr @.str.97, ptr @.str.1 }, %struct.EnumPropertyItem { i32 217, ptr @.str.98, i32 0, ptr @.str.99, ptr @.str.1 }, %struct.EnumPropertyItem { i32 214, ptr @.str.100, i32 0, ptr @.str.101, ptr @.str.1 }, %struct.EnumPropertyItem { i32 215, ptr @.str.102, i32 0, ptr @.str.103, ptr @.str.1 }, %struct.EnumPropertyItem { i32 216, ptr @.str.104, i32 0, ptr @.str.105, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 172, ptr @.str.106, i32 0, ptr @.str.107, ptr @.str.1 }, %struct.EnumPropertyItem { i32 173, ptr @.str.108, i32 0, ptr @.str.109, ptr @.str.1 }, %struct.EnumPropertyItem { i32 218, ptr @.str.110, i32 0, ptr @.str.111, ptr @.str.1 }, %struct.EnumPropertyItem { i32 219, ptr @.str.112, i32 0, ptr @.str.113, ptr @.str.1 }, %struct.EnumPropertyItem { i32 220, ptr @.str.114, i32 0, ptr @.str.115, ptr @.str.1 }, %struct.EnumPropertyItem { i32 221, ptr @.str.116, i32 0, ptr @.str.117, ptr @.str.1 }, %struct.EnumPropertyItem { i32 222, ptr @.str.118, i32 0, ptr @.str.119, ptr @.str.1 }, %struct.EnumPropertyItem { i32 223, ptr @.str.120, i32 0, ptr @.str.121, ptr @.str.1 }, %struct.EnumPropertyItem { i32 224, ptr @.str.122, i32 0, ptr @.str.123, ptr @.str.1 }, %struct.EnumPropertyItem { i32 225, ptr @.str.124, i32 0, ptr @.str.125, ptr @.str.1 }, %struct.EnumPropertyItem { i32 226, ptr @.str.126, i32 0, ptr @.str.127, ptr @.str.1 }, %struct.EnumPropertyItem { i32 227, ptr @.str.128, i32 0, ptr @.str.129, ptr @.str.1 }, %struct.EnumPropertyItem { i32 228, ptr @.str.130, i32 0, ptr @.str.131, ptr @.str.1 }, %struct.EnumPropertyItem { i32 229, ptr @.str.132, i32 0, ptr @.str.133, ptr @.str.1 }, %struct.EnumPropertyItem { i32 230, ptr @.str.134, i32 0, ptr @.str.135, ptr @.str.1 }, %struct.EnumPropertyItem { i32 232, ptr @.str.136, i32 0, ptr @.str.137, ptr @.str.1 }, %struct.EnumPropertyItem { i32 233, ptr @.str.138, i32 0, ptr @.str.139, ptr @.str.1 }, %struct.EnumPropertyItem { i32 234, ptr @.str.140, i32 0, ptr @.str.141, ptr @.str.1 }, %struct.EnumPropertyItem { i32 235, ptr @.str.142, i32 0, ptr @.str.143, ptr @.str.1 }, %struct.EnumPropertyItem { i32 236, ptr @.str.144, i32 0, ptr @.str.145, ptr @.str.1 }, %struct.EnumPropertyItem { i32 137, ptr @.str.146, i32 0, ptr @.str.147, ptr @.str.1 }, %struct.EnumPropertyItem { i32 138, ptr @.str.148, i32 0, ptr @.str.149, ptr @.str.1 }, %struct.EnumPropertyItem { i32 139, ptr @.str.150, i32 0, ptr @.str.151, ptr @.str.1 }, %struct.EnumPropertyItem { i32 140, ptr @.str.152, i32 0, ptr @.str.153, ptr @.str.1 }, %struct.EnumPropertyItem { i32 152, ptr @.str.154, i32 0, ptr @.str.155, ptr @.str.1 }, %struct.EnumPropertyItem { i32 154, ptr @.str.156, i32 0, ptr @.str.157, ptr @.str.1 }, %struct.EnumPropertyItem { i32 156, ptr @.str.158, i32 0, ptr @.str.159, ptr @.str.1 }, %struct.EnumPropertyItem { i32 158, ptr @.str.160, i32 0, ptr @.str.161, ptr @.str.1 }, %struct.EnumPropertyItem { i32 151, ptr @.str.162, i32 0, ptr @.str.163, ptr @.str.1 }, %struct.EnumPropertyItem { i32 153, ptr @.str.164, i32 0, ptr @.str.165, ptr @.str.1 }, %struct.EnumPropertyItem { i32 155, ptr @.str.166, i32 0, ptr @.str.167, ptr @.str.1 }, %struct.EnumPropertyItem { i32 157, ptr @.str.168, i32 0, ptr @.str.169, ptr @.str.1 }, %struct.EnumPropertyItem { i32 159, ptr @.str.170, i32 0, ptr @.str.171, ptr @.str.1 }, %struct.EnumPropertyItem { i32 199, ptr @.str.172, i32 0, ptr @.str.173, ptr @.str.1 }, %struct.EnumPropertyItem { i32 161, ptr @.str.174, i32 0, ptr @.str.175, ptr @.str.1 }, %struct.EnumPropertyItem { i32 160, ptr @.str.176, i32 0, ptr @.str.177, ptr @.str.1 }, %struct.EnumPropertyItem { i32 150, ptr @.str.178, i32 0, ptr @.str.179, ptr @.str.1 }, %struct.EnumPropertyItem { i32 162, ptr @.str.180, i32 0, ptr @.str.181, ptr @.str.1 }, %struct.EnumPropertyItem { i32 163, ptr @.str.182, i32 0, ptr @.str.183, ptr @.str.1 }, %struct.EnumPropertyItem { i32 164, ptr @.str.184, i32 0, ptr @.str.185, ptr @.str.1 }, %struct.EnumPropertyItem { i32 300, ptr @.str.186, i32 0, ptr @.str.186, ptr @.str.1 }, %struct.EnumPropertyItem { i32 301, ptr @.str.187, i32 0, ptr @.str.187, ptr @.str.1 }, %struct.EnumPropertyItem { i32 302, ptr @.str.188, i32 0, ptr @.str.188, ptr @.str.1 }, %struct.EnumPropertyItem { i32 303, ptr @.str.189, i32 0, ptr @.str.189, ptr @.str.1 }, %struct.EnumPropertyItem { i32 304, ptr @.str.190, i32 0, ptr @.str.190, ptr @.str.1 }, %struct.EnumPropertyItem { i32 305, ptr @.str.191, i32 0, ptr @.str.191, ptr @.str.1 }, %struct.EnumPropertyItem { i32 306, ptr @.str.192, i32 0, ptr @.str.192, ptr @.str.1 }, %struct.EnumPropertyItem { i32 307, ptr @.str.193, i32 0, ptr @.str.193, ptr @.str.1 }, %struct.EnumPropertyItem { i32 308, ptr @.str.194, i32 0, ptr @.str.194, ptr @.str.1 }, %struct.EnumPropertyItem { i32 309, ptr @.str.195, i32 0, ptr @.str.195, ptr @.str.1 }, %struct.EnumPropertyItem { i32 310, ptr @.str.196, i32 0, ptr @.str.196, ptr @.str.1 }, %struct.EnumPropertyItem { i32 311, ptr @.str.197, i32 0, ptr @.str.197, ptr @.str.1 }, %struct.EnumPropertyItem { i32 312, ptr @.str.198, i32 0, ptr @.str.198, ptr @.str.1 }, %struct.EnumPropertyItem { i32 313, ptr @.str.199, i32 0, ptr @.str.199, ptr @.str.1 }, %struct.EnumPropertyItem { i32 314, ptr @.str.200, i32 0, ptr @.str.200, ptr @.str.1 }, %struct.EnumPropertyItem { i32 315, ptr @.str.201, i32 0, ptr @.str.201, ptr @.str.1 }, %struct.EnumPropertyItem { i32 316, ptr @.str.202, i32 0, ptr @.str.202, ptr @.str.1 }, %struct.EnumPropertyItem { i32 317, ptr @.str.203, i32 0, ptr @.str.203, ptr @.str.1 }, %struct.EnumPropertyItem { i32 318, ptr @.str.204, i32 0, ptr @.str.204, ptr @.str.1 }, %struct.EnumPropertyItem { i32 165, ptr @.str.205, i32 0, ptr @.str.206, ptr @.str.1 }, %struct.EnumPropertyItem { i32 166, ptr @.str.207, i32 0, ptr @.str.208, ptr @.str.1 }, %struct.EnumPropertyItem { i32 167, ptr @.str.209, i32 0, ptr @.str.210, ptr @.str.1 }, %struct.EnumPropertyItem { i32 168, ptr @.str.211, i32 0, ptr @.str.212, ptr @.str.1 }, %struct.EnumPropertyItem { i32 169, ptr @.str.213, i32 0, ptr @.str.214, ptr @.str.1 }, %struct.EnumPropertyItem { i32 170, ptr @.str.215, i32 0, ptr @.str.216, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 174, ptr @.str.217, i32 0, ptr @.str.218, ptr @.str.1 }, %struct.EnumPropertyItem { i32 175, ptr @.str.219, i32 0, ptr @.str.220, ptr @.str.1 }, %struct.EnumPropertyItem { i32 176, ptr @.str.221, i32 0, ptr @.str.222, ptr @.str.1 }, %struct.EnumPropertyItem { i32 177, ptr @.str.223, i32 0, ptr @.str.224, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 -2, ptr @.str.225, i32 0, ptr @.str.226, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 260, ptr @.str.227, i32 0, ptr @.str.228, ptr @.str.1 }, %struct.EnumPropertyItem { i32 272, ptr @.str.229, i32 0, ptr @.str.230, ptr @.str.1 }, %struct.EnumPropertyItem { i32 273, ptr @.str.231, i32 0, ptr @.str.232, ptr @.str.1 }, %struct.EnumPropertyItem { i32 274, ptr @.str.233, i32 0, ptr @.str.234, ptr @.str.1 }, %struct.EnumPropertyItem { i32 275, ptr @.str.235, i32 0, ptr @.str.236, ptr @.str.1 }, %struct.EnumPropertyItem { i32 276, ptr @.str.237, i32 0, ptr @.str.238, ptr @.str.1 }, %struct.EnumPropertyItem { i32 277, ptr @.str.239, i32 0, ptr @.str.240, ptr @.str.1 }, %struct.EnumPropertyItem { i32 278, ptr @.str.241, i32 0, ptr @.str.242, ptr @.str.1 }, %struct.EnumPropertyItem { i32 279, ptr @.str.243, i32 0, ptr @.str.244, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 400, ptr @.str.245, i32 0, ptr @.str.246, ptr @.str.1 }, %struct.EnumPropertyItem { i32 401, ptr @.str.247, i32 0, ptr @.str.248, ptr @.str.1 }, %struct.EnumPropertyItem { i32 402, ptr @.str.249, i32 0, ptr @.str.250, ptr @.str.1 }, %struct.EnumPropertyItem { i32 403, ptr @.str.251, i32 0, ptr @.str.252, ptr @.str.1 }, %struct.EnumPropertyItem { i32 404, ptr @.str.253, i32 0, ptr @.str.254, ptr @.str.1 }, %struct.EnumPropertyItem { i32 405, ptr @.str.255, i32 0, ptr @.str.256, ptr @.str.1 }, %struct.EnumPropertyItem { i32 406, ptr @.str.257, i32 0, ptr @.str.258, ptr @.str.1 }, %struct.EnumPropertyItem { i32 407, ptr @.str.259, i32 0, ptr @.str.260, ptr @.str.1 }, %struct.EnumPropertyItem { i32 408, ptr @.str.261, i32 0, ptr @.str.262, ptr @.str.1 }, %struct.EnumPropertyItem { i32 409, ptr @.str.263, i32 0, ptr @.str.264, ptr @.str.1 }, %struct.EnumPropertyItem { i32 410, ptr @.str.265, i32 0, ptr @.str.266, ptr @.str.1 }, %struct.EnumPropertyItem { i32 411, ptr @.str.267, i32 0, ptr @.str.268, ptr @.str.1 }, %struct.EnumPropertyItem { i32 412, ptr @.str.269, i32 0, ptr @.str.270, ptr @.str.1 }, %struct.EnumPropertyItem { i32 413, ptr @.str.271, i32 0, ptr @.str.272, ptr @.str.1 }, %struct.EnumPropertyItem { i32 414, ptr @.str.273, i32 0, ptr @.str.274, ptr @.str.1 }, %struct.EnumPropertyItem { i32 415, ptr @.str.275, i32 0, ptr @.str.276, ptr @.str.1 }, %struct.EnumPropertyItem { i32 416, ptr @.str.277, i32 0, ptr @.str.278, ptr @.str.1 }, %struct.EnumPropertyItem { i32 417, ptr @.str.279, i32 0, ptr @.str.280, ptr @.str.1 }, %struct.EnumPropertyItem { i32 418, ptr @.str.281, i32 0, ptr @.str.282, ptr @.str.1 }, %struct.EnumPropertyItem { i32 419, ptr @.str.283, i32 0, ptr @.str.284, ptr @.str.1 }, %struct.EnumPropertyItem { i32 420, ptr @.str.285, i32 0, ptr @.str.286, ptr @.str.1 }, %struct.EnumPropertyItem { i32 421, ptr @.str.287, i32 0, ptr @.str.288, ptr @.str.1 }, %struct.EnumPropertyItem { i32 422, ptr @.str.289, i32 0, ptr @.str.290, ptr null }, %struct.EnumPropertyItem { i32 423, ptr @.str.291, i32 0, ptr @.str.292, ptr null }, %struct.EnumPropertyItem { i32 424, ptr @.str.293, i32 0, ptr @.str.294, ptr null }, %struct.EnumPropertyItem { i32 425, ptr @.str.295, i32 0, ptr @.str.296, ptr null }, %struct.EnumPropertyItem { i32 426, ptr @.str.297, i32 0, ptr @.str.298, ptr @.str.1 }, %struct.EnumPropertyItem { i32 427, ptr @.str.299, i32 0, ptr @.str.300, ptr @.str.1 }, %struct.EnumPropertyItem { i32 428, ptr @.str.301, i32 0, ptr @.str.302, ptr @.str.1 }, %struct.EnumPropertyItem { i32 429, ptr @.str.303, i32 0, ptr @.str.304, ptr @.str.1 }, %struct.EnumPropertyItem { i32 430, ptr @.str.305, i32 0, ptr @.str.306, ptr @.str.1 }, %struct.EnumPropertyItem { i32 431, ptr @.str.307, i32 0, ptr @.str.308, ptr @.str.1 }, %struct.EnumPropertyItem { i32 432, ptr @.str.309, i32 0, ptr @.str.310, ptr @.str.1 }, %struct.EnumPropertyItem { i32 433, ptr @.str.311, i32 0, ptr @.str.312, ptr @.str.1 }, %struct.EnumPropertyItem { i32 434, ptr @.str.313, i32 0, ptr @.str.314, ptr @.str.1 }, %struct.EnumPropertyItem { i32 435, ptr @.str.315, i32 0, ptr @.str.316, ptr @.str.1 }, %struct.EnumPropertyItem { i32 436, ptr @.str.317, i32 0, ptr @.str.318, ptr @.str.1 }, %struct.EnumPropertyItem { i32 437, ptr @.str.319, i32 0, ptr @.str.320, ptr @.str.1 }, %struct.EnumPropertyItem { i32 438, ptr @.str.321, i32 0, ptr @.str.322, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_KeyMapItems_new_item = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_KeyMapItems_new_head, i32 -1, ptr @.str.675, i32 8388616, ptr @.str.676, ptr @.str.687, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_KeyMapItem }, align 8
@.str.684 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.685 = private unnamed_addr constant [8 x i8] c"At Head\00", align 1
@.str.686 = private unnamed_addr constant [112 x i8] c"Force item to be added at start (not end) of key map so that it doesn't get blocked by an existing key map item\00", align 1
@.str.687 = private unnamed_addr constant [19 x i8] c"Added key map item\00", align 1
@rna_KeyMapItems_new_modal_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_KeyMapItems_remove_func, ptr @rna_KeyMapItems_new_func, ptr null, %struct.ListBase { ptr @rna_KeyMapItems_new_modal_propvalue, ptr @rna_KeyMapItems_new_modal_item } }, ptr @.str.690, i32 16, ptr @.str.690, ptr @KeyMapItems_new_modal_call, ptr @rna_KeyMapItems_new_modal_item }, align 8
@rna_KeyMapItems_new_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_KeyMapItems_new_modal_func, ptr null, ptr null, %struct.ListBase { ptr @rna_KeyMapItems_new_idname, ptr @rna_KeyMapItems_new_item } }, ptr @.str.626, i32 16, ptr @.str.626, ptr @KeyMapItems_new_call, ptr @rna_KeyMapItems_new_item }, align 8
@rna_KeyMapItems_new_modal_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItems_new_modal_value, ptr @rna_KeyMapItems_new_modal_propvalue, i32 -1, ptr @.str.433, i32 7, ptr @.str.434, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_KeyMapItems_new_modal_type_items, i32 195, i32 0 }, align 8
@.str.688 = private unnamed_addr constant [10 x i8] c"propvalue\00", align 1
@.str.689 = private unnamed_addr constant [15 x i8] c"Property Value\00", align 1
@rna_KeyMapItems_new_modal_propvalue = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItems_new_modal_type, ptr null, i32 -1, ptr @.str.688, i32 262149, ptr @.str.689, ptr @.str.1, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.1 }, align 8
@rna_KeyMapItems_new_modal_value = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItems_new_modal_any, ptr @rna_KeyMapItems_new_modal_type, i32 -1, ptr @.str.484, i32 7, ptr @.str.485, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_KeyMapItems_new_modal_value_items, i32 14, i32 0 }, align 8
@rna_KeyMapItems_new_modal_type_items = internal global [196 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.2, i32 0, ptr @.str.3, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.4, i32 0, ptr @.str.5, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.1 }, %struct.EnumPropertyItem { i32 7, ptr @.str.8, i32 0, ptr @.str.9, ptr @.str.1 }, %struct.EnumPropertyItem { i32 8, ptr @.str.10, i32 0, ptr @.str.11, ptr @.str.1 }, %struct.EnumPropertyItem { i32 18, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.1 }, %struct.EnumPropertyItem { i32 19, ptr @.str.14, i32 0, ptr @.str.15, ptr @.str.1 }, %struct.EnumPropertyItem { i32 5, ptr @.str.16, i32 0, ptr @.str.17, ptr @.str.1 }, %struct.EnumPropertyItem { i32 6, ptr @.str.18, i32 0, ptr @.str.19, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 4, ptr @.str.20, i32 0, ptr @.str.21, ptr @.str.1 }, %struct.EnumPropertyItem { i32 17, ptr @.str.22, i32 0, ptr @.str.23, ptr @.str.1 }, %struct.EnumPropertyItem { i32 14, ptr @.str.24, i32 0, ptr @.str.25, ptr @.str.1 }, %struct.EnumPropertyItem { i32 15, ptr @.str.26, i32 0, ptr @.str.27, ptr @.str.1 }, %struct.EnumPropertyItem { i32 16, ptr @.str.28, i32 0, ptr @.str.29, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 10, ptr @.str.30, i32 0, ptr @.str.31, ptr @.str.1 }, %struct.EnumPropertyItem { i32 11, ptr @.str.32, i32 0, ptr @.str.33, ptr @.str.1 }, %struct.EnumPropertyItem { i32 12, ptr @.str.34, i32 0, ptr @.str.35, ptr @.str.1 }, %struct.EnumPropertyItem { i32 13, ptr @.str.36, i32 0, ptr @.str.37, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 20483, ptr @.str.38, i32 0, ptr @.str.39, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20484, ptr @.str.40, i32 0, ptr @.str.41, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20485, ptr @.str.42, i32 0, ptr @.str.43, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20486, ptr @.str.44, i32 0, ptr @.str.45, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20487, ptr @.str.46, i32 0, ptr @.str.47, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 97, ptr @.str.48, i32 0, ptr @.str.48, ptr @.str.1 }, %struct.EnumPropertyItem { i32 98, ptr @.str.49, i32 0, ptr @.str.49, ptr @.str.1 }, %struct.EnumPropertyItem { i32 99, ptr @.str.50, i32 0, ptr @.str.50, ptr @.str.1 }, %struct.EnumPropertyItem { i32 100, ptr @.str.51, i32 0, ptr @.str.51, ptr @.str.1 }, %struct.EnumPropertyItem { i32 101, ptr @.str.52, i32 0, ptr @.str.52, ptr @.str.1 }, %struct.EnumPropertyItem { i32 102, ptr @.str.53, i32 0, ptr @.str.53, ptr @.str.1 }, %struct.EnumPropertyItem { i32 103, ptr @.str.54, i32 0, ptr @.str.54, ptr @.str.1 }, %struct.EnumPropertyItem { i32 104, ptr @.str.55, i32 0, ptr @.str.55, ptr @.str.1 }, %struct.EnumPropertyItem { i32 105, ptr @.str.56, i32 0, ptr @.str.56, ptr @.str.1 }, %struct.EnumPropertyItem { i32 106, ptr @.str.57, i32 0, ptr @.str.57, ptr @.str.1 }, %struct.EnumPropertyItem { i32 107, ptr @.str.58, i32 0, ptr @.str.58, ptr @.str.1 }, %struct.EnumPropertyItem { i32 108, ptr @.str.59, i32 0, ptr @.str.59, ptr @.str.1 }, %struct.EnumPropertyItem { i32 109, ptr @.str.60, i32 0, ptr @.str.60, ptr @.str.1 }, %struct.EnumPropertyItem { i32 110, ptr @.str.61, i32 0, ptr @.str.61, ptr @.str.1 }, %struct.EnumPropertyItem { i32 111, ptr @.str.62, i32 0, ptr @.str.62, ptr @.str.1 }, %struct.EnumPropertyItem { i32 112, ptr @.str.63, i32 0, ptr @.str.63, ptr @.str.1 }, %struct.EnumPropertyItem { i32 113, ptr @.str.64, i32 0, ptr @.str.64, ptr @.str.1 }, %struct.EnumPropertyItem { i32 114, ptr @.str.65, i32 0, ptr @.str.65, ptr @.str.1 }, %struct.EnumPropertyItem { i32 115, ptr @.str.66, i32 0, ptr @.str.66, ptr @.str.1 }, %struct.EnumPropertyItem { i32 116, ptr @.str.67, i32 0, ptr @.str.67, ptr @.str.1 }, %struct.EnumPropertyItem { i32 117, ptr @.str.68, i32 0, ptr @.str.68, ptr @.str.1 }, %struct.EnumPropertyItem { i32 118, ptr @.str.69, i32 0, ptr @.str.69, ptr @.str.1 }, %struct.EnumPropertyItem { i32 119, ptr @.str.70, i32 0, ptr @.str.70, ptr @.str.1 }, %struct.EnumPropertyItem { i32 120, ptr @.str.71, i32 0, ptr @.str.71, ptr @.str.1 }, %struct.EnumPropertyItem { i32 121, ptr @.str.72, i32 0, ptr @.str.72, ptr @.str.1 }, %struct.EnumPropertyItem { i32 122, ptr @.str.73, i32 0, ptr @.str.73, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 48, ptr @.str.74, i32 0, ptr @.str.75, ptr @.str.1 }, %struct.EnumPropertyItem { i32 49, ptr @.str.76, i32 0, ptr @.str.77, ptr @.str.1 }, %struct.EnumPropertyItem { i32 50, ptr @.str.78, i32 0, ptr @.str.79, ptr @.str.1 }, %struct.EnumPropertyItem { i32 51, ptr @.str.80, i32 0, ptr @.str.81, ptr @.str.1 }, %struct.EnumPropertyItem { i32 52, ptr @.str.82, i32 0, ptr @.str.83, ptr @.str.1 }, %struct.EnumPropertyItem { i32 53, ptr @.str.84, i32 0, ptr @.str.85, ptr @.str.1 }, %struct.EnumPropertyItem { i32 54, ptr @.str.86, i32 0, ptr @.str.87, ptr @.str.1 }, %struct.EnumPropertyItem { i32 55, ptr @.str.88, i32 0, ptr @.str.89, ptr @.str.1 }, %struct.EnumPropertyItem { i32 56, ptr @.str.90, i32 0, ptr @.str.91, ptr @.str.1 }, %struct.EnumPropertyItem { i32 57, ptr @.str.92, i32 0, ptr @.str.93, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 212, ptr @.str.94, i32 0, ptr @.str.95, ptr @.str.1 }, %struct.EnumPropertyItem { i32 213, ptr @.str.96, i32 0, ptr @.str.97, ptr @.str.1 }, %struct.EnumPropertyItem { i32 217, ptr @.str.98, i32 0, ptr @.str.99, ptr @.str.1 }, %struct.EnumPropertyItem { i32 214, ptr @.str.100, i32 0, ptr @.str.101, ptr @.str.1 }, %struct.EnumPropertyItem { i32 215, ptr @.str.102, i32 0, ptr @.str.103, ptr @.str.1 }, %struct.EnumPropertyItem { i32 216, ptr @.str.104, i32 0, ptr @.str.105, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 172, ptr @.str.106, i32 0, ptr @.str.107, ptr @.str.1 }, %struct.EnumPropertyItem { i32 173, ptr @.str.108, i32 0, ptr @.str.109, ptr @.str.1 }, %struct.EnumPropertyItem { i32 218, ptr @.str.110, i32 0, ptr @.str.111, ptr @.str.1 }, %struct.EnumPropertyItem { i32 219, ptr @.str.112, i32 0, ptr @.str.113, ptr @.str.1 }, %struct.EnumPropertyItem { i32 220, ptr @.str.114, i32 0, ptr @.str.115, ptr @.str.1 }, %struct.EnumPropertyItem { i32 221, ptr @.str.116, i32 0, ptr @.str.117, ptr @.str.1 }, %struct.EnumPropertyItem { i32 222, ptr @.str.118, i32 0, ptr @.str.119, ptr @.str.1 }, %struct.EnumPropertyItem { i32 223, ptr @.str.120, i32 0, ptr @.str.121, ptr @.str.1 }, %struct.EnumPropertyItem { i32 224, ptr @.str.122, i32 0, ptr @.str.123, ptr @.str.1 }, %struct.EnumPropertyItem { i32 225, ptr @.str.124, i32 0, ptr @.str.125, ptr @.str.1 }, %struct.EnumPropertyItem { i32 226, ptr @.str.126, i32 0, ptr @.str.127, ptr @.str.1 }, %struct.EnumPropertyItem { i32 227, ptr @.str.128, i32 0, ptr @.str.129, ptr @.str.1 }, %struct.EnumPropertyItem { i32 228, ptr @.str.130, i32 0, ptr @.str.131, ptr @.str.1 }, %struct.EnumPropertyItem { i32 229, ptr @.str.132, i32 0, ptr @.str.133, ptr @.str.1 }, %struct.EnumPropertyItem { i32 230, ptr @.str.134, i32 0, ptr @.str.135, ptr @.str.1 }, %struct.EnumPropertyItem { i32 232, ptr @.str.136, i32 0, ptr @.str.137, ptr @.str.1 }, %struct.EnumPropertyItem { i32 233, ptr @.str.138, i32 0, ptr @.str.139, ptr @.str.1 }, %struct.EnumPropertyItem { i32 234, ptr @.str.140, i32 0, ptr @.str.141, ptr @.str.1 }, %struct.EnumPropertyItem { i32 235, ptr @.str.142, i32 0, ptr @.str.143, ptr @.str.1 }, %struct.EnumPropertyItem { i32 236, ptr @.str.144, i32 0, ptr @.str.145, ptr @.str.1 }, %struct.EnumPropertyItem { i32 137, ptr @.str.146, i32 0, ptr @.str.147, ptr @.str.1 }, %struct.EnumPropertyItem { i32 138, ptr @.str.148, i32 0, ptr @.str.149, ptr @.str.1 }, %struct.EnumPropertyItem { i32 139, ptr @.str.150, i32 0, ptr @.str.151, ptr @.str.1 }, %struct.EnumPropertyItem { i32 140, ptr @.str.152, i32 0, ptr @.str.153, ptr @.str.1 }, %struct.EnumPropertyItem { i32 152, ptr @.str.154, i32 0, ptr @.str.155, ptr @.str.1 }, %struct.EnumPropertyItem { i32 154, ptr @.str.156, i32 0, ptr @.str.157, ptr @.str.1 }, %struct.EnumPropertyItem { i32 156, ptr @.str.158, i32 0, ptr @.str.159, ptr @.str.1 }, %struct.EnumPropertyItem { i32 158, ptr @.str.160, i32 0, ptr @.str.161, ptr @.str.1 }, %struct.EnumPropertyItem { i32 151, ptr @.str.162, i32 0, ptr @.str.163, ptr @.str.1 }, %struct.EnumPropertyItem { i32 153, ptr @.str.164, i32 0, ptr @.str.165, ptr @.str.1 }, %struct.EnumPropertyItem { i32 155, ptr @.str.166, i32 0, ptr @.str.167, ptr @.str.1 }, %struct.EnumPropertyItem { i32 157, ptr @.str.168, i32 0, ptr @.str.169, ptr @.str.1 }, %struct.EnumPropertyItem { i32 159, ptr @.str.170, i32 0, ptr @.str.171, ptr @.str.1 }, %struct.EnumPropertyItem { i32 199, ptr @.str.172, i32 0, ptr @.str.173, ptr @.str.1 }, %struct.EnumPropertyItem { i32 161, ptr @.str.174, i32 0, ptr @.str.175, ptr @.str.1 }, %struct.EnumPropertyItem { i32 160, ptr @.str.176, i32 0, ptr @.str.177, ptr @.str.1 }, %struct.EnumPropertyItem { i32 150, ptr @.str.178, i32 0, ptr @.str.179, ptr @.str.1 }, %struct.EnumPropertyItem { i32 162, ptr @.str.180, i32 0, ptr @.str.181, ptr @.str.1 }, %struct.EnumPropertyItem { i32 163, ptr @.str.182, i32 0, ptr @.str.183, ptr @.str.1 }, %struct.EnumPropertyItem { i32 164, ptr @.str.184, i32 0, ptr @.str.185, ptr @.str.1 }, %struct.EnumPropertyItem { i32 300, ptr @.str.186, i32 0, ptr @.str.186, ptr @.str.1 }, %struct.EnumPropertyItem { i32 301, ptr @.str.187, i32 0, ptr @.str.187, ptr @.str.1 }, %struct.EnumPropertyItem { i32 302, ptr @.str.188, i32 0, ptr @.str.188, ptr @.str.1 }, %struct.EnumPropertyItem { i32 303, ptr @.str.189, i32 0, ptr @.str.189, ptr @.str.1 }, %struct.EnumPropertyItem { i32 304, ptr @.str.190, i32 0, ptr @.str.190, ptr @.str.1 }, %struct.EnumPropertyItem { i32 305, ptr @.str.191, i32 0, ptr @.str.191, ptr @.str.1 }, %struct.EnumPropertyItem { i32 306, ptr @.str.192, i32 0, ptr @.str.192, ptr @.str.1 }, %struct.EnumPropertyItem { i32 307, ptr @.str.193, i32 0, ptr @.str.193, ptr @.str.1 }, %struct.EnumPropertyItem { i32 308, ptr @.str.194, i32 0, ptr @.str.194, ptr @.str.1 }, %struct.EnumPropertyItem { i32 309, ptr @.str.195, i32 0, ptr @.str.195, ptr @.str.1 }, %struct.EnumPropertyItem { i32 310, ptr @.str.196, i32 0, ptr @.str.196, ptr @.str.1 }, %struct.EnumPropertyItem { i32 311, ptr @.str.197, i32 0, ptr @.str.197, ptr @.str.1 }, %struct.EnumPropertyItem { i32 312, ptr @.str.198, i32 0, ptr @.str.198, ptr @.str.1 }, %struct.EnumPropertyItem { i32 313, ptr @.str.199, i32 0, ptr @.str.199, ptr @.str.1 }, %struct.EnumPropertyItem { i32 314, ptr @.str.200, i32 0, ptr @.str.200, ptr @.str.1 }, %struct.EnumPropertyItem { i32 315, ptr @.str.201, i32 0, ptr @.str.201, ptr @.str.1 }, %struct.EnumPropertyItem { i32 316, ptr @.str.202, i32 0, ptr @.str.202, ptr @.str.1 }, %struct.EnumPropertyItem { i32 317, ptr @.str.203, i32 0, ptr @.str.203, ptr @.str.1 }, %struct.EnumPropertyItem { i32 318, ptr @.str.204, i32 0, ptr @.str.204, ptr @.str.1 }, %struct.EnumPropertyItem { i32 165, ptr @.str.205, i32 0, ptr @.str.206, ptr @.str.1 }, %struct.EnumPropertyItem { i32 166, ptr @.str.207, i32 0, ptr @.str.208, ptr @.str.1 }, %struct.EnumPropertyItem { i32 167, ptr @.str.209, i32 0, ptr @.str.210, ptr @.str.1 }, %struct.EnumPropertyItem { i32 168, ptr @.str.211, i32 0, ptr @.str.212, ptr @.str.1 }, %struct.EnumPropertyItem { i32 169, ptr @.str.213, i32 0, ptr @.str.214, ptr @.str.1 }, %struct.EnumPropertyItem { i32 170, ptr @.str.215, i32 0, ptr @.str.216, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 174, ptr @.str.217, i32 0, ptr @.str.218, ptr @.str.1 }, %struct.EnumPropertyItem { i32 175, ptr @.str.219, i32 0, ptr @.str.220, ptr @.str.1 }, %struct.EnumPropertyItem { i32 176, ptr @.str.221, i32 0, ptr @.str.222, ptr @.str.1 }, %struct.EnumPropertyItem { i32 177, ptr @.str.223, i32 0, ptr @.str.224, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 -2, ptr @.str.225, i32 0, ptr @.str.226, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 260, ptr @.str.227, i32 0, ptr @.str.228, ptr @.str.1 }, %struct.EnumPropertyItem { i32 272, ptr @.str.229, i32 0, ptr @.str.230, ptr @.str.1 }, %struct.EnumPropertyItem { i32 273, ptr @.str.231, i32 0, ptr @.str.232, ptr @.str.1 }, %struct.EnumPropertyItem { i32 274, ptr @.str.233, i32 0, ptr @.str.234, ptr @.str.1 }, %struct.EnumPropertyItem { i32 275, ptr @.str.235, i32 0, ptr @.str.236, ptr @.str.1 }, %struct.EnumPropertyItem { i32 276, ptr @.str.237, i32 0, ptr @.str.238, ptr @.str.1 }, %struct.EnumPropertyItem { i32 277, ptr @.str.239, i32 0, ptr @.str.240, ptr @.str.1 }, %struct.EnumPropertyItem { i32 278, ptr @.str.241, i32 0, ptr @.str.242, ptr @.str.1 }, %struct.EnumPropertyItem { i32 279, ptr @.str.243, i32 0, ptr @.str.244, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 400, ptr @.str.245, i32 0, ptr @.str.246, ptr @.str.1 }, %struct.EnumPropertyItem { i32 401, ptr @.str.247, i32 0, ptr @.str.248, ptr @.str.1 }, %struct.EnumPropertyItem { i32 402, ptr @.str.249, i32 0, ptr @.str.250, ptr @.str.1 }, %struct.EnumPropertyItem { i32 403, ptr @.str.251, i32 0, ptr @.str.252, ptr @.str.1 }, %struct.EnumPropertyItem { i32 404, ptr @.str.253, i32 0, ptr @.str.254, ptr @.str.1 }, %struct.EnumPropertyItem { i32 405, ptr @.str.255, i32 0, ptr @.str.256, ptr @.str.1 }, %struct.EnumPropertyItem { i32 406, ptr @.str.257, i32 0, ptr @.str.258, ptr @.str.1 }, %struct.EnumPropertyItem { i32 407, ptr @.str.259, i32 0, ptr @.str.260, ptr @.str.1 }, %struct.EnumPropertyItem { i32 408, ptr @.str.261, i32 0, ptr @.str.262, ptr @.str.1 }, %struct.EnumPropertyItem { i32 409, ptr @.str.263, i32 0, ptr @.str.264, ptr @.str.1 }, %struct.EnumPropertyItem { i32 410, ptr @.str.265, i32 0, ptr @.str.266, ptr @.str.1 }, %struct.EnumPropertyItem { i32 411, ptr @.str.267, i32 0, ptr @.str.268, ptr @.str.1 }, %struct.EnumPropertyItem { i32 412, ptr @.str.269, i32 0, ptr @.str.270, ptr @.str.1 }, %struct.EnumPropertyItem { i32 413, ptr @.str.271, i32 0, ptr @.str.272, ptr @.str.1 }, %struct.EnumPropertyItem { i32 414, ptr @.str.273, i32 0, ptr @.str.274, ptr @.str.1 }, %struct.EnumPropertyItem { i32 415, ptr @.str.275, i32 0, ptr @.str.276, ptr @.str.1 }, %struct.EnumPropertyItem { i32 416, ptr @.str.277, i32 0, ptr @.str.278, ptr @.str.1 }, %struct.EnumPropertyItem { i32 417, ptr @.str.279, i32 0, ptr @.str.280, ptr @.str.1 }, %struct.EnumPropertyItem { i32 418, ptr @.str.281, i32 0, ptr @.str.282, ptr @.str.1 }, %struct.EnumPropertyItem { i32 419, ptr @.str.283, i32 0, ptr @.str.284, ptr @.str.1 }, %struct.EnumPropertyItem { i32 420, ptr @.str.285, i32 0, ptr @.str.286, ptr @.str.1 }, %struct.EnumPropertyItem { i32 421, ptr @.str.287, i32 0, ptr @.str.288, ptr @.str.1 }, %struct.EnumPropertyItem { i32 422, ptr @.str.289, i32 0, ptr @.str.290, ptr null }, %struct.EnumPropertyItem { i32 423, ptr @.str.291, i32 0, ptr @.str.292, ptr null }, %struct.EnumPropertyItem { i32 424, ptr @.str.293, i32 0, ptr @.str.294, ptr null }, %struct.EnumPropertyItem { i32 425, ptr @.str.295, i32 0, ptr @.str.296, ptr null }, %struct.EnumPropertyItem { i32 426, ptr @.str.297, i32 0, ptr @.str.298, ptr @.str.1 }, %struct.EnumPropertyItem { i32 427, ptr @.str.299, i32 0, ptr @.str.300, ptr @.str.1 }, %struct.EnumPropertyItem { i32 428, ptr @.str.301, i32 0, ptr @.str.302, ptr @.str.1 }, %struct.EnumPropertyItem { i32 429, ptr @.str.303, i32 0, ptr @.str.304, ptr @.str.1 }, %struct.EnumPropertyItem { i32 430, ptr @.str.305, i32 0, ptr @.str.306, ptr @.str.1 }, %struct.EnumPropertyItem { i32 431, ptr @.str.307, i32 0, ptr @.str.308, ptr @.str.1 }, %struct.EnumPropertyItem { i32 432, ptr @.str.309, i32 0, ptr @.str.310, ptr @.str.1 }, %struct.EnumPropertyItem { i32 433, ptr @.str.311, i32 0, ptr @.str.312, ptr @.str.1 }, %struct.EnumPropertyItem { i32 434, ptr @.str.313, i32 0, ptr @.str.314, ptr @.str.1 }, %struct.EnumPropertyItem { i32 435, ptr @.str.315, i32 0, ptr @.str.316, ptr @.str.1 }, %struct.EnumPropertyItem { i32 436, ptr @.str.317, i32 0, ptr @.str.318, ptr @.str.1 }, %struct.EnumPropertyItem { i32 437, ptr @.str.319, i32 0, ptr @.str.320, ptr @.str.1 }, %struct.EnumPropertyItem { i32 438, ptr @.str.321, i32 0, ptr @.str.322, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_KeyMapItems_new_modal_any = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItems_new_modal_shift, ptr @rna_KeyMapItems_new_modal_value, i32 -1, ptr @.str.681, i32 3, ptr @.str.324, ptr @.str.1, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_KeyMapItems_new_modal_value_items = internal global [15 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 -1, ptr @.str.323, i32 0, ptr @.str.324, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.325, i32 0, ptr @.str.326, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.327, i32 0, ptr @.str.328, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.329, i32 0, ptr @.str.330, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.331, i32 0, ptr @.str.332, ptr @.str.1 }, %struct.EnumPropertyItem { i32 4, ptr @.str.333, i32 0, ptr @.str.334, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.335, i32 0, ptr @.str.336, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.337, i32 0, ptr @.str.338, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.339, i32 0, ptr @.str.340, ptr @.str.1 }, %struct.EnumPropertyItem { i32 4, ptr @.str.341, i32 0, ptr @.str.342, ptr @.str.1 }, %struct.EnumPropertyItem { i32 5, ptr @.str.343, i32 0, ptr @.str.344, ptr @.str.1 }, %struct.EnumPropertyItem { i32 6, ptr @.str.345, i32 0, ptr @.str.346, ptr @.str.1 }, %struct.EnumPropertyItem { i32 7, ptr @.str.347, i32 0, ptr @.str.348, ptr @.str.1 }, %struct.EnumPropertyItem { i32 8, ptr @.str.349, i32 0, ptr @.str.350, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_KeyMapItems_new_modal_shift = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItems_new_modal_ctrl, ptr @rna_KeyMapItems_new_modal_any, i32 -1, ptr @.str.508, i32 3, ptr @.str.509, ptr @.str.1, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_KeyMapItems_new_modal_ctrl = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItems_new_modal_alt, ptr @rna_KeyMapItems_new_modal_shift, i32 -1, ptr @.str.511, i32 3, ptr @.str.512, ptr @.str.1, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_KeyMapItems_new_modal_alt = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItems_new_modal_oskey, ptr @rna_KeyMapItems_new_modal_ctrl, i32 -1, ptr @.str.514, i32 3, ptr @.str.515, ptr @.str.1, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_KeyMapItems_new_modal_oskey = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItems_new_modal_key_modifier, ptr @rna_KeyMapItems_new_modal_alt, i32 -1, ptr @.str.517, i32 3, ptr @.str.107, ptr @.str.1, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_KeyMapItems_new_modal_key_modifier = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItems_new_modal_item, ptr @rna_KeyMapItems_new_modal_oskey, i32 -1, ptr @.str.682, i32 3, ptr @.str.683, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rna_KeyMapItems_new_modal_key_modifier_items, i32 195, i32 0 }, align 8
@rna_KeyMapItems_new_modal_item = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_KeyMapItems_new_modal_key_modifier, i32 -1, ptr @.str.675, i32 8388616, ptr @.str.676, ptr @.str.687, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_KeyMapItem }, align 8
@rna_KeyMapItems_new_modal_key_modifier_items = internal global [196 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.2, i32 0, ptr @.str.3, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.4, i32 0, ptr @.str.5, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.1 }, %struct.EnumPropertyItem { i32 7, ptr @.str.8, i32 0, ptr @.str.9, ptr @.str.1 }, %struct.EnumPropertyItem { i32 8, ptr @.str.10, i32 0, ptr @.str.11, ptr @.str.1 }, %struct.EnumPropertyItem { i32 18, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.1 }, %struct.EnumPropertyItem { i32 19, ptr @.str.14, i32 0, ptr @.str.15, ptr @.str.1 }, %struct.EnumPropertyItem { i32 5, ptr @.str.16, i32 0, ptr @.str.17, ptr @.str.1 }, %struct.EnumPropertyItem { i32 6, ptr @.str.18, i32 0, ptr @.str.19, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 4, ptr @.str.20, i32 0, ptr @.str.21, ptr @.str.1 }, %struct.EnumPropertyItem { i32 17, ptr @.str.22, i32 0, ptr @.str.23, ptr @.str.1 }, %struct.EnumPropertyItem { i32 14, ptr @.str.24, i32 0, ptr @.str.25, ptr @.str.1 }, %struct.EnumPropertyItem { i32 15, ptr @.str.26, i32 0, ptr @.str.27, ptr @.str.1 }, %struct.EnumPropertyItem { i32 16, ptr @.str.28, i32 0, ptr @.str.29, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 10, ptr @.str.30, i32 0, ptr @.str.31, ptr @.str.1 }, %struct.EnumPropertyItem { i32 11, ptr @.str.32, i32 0, ptr @.str.33, ptr @.str.1 }, %struct.EnumPropertyItem { i32 12, ptr @.str.34, i32 0, ptr @.str.35, ptr @.str.1 }, %struct.EnumPropertyItem { i32 13, ptr @.str.36, i32 0, ptr @.str.37, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 20483, ptr @.str.38, i32 0, ptr @.str.39, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20484, ptr @.str.40, i32 0, ptr @.str.41, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20485, ptr @.str.42, i32 0, ptr @.str.43, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20486, ptr @.str.44, i32 0, ptr @.str.45, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20487, ptr @.str.46, i32 0, ptr @.str.47, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 97, ptr @.str.48, i32 0, ptr @.str.48, ptr @.str.1 }, %struct.EnumPropertyItem { i32 98, ptr @.str.49, i32 0, ptr @.str.49, ptr @.str.1 }, %struct.EnumPropertyItem { i32 99, ptr @.str.50, i32 0, ptr @.str.50, ptr @.str.1 }, %struct.EnumPropertyItem { i32 100, ptr @.str.51, i32 0, ptr @.str.51, ptr @.str.1 }, %struct.EnumPropertyItem { i32 101, ptr @.str.52, i32 0, ptr @.str.52, ptr @.str.1 }, %struct.EnumPropertyItem { i32 102, ptr @.str.53, i32 0, ptr @.str.53, ptr @.str.1 }, %struct.EnumPropertyItem { i32 103, ptr @.str.54, i32 0, ptr @.str.54, ptr @.str.1 }, %struct.EnumPropertyItem { i32 104, ptr @.str.55, i32 0, ptr @.str.55, ptr @.str.1 }, %struct.EnumPropertyItem { i32 105, ptr @.str.56, i32 0, ptr @.str.56, ptr @.str.1 }, %struct.EnumPropertyItem { i32 106, ptr @.str.57, i32 0, ptr @.str.57, ptr @.str.1 }, %struct.EnumPropertyItem { i32 107, ptr @.str.58, i32 0, ptr @.str.58, ptr @.str.1 }, %struct.EnumPropertyItem { i32 108, ptr @.str.59, i32 0, ptr @.str.59, ptr @.str.1 }, %struct.EnumPropertyItem { i32 109, ptr @.str.60, i32 0, ptr @.str.60, ptr @.str.1 }, %struct.EnumPropertyItem { i32 110, ptr @.str.61, i32 0, ptr @.str.61, ptr @.str.1 }, %struct.EnumPropertyItem { i32 111, ptr @.str.62, i32 0, ptr @.str.62, ptr @.str.1 }, %struct.EnumPropertyItem { i32 112, ptr @.str.63, i32 0, ptr @.str.63, ptr @.str.1 }, %struct.EnumPropertyItem { i32 113, ptr @.str.64, i32 0, ptr @.str.64, ptr @.str.1 }, %struct.EnumPropertyItem { i32 114, ptr @.str.65, i32 0, ptr @.str.65, ptr @.str.1 }, %struct.EnumPropertyItem { i32 115, ptr @.str.66, i32 0, ptr @.str.66, ptr @.str.1 }, %struct.EnumPropertyItem { i32 116, ptr @.str.67, i32 0, ptr @.str.67, ptr @.str.1 }, %struct.EnumPropertyItem { i32 117, ptr @.str.68, i32 0, ptr @.str.68, ptr @.str.1 }, %struct.EnumPropertyItem { i32 118, ptr @.str.69, i32 0, ptr @.str.69, ptr @.str.1 }, %struct.EnumPropertyItem { i32 119, ptr @.str.70, i32 0, ptr @.str.70, ptr @.str.1 }, %struct.EnumPropertyItem { i32 120, ptr @.str.71, i32 0, ptr @.str.71, ptr @.str.1 }, %struct.EnumPropertyItem { i32 121, ptr @.str.72, i32 0, ptr @.str.72, ptr @.str.1 }, %struct.EnumPropertyItem { i32 122, ptr @.str.73, i32 0, ptr @.str.73, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 48, ptr @.str.74, i32 0, ptr @.str.75, ptr @.str.1 }, %struct.EnumPropertyItem { i32 49, ptr @.str.76, i32 0, ptr @.str.77, ptr @.str.1 }, %struct.EnumPropertyItem { i32 50, ptr @.str.78, i32 0, ptr @.str.79, ptr @.str.1 }, %struct.EnumPropertyItem { i32 51, ptr @.str.80, i32 0, ptr @.str.81, ptr @.str.1 }, %struct.EnumPropertyItem { i32 52, ptr @.str.82, i32 0, ptr @.str.83, ptr @.str.1 }, %struct.EnumPropertyItem { i32 53, ptr @.str.84, i32 0, ptr @.str.85, ptr @.str.1 }, %struct.EnumPropertyItem { i32 54, ptr @.str.86, i32 0, ptr @.str.87, ptr @.str.1 }, %struct.EnumPropertyItem { i32 55, ptr @.str.88, i32 0, ptr @.str.89, ptr @.str.1 }, %struct.EnumPropertyItem { i32 56, ptr @.str.90, i32 0, ptr @.str.91, ptr @.str.1 }, %struct.EnumPropertyItem { i32 57, ptr @.str.92, i32 0, ptr @.str.93, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 212, ptr @.str.94, i32 0, ptr @.str.95, ptr @.str.1 }, %struct.EnumPropertyItem { i32 213, ptr @.str.96, i32 0, ptr @.str.97, ptr @.str.1 }, %struct.EnumPropertyItem { i32 217, ptr @.str.98, i32 0, ptr @.str.99, ptr @.str.1 }, %struct.EnumPropertyItem { i32 214, ptr @.str.100, i32 0, ptr @.str.101, ptr @.str.1 }, %struct.EnumPropertyItem { i32 215, ptr @.str.102, i32 0, ptr @.str.103, ptr @.str.1 }, %struct.EnumPropertyItem { i32 216, ptr @.str.104, i32 0, ptr @.str.105, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 172, ptr @.str.106, i32 0, ptr @.str.107, ptr @.str.1 }, %struct.EnumPropertyItem { i32 173, ptr @.str.108, i32 0, ptr @.str.109, ptr @.str.1 }, %struct.EnumPropertyItem { i32 218, ptr @.str.110, i32 0, ptr @.str.111, ptr @.str.1 }, %struct.EnumPropertyItem { i32 219, ptr @.str.112, i32 0, ptr @.str.113, ptr @.str.1 }, %struct.EnumPropertyItem { i32 220, ptr @.str.114, i32 0, ptr @.str.115, ptr @.str.1 }, %struct.EnumPropertyItem { i32 221, ptr @.str.116, i32 0, ptr @.str.117, ptr @.str.1 }, %struct.EnumPropertyItem { i32 222, ptr @.str.118, i32 0, ptr @.str.119, ptr @.str.1 }, %struct.EnumPropertyItem { i32 223, ptr @.str.120, i32 0, ptr @.str.121, ptr @.str.1 }, %struct.EnumPropertyItem { i32 224, ptr @.str.122, i32 0, ptr @.str.123, ptr @.str.1 }, %struct.EnumPropertyItem { i32 225, ptr @.str.124, i32 0, ptr @.str.125, ptr @.str.1 }, %struct.EnumPropertyItem { i32 226, ptr @.str.126, i32 0, ptr @.str.127, ptr @.str.1 }, %struct.EnumPropertyItem { i32 227, ptr @.str.128, i32 0, ptr @.str.129, ptr @.str.1 }, %struct.EnumPropertyItem { i32 228, ptr @.str.130, i32 0, ptr @.str.131, ptr @.str.1 }, %struct.EnumPropertyItem { i32 229, ptr @.str.132, i32 0, ptr @.str.133, ptr @.str.1 }, %struct.EnumPropertyItem { i32 230, ptr @.str.134, i32 0, ptr @.str.135, ptr @.str.1 }, %struct.EnumPropertyItem { i32 232, ptr @.str.136, i32 0, ptr @.str.137, ptr @.str.1 }, %struct.EnumPropertyItem { i32 233, ptr @.str.138, i32 0, ptr @.str.139, ptr @.str.1 }, %struct.EnumPropertyItem { i32 234, ptr @.str.140, i32 0, ptr @.str.141, ptr @.str.1 }, %struct.EnumPropertyItem { i32 235, ptr @.str.142, i32 0, ptr @.str.143, ptr @.str.1 }, %struct.EnumPropertyItem { i32 236, ptr @.str.144, i32 0, ptr @.str.145, ptr @.str.1 }, %struct.EnumPropertyItem { i32 137, ptr @.str.146, i32 0, ptr @.str.147, ptr @.str.1 }, %struct.EnumPropertyItem { i32 138, ptr @.str.148, i32 0, ptr @.str.149, ptr @.str.1 }, %struct.EnumPropertyItem { i32 139, ptr @.str.150, i32 0, ptr @.str.151, ptr @.str.1 }, %struct.EnumPropertyItem { i32 140, ptr @.str.152, i32 0, ptr @.str.153, ptr @.str.1 }, %struct.EnumPropertyItem { i32 152, ptr @.str.154, i32 0, ptr @.str.155, ptr @.str.1 }, %struct.EnumPropertyItem { i32 154, ptr @.str.156, i32 0, ptr @.str.157, ptr @.str.1 }, %struct.EnumPropertyItem { i32 156, ptr @.str.158, i32 0, ptr @.str.159, ptr @.str.1 }, %struct.EnumPropertyItem { i32 158, ptr @.str.160, i32 0, ptr @.str.161, ptr @.str.1 }, %struct.EnumPropertyItem { i32 151, ptr @.str.162, i32 0, ptr @.str.163, ptr @.str.1 }, %struct.EnumPropertyItem { i32 153, ptr @.str.164, i32 0, ptr @.str.165, ptr @.str.1 }, %struct.EnumPropertyItem { i32 155, ptr @.str.166, i32 0, ptr @.str.167, ptr @.str.1 }, %struct.EnumPropertyItem { i32 157, ptr @.str.168, i32 0, ptr @.str.169, ptr @.str.1 }, %struct.EnumPropertyItem { i32 159, ptr @.str.170, i32 0, ptr @.str.171, ptr @.str.1 }, %struct.EnumPropertyItem { i32 199, ptr @.str.172, i32 0, ptr @.str.173, ptr @.str.1 }, %struct.EnumPropertyItem { i32 161, ptr @.str.174, i32 0, ptr @.str.175, ptr @.str.1 }, %struct.EnumPropertyItem { i32 160, ptr @.str.176, i32 0, ptr @.str.177, ptr @.str.1 }, %struct.EnumPropertyItem { i32 150, ptr @.str.178, i32 0, ptr @.str.179, ptr @.str.1 }, %struct.EnumPropertyItem { i32 162, ptr @.str.180, i32 0, ptr @.str.181, ptr @.str.1 }, %struct.EnumPropertyItem { i32 163, ptr @.str.182, i32 0, ptr @.str.183, ptr @.str.1 }, %struct.EnumPropertyItem { i32 164, ptr @.str.184, i32 0, ptr @.str.185, ptr @.str.1 }, %struct.EnumPropertyItem { i32 300, ptr @.str.186, i32 0, ptr @.str.186, ptr @.str.1 }, %struct.EnumPropertyItem { i32 301, ptr @.str.187, i32 0, ptr @.str.187, ptr @.str.1 }, %struct.EnumPropertyItem { i32 302, ptr @.str.188, i32 0, ptr @.str.188, ptr @.str.1 }, %struct.EnumPropertyItem { i32 303, ptr @.str.189, i32 0, ptr @.str.189, ptr @.str.1 }, %struct.EnumPropertyItem { i32 304, ptr @.str.190, i32 0, ptr @.str.190, ptr @.str.1 }, %struct.EnumPropertyItem { i32 305, ptr @.str.191, i32 0, ptr @.str.191, ptr @.str.1 }, %struct.EnumPropertyItem { i32 306, ptr @.str.192, i32 0, ptr @.str.192, ptr @.str.1 }, %struct.EnumPropertyItem { i32 307, ptr @.str.193, i32 0, ptr @.str.193, ptr @.str.1 }, %struct.EnumPropertyItem { i32 308, ptr @.str.194, i32 0, ptr @.str.194, ptr @.str.1 }, %struct.EnumPropertyItem { i32 309, ptr @.str.195, i32 0, ptr @.str.195, ptr @.str.1 }, %struct.EnumPropertyItem { i32 310, ptr @.str.196, i32 0, ptr @.str.196, ptr @.str.1 }, %struct.EnumPropertyItem { i32 311, ptr @.str.197, i32 0, ptr @.str.197, ptr @.str.1 }, %struct.EnumPropertyItem { i32 312, ptr @.str.198, i32 0, ptr @.str.198, ptr @.str.1 }, %struct.EnumPropertyItem { i32 313, ptr @.str.199, i32 0, ptr @.str.199, ptr @.str.1 }, %struct.EnumPropertyItem { i32 314, ptr @.str.200, i32 0, ptr @.str.200, ptr @.str.1 }, %struct.EnumPropertyItem { i32 315, ptr @.str.201, i32 0, ptr @.str.201, ptr @.str.1 }, %struct.EnumPropertyItem { i32 316, ptr @.str.202, i32 0, ptr @.str.202, ptr @.str.1 }, %struct.EnumPropertyItem { i32 317, ptr @.str.203, i32 0, ptr @.str.203, ptr @.str.1 }, %struct.EnumPropertyItem { i32 318, ptr @.str.204, i32 0, ptr @.str.204, ptr @.str.1 }, %struct.EnumPropertyItem { i32 165, ptr @.str.205, i32 0, ptr @.str.206, ptr @.str.1 }, %struct.EnumPropertyItem { i32 166, ptr @.str.207, i32 0, ptr @.str.208, ptr @.str.1 }, %struct.EnumPropertyItem { i32 167, ptr @.str.209, i32 0, ptr @.str.210, ptr @.str.1 }, %struct.EnumPropertyItem { i32 168, ptr @.str.211, i32 0, ptr @.str.212, ptr @.str.1 }, %struct.EnumPropertyItem { i32 169, ptr @.str.213, i32 0, ptr @.str.214, ptr @.str.1 }, %struct.EnumPropertyItem { i32 170, ptr @.str.215, i32 0, ptr @.str.216, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 174, ptr @.str.217, i32 0, ptr @.str.218, ptr @.str.1 }, %struct.EnumPropertyItem { i32 175, ptr @.str.219, i32 0, ptr @.str.220, ptr @.str.1 }, %struct.EnumPropertyItem { i32 176, ptr @.str.221, i32 0, ptr @.str.222, ptr @.str.1 }, %struct.EnumPropertyItem { i32 177, ptr @.str.223, i32 0, ptr @.str.224, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 -2, ptr @.str.225, i32 0, ptr @.str.226, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 260, ptr @.str.227, i32 0, ptr @.str.228, ptr @.str.1 }, %struct.EnumPropertyItem { i32 272, ptr @.str.229, i32 0, ptr @.str.230, ptr @.str.1 }, %struct.EnumPropertyItem { i32 273, ptr @.str.231, i32 0, ptr @.str.232, ptr @.str.1 }, %struct.EnumPropertyItem { i32 274, ptr @.str.233, i32 0, ptr @.str.234, ptr @.str.1 }, %struct.EnumPropertyItem { i32 275, ptr @.str.235, i32 0, ptr @.str.236, ptr @.str.1 }, %struct.EnumPropertyItem { i32 276, ptr @.str.237, i32 0, ptr @.str.238, ptr @.str.1 }, %struct.EnumPropertyItem { i32 277, ptr @.str.239, i32 0, ptr @.str.240, ptr @.str.1 }, %struct.EnumPropertyItem { i32 278, ptr @.str.241, i32 0, ptr @.str.242, ptr @.str.1 }, %struct.EnumPropertyItem { i32 279, ptr @.str.243, i32 0, ptr @.str.244, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 400, ptr @.str.245, i32 0, ptr @.str.246, ptr @.str.1 }, %struct.EnumPropertyItem { i32 401, ptr @.str.247, i32 0, ptr @.str.248, ptr @.str.1 }, %struct.EnumPropertyItem { i32 402, ptr @.str.249, i32 0, ptr @.str.250, ptr @.str.1 }, %struct.EnumPropertyItem { i32 403, ptr @.str.251, i32 0, ptr @.str.252, ptr @.str.1 }, %struct.EnumPropertyItem { i32 404, ptr @.str.253, i32 0, ptr @.str.254, ptr @.str.1 }, %struct.EnumPropertyItem { i32 405, ptr @.str.255, i32 0, ptr @.str.256, ptr @.str.1 }, %struct.EnumPropertyItem { i32 406, ptr @.str.257, i32 0, ptr @.str.258, ptr @.str.1 }, %struct.EnumPropertyItem { i32 407, ptr @.str.259, i32 0, ptr @.str.260, ptr @.str.1 }, %struct.EnumPropertyItem { i32 408, ptr @.str.261, i32 0, ptr @.str.262, ptr @.str.1 }, %struct.EnumPropertyItem { i32 409, ptr @.str.263, i32 0, ptr @.str.264, ptr @.str.1 }, %struct.EnumPropertyItem { i32 410, ptr @.str.265, i32 0, ptr @.str.266, ptr @.str.1 }, %struct.EnumPropertyItem { i32 411, ptr @.str.267, i32 0, ptr @.str.268, ptr @.str.1 }, %struct.EnumPropertyItem { i32 412, ptr @.str.269, i32 0, ptr @.str.270, ptr @.str.1 }, %struct.EnumPropertyItem { i32 413, ptr @.str.271, i32 0, ptr @.str.272, ptr @.str.1 }, %struct.EnumPropertyItem { i32 414, ptr @.str.273, i32 0, ptr @.str.274, ptr @.str.1 }, %struct.EnumPropertyItem { i32 415, ptr @.str.275, i32 0, ptr @.str.276, ptr @.str.1 }, %struct.EnumPropertyItem { i32 416, ptr @.str.277, i32 0, ptr @.str.278, ptr @.str.1 }, %struct.EnumPropertyItem { i32 417, ptr @.str.279, i32 0, ptr @.str.280, ptr @.str.1 }, %struct.EnumPropertyItem { i32 418, ptr @.str.281, i32 0, ptr @.str.282, ptr @.str.1 }, %struct.EnumPropertyItem { i32 419, ptr @.str.283, i32 0, ptr @.str.284, ptr @.str.1 }, %struct.EnumPropertyItem { i32 420, ptr @.str.285, i32 0, ptr @.str.286, ptr @.str.1 }, %struct.EnumPropertyItem { i32 421, ptr @.str.287, i32 0, ptr @.str.288, ptr @.str.1 }, %struct.EnumPropertyItem { i32 422, ptr @.str.289, i32 0, ptr @.str.290, ptr null }, %struct.EnumPropertyItem { i32 423, ptr @.str.291, i32 0, ptr @.str.292, ptr null }, %struct.EnumPropertyItem { i32 424, ptr @.str.293, i32 0, ptr @.str.294, ptr null }, %struct.EnumPropertyItem { i32 425, ptr @.str.295, i32 0, ptr @.str.296, ptr null }, %struct.EnumPropertyItem { i32 426, ptr @.str.297, i32 0, ptr @.str.298, ptr @.str.1 }, %struct.EnumPropertyItem { i32 427, ptr @.str.299, i32 0, ptr @.str.300, ptr @.str.1 }, %struct.EnumPropertyItem { i32 428, ptr @.str.301, i32 0, ptr @.str.302, ptr @.str.1 }, %struct.EnumPropertyItem { i32 429, ptr @.str.303, i32 0, ptr @.str.304, ptr @.str.1 }, %struct.EnumPropertyItem { i32 430, ptr @.str.305, i32 0, ptr @.str.306, ptr @.str.1 }, %struct.EnumPropertyItem { i32 431, ptr @.str.307, i32 0, ptr @.str.308, ptr @.str.1 }, %struct.EnumPropertyItem { i32 432, ptr @.str.309, i32 0, ptr @.str.310, ptr @.str.1 }, %struct.EnumPropertyItem { i32 433, ptr @.str.311, i32 0, ptr @.str.312, ptr @.str.1 }, %struct.EnumPropertyItem { i32 434, ptr @.str.313, i32 0, ptr @.str.314, ptr @.str.1 }, %struct.EnumPropertyItem { i32 435, ptr @.str.315, i32 0, ptr @.str.316, ptr @.str.1 }, %struct.EnumPropertyItem { i32 436, ptr @.str.317, i32 0, ptr @.str.318, ptr @.str.1 }, %struct.EnumPropertyItem { i32 437, ptr @.str.319, i32 0, ptr @.str.320, ptr @.str.1 }, %struct.EnumPropertyItem { i32 438, ptr @.str.321, i32 0, ptr @.str.322, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_KeyMapItems_remove_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr @rna_KeyMapItems_from_id_func, ptr @rna_KeyMapItems_new_modal_func, ptr null, %struct.ListBase { ptr @rna_KeyMapItems_remove_item, ptr @rna_KeyMapItems_remove_item } }, ptr @.str.628, i32 16, ptr @.str.628, ptr @KeyMapItems_remove_call, ptr null }, align 8
@.str.690 = private unnamed_addr constant [10 x i8] c"new_modal\00", align 1
@rna_KeyMapItems_remove_item = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr null, i32 -1, ptr @.str.675, i32 264196, ptr @.str.676, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_KeyMapItem }, align 8
@rna_KeyMapItems_from_id_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr @rna_KeyMapItems_remove_func, ptr null, %struct.ListBase { ptr @rna_KeyMapItems_from_id_id, ptr @rna_KeyMapItems_from_id_item } }, ptr @.str.693, i32 0, ptr @.str.693, ptr @KeyMapItems_from_id_call, ptr @rna_KeyMapItems_from_id_item }, align 8
@rna_KeyMapItems_from_id_item = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_KeyMapItems_from_id_id, i32 -1, ptr @.str.675, i32 8388616, ptr @.str.676, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_KeyMapItem }, align 8
@.str.691 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.692 = private unnamed_addr constant [15 x i8] c"ID of the item\00", align 1
@rna_KeyMapItems_from_id_id = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItems_from_id_item, ptr null, i32 -1, ptr @.str.691, i32 7, ptr @.str.691, ptr @.str.692, i32 0, ptr @.str.415, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -10000, i32 10000, i32 -2147483648, i32 2147483647, i32 1, i32 0, ptr null }, align 8
@.str.693 = private unnamed_addr constant [8 x i8] c"from_id\00", align 1
@.str.694 = private unnamed_addr constant [12 x i8] c"KeyMapItems\00", align 1
@.str.695 = private unnamed_addr constant [13 x i8] c"KeyMap Items\00", align 1
@.str.696 = private unnamed_addr constant [27 x i8] c"Collection of keymap items\00", align 1
@rna_KeyMapItem_rna_type = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItem_idname, ptr @rna_KeyMapItem_rna_properties, i32 -1, ptr @.str.416, i32 8912896, ptr @.str.417, ptr @.str.418, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMapItem_rna_type_get, ptr null, ptr null, ptr null, ptr @RNA_Struct }, align 8
@rna_KeyMapItem_idname = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItem_name, ptr @rna_KeyMapItem_rna_type, i32 -1, ptr @.str.679, i32 262145, ptr @.str.697, ptr @.str.698, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] [i32 64, i32 0, i32 0], i32 0, ptr @rna_KeyMapItem_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMapItem_idname_get, ptr @KeyMapItem_idname_length, ptr @KeyMapItem_idname_set, ptr null, ptr null, ptr null, i32 64, ptr @.str.1 }, align 8
@rna_KeyMapItem_name = dso_local global %struct.StringPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItem_properties, ptr @rna_KeyMapItem_idname, i32 -1, ptr @.str.419, i32 262144, ptr @.str.420, ptr @.str.699, i32 0, ptr @.str.415, i32 3, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMapItem_name_get, ptr @KeyMapItem_name_length, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @.str.1 }, align 8
@.str.697 = private unnamed_addr constant [11 x i8] c"Identifier\00", align 1
@.str.698 = private unnamed_addr constant [46 x i8] c"Identifier of operator to call on input event\00", align 1
@rna_KeyMapItem_properties = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItem_map_type, ptr @rna_KeyMapItem_name, i32 -1, ptr @.str.421, i32 8388608, ptr @.str.413, ptr @.str.700, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_KeyMapItem_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMapItem_properties_get, ptr null, ptr null, ptr null, ptr @RNA_OperatorProperties }, align 8
@.str.699 = private unnamed_addr constant [53 x i8] c"Name of operator (translated) to call on input event\00", align 1
@rna_KeyMapItem_map_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItem_type, ptr @rna_KeyMapItem_properties, i32 -1, ptr @.str.701, i32 3, ptr @.str.702, ptr @.str.703, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_KeyMapItem_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMapItem_map_type_get, ptr @KeyMapItem_map_type_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_KeyMapItem_map_type_items, i32 6, i32 0 }, align 8
@.str.700 = private unnamed_addr constant [46 x i8] c"Properties to set when the operator is called\00", align 1
@rna_KeyMapItem_type = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItem_value, ptr @rna_KeyMapItem_map_type, i32 -1, ptr @.str.433, i32 3, ptr @.str.434, ptr @.str.704, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_KeyMapItem_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMapItem_type_get, ptr @KeyMapItem_type_set, ptr @rna_KeyMapItem_type_itemf, ptr null, ptr null, ptr null, ptr @rna_KeyMapItem_type_items, i32 195, i32 0 }, align 8
@.str.701 = private unnamed_addr constant [9 x i8] c"map_type\00", align 1
@.str.702 = private unnamed_addr constant [9 x i8] c"Map Type\00", align 1
@.str.703 = private unnamed_addr constant [22 x i8] c"Type of event mapping\00", align 1
@rna_KeyMapItem_map_type_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.1347, i32 0, ptr @.str.1348, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.1349, i32 0, ptr @.str.1350, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.1351, i32 0, ptr @.str.1352, ptr @.str.1 }, %struct.EnumPropertyItem { i32 5, ptr @.str.1353, i32 0, ptr @.str.1353, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.225, i32 0, ptr @.str.226, ptr @.str.1 }, %struct.EnumPropertyItem { i32 4, ptr @.str.229, i32 0, ptr @.str.230, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_KeyMapItem_value = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItem_id, ptr @rna_KeyMapItem_type, i32 -1, ptr @.str.484, i32 3, ptr @.str.485, ptr @.str.1, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_KeyMapItem_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMapItem_value_get, ptr @KeyMapItem_value_set, ptr @rna_KeyMapItem_value_itemf, ptr null, ptr null, ptr null, ptr @rna_KeyMapItem_value_items, i32 14, i32 0 }, align 8
@.str.704 = private unnamed_addr constant [14 x i8] c"Type of event\00", align 1
@rna_KeyMapItem_type_items = internal global [196 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.2, i32 0, ptr @.str.3, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.4, i32 0, ptr @.str.5, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.1 }, %struct.EnumPropertyItem { i32 7, ptr @.str.8, i32 0, ptr @.str.9, ptr @.str.1 }, %struct.EnumPropertyItem { i32 8, ptr @.str.10, i32 0, ptr @.str.11, ptr @.str.1 }, %struct.EnumPropertyItem { i32 18, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.1 }, %struct.EnumPropertyItem { i32 19, ptr @.str.14, i32 0, ptr @.str.15, ptr @.str.1 }, %struct.EnumPropertyItem { i32 5, ptr @.str.16, i32 0, ptr @.str.17, ptr @.str.1 }, %struct.EnumPropertyItem { i32 6, ptr @.str.18, i32 0, ptr @.str.19, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 4, ptr @.str.20, i32 0, ptr @.str.21, ptr @.str.1 }, %struct.EnumPropertyItem { i32 17, ptr @.str.22, i32 0, ptr @.str.23, ptr @.str.1 }, %struct.EnumPropertyItem { i32 14, ptr @.str.24, i32 0, ptr @.str.25, ptr @.str.1 }, %struct.EnumPropertyItem { i32 15, ptr @.str.26, i32 0, ptr @.str.27, ptr @.str.1 }, %struct.EnumPropertyItem { i32 16, ptr @.str.28, i32 0, ptr @.str.29, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 10, ptr @.str.30, i32 0, ptr @.str.31, ptr @.str.1 }, %struct.EnumPropertyItem { i32 11, ptr @.str.32, i32 0, ptr @.str.33, ptr @.str.1 }, %struct.EnumPropertyItem { i32 12, ptr @.str.34, i32 0, ptr @.str.35, ptr @.str.1 }, %struct.EnumPropertyItem { i32 13, ptr @.str.36, i32 0, ptr @.str.37, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 20483, ptr @.str.38, i32 0, ptr @.str.39, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20484, ptr @.str.40, i32 0, ptr @.str.41, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20485, ptr @.str.42, i32 0, ptr @.str.43, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20486, ptr @.str.44, i32 0, ptr @.str.45, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20487, ptr @.str.46, i32 0, ptr @.str.47, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 97, ptr @.str.48, i32 0, ptr @.str.48, ptr @.str.1 }, %struct.EnumPropertyItem { i32 98, ptr @.str.49, i32 0, ptr @.str.49, ptr @.str.1 }, %struct.EnumPropertyItem { i32 99, ptr @.str.50, i32 0, ptr @.str.50, ptr @.str.1 }, %struct.EnumPropertyItem { i32 100, ptr @.str.51, i32 0, ptr @.str.51, ptr @.str.1 }, %struct.EnumPropertyItem { i32 101, ptr @.str.52, i32 0, ptr @.str.52, ptr @.str.1 }, %struct.EnumPropertyItem { i32 102, ptr @.str.53, i32 0, ptr @.str.53, ptr @.str.1 }, %struct.EnumPropertyItem { i32 103, ptr @.str.54, i32 0, ptr @.str.54, ptr @.str.1 }, %struct.EnumPropertyItem { i32 104, ptr @.str.55, i32 0, ptr @.str.55, ptr @.str.1 }, %struct.EnumPropertyItem { i32 105, ptr @.str.56, i32 0, ptr @.str.56, ptr @.str.1 }, %struct.EnumPropertyItem { i32 106, ptr @.str.57, i32 0, ptr @.str.57, ptr @.str.1 }, %struct.EnumPropertyItem { i32 107, ptr @.str.58, i32 0, ptr @.str.58, ptr @.str.1 }, %struct.EnumPropertyItem { i32 108, ptr @.str.59, i32 0, ptr @.str.59, ptr @.str.1 }, %struct.EnumPropertyItem { i32 109, ptr @.str.60, i32 0, ptr @.str.60, ptr @.str.1 }, %struct.EnumPropertyItem { i32 110, ptr @.str.61, i32 0, ptr @.str.61, ptr @.str.1 }, %struct.EnumPropertyItem { i32 111, ptr @.str.62, i32 0, ptr @.str.62, ptr @.str.1 }, %struct.EnumPropertyItem { i32 112, ptr @.str.63, i32 0, ptr @.str.63, ptr @.str.1 }, %struct.EnumPropertyItem { i32 113, ptr @.str.64, i32 0, ptr @.str.64, ptr @.str.1 }, %struct.EnumPropertyItem { i32 114, ptr @.str.65, i32 0, ptr @.str.65, ptr @.str.1 }, %struct.EnumPropertyItem { i32 115, ptr @.str.66, i32 0, ptr @.str.66, ptr @.str.1 }, %struct.EnumPropertyItem { i32 116, ptr @.str.67, i32 0, ptr @.str.67, ptr @.str.1 }, %struct.EnumPropertyItem { i32 117, ptr @.str.68, i32 0, ptr @.str.68, ptr @.str.1 }, %struct.EnumPropertyItem { i32 118, ptr @.str.69, i32 0, ptr @.str.69, ptr @.str.1 }, %struct.EnumPropertyItem { i32 119, ptr @.str.70, i32 0, ptr @.str.70, ptr @.str.1 }, %struct.EnumPropertyItem { i32 120, ptr @.str.71, i32 0, ptr @.str.71, ptr @.str.1 }, %struct.EnumPropertyItem { i32 121, ptr @.str.72, i32 0, ptr @.str.72, ptr @.str.1 }, %struct.EnumPropertyItem { i32 122, ptr @.str.73, i32 0, ptr @.str.73, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 48, ptr @.str.74, i32 0, ptr @.str.75, ptr @.str.1 }, %struct.EnumPropertyItem { i32 49, ptr @.str.76, i32 0, ptr @.str.77, ptr @.str.1 }, %struct.EnumPropertyItem { i32 50, ptr @.str.78, i32 0, ptr @.str.79, ptr @.str.1 }, %struct.EnumPropertyItem { i32 51, ptr @.str.80, i32 0, ptr @.str.81, ptr @.str.1 }, %struct.EnumPropertyItem { i32 52, ptr @.str.82, i32 0, ptr @.str.83, ptr @.str.1 }, %struct.EnumPropertyItem { i32 53, ptr @.str.84, i32 0, ptr @.str.85, ptr @.str.1 }, %struct.EnumPropertyItem { i32 54, ptr @.str.86, i32 0, ptr @.str.87, ptr @.str.1 }, %struct.EnumPropertyItem { i32 55, ptr @.str.88, i32 0, ptr @.str.89, ptr @.str.1 }, %struct.EnumPropertyItem { i32 56, ptr @.str.90, i32 0, ptr @.str.91, ptr @.str.1 }, %struct.EnumPropertyItem { i32 57, ptr @.str.92, i32 0, ptr @.str.93, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 212, ptr @.str.94, i32 0, ptr @.str.95, ptr @.str.1 }, %struct.EnumPropertyItem { i32 213, ptr @.str.96, i32 0, ptr @.str.97, ptr @.str.1 }, %struct.EnumPropertyItem { i32 217, ptr @.str.98, i32 0, ptr @.str.99, ptr @.str.1 }, %struct.EnumPropertyItem { i32 214, ptr @.str.100, i32 0, ptr @.str.101, ptr @.str.1 }, %struct.EnumPropertyItem { i32 215, ptr @.str.102, i32 0, ptr @.str.103, ptr @.str.1 }, %struct.EnumPropertyItem { i32 216, ptr @.str.104, i32 0, ptr @.str.105, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 172, ptr @.str.106, i32 0, ptr @.str.107, ptr @.str.1 }, %struct.EnumPropertyItem { i32 173, ptr @.str.108, i32 0, ptr @.str.109, ptr @.str.1 }, %struct.EnumPropertyItem { i32 218, ptr @.str.110, i32 0, ptr @.str.111, ptr @.str.1 }, %struct.EnumPropertyItem { i32 219, ptr @.str.112, i32 0, ptr @.str.113, ptr @.str.1 }, %struct.EnumPropertyItem { i32 220, ptr @.str.114, i32 0, ptr @.str.115, ptr @.str.1 }, %struct.EnumPropertyItem { i32 221, ptr @.str.116, i32 0, ptr @.str.117, ptr @.str.1 }, %struct.EnumPropertyItem { i32 222, ptr @.str.118, i32 0, ptr @.str.119, ptr @.str.1 }, %struct.EnumPropertyItem { i32 223, ptr @.str.120, i32 0, ptr @.str.121, ptr @.str.1 }, %struct.EnumPropertyItem { i32 224, ptr @.str.122, i32 0, ptr @.str.123, ptr @.str.1 }, %struct.EnumPropertyItem { i32 225, ptr @.str.124, i32 0, ptr @.str.125, ptr @.str.1 }, %struct.EnumPropertyItem { i32 226, ptr @.str.126, i32 0, ptr @.str.127, ptr @.str.1 }, %struct.EnumPropertyItem { i32 227, ptr @.str.128, i32 0, ptr @.str.129, ptr @.str.1 }, %struct.EnumPropertyItem { i32 228, ptr @.str.130, i32 0, ptr @.str.131, ptr @.str.1 }, %struct.EnumPropertyItem { i32 229, ptr @.str.132, i32 0, ptr @.str.133, ptr @.str.1 }, %struct.EnumPropertyItem { i32 230, ptr @.str.134, i32 0, ptr @.str.135, ptr @.str.1 }, %struct.EnumPropertyItem { i32 232, ptr @.str.136, i32 0, ptr @.str.137, ptr @.str.1 }, %struct.EnumPropertyItem { i32 233, ptr @.str.138, i32 0, ptr @.str.139, ptr @.str.1 }, %struct.EnumPropertyItem { i32 234, ptr @.str.140, i32 0, ptr @.str.141, ptr @.str.1 }, %struct.EnumPropertyItem { i32 235, ptr @.str.142, i32 0, ptr @.str.143, ptr @.str.1 }, %struct.EnumPropertyItem { i32 236, ptr @.str.144, i32 0, ptr @.str.145, ptr @.str.1 }, %struct.EnumPropertyItem { i32 137, ptr @.str.146, i32 0, ptr @.str.147, ptr @.str.1 }, %struct.EnumPropertyItem { i32 138, ptr @.str.148, i32 0, ptr @.str.149, ptr @.str.1 }, %struct.EnumPropertyItem { i32 139, ptr @.str.150, i32 0, ptr @.str.151, ptr @.str.1 }, %struct.EnumPropertyItem { i32 140, ptr @.str.152, i32 0, ptr @.str.153, ptr @.str.1 }, %struct.EnumPropertyItem { i32 152, ptr @.str.154, i32 0, ptr @.str.155, ptr @.str.1 }, %struct.EnumPropertyItem { i32 154, ptr @.str.156, i32 0, ptr @.str.157, ptr @.str.1 }, %struct.EnumPropertyItem { i32 156, ptr @.str.158, i32 0, ptr @.str.159, ptr @.str.1 }, %struct.EnumPropertyItem { i32 158, ptr @.str.160, i32 0, ptr @.str.161, ptr @.str.1 }, %struct.EnumPropertyItem { i32 151, ptr @.str.162, i32 0, ptr @.str.163, ptr @.str.1 }, %struct.EnumPropertyItem { i32 153, ptr @.str.164, i32 0, ptr @.str.165, ptr @.str.1 }, %struct.EnumPropertyItem { i32 155, ptr @.str.166, i32 0, ptr @.str.167, ptr @.str.1 }, %struct.EnumPropertyItem { i32 157, ptr @.str.168, i32 0, ptr @.str.169, ptr @.str.1 }, %struct.EnumPropertyItem { i32 159, ptr @.str.170, i32 0, ptr @.str.171, ptr @.str.1 }, %struct.EnumPropertyItem { i32 199, ptr @.str.172, i32 0, ptr @.str.173, ptr @.str.1 }, %struct.EnumPropertyItem { i32 161, ptr @.str.174, i32 0, ptr @.str.175, ptr @.str.1 }, %struct.EnumPropertyItem { i32 160, ptr @.str.176, i32 0, ptr @.str.177, ptr @.str.1 }, %struct.EnumPropertyItem { i32 150, ptr @.str.178, i32 0, ptr @.str.179, ptr @.str.1 }, %struct.EnumPropertyItem { i32 162, ptr @.str.180, i32 0, ptr @.str.181, ptr @.str.1 }, %struct.EnumPropertyItem { i32 163, ptr @.str.182, i32 0, ptr @.str.183, ptr @.str.1 }, %struct.EnumPropertyItem { i32 164, ptr @.str.184, i32 0, ptr @.str.185, ptr @.str.1 }, %struct.EnumPropertyItem { i32 300, ptr @.str.186, i32 0, ptr @.str.186, ptr @.str.1 }, %struct.EnumPropertyItem { i32 301, ptr @.str.187, i32 0, ptr @.str.187, ptr @.str.1 }, %struct.EnumPropertyItem { i32 302, ptr @.str.188, i32 0, ptr @.str.188, ptr @.str.1 }, %struct.EnumPropertyItem { i32 303, ptr @.str.189, i32 0, ptr @.str.189, ptr @.str.1 }, %struct.EnumPropertyItem { i32 304, ptr @.str.190, i32 0, ptr @.str.190, ptr @.str.1 }, %struct.EnumPropertyItem { i32 305, ptr @.str.191, i32 0, ptr @.str.191, ptr @.str.1 }, %struct.EnumPropertyItem { i32 306, ptr @.str.192, i32 0, ptr @.str.192, ptr @.str.1 }, %struct.EnumPropertyItem { i32 307, ptr @.str.193, i32 0, ptr @.str.193, ptr @.str.1 }, %struct.EnumPropertyItem { i32 308, ptr @.str.194, i32 0, ptr @.str.194, ptr @.str.1 }, %struct.EnumPropertyItem { i32 309, ptr @.str.195, i32 0, ptr @.str.195, ptr @.str.1 }, %struct.EnumPropertyItem { i32 310, ptr @.str.196, i32 0, ptr @.str.196, ptr @.str.1 }, %struct.EnumPropertyItem { i32 311, ptr @.str.197, i32 0, ptr @.str.197, ptr @.str.1 }, %struct.EnumPropertyItem { i32 312, ptr @.str.198, i32 0, ptr @.str.198, ptr @.str.1 }, %struct.EnumPropertyItem { i32 313, ptr @.str.199, i32 0, ptr @.str.199, ptr @.str.1 }, %struct.EnumPropertyItem { i32 314, ptr @.str.200, i32 0, ptr @.str.200, ptr @.str.1 }, %struct.EnumPropertyItem { i32 315, ptr @.str.201, i32 0, ptr @.str.201, ptr @.str.1 }, %struct.EnumPropertyItem { i32 316, ptr @.str.202, i32 0, ptr @.str.202, ptr @.str.1 }, %struct.EnumPropertyItem { i32 317, ptr @.str.203, i32 0, ptr @.str.203, ptr @.str.1 }, %struct.EnumPropertyItem { i32 318, ptr @.str.204, i32 0, ptr @.str.204, ptr @.str.1 }, %struct.EnumPropertyItem { i32 165, ptr @.str.205, i32 0, ptr @.str.206, ptr @.str.1 }, %struct.EnumPropertyItem { i32 166, ptr @.str.207, i32 0, ptr @.str.208, ptr @.str.1 }, %struct.EnumPropertyItem { i32 167, ptr @.str.209, i32 0, ptr @.str.210, ptr @.str.1 }, %struct.EnumPropertyItem { i32 168, ptr @.str.211, i32 0, ptr @.str.212, ptr @.str.1 }, %struct.EnumPropertyItem { i32 169, ptr @.str.213, i32 0, ptr @.str.214, ptr @.str.1 }, %struct.EnumPropertyItem { i32 170, ptr @.str.215, i32 0, ptr @.str.216, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 174, ptr @.str.217, i32 0, ptr @.str.218, ptr @.str.1 }, %struct.EnumPropertyItem { i32 175, ptr @.str.219, i32 0, ptr @.str.220, ptr @.str.1 }, %struct.EnumPropertyItem { i32 176, ptr @.str.221, i32 0, ptr @.str.222, ptr @.str.1 }, %struct.EnumPropertyItem { i32 177, ptr @.str.223, i32 0, ptr @.str.224, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 -2, ptr @.str.225, i32 0, ptr @.str.226, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 260, ptr @.str.227, i32 0, ptr @.str.228, ptr @.str.1 }, %struct.EnumPropertyItem { i32 272, ptr @.str.229, i32 0, ptr @.str.230, ptr @.str.1 }, %struct.EnumPropertyItem { i32 273, ptr @.str.231, i32 0, ptr @.str.232, ptr @.str.1 }, %struct.EnumPropertyItem { i32 274, ptr @.str.233, i32 0, ptr @.str.234, ptr @.str.1 }, %struct.EnumPropertyItem { i32 275, ptr @.str.235, i32 0, ptr @.str.236, ptr @.str.1 }, %struct.EnumPropertyItem { i32 276, ptr @.str.237, i32 0, ptr @.str.238, ptr @.str.1 }, %struct.EnumPropertyItem { i32 277, ptr @.str.239, i32 0, ptr @.str.240, ptr @.str.1 }, %struct.EnumPropertyItem { i32 278, ptr @.str.241, i32 0, ptr @.str.242, ptr @.str.1 }, %struct.EnumPropertyItem { i32 279, ptr @.str.243, i32 0, ptr @.str.244, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 400, ptr @.str.245, i32 0, ptr @.str.246, ptr @.str.1 }, %struct.EnumPropertyItem { i32 401, ptr @.str.247, i32 0, ptr @.str.248, ptr @.str.1 }, %struct.EnumPropertyItem { i32 402, ptr @.str.249, i32 0, ptr @.str.250, ptr @.str.1 }, %struct.EnumPropertyItem { i32 403, ptr @.str.251, i32 0, ptr @.str.252, ptr @.str.1 }, %struct.EnumPropertyItem { i32 404, ptr @.str.253, i32 0, ptr @.str.254, ptr @.str.1 }, %struct.EnumPropertyItem { i32 405, ptr @.str.255, i32 0, ptr @.str.256, ptr @.str.1 }, %struct.EnumPropertyItem { i32 406, ptr @.str.257, i32 0, ptr @.str.258, ptr @.str.1 }, %struct.EnumPropertyItem { i32 407, ptr @.str.259, i32 0, ptr @.str.260, ptr @.str.1 }, %struct.EnumPropertyItem { i32 408, ptr @.str.261, i32 0, ptr @.str.262, ptr @.str.1 }, %struct.EnumPropertyItem { i32 409, ptr @.str.263, i32 0, ptr @.str.264, ptr @.str.1 }, %struct.EnumPropertyItem { i32 410, ptr @.str.265, i32 0, ptr @.str.266, ptr @.str.1 }, %struct.EnumPropertyItem { i32 411, ptr @.str.267, i32 0, ptr @.str.268, ptr @.str.1 }, %struct.EnumPropertyItem { i32 412, ptr @.str.269, i32 0, ptr @.str.270, ptr @.str.1 }, %struct.EnumPropertyItem { i32 413, ptr @.str.271, i32 0, ptr @.str.272, ptr @.str.1 }, %struct.EnumPropertyItem { i32 414, ptr @.str.273, i32 0, ptr @.str.274, ptr @.str.1 }, %struct.EnumPropertyItem { i32 415, ptr @.str.275, i32 0, ptr @.str.276, ptr @.str.1 }, %struct.EnumPropertyItem { i32 416, ptr @.str.277, i32 0, ptr @.str.278, ptr @.str.1 }, %struct.EnumPropertyItem { i32 417, ptr @.str.279, i32 0, ptr @.str.280, ptr @.str.1 }, %struct.EnumPropertyItem { i32 418, ptr @.str.281, i32 0, ptr @.str.282, ptr @.str.1 }, %struct.EnumPropertyItem { i32 419, ptr @.str.283, i32 0, ptr @.str.284, ptr @.str.1 }, %struct.EnumPropertyItem { i32 420, ptr @.str.285, i32 0, ptr @.str.286, ptr @.str.1 }, %struct.EnumPropertyItem { i32 421, ptr @.str.287, i32 0, ptr @.str.288, ptr @.str.1 }, %struct.EnumPropertyItem { i32 422, ptr @.str.289, i32 0, ptr @.str.290, ptr null }, %struct.EnumPropertyItem { i32 423, ptr @.str.291, i32 0, ptr @.str.292, ptr null }, %struct.EnumPropertyItem { i32 424, ptr @.str.293, i32 0, ptr @.str.294, ptr null }, %struct.EnumPropertyItem { i32 425, ptr @.str.295, i32 0, ptr @.str.296, ptr null }, %struct.EnumPropertyItem { i32 426, ptr @.str.297, i32 0, ptr @.str.298, ptr @.str.1 }, %struct.EnumPropertyItem { i32 427, ptr @.str.299, i32 0, ptr @.str.300, ptr @.str.1 }, %struct.EnumPropertyItem { i32 428, ptr @.str.301, i32 0, ptr @.str.302, ptr @.str.1 }, %struct.EnumPropertyItem { i32 429, ptr @.str.303, i32 0, ptr @.str.304, ptr @.str.1 }, %struct.EnumPropertyItem { i32 430, ptr @.str.305, i32 0, ptr @.str.306, ptr @.str.1 }, %struct.EnumPropertyItem { i32 431, ptr @.str.307, i32 0, ptr @.str.308, ptr @.str.1 }, %struct.EnumPropertyItem { i32 432, ptr @.str.309, i32 0, ptr @.str.310, ptr @.str.1 }, %struct.EnumPropertyItem { i32 433, ptr @.str.311, i32 0, ptr @.str.312, ptr @.str.1 }, %struct.EnumPropertyItem { i32 434, ptr @.str.313, i32 0, ptr @.str.314, ptr @.str.1 }, %struct.EnumPropertyItem { i32 435, ptr @.str.315, i32 0, ptr @.str.316, ptr @.str.1 }, %struct.EnumPropertyItem { i32 436, ptr @.str.317, i32 0, ptr @.str.318, ptr @.str.1 }, %struct.EnumPropertyItem { i32 437, ptr @.str.319, i32 0, ptr @.str.320, ptr @.str.1 }, %struct.EnumPropertyItem { i32 438, ptr @.str.321, i32 0, ptr @.str.322, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_KeyMapItem_id = dso_local global %struct.IntPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItem_any, ptr @rna_KeyMapItem_value, i32 -1, ptr @.str.691, i32 8194, ptr @.str.705, ptr @.str.692, i32 0, ptr @.str.415, i32 1, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_KeyMapItem_update, i32 0, ptr null, ptr null, i32 172, i32 1, ptr null, ptr null }, ptr @KeyMapItem_id_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -32768, i32 32767, i32 -32768, i32 32767, i32 1, i32 0, ptr null }, align 8
@rna_KeyMapItem_value_items = internal global [15 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 -1, ptr @.str.323, i32 0, ptr @.str.324, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.325, i32 0, ptr @.str.326, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.327, i32 0, ptr @.str.328, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.329, i32 0, ptr @.str.330, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.331, i32 0, ptr @.str.332, ptr @.str.1 }, %struct.EnumPropertyItem { i32 4, ptr @.str.333, i32 0, ptr @.str.334, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.335, i32 0, ptr @.str.336, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.337, i32 0, ptr @.str.338, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.339, i32 0, ptr @.str.340, ptr @.str.1 }, %struct.EnumPropertyItem { i32 4, ptr @.str.341, i32 0, ptr @.str.342, ptr @.str.1 }, %struct.EnumPropertyItem { i32 5, ptr @.str.343, i32 0, ptr @.str.344, ptr @.str.1 }, %struct.EnumPropertyItem { i32 6, ptr @.str.345, i32 0, ptr @.str.346, ptr @.str.1 }, %struct.EnumPropertyItem { i32 7, ptr @.str.347, i32 0, ptr @.str.348, ptr @.str.1 }, %struct.EnumPropertyItem { i32 8, ptr @.str.349, i32 0, ptr @.str.350, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_KeyMapItem_any = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItem_shift, ptr @rna_KeyMapItem_id, i32 -1, ptr @.str.681, i32 3, ptr @.str.324, ptr @.str.706, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_KeyMapItem_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMapItem_any_get, ptr @KeyMapItem_any_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.705 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@rna_KeyMapItem_shift = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItem_ctrl, ptr @rna_KeyMapItem_any, i32 -1, ptr @.str.508, i32 8195, ptr @.str.509, ptr @.str.707, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_KeyMapItem_update, i32 0, ptr null, ptr null, i32 158, i32 1, ptr null, ptr null }, ptr @KeyMapItem_shift_get, ptr @KeyMapItem_shift_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.706 = private unnamed_addr constant [26 x i8] c"Any modifier keys pressed\00", align 1
@rna_KeyMapItem_ctrl = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItem_alt, ptr @rna_KeyMapItem_shift, i32 -1, ptr @.str.511, i32 8195, ptr @.str.512, ptr @.str.708, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_KeyMapItem_update, i32 0, ptr null, ptr null, i32 160, i32 1, ptr null, ptr null }, ptr @KeyMapItem_ctrl_get, ptr @KeyMapItem_ctrl_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.707 = private unnamed_addr constant [18 x i8] c"Shift key pressed\00", align 1
@rna_KeyMapItem_alt = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItem_oskey, ptr @rna_KeyMapItem_ctrl, i32 -1, ptr @.str.514, i32 8195, ptr @.str.515, ptr @.str.709, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_KeyMapItem_update, i32 0, ptr null, ptr null, i32 162, i32 1, ptr null, ptr null }, ptr @KeyMapItem_alt_get, ptr @KeyMapItem_alt_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.708 = private unnamed_addr constant [20 x i8] c"Control key pressed\00", align 1
@rna_KeyMapItem_oskey = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItem_key_modifier, ptr @rna_KeyMapItem_alt, i32 -1, ptr @.str.517, i32 8195, ptr @.str.107, ptr @.str.710, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_KeyMapItem_update, i32 0, ptr null, ptr null, i32 164, i32 1, ptr null, ptr null }, ptr @KeyMapItem_oskey_get, ptr @KeyMapItem_oskey_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.709 = private unnamed_addr constant [16 x i8] c"Alt key pressed\00", align 1
@rna_KeyMapItem_key_modifier = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItem_show_expanded, ptr @rna_KeyMapItem_oskey, i32 -1, ptr @.str.682, i32 3, ptr @.str.683, ptr @.str.711, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_KeyMapItem_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMapItem_key_modifier_get, ptr @KeyMapItem_key_modifier_set, ptr null, ptr null, ptr null, ptr null, ptr @rna_KeyMapItem_key_modifier_items, i32 195, i32 0 }, align 8
@.str.710 = private unnamed_addr constant [29 x i8] c"Operating system key pressed\00", align 1
@rna_KeyMapItem_show_expanded = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItem_propvalue, ptr @rna_KeyMapItem_key_modifier, i32 -1, ptr @.str.712, i32 4099, ptr @.str.713, ptr @.str.714, i32 4, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_KeyMapItem_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMapItem_show_expanded_get, ptr @KeyMapItem_show_expanded_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.711 = private unnamed_addr constant [34 x i8] c"Regular key pressed as a modifier\00", align 1
@rna_KeyMapItem_key_modifier_items = internal global [196 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.2, i32 0, ptr @.str.3, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.4, i32 0, ptr @.str.5, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.6, i32 0, ptr @.str.7, ptr @.str.1 }, %struct.EnumPropertyItem { i32 7, ptr @.str.8, i32 0, ptr @.str.9, ptr @.str.1 }, %struct.EnumPropertyItem { i32 8, ptr @.str.10, i32 0, ptr @.str.11, ptr @.str.1 }, %struct.EnumPropertyItem { i32 18, ptr @.str.12, i32 0, ptr @.str.13, ptr @.str.1 }, %struct.EnumPropertyItem { i32 19, ptr @.str.14, i32 0, ptr @.str.15, ptr @.str.1 }, %struct.EnumPropertyItem { i32 5, ptr @.str.16, i32 0, ptr @.str.17, ptr @.str.1 }, %struct.EnumPropertyItem { i32 6, ptr @.str.18, i32 0, ptr @.str.19, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 4, ptr @.str.20, i32 0, ptr @.str.21, ptr @.str.1 }, %struct.EnumPropertyItem { i32 17, ptr @.str.22, i32 0, ptr @.str.23, ptr @.str.1 }, %struct.EnumPropertyItem { i32 14, ptr @.str.24, i32 0, ptr @.str.25, ptr @.str.1 }, %struct.EnumPropertyItem { i32 15, ptr @.str.26, i32 0, ptr @.str.27, ptr @.str.1 }, %struct.EnumPropertyItem { i32 16, ptr @.str.28, i32 0, ptr @.str.29, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 10, ptr @.str.30, i32 0, ptr @.str.31, ptr @.str.1 }, %struct.EnumPropertyItem { i32 11, ptr @.str.32, i32 0, ptr @.str.33, ptr @.str.1 }, %struct.EnumPropertyItem { i32 12, ptr @.str.34, i32 0, ptr @.str.35, ptr @.str.1 }, %struct.EnumPropertyItem { i32 13, ptr @.str.36, i32 0, ptr @.str.37, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 20483, ptr @.str.38, i32 0, ptr @.str.39, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20484, ptr @.str.40, i32 0, ptr @.str.41, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20485, ptr @.str.42, i32 0, ptr @.str.43, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20486, ptr @.str.44, i32 0, ptr @.str.45, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20487, ptr @.str.46, i32 0, ptr @.str.47, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 97, ptr @.str.48, i32 0, ptr @.str.48, ptr @.str.1 }, %struct.EnumPropertyItem { i32 98, ptr @.str.49, i32 0, ptr @.str.49, ptr @.str.1 }, %struct.EnumPropertyItem { i32 99, ptr @.str.50, i32 0, ptr @.str.50, ptr @.str.1 }, %struct.EnumPropertyItem { i32 100, ptr @.str.51, i32 0, ptr @.str.51, ptr @.str.1 }, %struct.EnumPropertyItem { i32 101, ptr @.str.52, i32 0, ptr @.str.52, ptr @.str.1 }, %struct.EnumPropertyItem { i32 102, ptr @.str.53, i32 0, ptr @.str.53, ptr @.str.1 }, %struct.EnumPropertyItem { i32 103, ptr @.str.54, i32 0, ptr @.str.54, ptr @.str.1 }, %struct.EnumPropertyItem { i32 104, ptr @.str.55, i32 0, ptr @.str.55, ptr @.str.1 }, %struct.EnumPropertyItem { i32 105, ptr @.str.56, i32 0, ptr @.str.56, ptr @.str.1 }, %struct.EnumPropertyItem { i32 106, ptr @.str.57, i32 0, ptr @.str.57, ptr @.str.1 }, %struct.EnumPropertyItem { i32 107, ptr @.str.58, i32 0, ptr @.str.58, ptr @.str.1 }, %struct.EnumPropertyItem { i32 108, ptr @.str.59, i32 0, ptr @.str.59, ptr @.str.1 }, %struct.EnumPropertyItem { i32 109, ptr @.str.60, i32 0, ptr @.str.60, ptr @.str.1 }, %struct.EnumPropertyItem { i32 110, ptr @.str.61, i32 0, ptr @.str.61, ptr @.str.1 }, %struct.EnumPropertyItem { i32 111, ptr @.str.62, i32 0, ptr @.str.62, ptr @.str.1 }, %struct.EnumPropertyItem { i32 112, ptr @.str.63, i32 0, ptr @.str.63, ptr @.str.1 }, %struct.EnumPropertyItem { i32 113, ptr @.str.64, i32 0, ptr @.str.64, ptr @.str.1 }, %struct.EnumPropertyItem { i32 114, ptr @.str.65, i32 0, ptr @.str.65, ptr @.str.1 }, %struct.EnumPropertyItem { i32 115, ptr @.str.66, i32 0, ptr @.str.66, ptr @.str.1 }, %struct.EnumPropertyItem { i32 116, ptr @.str.67, i32 0, ptr @.str.67, ptr @.str.1 }, %struct.EnumPropertyItem { i32 117, ptr @.str.68, i32 0, ptr @.str.68, ptr @.str.1 }, %struct.EnumPropertyItem { i32 118, ptr @.str.69, i32 0, ptr @.str.69, ptr @.str.1 }, %struct.EnumPropertyItem { i32 119, ptr @.str.70, i32 0, ptr @.str.70, ptr @.str.1 }, %struct.EnumPropertyItem { i32 120, ptr @.str.71, i32 0, ptr @.str.71, ptr @.str.1 }, %struct.EnumPropertyItem { i32 121, ptr @.str.72, i32 0, ptr @.str.72, ptr @.str.1 }, %struct.EnumPropertyItem { i32 122, ptr @.str.73, i32 0, ptr @.str.73, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 48, ptr @.str.74, i32 0, ptr @.str.75, ptr @.str.1 }, %struct.EnumPropertyItem { i32 49, ptr @.str.76, i32 0, ptr @.str.77, ptr @.str.1 }, %struct.EnumPropertyItem { i32 50, ptr @.str.78, i32 0, ptr @.str.79, ptr @.str.1 }, %struct.EnumPropertyItem { i32 51, ptr @.str.80, i32 0, ptr @.str.81, ptr @.str.1 }, %struct.EnumPropertyItem { i32 52, ptr @.str.82, i32 0, ptr @.str.83, ptr @.str.1 }, %struct.EnumPropertyItem { i32 53, ptr @.str.84, i32 0, ptr @.str.85, ptr @.str.1 }, %struct.EnumPropertyItem { i32 54, ptr @.str.86, i32 0, ptr @.str.87, ptr @.str.1 }, %struct.EnumPropertyItem { i32 55, ptr @.str.88, i32 0, ptr @.str.89, ptr @.str.1 }, %struct.EnumPropertyItem { i32 56, ptr @.str.90, i32 0, ptr @.str.91, ptr @.str.1 }, %struct.EnumPropertyItem { i32 57, ptr @.str.92, i32 0, ptr @.str.93, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 212, ptr @.str.94, i32 0, ptr @.str.95, ptr @.str.1 }, %struct.EnumPropertyItem { i32 213, ptr @.str.96, i32 0, ptr @.str.97, ptr @.str.1 }, %struct.EnumPropertyItem { i32 217, ptr @.str.98, i32 0, ptr @.str.99, ptr @.str.1 }, %struct.EnumPropertyItem { i32 214, ptr @.str.100, i32 0, ptr @.str.101, ptr @.str.1 }, %struct.EnumPropertyItem { i32 215, ptr @.str.102, i32 0, ptr @.str.103, ptr @.str.1 }, %struct.EnumPropertyItem { i32 216, ptr @.str.104, i32 0, ptr @.str.105, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 172, ptr @.str.106, i32 0, ptr @.str.107, ptr @.str.1 }, %struct.EnumPropertyItem { i32 173, ptr @.str.108, i32 0, ptr @.str.109, ptr @.str.1 }, %struct.EnumPropertyItem { i32 218, ptr @.str.110, i32 0, ptr @.str.111, ptr @.str.1 }, %struct.EnumPropertyItem { i32 219, ptr @.str.112, i32 0, ptr @.str.113, ptr @.str.1 }, %struct.EnumPropertyItem { i32 220, ptr @.str.114, i32 0, ptr @.str.115, ptr @.str.1 }, %struct.EnumPropertyItem { i32 221, ptr @.str.116, i32 0, ptr @.str.117, ptr @.str.1 }, %struct.EnumPropertyItem { i32 222, ptr @.str.118, i32 0, ptr @.str.119, ptr @.str.1 }, %struct.EnumPropertyItem { i32 223, ptr @.str.120, i32 0, ptr @.str.121, ptr @.str.1 }, %struct.EnumPropertyItem { i32 224, ptr @.str.122, i32 0, ptr @.str.123, ptr @.str.1 }, %struct.EnumPropertyItem { i32 225, ptr @.str.124, i32 0, ptr @.str.125, ptr @.str.1 }, %struct.EnumPropertyItem { i32 226, ptr @.str.126, i32 0, ptr @.str.127, ptr @.str.1 }, %struct.EnumPropertyItem { i32 227, ptr @.str.128, i32 0, ptr @.str.129, ptr @.str.1 }, %struct.EnumPropertyItem { i32 228, ptr @.str.130, i32 0, ptr @.str.131, ptr @.str.1 }, %struct.EnumPropertyItem { i32 229, ptr @.str.132, i32 0, ptr @.str.133, ptr @.str.1 }, %struct.EnumPropertyItem { i32 230, ptr @.str.134, i32 0, ptr @.str.135, ptr @.str.1 }, %struct.EnumPropertyItem { i32 232, ptr @.str.136, i32 0, ptr @.str.137, ptr @.str.1 }, %struct.EnumPropertyItem { i32 233, ptr @.str.138, i32 0, ptr @.str.139, ptr @.str.1 }, %struct.EnumPropertyItem { i32 234, ptr @.str.140, i32 0, ptr @.str.141, ptr @.str.1 }, %struct.EnumPropertyItem { i32 235, ptr @.str.142, i32 0, ptr @.str.143, ptr @.str.1 }, %struct.EnumPropertyItem { i32 236, ptr @.str.144, i32 0, ptr @.str.145, ptr @.str.1 }, %struct.EnumPropertyItem { i32 137, ptr @.str.146, i32 0, ptr @.str.147, ptr @.str.1 }, %struct.EnumPropertyItem { i32 138, ptr @.str.148, i32 0, ptr @.str.149, ptr @.str.1 }, %struct.EnumPropertyItem { i32 139, ptr @.str.150, i32 0, ptr @.str.151, ptr @.str.1 }, %struct.EnumPropertyItem { i32 140, ptr @.str.152, i32 0, ptr @.str.153, ptr @.str.1 }, %struct.EnumPropertyItem { i32 152, ptr @.str.154, i32 0, ptr @.str.155, ptr @.str.1 }, %struct.EnumPropertyItem { i32 154, ptr @.str.156, i32 0, ptr @.str.157, ptr @.str.1 }, %struct.EnumPropertyItem { i32 156, ptr @.str.158, i32 0, ptr @.str.159, ptr @.str.1 }, %struct.EnumPropertyItem { i32 158, ptr @.str.160, i32 0, ptr @.str.161, ptr @.str.1 }, %struct.EnumPropertyItem { i32 151, ptr @.str.162, i32 0, ptr @.str.163, ptr @.str.1 }, %struct.EnumPropertyItem { i32 153, ptr @.str.164, i32 0, ptr @.str.165, ptr @.str.1 }, %struct.EnumPropertyItem { i32 155, ptr @.str.166, i32 0, ptr @.str.167, ptr @.str.1 }, %struct.EnumPropertyItem { i32 157, ptr @.str.168, i32 0, ptr @.str.169, ptr @.str.1 }, %struct.EnumPropertyItem { i32 159, ptr @.str.170, i32 0, ptr @.str.171, ptr @.str.1 }, %struct.EnumPropertyItem { i32 199, ptr @.str.172, i32 0, ptr @.str.173, ptr @.str.1 }, %struct.EnumPropertyItem { i32 161, ptr @.str.174, i32 0, ptr @.str.175, ptr @.str.1 }, %struct.EnumPropertyItem { i32 160, ptr @.str.176, i32 0, ptr @.str.177, ptr @.str.1 }, %struct.EnumPropertyItem { i32 150, ptr @.str.178, i32 0, ptr @.str.179, ptr @.str.1 }, %struct.EnumPropertyItem { i32 162, ptr @.str.180, i32 0, ptr @.str.181, ptr @.str.1 }, %struct.EnumPropertyItem { i32 163, ptr @.str.182, i32 0, ptr @.str.183, ptr @.str.1 }, %struct.EnumPropertyItem { i32 164, ptr @.str.184, i32 0, ptr @.str.185, ptr @.str.1 }, %struct.EnumPropertyItem { i32 300, ptr @.str.186, i32 0, ptr @.str.186, ptr @.str.1 }, %struct.EnumPropertyItem { i32 301, ptr @.str.187, i32 0, ptr @.str.187, ptr @.str.1 }, %struct.EnumPropertyItem { i32 302, ptr @.str.188, i32 0, ptr @.str.188, ptr @.str.1 }, %struct.EnumPropertyItem { i32 303, ptr @.str.189, i32 0, ptr @.str.189, ptr @.str.1 }, %struct.EnumPropertyItem { i32 304, ptr @.str.190, i32 0, ptr @.str.190, ptr @.str.1 }, %struct.EnumPropertyItem { i32 305, ptr @.str.191, i32 0, ptr @.str.191, ptr @.str.1 }, %struct.EnumPropertyItem { i32 306, ptr @.str.192, i32 0, ptr @.str.192, ptr @.str.1 }, %struct.EnumPropertyItem { i32 307, ptr @.str.193, i32 0, ptr @.str.193, ptr @.str.1 }, %struct.EnumPropertyItem { i32 308, ptr @.str.194, i32 0, ptr @.str.194, ptr @.str.1 }, %struct.EnumPropertyItem { i32 309, ptr @.str.195, i32 0, ptr @.str.195, ptr @.str.1 }, %struct.EnumPropertyItem { i32 310, ptr @.str.196, i32 0, ptr @.str.196, ptr @.str.1 }, %struct.EnumPropertyItem { i32 311, ptr @.str.197, i32 0, ptr @.str.197, ptr @.str.1 }, %struct.EnumPropertyItem { i32 312, ptr @.str.198, i32 0, ptr @.str.198, ptr @.str.1 }, %struct.EnumPropertyItem { i32 313, ptr @.str.199, i32 0, ptr @.str.199, ptr @.str.1 }, %struct.EnumPropertyItem { i32 314, ptr @.str.200, i32 0, ptr @.str.200, ptr @.str.1 }, %struct.EnumPropertyItem { i32 315, ptr @.str.201, i32 0, ptr @.str.201, ptr @.str.1 }, %struct.EnumPropertyItem { i32 316, ptr @.str.202, i32 0, ptr @.str.202, ptr @.str.1 }, %struct.EnumPropertyItem { i32 317, ptr @.str.203, i32 0, ptr @.str.203, ptr @.str.1 }, %struct.EnumPropertyItem { i32 318, ptr @.str.204, i32 0, ptr @.str.204, ptr @.str.1 }, %struct.EnumPropertyItem { i32 165, ptr @.str.205, i32 0, ptr @.str.206, ptr @.str.1 }, %struct.EnumPropertyItem { i32 166, ptr @.str.207, i32 0, ptr @.str.208, ptr @.str.1 }, %struct.EnumPropertyItem { i32 167, ptr @.str.209, i32 0, ptr @.str.210, ptr @.str.1 }, %struct.EnumPropertyItem { i32 168, ptr @.str.211, i32 0, ptr @.str.212, ptr @.str.1 }, %struct.EnumPropertyItem { i32 169, ptr @.str.213, i32 0, ptr @.str.214, ptr @.str.1 }, %struct.EnumPropertyItem { i32 170, ptr @.str.215, i32 0, ptr @.str.216, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 174, ptr @.str.217, i32 0, ptr @.str.218, ptr @.str.1 }, %struct.EnumPropertyItem { i32 175, ptr @.str.219, i32 0, ptr @.str.220, ptr @.str.1 }, %struct.EnumPropertyItem { i32 176, ptr @.str.221, i32 0, ptr @.str.222, ptr @.str.1 }, %struct.EnumPropertyItem { i32 177, ptr @.str.223, i32 0, ptr @.str.224, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 -2, ptr @.str.225, i32 0, ptr @.str.226, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 260, ptr @.str.227, i32 0, ptr @.str.228, ptr @.str.1 }, %struct.EnumPropertyItem { i32 272, ptr @.str.229, i32 0, ptr @.str.230, ptr @.str.1 }, %struct.EnumPropertyItem { i32 273, ptr @.str.231, i32 0, ptr @.str.232, ptr @.str.1 }, %struct.EnumPropertyItem { i32 274, ptr @.str.233, i32 0, ptr @.str.234, ptr @.str.1 }, %struct.EnumPropertyItem { i32 275, ptr @.str.235, i32 0, ptr @.str.236, ptr @.str.1 }, %struct.EnumPropertyItem { i32 276, ptr @.str.237, i32 0, ptr @.str.238, ptr @.str.1 }, %struct.EnumPropertyItem { i32 277, ptr @.str.239, i32 0, ptr @.str.240, ptr @.str.1 }, %struct.EnumPropertyItem { i32 278, ptr @.str.241, i32 0, ptr @.str.242, ptr @.str.1 }, %struct.EnumPropertyItem { i32 279, ptr @.str.243, i32 0, ptr @.str.244, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 400, ptr @.str.245, i32 0, ptr @.str.246, ptr @.str.1 }, %struct.EnumPropertyItem { i32 401, ptr @.str.247, i32 0, ptr @.str.248, ptr @.str.1 }, %struct.EnumPropertyItem { i32 402, ptr @.str.249, i32 0, ptr @.str.250, ptr @.str.1 }, %struct.EnumPropertyItem { i32 403, ptr @.str.251, i32 0, ptr @.str.252, ptr @.str.1 }, %struct.EnumPropertyItem { i32 404, ptr @.str.253, i32 0, ptr @.str.254, ptr @.str.1 }, %struct.EnumPropertyItem { i32 405, ptr @.str.255, i32 0, ptr @.str.256, ptr @.str.1 }, %struct.EnumPropertyItem { i32 406, ptr @.str.257, i32 0, ptr @.str.258, ptr @.str.1 }, %struct.EnumPropertyItem { i32 407, ptr @.str.259, i32 0, ptr @.str.260, ptr @.str.1 }, %struct.EnumPropertyItem { i32 408, ptr @.str.261, i32 0, ptr @.str.262, ptr @.str.1 }, %struct.EnumPropertyItem { i32 409, ptr @.str.263, i32 0, ptr @.str.264, ptr @.str.1 }, %struct.EnumPropertyItem { i32 410, ptr @.str.265, i32 0, ptr @.str.266, ptr @.str.1 }, %struct.EnumPropertyItem { i32 411, ptr @.str.267, i32 0, ptr @.str.268, ptr @.str.1 }, %struct.EnumPropertyItem { i32 412, ptr @.str.269, i32 0, ptr @.str.270, ptr @.str.1 }, %struct.EnumPropertyItem { i32 413, ptr @.str.271, i32 0, ptr @.str.272, ptr @.str.1 }, %struct.EnumPropertyItem { i32 414, ptr @.str.273, i32 0, ptr @.str.274, ptr @.str.1 }, %struct.EnumPropertyItem { i32 415, ptr @.str.275, i32 0, ptr @.str.276, ptr @.str.1 }, %struct.EnumPropertyItem { i32 416, ptr @.str.277, i32 0, ptr @.str.278, ptr @.str.1 }, %struct.EnumPropertyItem { i32 417, ptr @.str.279, i32 0, ptr @.str.280, ptr @.str.1 }, %struct.EnumPropertyItem { i32 418, ptr @.str.281, i32 0, ptr @.str.282, ptr @.str.1 }, %struct.EnumPropertyItem { i32 419, ptr @.str.283, i32 0, ptr @.str.284, ptr @.str.1 }, %struct.EnumPropertyItem { i32 420, ptr @.str.285, i32 0, ptr @.str.286, ptr @.str.1 }, %struct.EnumPropertyItem { i32 421, ptr @.str.287, i32 0, ptr @.str.288, ptr @.str.1 }, %struct.EnumPropertyItem { i32 422, ptr @.str.289, i32 0, ptr @.str.290, ptr null }, %struct.EnumPropertyItem { i32 423, ptr @.str.291, i32 0, ptr @.str.292, ptr null }, %struct.EnumPropertyItem { i32 424, ptr @.str.293, i32 0, ptr @.str.294, ptr null }, %struct.EnumPropertyItem { i32 425, ptr @.str.295, i32 0, ptr @.str.296, ptr null }, %struct.EnumPropertyItem { i32 426, ptr @.str.297, i32 0, ptr @.str.298, ptr @.str.1 }, %struct.EnumPropertyItem { i32 427, ptr @.str.299, i32 0, ptr @.str.300, ptr @.str.1 }, %struct.EnumPropertyItem { i32 428, ptr @.str.301, i32 0, ptr @.str.302, ptr @.str.1 }, %struct.EnumPropertyItem { i32 429, ptr @.str.303, i32 0, ptr @.str.304, ptr @.str.1 }, %struct.EnumPropertyItem { i32 430, ptr @.str.305, i32 0, ptr @.str.306, ptr @.str.1 }, %struct.EnumPropertyItem { i32 431, ptr @.str.307, i32 0, ptr @.str.308, ptr @.str.1 }, %struct.EnumPropertyItem { i32 432, ptr @.str.309, i32 0, ptr @.str.310, ptr @.str.1 }, %struct.EnumPropertyItem { i32 433, ptr @.str.311, i32 0, ptr @.str.312, ptr @.str.1 }, %struct.EnumPropertyItem { i32 434, ptr @.str.313, i32 0, ptr @.str.314, ptr @.str.1 }, %struct.EnumPropertyItem { i32 435, ptr @.str.315, i32 0, ptr @.str.316, ptr @.str.1 }, %struct.EnumPropertyItem { i32 436, ptr @.str.317, i32 0, ptr @.str.318, ptr @.str.1 }, %struct.EnumPropertyItem { i32 437, ptr @.str.319, i32 0, ptr @.str.320, ptr @.str.1 }, %struct.EnumPropertyItem { i32 438, ptr @.str.321, i32 0, ptr @.str.322, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_KeyMapItem_propvalue = dso_local global %struct.EnumPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItem_active, ptr @rna_KeyMapItem_show_expanded, i32 -1, ptr @.str.688, i32 3, ptr @.str.689, ptr @.str.715, i32 0, ptr @.str.415, i32 4, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_KeyMapItem_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMapItem_propvalue_get, ptr @KeyMapItem_propvalue_set, ptr @rna_KeyMapItem_propvalue_itemf, ptr null, ptr null, ptr null, ptr @rna_KeyMapItem_propvalue_items, i32 1, i32 0 }, align 8
@.str.712 = private unnamed_addr constant [14 x i8] c"show_expanded\00", align 1
@.str.713 = private unnamed_addr constant [9 x i8] c"Expanded\00", align 1
@.str.714 = private unnamed_addr constant [62 x i8] c"Show key map event and property details in the user interface\00", align 1
@rna_KeyMapItem_active = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItem_is_user_modified, ptr @rna_KeyMapItem_propvalue, i32 -1, ptr @.str.611, i32 4099, ptr @.str.716, ptr @.str.717, i32 38, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr @rna_KeyMapItem_update, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMapItem_active_get, ptr @KeyMapItem_active_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.715 = private unnamed_addr constant [53 x i8] c"The value this event translates to in a modal keymap\00", align 1
@rna_KeyMapItem_propvalue_items = internal global [2 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str, i32 0, ptr @.str.1, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@rna_KeyMapItem_is_user_modified = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItem_is_user_defined, ptr @rna_KeyMapItem_active, i32 -1, ptr @.str.662, i32 2, ptr @.str.718, ptr @.str.719, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMapItem_is_user_modified_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.716 = private unnamed_addr constant [7 x i8] c"Active\00", align 1
@.str.717 = private unnamed_addr constant [28 x i8] c"Activate or deactivate item\00", align 1
@rna_KeyMapItem_is_user_defined = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_KeyMapItem_is_user_modified, i32 -1, ptr @.str.636, i32 2, ptr @.str.637, ptr @.str.720, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr @KeyMapItem_is_user_defined_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@.str.718 = private unnamed_addr constant [14 x i8] c"User Modified\00", align 1
@.str.719 = private unnamed_addr constant [41 x i8] c"Is this keymap item modified by the user\00", align 1
@.str.720 = private unnamed_addr constant [71 x i8] c"Is this keymap item user defined (doesn't just replace a builtin item)\00", align 1
@rna_KeyMapItem_compare_result = dso_local global %struct.BoolPropertyRNA { %struct.PropertyRNA { ptr null, ptr @rna_KeyMapItem_compare_item, i32 -1, ptr @.str.442, i32 11, ptr @.str.721, ptr @.str.1, i32 0, ptr @.str.415, i32 0, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null }, align 8
@rna_KeyMapItem_compare_item = dso_local global %struct.PointerPropertyRNA { %struct.PropertyRNA { ptr @rna_KeyMapItem_compare_result, ptr null, i32 -1, ptr @.str.675, i32 8388612, ptr @.str.676, ptr @.str.1, i32 0, ptr @.str.415, i32 5, i32 0, ptr null, i32 0, [3 x i32] zeroinitializer, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 -1, ptr null, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr @RNA_KeyMapItem }, align 8
@.str.721 = private unnamed_addr constant [18 x i8] c"Comparison result\00", align 1
@.str.722 = private unnamed_addr constant [8 x i8] c"compare\00", align 1
@rna_KeyMapItem_compare_func = dso_local global %struct.FunctionRNA { %struct.ContainerRNA { ptr null, ptr null, ptr null, %struct.ListBase { ptr @rna_KeyMapItem_compare_item, ptr @rna_KeyMapItem_compare_result } }, ptr @.str.722, i32 0, ptr @.str.722, ptr @KeyMapItem_compare_call, ptr @rna_KeyMapItem_compare_result }, align 8
@RNA_World = external global %struct.StructRNA, align 8
@.str.723 = private unnamed_addr constant [11 x i8] c"KeyMapItem\00", align 1
@.str.724 = private unnamed_addr constant [13 x i8] c"Key Map Item\00", align 1
@.str.725 = private unnamed_addr constant [18 x i8] c"Item in a Key Map\00", align 1
@U = external global %struct.UserDef, align 8
@PointerRNA_NULL = external local_unnamed_addr constant %struct.PointerRNA, align 8
@wm_progress_state.0 = internal unnamed_addr global float 0.000000e+00, align 4
@wm_progress_state.1 = internal unnamed_addr global float 0.000000e+00, align 4
@wm_progress_state.2 = internal unnamed_addr global i1 false, align 4
@.str.726 = private unnamed_addr constant [33 x i8] c"KeyConfig '%s' cannot be removed\00", align 1
@.str.727 = private unnamed_addr constant [23 x i8] c"Not a non-modal keymap\00", align 1
@.str.728 = private unnamed_addr constant [19 x i8] c"Not a modal keymap\00", align 1
@.str.729 = private unnamed_addr constant [34 x i8] c"Property value not in enumeration\00", align 1
@.str.730 = private unnamed_addr constant [44 x i8] c"KeyMapItem '%s' cannot be removed from '%s'\00", align 1
@.str.731 = private unnamed_addr constant [9 x i8] c"REGISTER\00", align 1
@.str.732 = private unnamed_addr constant [9 x i8] c"Register\00", align 1
@.str.733 = private unnamed_addr constant [62 x i8] c"Display in the info window and support the redo toolbar panel\00", align 1
@.str.734 = private unnamed_addr constant [5 x i8] c"UNDO\00", align 1
@.str.735 = private unnamed_addr constant [5 x i8] c"Undo\00", align 1
@.str.736 = private unnamed_addr constant [46 x i8] c"Push an undo event (needed for operator redo)\00", align 1
@.str.737 = private unnamed_addr constant [9 x i8] c"BLOCKING\00", align 1
@.str.738 = private unnamed_addr constant [9 x i8] c"Blocking\00", align 1
@.str.739 = private unnamed_addr constant [42 x i8] c"Block anything else from using the cursor\00", align 1
@.str.740 = private unnamed_addr constant [6 x i8] c"MACRO\00", align 1
@.str.741 = private unnamed_addr constant [39 x i8] c"Use to check if an operator is a macro\00", align 1
@.str.742 = private unnamed_addr constant [13 x i8] c"GRAB_POINTER\00", align 1
@.str.743 = private unnamed_addr constant [13 x i8] c"Grab Pointer\00", align 1
@.str.744 = private unnamed_addr constant [92 x i8] c"Use so the operator grabs the mouse focus, enables wrapping when continuous grab is enabled\00", align 1
@.str.745 = private unnamed_addr constant [7 x i8] c"PRESET\00", align 1
@.str.746 = private unnamed_addr constant [7 x i8] c"Preset\00", align 1
@.str.747 = private unnamed_addr constant [52 x i8] c"Display a preset button with the operators settings\00", align 1
@.str.748 = private unnamed_addr constant [9 x i8] c"INTERNAL\00", align 1
@.str.749 = private unnamed_addr constant [9 x i8] c"Internal\00", align 1
@.str.750 = private unnamed_addr constant [41 x i8] c"Removes the operator from search results\00", align 1
@.str.751 = private unnamed_addr constant [29 x i8] c"RNA_OperatorProperties group\00", align 1
@.str.752 = private unnamed_addr constant [9 x i8] c"QUESTION\00", align 1
@.str.753 = private unnamed_addr constant [7 x i8] c"CANCEL\00", align 1
@.str.754 = private unnamed_addr constant [11 x i8] c"TRIA_RIGHT\00", align 1
@.str.755 = private unnamed_addr constant [10 x i8] c"TRIA_DOWN\00", align 1
@.str.756 = private unnamed_addr constant [10 x i8] c"TRIA_LEFT\00", align 1
@.str.757 = private unnamed_addr constant [8 x i8] c"TRIA_UP\00", align 1
@.str.758 = private unnamed_addr constant [16 x i8] c"ARROW_LEFTRIGHT\00", align 1
@.str.759 = private unnamed_addr constant [5 x i8] c"PLUS\00", align 1
@.str.760 = private unnamed_addr constant [20 x i8] c"DISCLOSURE_TRI_DOWN\00", align 1
@.str.761 = private unnamed_addr constant [21 x i8] c"DISCLOSURE_TRI_RIGHT\00", align 1
@.str.762 = private unnamed_addr constant [13 x i8] c"RADIOBUT_OFF\00", align 1
@.str.763 = private unnamed_addr constant [12 x i8] c"RADIOBUT_ON\00", align 1
@.str.764 = private unnamed_addr constant [11 x i8] c"MENU_PANEL\00", align 1
@.str.765 = private unnamed_addr constant [8 x i8] c"BLENDER\00", align 1
@.str.766 = private unnamed_addr constant [5 x i8] c"GRIP\00", align 1
@.str.767 = private unnamed_addr constant [4 x i8] c"DOT\00", align 1
@.str.768 = private unnamed_addr constant [13 x i8] c"COLLAPSEMENU\00", align 1
@.str.769 = private unnamed_addr constant [8 x i8] c"GO_LEFT\00", align 1
@.str.770 = private unnamed_addr constant [5 x i8] c"PLUG\00", align 1
@.str.771 = private unnamed_addr constant [3 x i8] c"UI\00", align 1
@.str.772 = private unnamed_addr constant [5 x i8] c"NODE\00", align 1
@.str.773 = private unnamed_addr constant [9 x i8] c"NODE_SEL\00", align 1
@.str.774 = private unnamed_addr constant [11 x i8] c"FULLSCREEN\00", align 1
@.str.775 = private unnamed_addr constant [12 x i8] c"SPLITSCREEN\00", align 1
@.str.776 = private unnamed_addr constant [16 x i8] c"RIGHTARROW_THIN\00", align 1
@.str.777 = private unnamed_addr constant [11 x i8] c"BORDERMOVE\00", align 1
@.str.778 = private unnamed_addr constant [9 x i8] c"VIEWZOOM\00", align 1
@.str.779 = private unnamed_addr constant [7 x i8] c"ZOOMIN\00", align 1
@.str.780 = private unnamed_addr constant [8 x i8] c"ZOOMOUT\00", align 1
@.str.781 = private unnamed_addr constant [12 x i8] c"PANEL_CLOSE\00", align 1
@.str.782 = private unnamed_addr constant [8 x i8] c"COPY_ID\00", align 1
@.str.783 = private unnamed_addr constant [10 x i8] c"LINK_AREA\00", align 1
@.str.784 = private unnamed_addr constant [5 x i8] c"AUTO\00", align 1
@.str.785 = private unnamed_addr constant [15 x i8] c"CHECKBOX_DEHLT\00", align 1
@.str.786 = private unnamed_addr constant [13 x i8] c"CHECKBOX_HLT\00", align 1
@.str.787 = private unnamed_addr constant [9 x i8] c"UNLOCKED\00", align 1
@.str.788 = private unnamed_addr constant [7 x i8] c"LOCKED\00", align 1
@.str.789 = private unnamed_addr constant [9 x i8] c"UNPINNED\00", align 1
@.str.790 = private unnamed_addr constant [7 x i8] c"PINNED\00", align 1
@.str.791 = private unnamed_addr constant [12 x i8] c"SCREEN_BACK\00", align 1
@.str.792 = private unnamed_addr constant [11 x i8] c"RIGHTARROW\00", align 1
@.str.793 = private unnamed_addr constant [14 x i8] c"DOWNARROW_HLT\00", align 1
@.str.794 = private unnamed_addr constant [7 x i8] c"DOTSUP\00", align 1
@.str.795 = private unnamed_addr constant [9 x i8] c"DOTSDOWN\00", align 1
@.str.796 = private unnamed_addr constant [5 x i8] c"LINK\00", align 1
@.str.797 = private unnamed_addr constant [7 x i8] c"INLINK\00", align 1
@.str.798 = private unnamed_addr constant [7 x i8] c"PLUGIN\00", align 1
@.str.799 = private unnamed_addr constant [5 x i8] c"HELP\00", align 1
@.str.800 = private unnamed_addr constant [14 x i8] c"GHOST_ENABLED\00", align 1
@.str.801 = private unnamed_addr constant [6 x i8] c"COLOR\00", align 1
@.str.802 = private unnamed_addr constant [7 x i8] c"LINKED\00", align 1
@.str.803 = private unnamed_addr constant [9 x i8] c"UNLINKED\00", align 1
@.str.804 = private unnamed_addr constant [9 x i8] c"ZOOM_ALL\00", align 1
@.str.805 = private unnamed_addr constant [14 x i8] c"ZOOM_SELECTED\00", align 1
@.str.806 = private unnamed_addr constant [14 x i8] c"ZOOM_PREVIOUS\00", align 1
@.str.807 = private unnamed_addr constant [8 x i8] c"ZOOM_IN\00", align 1
@.str.808 = private unnamed_addr constant [9 x i8] c"ZOOM_OUT\00", align 1
@.str.809 = private unnamed_addr constant [14 x i8] c"RENDER_REGION\00", align 1
@.str.810 = private unnamed_addr constant [12 x i8] c"BORDER_RECT\00", align 1
@.str.811 = private unnamed_addr constant [13 x i8] c"BORDER_LASSO\00", align 1
@.str.812 = private unnamed_addr constant [7 x i8] c"FREEZE\00", align 1
@.str.813 = private unnamed_addr constant [16 x i8] c"STYLUS_PRESSURE\00", align 1
@.str.814 = private unnamed_addr constant [15 x i8] c"GHOST_DISABLED\00", align 1
@.str.815 = private unnamed_addr constant [4 x i8] c"NEW\00", align 1
@.str.816 = private unnamed_addr constant [10 x i8] c"FILE_TICK\00", align 1
@.str.817 = private unnamed_addr constant [5 x i8] c"QUIT\00", align 1
@.str.818 = private unnamed_addr constant [4 x i8] c"URL\00", align 1
@.str.819 = private unnamed_addr constant [13 x i8] c"RECOVER_LAST\00", align 1
@.str.820 = private unnamed_addr constant [17 x i8] c"FULLSCREEN_ENTER\00", align 1
@.str.821 = private unnamed_addr constant [16 x i8] c"FULLSCREEN_EXIT\00", align 1
@.str.822 = private unnamed_addr constant [7 x i8] c"BLANK1\00", align 1
@.str.823 = private unnamed_addr constant [5 x i8] c"LAMP\00", align 1
@.str.824 = private unnamed_addr constant [9 x i8] c"MATERIAL\00", align 1
@.str.825 = private unnamed_addr constant [8 x i8] c"TEXTURE\00", align 1
@.str.826 = private unnamed_addr constant [5 x i8] c"ANIM\00", align 1
@.str.827 = private unnamed_addr constant [6 x i8] c"WORLD\00", align 1
@.str.828 = private unnamed_addr constant [6 x i8] c"SCENE\00", align 1
@.str.829 = private unnamed_addr constant [5 x i8] c"EDIT\00", align 1
@.str.830 = private unnamed_addr constant [5 x i8] c"GAME\00", align 1
@.str.831 = private unnamed_addr constant [6 x i8] c"RADIO\00", align 1
@.str.832 = private unnamed_addr constant [7 x i8] c"SCRIPT\00", align 1
@.str.833 = private unnamed_addr constant [10 x i8] c"PARTICLES\00", align 1
@.str.834 = private unnamed_addr constant [8 x i8] c"PHYSICS\00", align 1
@.str.835 = private unnamed_addr constant [8 x i8] c"SPEAKER\00", align 1
@.str.836 = private unnamed_addr constant [15 x i8] c"TEXTURE_SHADED\00", align 1
@.str.837 = private unnamed_addr constant [7 x i8] c"VIEW3D\00", align 1
@.str.838 = private unnamed_addr constant [4 x i8] c"IPO\00", align 1
@.str.839 = private unnamed_addr constant [5 x i8] c"OOPS\00", align 1
@.str.840 = private unnamed_addr constant [5 x i8] c"BUTS\00", align 1
@.str.841 = private unnamed_addr constant [8 x i8] c"FILESEL\00", align 1
@.str.842 = private unnamed_addr constant [10 x i8] c"IMAGE_COL\00", align 1
@.str.843 = private unnamed_addr constant [9 x i8] c"SEQUENCE\00", align 1
@.str.844 = private unnamed_addr constant [7 x i8] c"IMASEL\00", align 1
@.str.845 = private unnamed_addr constant [6 x i8] c"SOUND\00", align 1
@.str.846 = private unnamed_addr constant [7 x i8] c"ACTION\00", align 1
@.str.847 = private unnamed_addr constant [4 x i8] c"NLA\00", align 1
@.str.848 = private unnamed_addr constant [10 x i8] c"SCRIPTWIN\00", align 1
@.str.849 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@.str.850 = private unnamed_addr constant [9 x i8] c"NODETREE\00", align 1
@.str.851 = private unnamed_addr constant [6 x i8] c"LOGIC\00", align 1
@.str.852 = private unnamed_addr constant [8 x i8] c"CONSOLE\00", align 1
@.str.853 = private unnamed_addr constant [12 x i8] c"PREFERENCES\00", align 1
@.str.854 = private unnamed_addr constant [5 x i8] c"CLIP\00", align 1
@.str.855 = private unnamed_addr constant [14 x i8] c"ASSET_MANAGER\00", align 1
@.str.856 = private unnamed_addr constant [16 x i8] c"OBJECT_DATAMODE\00", align 1
@.str.857 = private unnamed_addr constant [13 x i8] c"EDITMODE_HLT\00", align 1
@.str.858 = private unnamed_addr constant [12 x i8] c"FACESEL_HLT\00", align 1
@.str.859 = private unnamed_addr constant [11 x i8] c"VPAINT_HLT\00", align 1
@.str.860 = private unnamed_addr constant [11 x i8] c"TPAINT_HLT\00", align 1
@.str.861 = private unnamed_addr constant [11 x i8] c"WPAINT_HLT\00", align 1
@.str.862 = private unnamed_addr constant [15 x i8] c"SCULPTMODE_HLT\00", align 1
@.str.863 = private unnamed_addr constant [9 x i8] c"POSE_HLT\00", align 1
@.str.864 = private unnamed_addr constant [13 x i8] c"PARTICLEMODE\00", align 1
@.str.865 = private unnamed_addr constant [11 x i8] c"LIGHTPAINT\00", align 1
@.str.866 = private unnamed_addr constant [11 x i8] c"SCENE_DATA\00", align 1
@.str.867 = private unnamed_addr constant [13 x i8] c"RENDERLAYERS\00", align 1
@.str.868 = private unnamed_addr constant [11 x i8] c"WORLD_DATA\00", align 1
@.str.869 = private unnamed_addr constant [12 x i8] c"OBJECT_DATA\00", align 1
@.str.870 = private unnamed_addr constant [10 x i8] c"MESH_DATA\00", align 1
@.str.871 = private unnamed_addr constant [11 x i8] c"CURVE_DATA\00", align 1
@.str.872 = private unnamed_addr constant [10 x i8] c"META_DATA\00", align 1
@.str.873 = private unnamed_addr constant [13 x i8] c"LATTICE_DATA\00", align 1
@.str.874 = private unnamed_addr constant [10 x i8] c"LAMP_DATA\00", align 1
@.str.875 = private unnamed_addr constant [14 x i8] c"MATERIAL_DATA\00", align 1
@.str.876 = private unnamed_addr constant [13 x i8] c"TEXTURE_DATA\00", align 1
@.str.877 = private unnamed_addr constant [10 x i8] c"ANIM_DATA\00", align 1
@.str.878 = private unnamed_addr constant [12 x i8] c"CAMERA_DATA\00", align 1
@.str.879 = private unnamed_addr constant [14 x i8] c"PARTICLE_DATA\00", align 1
@.str.880 = private unnamed_addr constant [20 x i8] c"LIBRARY_DATA_DIRECT\00", align 1
@.str.881 = private unnamed_addr constant [6 x i8] c"GROUP\00", align 1
@.str.882 = private unnamed_addr constant [14 x i8] c"ARMATURE_DATA\00", align 1
@.str.883 = private unnamed_addr constant [10 x i8] c"POSE_DATA\00", align 1
@.str.884 = private unnamed_addr constant [10 x i8] c"BONE_DATA\00", align 1
@.str.885 = private unnamed_addr constant [11 x i8] c"CONSTRAINT\00", align 1
@.str.886 = private unnamed_addr constant [14 x i8] c"SHAPEKEY_DATA\00", align 1
@.str.887 = private unnamed_addr constant [16 x i8] c"CONSTRAINT_BONE\00", align 1
@.str.888 = private unnamed_addr constant [14 x i8] c"CAMERA_STEREO\00", align 1
@.str.889 = private unnamed_addr constant [8 x i8] c"PACKAGE\00", align 1
@.str.890 = private unnamed_addr constant [12 x i8] c"UGLYPACKAGE\00", align 1
@.str.891 = private unnamed_addr constant [11 x i8] c"BRUSH_DATA\00", align 1
@.str.892 = private unnamed_addr constant [11 x i8] c"IMAGE_DATA\00", align 1
@.str.893 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1
@.str.894 = private unnamed_addr constant [7 x i8] c"FCURVE\00", align 1
@.str.895 = private unnamed_addr constant [10 x i8] c"FONT_DATA\00", align 1
@.str.896 = private unnamed_addr constant [14 x i8] c"RENDER_RESULT\00", align 1
@.str.897 = private unnamed_addr constant [13 x i8] c"SURFACE_DATA\00", align 1
@.str.898 = private unnamed_addr constant [11 x i8] c"EMPTY_DATA\00", align 1
@.str.899 = private unnamed_addr constant [9 x i8] c"SETTINGS\00", align 1
@.str.900 = private unnamed_addr constant [17 x i8] c"RENDER_ANIMATION\00", align 1
@.str.901 = private unnamed_addr constant [13 x i8] c"RENDER_STILL\00", align 1
@.str.902 = private unnamed_addr constant [6 x i8] c"BOIDS\00", align 1
@.str.903 = private unnamed_addr constant [8 x i8] c"STRANDS\00", align 1
@.str.904 = private unnamed_addr constant [22 x i8] c"LIBRARY_DATA_INDIRECT\00", align 1
@.str.905 = private unnamed_addr constant [13 x i8] c"GREASEPENCIL\00", align 1
@.str.906 = private unnamed_addr constant [10 x i8] c"LINE_DATA\00", align 1
@.str.907 = private unnamed_addr constant [11 x i8] c"GROUP_BONE\00", align 1
@.str.908 = private unnamed_addr constant [13 x i8] c"GROUP_VERTEX\00", align 1
@.str.909 = private unnamed_addr constant [11 x i8] c"GROUP_VCOL\00", align 1
@.str.910 = private unnamed_addr constant [10 x i8] c"GROUP_UVS\00", align 1
@.str.911 = private unnamed_addr constant [8 x i8] c"RNA_ADD\00", align 1
@.str.912 = private unnamed_addr constant [18 x i8] c"OUTLINER_OB_EMPTY\00", align 1
@.str.913 = private unnamed_addr constant [17 x i8] c"OUTLINER_OB_MESH\00", align 1
@.str.914 = private unnamed_addr constant [18 x i8] c"OUTLINER_OB_CURVE\00", align 1
@.str.915 = private unnamed_addr constant [20 x i8] c"OUTLINER_OB_LATTICE\00", align 1
@.str.916 = private unnamed_addr constant [17 x i8] c"OUTLINER_OB_META\00", align 1
@.str.917 = private unnamed_addr constant [17 x i8] c"OUTLINER_OB_LAMP\00", align 1
@.str.918 = private unnamed_addr constant [19 x i8] c"OUTLINER_OB_CAMERA\00", align 1
@.str.919 = private unnamed_addr constant [21 x i8] c"OUTLINER_OB_ARMATURE\00", align 1
@.str.920 = private unnamed_addr constant [17 x i8] c"OUTLINER_OB_FONT\00", align 1
@.str.921 = private unnamed_addr constant [20 x i8] c"OUTLINER_OB_SURFACE\00", align 1
@.str.922 = private unnamed_addr constant [20 x i8] c"OUTLINER_OB_SPEAKER\00", align 1
@.str.923 = private unnamed_addr constant [18 x i8] c"RESTRICT_VIEW_OFF\00", align 1
@.str.924 = private unnamed_addr constant [17 x i8] c"RESTRICT_VIEW_ON\00", align 1
@.str.925 = private unnamed_addr constant [20 x i8] c"RESTRICT_SELECT_OFF\00", align 1
@.str.926 = private unnamed_addr constant [19 x i8] c"RESTRICT_SELECT_ON\00", align 1
@.str.927 = private unnamed_addr constant [20 x i8] c"RESTRICT_RENDER_OFF\00", align 1
@.str.928 = private unnamed_addr constant [19 x i8] c"RESTRICT_RENDER_ON\00", align 1
@.str.929 = private unnamed_addr constant [20 x i8] c"OUTLINER_DATA_EMPTY\00", align 1
@.str.930 = private unnamed_addr constant [19 x i8] c"OUTLINER_DATA_MESH\00", align 1
@.str.931 = private unnamed_addr constant [20 x i8] c"OUTLINER_DATA_CURVE\00", align 1
@.str.932 = private unnamed_addr constant [22 x i8] c"OUTLINER_DATA_LATTICE\00", align 1
@.str.933 = private unnamed_addr constant [19 x i8] c"OUTLINER_DATA_META\00", align 1
@.str.934 = private unnamed_addr constant [19 x i8] c"OUTLINER_DATA_LAMP\00", align 1
@.str.935 = private unnamed_addr constant [21 x i8] c"OUTLINER_DATA_CAMERA\00", align 1
@.str.936 = private unnamed_addr constant [23 x i8] c"OUTLINER_DATA_ARMATURE\00", align 1
@.str.937 = private unnamed_addr constant [19 x i8] c"OUTLINER_DATA_FONT\00", align 1
@.str.938 = private unnamed_addr constant [22 x i8] c"OUTLINER_DATA_SURFACE\00", align 1
@.str.939 = private unnamed_addr constant [22 x i8] c"OUTLINER_DATA_SPEAKER\00", align 1
@.str.940 = private unnamed_addr constant [19 x i8] c"OUTLINER_DATA_POSE\00", align 1
@.str.941 = private unnamed_addr constant [11 x i8] c"MESH_PLANE\00", align 1
@.str.942 = private unnamed_addr constant [10 x i8] c"MESH_CUBE\00", align 1
@.str.943 = private unnamed_addr constant [12 x i8] c"MESH_CIRCLE\00", align 1
@.str.944 = private unnamed_addr constant [14 x i8] c"MESH_UVSPHERE\00", align 1
@.str.945 = private unnamed_addr constant [15 x i8] c"MESH_ICOSPHERE\00", align 1
@.str.946 = private unnamed_addr constant [10 x i8] c"MESH_GRID\00", align 1
@.str.947 = private unnamed_addr constant [12 x i8] c"MESH_MONKEY\00", align 1
@.str.948 = private unnamed_addr constant [14 x i8] c"MESH_CYLINDER\00", align 1
@.str.949 = private unnamed_addr constant [11 x i8] c"MESH_TORUS\00", align 1
@.str.950 = private unnamed_addr constant [10 x i8] c"MESH_CONE\00", align 1
@.str.951 = private unnamed_addr constant [11 x i8] c"LAMP_POINT\00", align 1
@.str.952 = private unnamed_addr constant [9 x i8] c"LAMP_SUN\00", align 1
@.str.953 = private unnamed_addr constant [10 x i8] c"LAMP_SPOT\00", align 1
@.str.954 = private unnamed_addr constant [10 x i8] c"LAMP_HEMI\00", align 1
@.str.955 = private unnamed_addr constant [10 x i8] c"LAMP_AREA\00", align 1
@.str.956 = private unnamed_addr constant [11 x i8] c"META_EMPTY\00", align 1
@.str.957 = private unnamed_addr constant [11 x i8] c"META_PLANE\00", align 1
@.str.958 = private unnamed_addr constant [10 x i8] c"META_CUBE\00", align 1
@.str.959 = private unnamed_addr constant [10 x i8] c"META_BALL\00", align 1
@.str.960 = private unnamed_addr constant [15 x i8] c"META_ELLIPSOID\00", align 1
@.str.961 = private unnamed_addr constant [13 x i8] c"META_CAPSULE\00", align 1
@.str.962 = private unnamed_addr constant [15 x i8] c"SURFACE_NCURVE\00", align 1
@.str.963 = private unnamed_addr constant [16 x i8] c"SURFACE_NCIRCLE\00", align 1
@.str.964 = private unnamed_addr constant [17 x i8] c"SURFACE_NSURFACE\00", align 1
@.str.965 = private unnamed_addr constant [18 x i8] c"SURFACE_NCYLINDER\00", align 1
@.str.966 = private unnamed_addr constant [16 x i8] c"SURFACE_NSPHERE\00", align 1
@.str.967 = private unnamed_addr constant [15 x i8] c"SURFACE_NTORUS\00", align 1
@.str.968 = private unnamed_addr constant [15 x i8] c"CURVE_BEZCURVE\00", align 1
@.str.969 = private unnamed_addr constant [16 x i8] c"CURVE_BEZCIRCLE\00", align 1
@.str.970 = private unnamed_addr constant [13 x i8] c"CURVE_NCURVE\00", align 1
@.str.971 = private unnamed_addr constant [14 x i8] c"CURVE_NCIRCLE\00", align 1
@.str.972 = private unnamed_addr constant [11 x i8] c"CURVE_PATH\00", align 1
@.str.973 = private unnamed_addr constant [10 x i8] c"COLOR_RED\00", align 1
@.str.974 = private unnamed_addr constant [12 x i8] c"COLOR_GREEN\00", align 1
@.str.975 = private unnamed_addr constant [11 x i8] c"COLOR_BLUE\00", align 1
@.str.976 = private unnamed_addr constant [15 x i8] c"TRIA_RIGHT_BAR\00", align 1
@.str.977 = private unnamed_addr constant [14 x i8] c"TRIA_DOWN_BAR\00", align 1
@.str.978 = private unnamed_addr constant [14 x i8] c"TRIA_LEFT_BAR\00", align 1
@.str.979 = private unnamed_addr constant [12 x i8] c"TRIA_UP_BAR\00", align 1
@.str.980 = private unnamed_addr constant [12 x i8] c"FORCE_FORCE\00", align 1
@.str.981 = private unnamed_addr constant [11 x i8] c"FORCE_WIND\00", align 1
@.str.982 = private unnamed_addr constant [13 x i8] c"FORCE_VORTEX\00", align 1
@.str.983 = private unnamed_addr constant [15 x i8] c"FORCE_MAGNETIC\00", align 1
@.str.984 = private unnamed_addr constant [15 x i8] c"FORCE_HARMONIC\00", align 1
@.str.985 = private unnamed_addr constant [13 x i8] c"FORCE_CHARGE\00", align 1
@.str.986 = private unnamed_addr constant [19 x i8] c"FORCE_LENNARDJONES\00", align 1
@.str.987 = private unnamed_addr constant [14 x i8] c"FORCE_TEXTURE\00", align 1
@.str.988 = private unnamed_addr constant [12 x i8] c"FORCE_CURVE\00", align 1
@.str.989 = private unnamed_addr constant [11 x i8] c"FORCE_BOID\00", align 1
@.str.990 = private unnamed_addr constant [17 x i8] c"FORCE_TURBULENCE\00", align 1
@.str.991 = private unnamed_addr constant [11 x i8] c"FORCE_DRAG\00", align 1
@.str.992 = private unnamed_addr constant [16 x i8] c"FORCE_SMOKEFLOW\00", align 1
@.str.993 = private unnamed_addr constant [9 x i8] c"MODIFIER\00", align 1
@.str.994 = private unnamed_addr constant [9 x i8] c"MOD_WAVE\00", align 1
@.str.995 = private unnamed_addr constant [10 x i8] c"MOD_BUILD\00", align 1
@.str.996 = private unnamed_addr constant [10 x i8] c"MOD_DECIM\00", align 1
@.str.997 = private unnamed_addr constant [11 x i8] c"MOD_MIRROR\00", align 1
@.str.998 = private unnamed_addr constant [9 x i8] c"MOD_SOFT\00", align 1
@.str.999 = private unnamed_addr constant [12 x i8] c"MOD_SUBSURF\00", align 1
@.str.1000 = private unnamed_addr constant [5 x i8] c"HOOK\00", align 1
@.str.1001 = private unnamed_addr constant [12 x i8] c"MOD_PHYSICS\00", align 1
@.str.1002 = private unnamed_addr constant [14 x i8] c"MOD_PARTICLES\00", align 1
@.str.1003 = private unnamed_addr constant [12 x i8] c"MOD_BOOLEAN\00", align 1
@.str.1004 = private unnamed_addr constant [14 x i8] c"MOD_EDGESPLIT\00", align 1
@.str.1005 = private unnamed_addr constant [10 x i8] c"MOD_ARRAY\00", align 1
@.str.1006 = private unnamed_addr constant [14 x i8] c"MOD_UVPROJECT\00", align 1
@.str.1007 = private unnamed_addr constant [13 x i8] c"MOD_DISPLACE\00", align 1
@.str.1008 = private unnamed_addr constant [10 x i8] c"MOD_CURVE\00", align 1
@.str.1009 = private unnamed_addr constant [12 x i8] c"MOD_LATTICE\00", align 1
@.str.1010 = private unnamed_addr constant [16 x i8] c"CONSTRAINT_DATA\00", align 1
@.str.1011 = private unnamed_addr constant [13 x i8] c"MOD_ARMATURE\00", align 1
@.str.1012 = private unnamed_addr constant [15 x i8] c"MOD_SHRINKWRAP\00", align 1
@.str.1013 = private unnamed_addr constant [9 x i8] c"MOD_CAST\00", align 1
@.str.1014 = private unnamed_addr constant [15 x i8] c"MOD_MESHDEFORM\00", align 1
@.str.1015 = private unnamed_addr constant [10 x i8] c"MOD_BEVEL\00", align 1
@.str.1016 = private unnamed_addr constant [11 x i8] c"MOD_SMOOTH\00", align 1
@.str.1017 = private unnamed_addr constant [17 x i8] c"MOD_SIMPLEDEFORM\00", align 1
@.str.1018 = private unnamed_addr constant [9 x i8] c"MOD_MASK\00", align 1
@.str.1019 = private unnamed_addr constant [10 x i8] c"MOD_CLOTH\00", align 1
@.str.1020 = private unnamed_addr constant [12 x i8] c"MOD_EXPLODE\00", align 1
@.str.1021 = private unnamed_addr constant [13 x i8] c"MOD_FLUIDSIM\00", align 1
@.str.1022 = private unnamed_addr constant [13 x i8] c"MOD_MULTIRES\00", align 1
@.str.1023 = private unnamed_addr constant [10 x i8] c"MOD_SMOKE\00", align 1
@.str.1024 = private unnamed_addr constant [13 x i8] c"MOD_SOLIDIFY\00", align 1
@.str.1025 = private unnamed_addr constant [10 x i8] c"MOD_SCREW\00", align 1
@.str.1026 = private unnamed_addr constant [18 x i8] c"MOD_VERTEX_WEIGHT\00", align 1
@.str.1027 = private unnamed_addr constant [17 x i8] c"MOD_DYNAMICPAINT\00", align 1
@.str.1028 = private unnamed_addr constant [11 x i8] c"MOD_REMESH\00", align 1
@.str.1029 = private unnamed_addr constant [10 x i8] c"MOD_OCEAN\00", align 1
@.str.1030 = private unnamed_addr constant [9 x i8] c"MOD_WARP\00", align 1
@.str.1031 = private unnamed_addr constant [9 x i8] c"MOD_SKIN\00", align 1
@.str.1032 = private unnamed_addr constant [16 x i8] c"MOD_TRIANGULATE\00", align 1
@.str.1033 = private unnamed_addr constant [14 x i8] c"MOD_WIREFRAME\00", align 1
@.str.1034 = private unnamed_addr constant [4 x i8] c"REC\00", align 1
@.str.1035 = private unnamed_addr constant [5 x i8] c"PLAY\00", align 1
@.str.1036 = private unnamed_addr constant [3 x i8] c"FF\00", align 1
@.str.1037 = private unnamed_addr constant [4 x i8] c"REW\00", align 1
@.str.1038 = private unnamed_addr constant [14 x i8] c"PREV_KEYFRAME\00", align 1
@.str.1039 = private unnamed_addr constant [14 x i8] c"NEXT_KEYFRAME\00", align 1
@.str.1040 = private unnamed_addr constant [11 x i8] c"PLAY_AUDIO\00", align 1
@.str.1041 = private unnamed_addr constant [13 x i8] c"PLAY_REVERSE\00", align 1
@.str.1042 = private unnamed_addr constant [14 x i8] c"PREVIEW_RANGE\00", align 1
@.str.1043 = private unnamed_addr constant [13 x i8] c"ACTION_TWEAK\00", align 1
@.str.1044 = private unnamed_addr constant [12 x i8] c"PMARKER_ACT\00", align 1
@.str.1045 = private unnamed_addr constant [12 x i8] c"PMARKER_SEL\00", align 1
@.str.1046 = private unnamed_addr constant [8 x i8] c"PMARKER\00", align 1
@.str.1047 = private unnamed_addr constant [11 x i8] c"MARKER_HLT\00", align 1
@.str.1048 = private unnamed_addr constant [7 x i8] c"MARKER\00", align 1
@.str.1049 = private unnamed_addr constant [7 x i8] c"SPACE2\00", align 1
@.str.1050 = private unnamed_addr constant [7 x i8] c"SPACE3\00", align 1
@.str.1051 = private unnamed_addr constant [10 x i8] c"KEYINGSET\00", align 1
@.str.1052 = private unnamed_addr constant [10 x i8] c"KEY_DEHLT\00", align 1
@.str.1053 = private unnamed_addr constant [8 x i8] c"KEY_HLT\00", align 1
@.str.1054 = private unnamed_addr constant [13 x i8] c"MUTE_IPO_OFF\00", align 1
@.str.1055 = private unnamed_addr constant [12 x i8] c"MUTE_IPO_ON\00", align 1
@.str.1056 = private unnamed_addr constant [16 x i8] c"VISIBLE_IPO_OFF\00", align 1
@.str.1057 = private unnamed_addr constant [15 x i8] c"VISIBLE_IPO_ON\00", align 1
@.str.1058 = private unnamed_addr constant [7 x i8] c"DRIVER\00", align 1
@.str.1059 = private unnamed_addr constant [9 x i8] c"SOLO_OFF\00", align 1
@.str.1060 = private unnamed_addr constant [8 x i8] c"SOLO_ON\00", align 1
@.str.1061 = private unnamed_addr constant [11 x i8] c"FRAME_PREV\00", align 1
@.str.1062 = private unnamed_addr constant [11 x i8] c"FRAME_NEXT\00", align 1
@.str.1063 = private unnamed_addr constant [13 x i8] c"NLA_PUSHDOWN\00", align 1
@.str.1064 = private unnamed_addr constant [13 x i8] c"IPO_CONSTANT\00", align 1
@.str.1065 = private unnamed_addr constant [11 x i8] c"IPO_LINEAR\00", align 1
@.str.1066 = private unnamed_addr constant [11 x i8] c"IPO_BEZIER\00", align 1
@.str.1067 = private unnamed_addr constant [9 x i8] c"IPO_SINE\00", align 1
@.str.1068 = private unnamed_addr constant [9 x i8] c"IPO_QUAD\00", align 1
@.str.1069 = private unnamed_addr constant [10 x i8] c"IPO_CUBIC\00", align 1
@.str.1070 = private unnamed_addr constant [10 x i8] c"IPO_QUART\00", align 1
@.str.1071 = private unnamed_addr constant [10 x i8] c"IPO_QUINT\00", align 1
@.str.1072 = private unnamed_addr constant [9 x i8] c"IPO_EXPO\00", align 1
@.str.1073 = private unnamed_addr constant [9 x i8] c"IPO_CIRC\00", align 1
@.str.1074 = private unnamed_addr constant [11 x i8] c"IPO_BOUNCE\00", align 1
@.str.1075 = private unnamed_addr constant [12 x i8] c"IPO_ELASTIC\00", align 1
@.str.1076 = private unnamed_addr constant [9 x i8] c"IPO_BACK\00", align 1
@.str.1077 = private unnamed_addr constant [12 x i8] c"IPO_EASE_IN\00", align 1
@.str.1078 = private unnamed_addr constant [13 x i8] c"IPO_EASE_OUT\00", align 1
@.str.1079 = private unnamed_addr constant [16 x i8] c"IPO_EASE_IN_OUT\00", align 1
@.str.1080 = private unnamed_addr constant [10 x i8] c"VERTEXSEL\00", align 1
@.str.1081 = private unnamed_addr constant [8 x i8] c"EDGESEL\00", align 1
@.str.1082 = private unnamed_addr constant [8 x i8] c"FACESEL\00", align 1
@.str.1083 = private unnamed_addr constant [8 x i8] c"LOOPSEL\00", align 1
@.str.1084 = private unnamed_addr constant [7 x i8] c"ROTATE\00", align 1
@.str.1085 = private unnamed_addr constant [7 x i8] c"CURSOR\00", align 1
@.str.1086 = private unnamed_addr constant [17 x i8] c"ROTATECOLLECTION\00", align 1
@.str.1087 = private unnamed_addr constant [13 x i8] c"ROTATECENTER\00", align 1
@.str.1088 = private unnamed_addr constant [10 x i8] c"ROTACTIVE\00", align 1
@.str.1089 = private unnamed_addr constant [6 x i8] c"ALIGN\00", align 1
@.str.1090 = private unnamed_addr constant [12 x i8] c"SMOOTHCURVE\00", align 1
@.str.1091 = private unnamed_addr constant [12 x i8] c"SPHERECURVE\00", align 1
@.str.1092 = private unnamed_addr constant [10 x i8] c"ROOTCURVE\00", align 1
@.str.1093 = private unnamed_addr constant [11 x i8] c"SHARPCURVE\00", align 1
@.str.1094 = private unnamed_addr constant [9 x i8] c"LINCURVE\00", align 1
@.str.1095 = private unnamed_addr constant [8 x i8] c"NOCURVE\00", align 1
@.str.1096 = private unnamed_addr constant [9 x i8] c"RNDCURVE\00", align 1
@.str.1097 = private unnamed_addr constant [9 x i8] c"PROP_OFF\00", align 1
@.str.1098 = private unnamed_addr constant [8 x i8] c"PROP_ON\00", align 1
@.str.1099 = private unnamed_addr constant [9 x i8] c"PROP_CON\00", align 1
@.str.1100 = private unnamed_addr constant [15 x i8] c"SCULPT_DYNTOPO\00", align 1
@.str.1101 = private unnamed_addr constant [15 x i8] c"PARTICLE_POINT\00", align 1
@.str.1102 = private unnamed_addr constant [13 x i8] c"PARTICLE_TIP\00", align 1
@.str.1103 = private unnamed_addr constant [14 x i8] c"PARTICLE_PATH\00", align 1
@.str.1104 = private unnamed_addr constant [10 x i8] c"MAN_TRANS\00", align 1
@.str.1105 = private unnamed_addr constant [8 x i8] c"MAN_ROT\00", align 1
@.str.1106 = private unnamed_addr constant [10 x i8] c"MAN_SCALE\00", align 1
@.str.1107 = private unnamed_addr constant [8 x i8] c"MANIPUL\00", align 1
@.str.1108 = private unnamed_addr constant [9 x i8] c"SNAP_OFF\00", align 1
@.str.1109 = private unnamed_addr constant [8 x i8] c"SNAP_ON\00", align 1
@.str.1110 = private unnamed_addr constant [12 x i8] c"SNAP_NORMAL\00", align 1
@.str.1111 = private unnamed_addr constant [15 x i8] c"SNAP_INCREMENT\00", align 1
@.str.1112 = private unnamed_addr constant [12 x i8] c"SNAP_VERTEX\00", align 1
@.str.1113 = private unnamed_addr constant [10 x i8] c"SNAP_EDGE\00", align 1
@.str.1114 = private unnamed_addr constant [10 x i8] c"SNAP_FACE\00", align 1
@.str.1115 = private unnamed_addr constant [12 x i8] c"SNAP_VOLUME\00", align 1
@.str.1116 = private unnamed_addr constant [15 x i8] c"STICKY_UVS_LOC\00", align 1
@.str.1117 = private unnamed_addr constant [19 x i8] c"STICKY_UVS_DISABLE\00", align 1
@.str.1118 = private unnamed_addr constant [16 x i8] c"STICKY_UVS_VERT\00", align 1
@.str.1119 = private unnamed_addr constant [13 x i8] c"CLIPUV_DEHLT\00", align 1
@.str.1120 = private unnamed_addr constant [11 x i8] c"CLIPUV_HLT\00", align 1
@.str.1121 = private unnamed_addr constant [17 x i8] c"SNAP_PEEL_OBJECT\00", align 1
@.str.1122 = private unnamed_addr constant [5 x i8] c"GRID\00", align 1
@.str.1123 = private unnamed_addr constant [10 x i8] c"PASTEDOWN\00", align 1
@.str.1124 = private unnamed_addr constant [9 x i8] c"COPYDOWN\00", align 1
@.str.1125 = private unnamed_addr constant [12 x i8] c"PASTEFLIPUP\00", align 1
@.str.1126 = private unnamed_addr constant [14 x i8] c"PASTEFLIPDOWN\00", align 1
@.str.1127 = private unnamed_addr constant [13 x i8] c"SNAP_SURFACE\00", align 1
@.str.1128 = private unnamed_addr constant [13 x i8] c"AUTOMERGE_ON\00", align 1
@.str.1129 = private unnamed_addr constant [14 x i8] c"AUTOMERGE_OFF\00", align 1
@.str.1130 = private unnamed_addr constant [7 x i8] c"RETOPO\00", align 1
@.str.1131 = private unnamed_addr constant [13 x i8] c"UV_VERTEXSEL\00", align 1
@.str.1132 = private unnamed_addr constant [11 x i8] c"UV_EDGESEL\00", align 1
@.str.1133 = private unnamed_addr constant [11 x i8] c"UV_FACESEL\00", align 1
@.str.1134 = private unnamed_addr constant [13 x i8] c"UV_ISLANDSEL\00", align 1
@.str.1135 = private unnamed_addr constant [15 x i8] c"UV_SYNC_SELECT\00", align 1
@.str.1136 = private unnamed_addr constant [5 x i8] c"BBOX\00", align 1
@.str.1137 = private unnamed_addr constant [5 x i8] c"WIRE\00", align 1
@.str.1138 = private unnamed_addr constant [6 x i8] c"SOLID\00", align 1
@.str.1139 = private unnamed_addr constant [7 x i8] c"SMOOTH\00", align 1
@.str.1140 = private unnamed_addr constant [7 x i8] c"POTATO\00", align 1
@.str.1141 = private unnamed_addr constant [6 x i8] c"ORTHO\00", align 1
@.str.1142 = private unnamed_addr constant [13 x i8] c"LOCKVIEW_OFF\00", align 1
@.str.1143 = private unnamed_addr constant [12 x i8] c"LOCKVIEW_ON\00", align 1
@.str.1144 = private unnamed_addr constant [10 x i8] c"AXIS_SIDE\00", align 1
@.str.1145 = private unnamed_addr constant [11 x i8] c"AXIS_FRONT\00", align 1
@.str.1146 = private unnamed_addr constant [9 x i8] c"AXIS_TOP\00", align 1
@.str.1147 = private unnamed_addr constant [9 x i8] c"NDOF_DOM\00", align 1
@.str.1148 = private unnamed_addr constant [10 x i8] c"NDOF_TURN\00", align 1
@.str.1149 = private unnamed_addr constant [9 x i8] c"NDOF_FLY\00", align 1
@.str.1150 = private unnamed_addr constant [11 x i8] c"NDOF_TRANS\00", align 1
@.str.1151 = private unnamed_addr constant [11 x i8] c"LAYER_USED\00", align 1
@.str.1152 = private unnamed_addr constant [13 x i8] c"LAYER_ACTIVE\00", align 1
@.str.1153 = private unnamed_addr constant [10 x i8] c"SORTALPHA\00", align 1
@.str.1154 = private unnamed_addr constant [10 x i8] c"SORTBYEXT\00", align 1
@.str.1155 = private unnamed_addr constant [9 x i8] c"SORTTIME\00", align 1
@.str.1156 = private unnamed_addr constant [9 x i8] c"SORTSIZE\00", align 1
@.str.1157 = private unnamed_addr constant [12 x i8] c"LONGDISPLAY\00", align 1
@.str.1158 = private unnamed_addr constant [13 x i8] c"SHORTDISPLAY\00", align 1
@.str.1159 = private unnamed_addr constant [6 x i8] c"GHOST\00", align 1
@.str.1160 = private unnamed_addr constant [11 x i8] c"IMGDISPLAY\00", align 1
@.str.1161 = private unnamed_addr constant [8 x i8] c"SAVE_AS\00", align 1
@.str.1162 = private unnamed_addr constant [10 x i8] c"SAVE_COPY\00", align 1
@.str.1163 = private unnamed_addr constant [10 x i8] c"BOOKMARKS\00", align 1
@.str.1164 = private unnamed_addr constant [12 x i8] c"FONTPREVIEW\00", align 1
@.str.1165 = private unnamed_addr constant [7 x i8] c"FILTER\00", align 1
@.str.1166 = private unnamed_addr constant [10 x i8] c"NEWFOLDER\00", align 1
@.str.1167 = private unnamed_addr constant [12 x i8] c"OPEN_RECENT\00", align 1
@.str.1168 = private unnamed_addr constant [12 x i8] c"FILE_PARENT\00", align 1
@.str.1169 = private unnamed_addr constant [13 x i8] c"FILE_REFRESH\00", align 1
@.str.1170 = private unnamed_addr constant [12 x i8] c"FILE_FOLDER\00", align 1
@.str.1171 = private unnamed_addr constant [11 x i8] c"FILE_BLANK\00", align 1
@.str.1172 = private unnamed_addr constant [11 x i8] c"FILE_BLEND\00", align 1
@.str.1173 = private unnamed_addr constant [11 x i8] c"FILE_IMAGE\00", align 1
@.str.1174 = private unnamed_addr constant [11 x i8] c"FILE_MOVIE\00", align 1
@.str.1175 = private unnamed_addr constant [12 x i8] c"FILE_SCRIPT\00", align 1
@.str.1176 = private unnamed_addr constant [11 x i8] c"FILE_SOUND\00", align 1
@.str.1177 = private unnamed_addr constant [10 x i8] c"FILE_FONT\00", align 1
@.str.1178 = private unnamed_addr constant [10 x i8] c"FILE_TEXT\00", align 1
@.str.1179 = private unnamed_addr constant [13 x i8] c"RECOVER_AUTO\00", align 1
@.str.1180 = private unnamed_addr constant [11 x i8] c"SAVE_PREFS\00", align 1
@.str.1181 = private unnamed_addr constant [11 x i8] c"LINK_BLEND\00", align 1
@.str.1182 = private unnamed_addr constant [13 x i8] c"APPEND_BLEND\00", align 1
@.str.1183 = private unnamed_addr constant [7 x i8] c"IMPORT\00", align 1
@.str.1184 = private unnamed_addr constant [7 x i8] c"EXPORT\00", align 1
@.str.1185 = private unnamed_addr constant [14 x i8] c"EXTERNAL_DATA\00", align 1
@.str.1186 = private unnamed_addr constant [13 x i8] c"LOAD_FACTORY\00", align 1
@.str.1187 = private unnamed_addr constant [10 x i8] c"LOOP_BACK\00", align 1
@.str.1188 = private unnamed_addr constant [14 x i8] c"LOOP_FORWARDS\00", align 1
@.str.1189 = private unnamed_addr constant [5 x i8] c"BACK\00", align 1
@.str.1190 = private unnamed_addr constant [8 x i8] c"FORWARD\00", align 1
@.str.1191 = private unnamed_addr constant [12 x i8] c"FILE_BACKUP\00", align 1
@.str.1192 = private unnamed_addr constant [11 x i8] c"DISK_DRIVE\00", align 1
@.str.1193 = private unnamed_addr constant [9 x i8] c"MATPLANE\00", align 1
@.str.1194 = private unnamed_addr constant [10 x i8] c"MATSPHERE\00", align 1
@.str.1195 = private unnamed_addr constant [8 x i8] c"MATCUBE\00", align 1
@.str.1196 = private unnamed_addr constant [7 x i8] c"MONKEY\00", align 1
@.str.1197 = private unnamed_addr constant [5 x i8] c"HAIR\00", align 1
@.str.1198 = private unnamed_addr constant [8 x i8] c"ALIASED\00", align 1
@.str.1199 = private unnamed_addr constant [12 x i8] c"ANTIALIASED\00", align 1
@.str.1200 = private unnamed_addr constant [15 x i8] c"MAT_SPHERE_SKY\00", align 1
@.str.1201 = private unnamed_addr constant [13 x i8] c"WORDWRAP_OFF\00", align 1
@.str.1202 = private unnamed_addr constant [12 x i8] c"WORDWRAP_ON\00", align 1
@.str.1203 = private unnamed_addr constant [11 x i8] c"SYNTAX_OFF\00", align 1
@.str.1204 = private unnamed_addr constant [10 x i8] c"SYNTAX_ON\00", align 1
@.str.1205 = private unnamed_addr constant [16 x i8] c"LINENUMBERS_OFF\00", align 1
@.str.1206 = private unnamed_addr constant [15 x i8] c"LINENUMBERS_ON\00", align 1
@.str.1207 = private unnamed_addr constant [14 x i8] c"SCRIPTPLUGINS\00", align 1
@.str.1208 = private unnamed_addr constant [14 x i8] c"SEQ_SEQUENCER\00", align 1
@.str.1209 = private unnamed_addr constant [12 x i8] c"SEQ_PREVIEW\00", align 1
@.str.1210 = private unnamed_addr constant [18 x i8] c"SEQ_LUMA_WAVEFORM\00", align 1
@.str.1211 = private unnamed_addr constant [17 x i8] c"SEQ_CHROMA_SCOPE\00", align 1
@.str.1212 = private unnamed_addr constant [14 x i8] c"SEQ_HISTOGRAM\00", align 1
@.str.1213 = private unnamed_addr constant [14 x i8] c"SEQ_SPLITVIEW\00", align 1
@.str.1214 = private unnamed_addr constant [10 x i8] c"IMAGE_RGB\00", align 1
@.str.1215 = private unnamed_addr constant [16 x i8] c"IMAGE_RGB_ALPHA\00", align 1
@.str.1216 = private unnamed_addr constant [12 x i8] c"IMAGE_ALPHA\00", align 1
@.str.1217 = private unnamed_addr constant [13 x i8] c"IMAGE_ZDEPTH\00", align 1
@.str.1218 = private unnamed_addr constant [10 x i8] c"IMAGEFILE\00", align 1
@.str.1219 = private unnamed_addr constant [10 x i8] c"BRUSH_ADD\00", align 1
@.str.1220 = private unnamed_addr constant [11 x i8] c"BRUSH_BLOB\00", align 1
@.str.1221 = private unnamed_addr constant [11 x i8] c"BRUSH_BLUR\00", align 1
@.str.1222 = private unnamed_addr constant [11 x i8] c"BRUSH_CLAY\00", align 1
@.str.1223 = private unnamed_addr constant [18 x i8] c"BRUSH_CLAY_STRIPS\00", align 1
@.str.1224 = private unnamed_addr constant [12 x i8] c"BRUSH_CLONE\00", align 1
@.str.1225 = private unnamed_addr constant [13 x i8] c"BRUSH_CREASE\00", align 1
@.str.1226 = private unnamed_addr constant [13 x i8] c"BRUSH_DARKEN\00", align 1
@.str.1227 = private unnamed_addr constant [11 x i8] c"BRUSH_FILL\00", align 1
@.str.1228 = private unnamed_addr constant [14 x i8] c"BRUSH_FLATTEN\00", align 1
@.str.1229 = private unnamed_addr constant [11 x i8] c"BRUSH_GRAB\00", align 1
@.str.1230 = private unnamed_addr constant [14 x i8] c"BRUSH_INFLATE\00", align 1
@.str.1231 = private unnamed_addr constant [12 x i8] c"BRUSH_LAYER\00", align 1
@.str.1232 = private unnamed_addr constant [14 x i8] c"BRUSH_LIGHTEN\00", align 1
@.str.1233 = private unnamed_addr constant [11 x i8] c"BRUSH_MASK\00", align 1
@.str.1234 = private unnamed_addr constant [10 x i8] c"BRUSH_MIX\00", align 1
@.str.1235 = private unnamed_addr constant [15 x i8] c"BRUSH_MULTIPLY\00", align 1
@.str.1236 = private unnamed_addr constant [12 x i8] c"BRUSH_NUDGE\00", align 1
@.str.1237 = private unnamed_addr constant [12 x i8] c"BRUSH_PINCH\00", align 1
@.str.1238 = private unnamed_addr constant [13 x i8] c"BRUSH_SCRAPE\00", align 1
@.str.1239 = private unnamed_addr constant [18 x i8] c"BRUSH_SCULPT_DRAW\00", align 1
@.str.1240 = private unnamed_addr constant [12 x i8] c"BRUSH_SMEAR\00", align 1
@.str.1241 = private unnamed_addr constant [13 x i8] c"BRUSH_SMOOTH\00", align 1
@.str.1242 = private unnamed_addr constant [17 x i8] c"BRUSH_SNAKE_HOOK\00", align 1
@.str.1243 = private unnamed_addr constant [13 x i8] c"BRUSH_SOFTEN\00", align 1
@.str.1244 = private unnamed_addr constant [15 x i8] c"BRUSH_SUBTRACT\00", align 1
@.str.1245 = private unnamed_addr constant [14 x i8] c"BRUSH_TEXDRAW\00", align 1
@.str.1246 = private unnamed_addr constant [14 x i8] c"BRUSH_TEXFILL\00", align 1
@.str.1247 = private unnamed_addr constant [14 x i8] c"BRUSH_TEXMASK\00", align 1
@.str.1248 = private unnamed_addr constant [12 x i8] c"BRUSH_THUMB\00", align 1
@.str.1249 = private unnamed_addr constant [13 x i8] c"BRUSH_ROTATE\00", align 1
@.str.1250 = private unnamed_addr constant [17 x i8] c"BRUSH_VERTEXDRAW\00", align 1
@.str.1251 = private unnamed_addr constant [10 x i8] c"MATCAP_01\00", align 1
@.str.1252 = private unnamed_addr constant [10 x i8] c"MATCAP_02\00", align 1
@.str.1253 = private unnamed_addr constant [10 x i8] c"MATCAP_03\00", align 1
@.str.1254 = private unnamed_addr constant [10 x i8] c"MATCAP_04\00", align 1
@.str.1255 = private unnamed_addr constant [10 x i8] c"MATCAP_05\00", align 1
@.str.1256 = private unnamed_addr constant [10 x i8] c"MATCAP_06\00", align 1
@.str.1257 = private unnamed_addr constant [10 x i8] c"MATCAP_07\00", align 1
@.str.1258 = private unnamed_addr constant [10 x i8] c"MATCAP_08\00", align 1
@.str.1259 = private unnamed_addr constant [10 x i8] c"MATCAP_09\00", align 1
@.str.1260 = private unnamed_addr constant [10 x i8] c"MATCAP_10\00", align 1
@.str.1261 = private unnamed_addr constant [10 x i8] c"MATCAP_11\00", align 1
@.str.1262 = private unnamed_addr constant [10 x i8] c"MATCAP_12\00", align 1
@.str.1263 = private unnamed_addr constant [10 x i8] c"MATCAP_13\00", align 1
@.str.1264 = private unnamed_addr constant [10 x i8] c"MATCAP_14\00", align 1
@.str.1265 = private unnamed_addr constant [10 x i8] c"MATCAP_15\00", align 1
@.str.1266 = private unnamed_addr constant [10 x i8] c"MATCAP_16\00", align 1
@.str.1267 = private unnamed_addr constant [10 x i8] c"MATCAP_17\00", align 1
@.str.1268 = private unnamed_addr constant [10 x i8] c"MATCAP_18\00", align 1
@.str.1269 = private unnamed_addr constant [10 x i8] c"MATCAP_19\00", align 1
@.str.1270 = private unnamed_addr constant [10 x i8] c"MATCAP_20\00", align 1
@.str.1271 = private unnamed_addr constant [10 x i8] c"MATCAP_21\00", align 1
@.str.1272 = private unnamed_addr constant [10 x i8] c"MATCAP_22\00", align 1
@.str.1273 = private unnamed_addr constant [10 x i8] c"MATCAP_23\00", align 1
@.str.1274 = private unnamed_addr constant [10 x i8] c"MATCAP_24\00", align 1
@.str.1275 = private unnamed_addr constant [11 x i8] c"VIEW3D_VEC\00", align 1
@.str.1276 = private unnamed_addr constant [9 x i8] c"EDIT_VEC\00", align 1
@.str.1277 = private unnamed_addr constant [19 x i8] c"EDITMODE_VEC_DEHLT\00", align 1
@.str.1278 = private unnamed_addr constant [17 x i8] c"EDITMODE_VEC_HLT\00", align 1
@.str.1279 = private unnamed_addr constant [25 x i8] c"DISCLOSURE_TRI_RIGHT_VEC\00", align 1
@.str.1280 = private unnamed_addr constant [24 x i8] c"DISCLOSURE_TRI_DOWN_VEC\00", align 1
@.str.1281 = private unnamed_addr constant [12 x i8] c"MOVE_UP_VEC\00", align 1
@.str.1282 = private unnamed_addr constant [14 x i8] c"MOVE_DOWN_VEC\00", align 1
@.str.1283 = private unnamed_addr constant [6 x i8] c"X_VEC\00", align 1
@.str.1284 = private unnamed_addr constant [20 x i8] c"SMALL_TRI_RIGHT_VEC\00", align 1
@.str.1285 = private unnamed_addr constant [6 x i8] c"EMPTY\00", align 1
@.str.1286 = private unnamed_addr constant [6 x i8] c"Empty\00", align 1
@.str.1287 = private unnamed_addr constant [8 x i8] c"VIEW_3D\00", align 1
@.str.1288 = private unnamed_addr constant [8 x i8] c"3D View\00", align 1
@.str.1289 = private unnamed_addr constant [12 x i8] c"3D viewport\00", align 1
@.str.1290 = private unnamed_addr constant [9 x i8] c"TIMELINE\00", align 1
@.str.1291 = private unnamed_addr constant [9 x i8] c"Timeline\00", align 1
@.str.1292 = private unnamed_addr constant [31 x i8] c"Timeline and playback controls\00", align 1
@.str.1293 = private unnamed_addr constant [13 x i8] c"GRAPH_EDITOR\00", align 1
@.str.1294 = private unnamed_addr constant [13 x i8] c"Graph Editor\00", align 1
@.str.1295 = private unnamed_addr constant [40 x i8] c"Edit drivers and keyframe interpolation\00", align 1
@.str.1296 = private unnamed_addr constant [17 x i8] c"DOPESHEET_EDITOR\00", align 1
@.str.1297 = private unnamed_addr constant [11 x i8] c"Dope Sheet\00", align 1
@.str.1298 = private unnamed_addr constant [27 x i8] c"Adjust timing of keyframes\00", align 1
@.str.1299 = private unnamed_addr constant [11 x i8] c"NLA_EDITOR\00", align 1
@.str.1300 = private unnamed_addr constant [11 x i8] c"NLA Editor\00", align 1
@.str.1301 = private unnamed_addr constant [26 x i8] c"Combine and layer Actions\00", align 1
@.str.1302 = private unnamed_addr constant [13 x i8] c"IMAGE_EDITOR\00", align 1
@.str.1303 = private unnamed_addr constant [16 x i8] c"UV/Image Editor\00", align 1
@.str.1304 = private unnamed_addr constant [33 x i8] c"View and edit images and UV Maps\00", align 1
@.str.1305 = private unnamed_addr constant [16 x i8] c"SEQUENCE_EDITOR\00", align 1
@.str.1306 = private unnamed_addr constant [22 x i8] c"Video Sequence Editor\00", align 1
@.str.1307 = private unnamed_addr constant [20 x i8] c"Video editing tools\00", align 1
@.str.1308 = private unnamed_addr constant [12 x i8] c"CLIP_EDITOR\00", align 1
@.str.1309 = private unnamed_addr constant [18 x i8] c"Movie Clip Editor\00", align 1
@.str.1310 = private unnamed_addr constant [22 x i8] c"Motion tracking tools\00", align 1
@.str.1311 = private unnamed_addr constant [12 x i8] c"TEXT_EDITOR\00", align 1
@.str.1312 = private unnamed_addr constant [12 x i8] c"Text Editor\00", align 1
@.str.1313 = private unnamed_addr constant [39 x i8] c"Edit scripts and in-file documentation\00", align 1
@.str.1314 = private unnamed_addr constant [12 x i8] c"NODE_EDITOR\00", align 1
@.str.1315 = private unnamed_addr constant [12 x i8] c"Node Editor\00", align 1
@.str.1316 = private unnamed_addr constant [52 x i8] c"Editor for node-based shading and compositing tools\00", align 1
@.str.1317 = private unnamed_addr constant [13 x i8] c"LOGIC_EDITOR\00", align 1
@.str.1318 = private unnamed_addr constant [13 x i8] c"Logic Editor\00", align 1
@.str.1319 = private unnamed_addr constant [19 x i8] c"Game logic editing\00", align 1
@.str.1320 = private unnamed_addr constant [11 x i8] c"PROPERTIES\00", align 1
@.str.1321 = private unnamed_addr constant [56 x i8] c"Edit properties of active object and related datablocks\00", align 1
@.str.1322 = private unnamed_addr constant [9 x i8] c"OUTLINER\00", align 1
@.str.1323 = private unnamed_addr constant [9 x i8] c"Outliner\00", align 1
@.str.1324 = private unnamed_addr constant [53 x i8] c"Overview of scene graph and all available datablocks\00", align 1
@.str.1325 = private unnamed_addr constant [17 x i8] c"USER_PREFERENCES\00", align 1
@.str.1326 = private unnamed_addr constant [17 x i8] c"User Preferences\00", align 1
@.str.1327 = private unnamed_addr constant [39 x i8] c"Edit persistent configuration settings\00", align 1
@.str.1328 = private unnamed_addr constant [75 x i8] c"Main menu bar and list of error messages (drag down to expand and display)\00", align 1
@.str.1329 = private unnamed_addr constant [13 x i8] c"FILE_BROWSER\00", align 1
@.str.1330 = private unnamed_addr constant [13 x i8] c"File Browser\00", align 1
@.str.1331 = private unnamed_addr constant [28 x i8] c"Browse for files and assets\00", align 1
@.str.1332 = private unnamed_addr constant [15 x i8] c"Python Console\00", align 1
@.str.1333 = private unnamed_addr constant [77 x i8] c"Interactive programmatic console for advanced editing and script development\00", align 1
@.str.1334 = private unnamed_addr constant [7 x i8] c"WINDOW\00", align 1
@.str.1335 = private unnamed_addr constant [7 x i8] c"HEADER\00", align 1
@.str.1336 = private unnamed_addr constant [7 x i8] c"Header\00", align 1
@.str.1337 = private unnamed_addr constant [9 x i8] c"CHANNELS\00", align 1
@.str.1338 = private unnamed_addr constant [9 x i8] c"Channels\00", align 1
@.str.1339 = private unnamed_addr constant [10 x i8] c"TEMPORARY\00", align 1
@.str.1340 = private unnamed_addr constant [10 x i8] c"Temporary\00", align 1
@.str.1341 = private unnamed_addr constant [6 x i8] c"TOOLS\00", align 1
@.str.1342 = private unnamed_addr constant [6 x i8] c"Tools\00", align 1
@.str.1343 = private unnamed_addr constant [11 x i8] c"TOOL_PROPS\00", align 1
@.str.1344 = private unnamed_addr constant [16 x i8] c"Tool Properties\00", align 1
@.str.1345 = private unnamed_addr constant [8 x i8] c"PREVIEW\00", align 1
@.str.1346 = private unnamed_addr constant [8 x i8] c"Preview\00", align 1
@.str.1347 = private unnamed_addr constant [9 x i8] c"KEYBOARD\00", align 1
@.str.1348 = private unnamed_addr constant [9 x i8] c"Keyboard\00", align 1
@.str.1349 = private unnamed_addr constant [6 x i8] c"TWEAK\00", align 1
@.str.1350 = private unnamed_addr constant [6 x i8] c"Tweak\00", align 1
@.str.1351 = private unnamed_addr constant [6 x i8] c"MOUSE\00", align 1
@.str.1352 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@.str.1353 = private unnamed_addr constant [5 x i8] c"NDOF\00", align 1
@event_mouse_type_items = internal global [20 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.2, i32 0, ptr @.str.1354, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.4, i32 0, ptr @.str.1355, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.6, i32 0, ptr @.str.1356, ptr @.str.1 }, %struct.EnumPropertyItem { i32 7, ptr @.str.8, i32 0, ptr @.str.1357, ptr @.str.1 }, %struct.EnumPropertyItem { i32 8, ptr @.str.10, i32 0, ptr @.str.1358, ptr @.str.1 }, %struct.EnumPropertyItem { i32 18, ptr @.str.12, i32 0, ptr @.str.1359, ptr @.str.1 }, %struct.EnumPropertyItem { i32 19, ptr @.str.14, i32 0, ptr @.str.1360, ptr @.str.1 }, %struct.EnumPropertyItem { i32 5, ptr @.str.16, i32 0, ptr @.str.1361, ptr @.str.1 }, %struct.EnumPropertyItem { i32 6, ptr @.str.18, i32 0, ptr @.str.1362, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 4, ptr @.str.20, i32 0, ptr @.str.1363, ptr @.str.1 }, %struct.EnumPropertyItem { i32 14, ptr @.str.24, i32 0, ptr @.str.25, ptr @.str.1 }, %struct.EnumPropertyItem { i32 15, ptr @.str.26, i32 0, ptr @.str.27, ptr @.str.1 }, %struct.EnumPropertyItem { i32 16, ptr @.str.28, i32 0, ptr @.str.29, ptr @.str.1 }, %struct.EnumPropertyItem { i32 0, ptr @.str.1, i32 0, ptr null, ptr null }, %struct.EnumPropertyItem { i32 10, ptr @.str.30, i32 0, ptr @.str.31, ptr @.str.1 }, %struct.EnumPropertyItem { i32 11, ptr @.str.32, i32 0, ptr @.str.33, ptr @.str.1 }, %struct.EnumPropertyItem { i32 12, ptr @.str.34, i32 0, ptr @.str.35, ptr @.str.1 }, %struct.EnumPropertyItem { i32 13, ptr @.str.36, i32 0, ptr @.str.37, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@event_tweak_type_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 20483, ptr @.str.38, i32 0, ptr @.str.1354, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20484, ptr @.str.40, i32 0, ptr @.str.1355, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20485, ptr @.str.42, i32 0, ptr @.str.1356, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20486, ptr @.str.44, i32 0, ptr @.str.1361, ptr @.str.1 }, %struct.EnumPropertyItem { i32 20487, ptr @.str.46, i32 0, ptr @.str.1362, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@event_timer_type_items = internal global [9 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 272, ptr @.str.229, i32 0, ptr @.str.230, ptr @.str.1 }, %struct.EnumPropertyItem { i32 273, ptr @.str.231, i32 0, ptr @.str.232, ptr @.str.1 }, %struct.EnumPropertyItem { i32 274, ptr @.str.233, i32 0, ptr @.str.234, ptr @.str.1 }, %struct.EnumPropertyItem { i32 275, ptr @.str.235, i32 0, ptr @.str.236, ptr @.str.1 }, %struct.EnumPropertyItem { i32 276, ptr @.str.237, i32 0, ptr @.str.238, ptr @.str.1 }, %struct.EnumPropertyItem { i32 277, ptr @.str.239, i32 0, ptr @.str.240, ptr @.str.1 }, %struct.EnumPropertyItem { i32 278, ptr @.str.241, i32 0, ptr @.str.242, ptr @.str.1 }, %struct.EnumPropertyItem { i32 279, ptr @.str.243, i32 0, ptr @.str.244, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@event_ndof_type_items = internal global [40 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 400, ptr @.str.245, i32 0, ptr @.str.1364, ptr @.str.1 }, %struct.EnumPropertyItem { i32 401, ptr @.str.247, i32 0, ptr @.str.1365, ptr @.str.1 }, %struct.EnumPropertyItem { i32 402, ptr @.str.249, i32 0, ptr @.str.1366, ptr @.str.1 }, %struct.EnumPropertyItem { i32 403, ptr @.str.251, i32 0, ptr @.str.1367, ptr @.str.1 }, %struct.EnumPropertyItem { i32 404, ptr @.str.253, i32 0, ptr @.str.1368, ptr @.str.1 }, %struct.EnumPropertyItem { i32 405, ptr @.str.255, i32 0, ptr @.str.1354, ptr @.str.1 }, %struct.EnumPropertyItem { i32 406, ptr @.str.257, i32 0, ptr @.str.1356, ptr @.str.1 }, %struct.EnumPropertyItem { i32 407, ptr @.str.259, i32 0, ptr @.str.1369, ptr @.str.1 }, %struct.EnumPropertyItem { i32 408, ptr @.str.261, i32 0, ptr @.str.1370, ptr @.str.1 }, %struct.EnumPropertyItem { i32 409, ptr @.str.263, i32 0, ptr @.str.1371, ptr @.str.1 }, %struct.EnumPropertyItem { i32 410, ptr @.str.265, i32 0, ptr @.str.1372, ptr @.str.1 }, %struct.EnumPropertyItem { i32 411, ptr @.str.267, i32 0, ptr @.str.1373, ptr @.str.1 }, %struct.EnumPropertyItem { i32 412, ptr @.str.269, i32 0, ptr @.str.1374, ptr @.str.1 }, %struct.EnumPropertyItem { i32 413, ptr @.str.271, i32 0, ptr @.str.1375, ptr @.str.1 }, %struct.EnumPropertyItem { i32 414, ptr @.str.273, i32 0, ptr @.str.1376, ptr @.str.1 }, %struct.EnumPropertyItem { i32 415, ptr @.str.275, i32 0, ptr @.str.1377, ptr @.str.1 }, %struct.EnumPropertyItem { i32 416, ptr @.str.277, i32 0, ptr @.str.1378, ptr @.str.1 }, %struct.EnumPropertyItem { i32 417, ptr @.str.279, i32 0, ptr @.str.1379, ptr @.str.1 }, %struct.EnumPropertyItem { i32 418, ptr @.str.281, i32 0, ptr @.str.1380, ptr @.str.1 }, %struct.EnumPropertyItem { i32 419, ptr @.str.283, i32 0, ptr @.str.1381, ptr @.str.1 }, %struct.EnumPropertyItem { i32 420, ptr @.str.285, i32 0, ptr @.str.1382, ptr @.str.1 }, %struct.EnumPropertyItem { i32 421, ptr @.str.287, i32 0, ptr @.str.1383, ptr @.str.1 }, %struct.EnumPropertyItem { i32 422, ptr @.str.289, i32 0, ptr @.str.111, ptr null }, %struct.EnumPropertyItem { i32 423, ptr @.str.291, i32 0, ptr @.str.515, ptr null }, %struct.EnumPropertyItem { i32 424, ptr @.str.293, i32 0, ptr @.str.509, ptr null }, %struct.EnumPropertyItem { i32 425, ptr @.str.295, i32 0, ptr @.str.512, ptr null }, %struct.EnumPropertyItem { i32 426, ptr @.str.297, i32 0, ptr @.str.1384, ptr @.str.1 }, %struct.EnumPropertyItem { i32 427, ptr @.str.299, i32 0, ptr @.str.1385, ptr @.str.1 }, %struct.EnumPropertyItem { i32 428, ptr @.str.301, i32 0, ptr @.str.1386, ptr @.str.1 }, %struct.EnumPropertyItem { i32 429, ptr @.str.303, i32 0, ptr @.str.1387, ptr @.str.1 }, %struct.EnumPropertyItem { i32 430, ptr @.str.305, i32 0, ptr @.str.1388, ptr @.str.1 }, %struct.EnumPropertyItem { i32 431, ptr @.str.307, i32 0, ptr @.str.1389, ptr @.str.1 }, %struct.EnumPropertyItem { i32 432, ptr @.str.309, i32 0, ptr @.str.1390, ptr @.str.1 }, %struct.EnumPropertyItem { i32 433, ptr @.str.311, i32 0, ptr @.str.1391, ptr @.str.1 }, %struct.EnumPropertyItem { i32 434, ptr @.str.313, i32 0, ptr @.str.1392, ptr @.str.1 }, %struct.EnumPropertyItem { i32 435, ptr @.str.315, i32 0, ptr @.str.1393, ptr @.str.1 }, %struct.EnumPropertyItem { i32 436, ptr @.str.317, i32 0, ptr @.str.1394, ptr @.str.1 }, %struct.EnumPropertyItem { i32 437, ptr @.str.319, i32 0, ptr @.str.1395, ptr @.str.1 }, %struct.EnumPropertyItem { i32 438, ptr @.str.321, i32 0, ptr @.str.1396, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@event_textinput_type_items = internal global [2 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 -2, ptr @.str.225, i32 0, ptr @.str.226, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.1354 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.1355 = private unnamed_addr constant [7 x i8] c"Middle\00", align 1
@.str.1356 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.1357 = private unnamed_addr constant [8 x i8] c"Button4\00", align 1
@.str.1358 = private unnamed_addr constant [8 x i8] c"Button5\00", align 1
@.str.1359 = private unnamed_addr constant [8 x i8] c"Button6\00", align 1
@.str.1360 = private unnamed_addr constant [8 x i8] c"Button7\00", align 1
@.str.1361 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.1362 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.1363 = private unnamed_addr constant [5 x i8] c"Move\00", align 1
@.str.1364 = private unnamed_addr constant [7 x i8] c"Motion\00", align 1
@.str.1365 = private unnamed_addr constant [5 x i8] c"Menu\00", align 1
@.str.1366 = private unnamed_addr constant [4 x i8] c"Fit\00", align 1
@.str.1367 = private unnamed_addr constant [4 x i8] c"Top\00", align 1
@.str.1368 = private unnamed_addr constant [7 x i8] c"Bottom\00", align 1
@.str.1369 = private unnamed_addr constant [6 x i8] c"Front\00", align 1
@.str.1370 = private unnamed_addr constant [5 x i8] c"Back\00", align 1
@.str.1371 = private unnamed_addr constant [12 x i8] c"Isometric 1\00", align 1
@.str.1372 = private unnamed_addr constant [12 x i8] c"Isometric 2\00", align 1
@.str.1373 = private unnamed_addr constant [8 x i8] c"Roll CW\00", align 1
@.str.1374 = private unnamed_addr constant [9 x i8] c"Roll CCW\00", align 1
@.str.1375 = private unnamed_addr constant [8 x i8] c"Spin CW\00", align 1
@.str.1376 = private unnamed_addr constant [9 x i8] c"Spin CCW\00", align 1
@.str.1377 = private unnamed_addr constant [8 x i8] c"Tilt CW\00", align 1
@.str.1378 = private unnamed_addr constant [9 x i8] c"Tilt CCW\00", align 1
@.str.1379 = private unnamed_addr constant [7 x i8] c"Rotate\00", align 1
@.str.1380 = private unnamed_addr constant [9 x i8] c"Pan/Zoom\00", align 1
@.str.1381 = private unnamed_addr constant [9 x i8] c"Dominant\00", align 1
@.str.1382 = private unnamed_addr constant [5 x i8] c"Plus\00", align 1
@.str.1383 = private unnamed_addr constant [6 x i8] c"Minus\00", align 1
@.str.1384 = private unnamed_addr constant [9 x i8] c"Button 1\00", align 1
@.str.1385 = private unnamed_addr constant [9 x i8] c"Button 2\00", align 1
@.str.1386 = private unnamed_addr constant [9 x i8] c"Button 3\00", align 1
@.str.1387 = private unnamed_addr constant [9 x i8] c"Button 4\00", align 1
@.str.1388 = private unnamed_addr constant [9 x i8] c"Button 5\00", align 1
@.str.1389 = private unnamed_addr constant [9 x i8] c"Button 6\00", align 1
@.str.1390 = private unnamed_addr constant [9 x i8] c"Button 7\00", align 1
@.str.1391 = private unnamed_addr constant [9 x i8] c"Button 8\00", align 1
@.str.1392 = private unnamed_addr constant [9 x i8] c"Button 9\00", align 1
@.str.1393 = private unnamed_addr constant [10 x i8] c"Button 10\00", align 1
@.str.1394 = private unnamed_addr constant [9 x i8] c"Button A\00", align 1
@.str.1395 = private unnamed_addr constant [9 x i8] c"Button B\00", align 1
@.str.1396 = private unnamed_addr constant [9 x i8] c"Button C\00", align 1
@event_keymouse_value_items = internal global [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 -1, ptr @.str.323, i32 0, ptr @.str.324, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.327, i32 0, ptr @.str.328, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.329, i32 0, ptr @.str.330, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.331, i32 0, ptr @.str.332, ptr @.str.1 }, %struct.EnumPropertyItem { i32 4, ptr @.str.333, i32 0, ptr @.str.334, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@event_tweak_value_items = internal global [10 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 -1, ptr @.str.323, i32 0, ptr @.str.324, ptr @.str.1 }, %struct.EnumPropertyItem { i32 1, ptr @.str.335, i32 0, ptr @.str.336, ptr @.str.1 }, %struct.EnumPropertyItem { i32 2, ptr @.str.337, i32 0, ptr @.str.338, ptr @.str.1 }, %struct.EnumPropertyItem { i32 3, ptr @.str.339, i32 0, ptr @.str.340, ptr @.str.1 }, %struct.EnumPropertyItem { i32 4, ptr @.str.341, i32 0, ptr @.str.342, ptr @.str.1 }, %struct.EnumPropertyItem { i32 5, ptr @.str.343, i32 0, ptr @.str.344, ptr @.str.1 }, %struct.EnumPropertyItem { i32 6, ptr @.str.345, i32 0, ptr @.str.346, ptr @.str.1 }, %struct.EnumPropertyItem { i32 7, ptr @.str.347, i32 0, ptr @.str.348, ptr @.str.1 }, %struct.EnumPropertyItem { i32 8, ptr @.str.349, i32 0, ptr @.str.350, ptr @.str.1 }, %struct.EnumPropertyItem zeroinitializer], align 16
@switch.table.rna_wmKeyMapItem_map_type_set = private unnamed_addr constant [6 x i16] [i16 97, i16 1, i16 20483, i16 -2, i16 272, i16 400], align 2
@switch.table.rna_wmKeyMapItem_map_type_set.1397 = private unnamed_addr constant [6 x i16] [i16 1, i16 1, i16 -1, i16 0, i16 0, i16 0], align 2
@switch.table.rna_KeyMapItem_type_itemf = private unnamed_addr constant [5 x ptr] [ptr @event_mouse_type_items, ptr @event_tweak_type_items, ptr @event_textinput_type_items, ptr @event_timer_type_items, ptr @event_ndof_type_items], align 8
@switch.table.rna_KeyMapItem_value_itemf = private unnamed_addr constant [6 x ptr] [ptr @event_keymouse_value_items, ptr @event_keymouse_value_items, ptr @event_tweak_value_items, ptr @event_value_items, ptr @event_value_items, ptr @event_keymouse_value_items], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Operator_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Operator_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @Operator_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: optsize
declare void @rna_builtin_properties_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Operator_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !45 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Operator_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @Operator_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_properties_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Operator_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Operator_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @rna_builtin_properties_lookup_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Operator_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Operator_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #5 {
  tail call fastcc void @rna_Operator_name_get(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Operator_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #5 !PGOFuncName !46 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %7) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Operator_name_length(ptr nocapture noundef readonly %0) #6 {
  %2 = tail call fastcc i32 @rna_Operator_name_length(ptr noundef %0) #18
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_Operator_name_length(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !55 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #19
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Operator_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Operator_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Operator_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !56 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %8, ptr noundef %10) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Operator_has_reports_get(ptr nocapture noundef readonly %0) #7 {
  %2 = tail call fastcc i32 @rna_Operator_has_reports_get(ptr noundef %0) #18, !range !59
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_Operator_has_reports_get(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !60 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 8, !tbaa !62
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i32 [ 0, %1 ], [ %10, %7 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Operator_layout_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_UILayout, ptr noundef %6) #16
  ret void
}

; Function Attrs: optsize
declare void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Operator_bl_idname_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef %8, i64 noundef 61) #16
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Operator_bl_idname_length(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #19
  %9 = trunc i64 %8 to i32
  ret i32 %9
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Operator_bl_idname_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Operator_bl_idname_set(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Operator_bl_idname_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !66 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = load i8, ptr %8, align 1, !tbaa !67
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef %1, i64 noundef 64) #16
  br label %13

13:                                               ; preds = %2, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Operator_bl_label_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef %7, i64 noundef 240) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Operator_bl_label_length(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #19
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Operator_bl_label_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Operator_bl_label_set(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Operator_bl_label_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !68 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = load i8, ptr %7, align 1, !tbaa !67
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = tail call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef %1, i64 noundef 64) #16
  br label %12

12:                                               ; preds = %2, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Operator_bl_translation_context_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8 0, ptr %1, align 1, !tbaa !67
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %8, i64 noundef 240) #16
  br label %13

13:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Operator_bl_translation_context_length(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #19
  %11 = trunc i64 %10 to i32
  br label %12

12:                                               ; preds = %1, %9
  %13 = phi i32 [ %11, %9 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Operator_bl_translation_context_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Operator_bl_translation_context_set(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Operator_bl_translation_context_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !70 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = load i8, ptr %8, align 1, !tbaa !67
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef %1, i64 noundef 240) #16
  br label %13

13:                                               ; preds = %2, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Operator_bl_description_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8 0, ptr %1, align 1, !tbaa !67
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %8, i64 noundef 240) #16
  br label %13

13:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Operator_bl_description_length(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #19
  %11 = trunc i64 %10 to i32
  br label %12

12:                                               ; preds = %1, %9
  %13 = phi i32 [ %11, %9 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Operator_bl_description_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Operator_bl_description_set(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Operator_bl_description_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !72 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = load i8, ptr %8, align 1, !tbaa !67
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = tail call ptr @BLI_strncpy(ptr noundef nonnull %8, ptr noundef %1, i64 noundef 240) #16
  br label %13

13:                                               ; preds = %2, %11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Operator_bl_options_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 19
  %7 = load i16, ptr %6, align 8, !tbaa !73
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Operator_bl_options_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %7, i64 0, i32 19
  store i16 %5, ptr %8, align 8, !tbaa !73
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OperatorProperties_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_OperatorProperties_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @OperatorProperties_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @OperatorProperties_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !74 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OperatorProperties_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @OperatorProperties_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OperatorProperties_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @OperatorProperties_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OperatorProperties_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Macro_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Macro_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @Macro_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Macro_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !75 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Macro_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @Macro_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Macro_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Macro_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Macro_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Macro_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #5 {
  tail call fastcc void @rna_Operator_name_get(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Macro_name_length(ptr nocapture noundef readonly %0) #6 {
  %2 = tail call fastcc i32 @rna_Operator_name_length(ptr noundef %0) #18
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Macro_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Operator_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Macro_bl_idname_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef %8, i64 noundef 64) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Macro_bl_idname_length(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #19
  %9 = trunc i64 %8 to i32
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Macro_bl_idname_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Operator_bl_idname_set(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Macro_bl_label_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef %7, i64 noundef 240) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Macro_bl_label_length(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #19
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Macro_bl_label_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Operator_bl_label_set(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Macro_bl_translation_context_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8 0, ptr %1, align 1, !tbaa !67
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %8, i64 noundef 240) #16
  br label %13

13:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Macro_bl_translation_context_length(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #19
  %11 = trunc i64 %10 to i32
  br label %12

12:                                               ; preds = %1, %9
  %13 = phi i32 [ %11, %9 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Macro_bl_translation_context_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Operator_bl_translation_context_set(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Macro_bl_description_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8 0, ptr %1, align 1, !tbaa !67
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %8, i64 noundef 240) #16
  br label %13

13:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Macro_bl_description_length(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #19
  %11 = trunc i64 %10 to i32
  br label %12

12:                                               ; preds = %1, %9
  %13 = phi i32 [ %11, %9 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Macro_bl_description_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Operator_bl_description_set(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Macro_bl_options_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 19
  %7 = load i16, ptr %6, align 8, !tbaa !73
  %8 = sext i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @Macro_bl_options_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.wmOperator, ptr %4, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %7, i64 0, i32 19
  store i16 %5, ptr %8, align 8, !tbaa !73
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OperatorMacro_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_OperatorMacro_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @OperatorMacro_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @OperatorMacro_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !76 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OperatorMacro_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @OperatorMacro_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OperatorMacro_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @OperatorMacro_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OperatorMacro_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @OperatorMacro_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_OperatorMacro_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_OperatorMacro_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !77 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %4, i64 0, i32 2
  %6 = tail call ptr @WM_operatortype_find(ptr noundef nonnull %5, i8 noundef zeroext 1) #16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.wmOperatorTypeMacro, ptr %4, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !78
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %8, ptr noundef %10) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Event_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Event_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @Event_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Event_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !80 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Event_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @Event_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Event_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Event_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Event_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Event_ascii_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #10 {
  tail call fastcc void @rna_Event_ascii_get(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Event_ascii_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #10 !PGOFuncName !81 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmEvent, ptr %4, i64 0, i32 8
  %6 = load i8, ptr %5, align 2, !tbaa !82
  store i8 %6, ptr %1, align 1, !tbaa !67
  %7 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 0, ptr %7, align 1, !tbaa !67
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Event_ascii_length(ptr nocapture noundef readonly %0) #7 {
  %2 = tail call fastcc i32 @rna_Event_ascii_length(ptr noundef %0) #18, !range !59
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_Event_ascii_length(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !85 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 8
  %5 = load i8, ptr %4, align 2, !tbaa !82
  %6 = icmp ne i8 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Event_unicode_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  tail call fastcc void @rna_Event_unicode_get(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Event_unicode_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !PGOFuncName !86 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store i64 0, ptr %3, align 8, !tbaa !87
  %6 = getelementptr inbounds %struct.wmEvent, ptr %5, i64 0, i32 7
  %7 = load i8, ptr %6, align 4, !tbaa !67
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = call i32 @BLI_str_utf8_as_unicode_and_size(ptr noundef nonnull %6, ptr noundef nonnull %3) #16
  %11 = load i64, ptr %3, align 8, !tbaa !87
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 4 %6, i64 %11, i1 false)
  br label %14

14:                                               ; preds = %9, %13, %2
  %15 = phi i64 [ 0, %9 ], [ %11, %13 ], [ 0, %2 ]
  %16 = getelementptr inbounds i8, ptr %1, i64 %15
  store i8 0, ptr %16, align 1, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Event_unicode_length(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Event_unicode_length(ptr noundef %0) #18
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Event_unicode_length(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !89 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 7
  %5 = load i8, ptr %4, align 4, !tbaa !67
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @BLI_str_utf8_size(ptr noundef nonnull %4) #16
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Event_value_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 3
  %5 = load i16, ptr %4, align 2, !tbaa !90
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Event_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !91
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Event_mouse_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !92
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Event_mouse_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !93
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Event_mouse_region_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !94
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Event_mouse_region_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 6, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !94
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Event_mouse_prev_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !95
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Event_mouse_prev_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 13
  %5 = load i32, ptr %4, align 4, !tbaa !96
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local float @Event_pressure_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc float @rna_Event_pressure_get(ptr noundef %0) #18
  ret float %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @rna_Event_pressure_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !97 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = tail call float @WM_event_tablet_data(ptr noundef %3, ptr noundef null, ptr noundef null) #16
  ret float %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Event_tilt_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_Event_tilt_get(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Event_tilt_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !98 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = tail call float @WM_event_tablet_data(ptr noundef %4, ptr noundef null, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Event_is_tablet_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_Event_is_tablet_get(ptr noundef %0) #18, !range !99
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Event_is_tablet_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !100 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = tail call zeroext i8 @WM_event_is_tablet(ptr noundef %3) #16
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Event_shift_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 17
  %5 = load i16, ptr %4, align 8, !tbaa !101
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Event_ctrl_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 18
  %5 = load i16, ptr %4, align 2, !tbaa !102
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Event_alt_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 19
  %5 = load i16, ptr %4, align 4, !tbaa !103
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Event_oskey_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmEvent, ptr %3, i64 0, i32 20
  %5 = load i16, ptr %4, align 2, !tbaa !104
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Timer_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Timer_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @Timer_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Timer_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !105 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Timer_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @Timer_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Timer_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Timer_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Timer_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Timer_time_step_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmTimer, ptr %3, i64 0, i32 3
  %5 = load double, ptr %4, align 8, !tbaa !106
  %6 = fptrunc double %5 to float
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Timer_time_delta_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmTimer, ptr %3, i64 0, i32 7
  %5 = load double, ptr %4, align 8, !tbaa !108
  %6 = fptrunc double %5 to float
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local float @Timer_time_duration_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmTimer, ptr %3, i64 0, i32 6
  %5 = load double, ptr %4, align 8, !tbaa !109
  %6 = fptrunc double %5 to float
  ret float %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UIPopupMenu_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_UIPopupMenu_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @UIPopupMenu_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @UIPopupMenu_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !110 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UIPopupMenu_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @UIPopupMenu_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UIPopupMenu_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @UIPopupMenu_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UIPopupMenu_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UIPopupMenu_layout_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @rna_PopupMenu_layout_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_PopupMenu_layout_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !111 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = tail call ptr @uiPupMenuLayout(ptr noundef %4) #16
  %6 = load ptr, ptr %1, align 8, !tbaa !112
  tail call void @RNA_pointer_create(ptr noundef %6, ptr noundef nonnull @RNA_UILayout, ptr noundef %5, ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UIPieMenu_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_UIPieMenu_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @UIPieMenu_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @UIPieMenu_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !113 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UIPieMenu_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @UIPieMenu_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UIPieMenu_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @UIPieMenu_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UIPieMenu_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @UIPieMenu_layout_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @rna_PieMenu_layout_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_PieMenu_layout_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !114 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = tail call ptr @uiPieMenuLayout(ptr noundef %4) #16
  %6 = load ptr, ptr %1, align 8, !tbaa !112
  tail call void @RNA_pointer_create(ptr noundef %6, ptr noundef nonnull @RNA_UILayout, ptr noundef %5, ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Window_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_Window_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @Window_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @Window_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !115 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Window_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @Window_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Window_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @Window_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Window_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Window_screen_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmWindow, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Screen, ptr noundef %6) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @Window_screen_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #11 {
  tail call fastcc void @rna_Window_screen_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_Window_screen_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #11 !PGOFuncName !118 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.wmWindow, ptr %8, i64 0, i32 4
  store ptr %4, ptr %9, align 8, !tbaa !119
  br label %10

10:                                               ; preds = %2, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Window_x_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 8, !tbaa !120
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Window_y_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 2, !tbaa !121
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Window_width_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 8
  %5 = load i16, ptr %4, align 4, !tbaa !122
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @Window_height_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmWindow, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 2, !tbaa !123
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_operators_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_WindowManager_operators, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 7
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #16
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @WindowManager_operators_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_begin(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @WindowManager_operators_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !124 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #16
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Operator, ptr noundef %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_operators_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @WindowManager_operators_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @rna_iterator_listbase_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_operators_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WindowManager_operators_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #17
  call void @WindowManager_operators_begin(ptr noundef nonnull %4, ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !125
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %19, label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %31, label %41

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %1, %14 ]
  %21 = add nsw i32 %20, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #16
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !127

26:                                               ; preds = %19, %14
  %27 = phi i32 [ %1, %14 ], [ %21, %19 ]
  %28 = phi i1 [ true, %14 ], [ %24, %19 ]
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %45, label %46

31:                                               ; preds = %16, %35
  %32 = phi i32 [ %36, %35 ], [ %1, %16 ]
  %33 = phi ptr [ %37, %35 ], [ %17, %16 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %32, -1
  %37 = load ptr, ptr %33, align 8, !tbaa !129
  store ptr %37, ptr %10, align 8, !tbaa !131
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !132

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  call void @WindowManager_operators_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @WindowManager_operators_end(ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #17
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WindowManager_operators_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #17
  call void @WindowManager_operators_begin(ptr noundef nonnull %4, ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !44
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !133
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @Operator_bl_idname_length(ptr noundef nonnull %10) #18
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @Operator_bl_idname_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #18
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #19
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.411) #16
  call void @Operator_bl_idname_get(ptr noundef nonnull %10, ptr noundef %25) #18
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #19
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %28(ptr noundef %25) #16
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @WindowManager_operators_next(ptr noundef nonnull %4) #18
  %30 = load i32, ptr %6, align 8, !tbaa !44
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !134

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @WindowManager_operators_end(ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #17
  ret i32 %34
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_windows_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_WindowManager_windows, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 3
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #16
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @WindowManager_windows_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @WindowManager_windows_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !135 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #16
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_Window, ptr noundef %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_windows_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @WindowManager_windows_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_windows_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WindowManager_windows_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #17
  call void @WindowManager_windows_begin(ptr noundef nonnull %4, ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !125
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %19, label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %31, label %41

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %1, %14 ]
  %21 = add nsw i32 %20, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #16
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !136

26:                                               ; preds = %19, %14
  %27 = phi i32 [ %1, %14 ], [ %21, %19 ]
  %28 = phi i1 [ true, %14 ], [ %24, %19 ]
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %45, label %46

31:                                               ; preds = %16, %35
  %32 = phi i32 [ %36, %35 ], [ %1, %16 ]
  %33 = phi ptr [ %37, %35 ], [ %17, %16 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %32, -1
  %37 = load ptr, ptr %33, align 8, !tbaa !129
  store ptr %37, ptr %10, align 8, !tbaa !131
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !137

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  call void @WindowManager_windows_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @WindowManager_windows_end(ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #17
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_keyconfigs_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_WindowManager_keyconfigs, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 13
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #16
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @WindowManager_keyconfigs_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @WindowManager_keyconfigs_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !138 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #16
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_KeyConfig, ptr noundef %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_keyconfigs_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @WindowManager_keyconfigs_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_keyconfigs_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WindowManager_keyconfigs_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #17
  call void @WindowManager_keyconfigs_begin(ptr noundef nonnull %4, ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !125
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %19, label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %31, label %41

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %1, %14 ]
  %21 = add nsw i32 %20, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #16
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !139

26:                                               ; preds = %19, %14
  %27 = phi i32 [ %1, %14 ], [ %21, %19 ]
  %28 = phi i1 [ true, %14 ], [ %24, %19 ]
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %45, label %46

31:                                               ; preds = %16, %35
  %32 = phi i32 [ %36, %35 ], [ %1, %16 ]
  %33 = phi ptr [ %37, %35 ], [ %17, %16 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %32, -1
  %37 = load ptr, ptr %33, align 8, !tbaa !129
  store ptr %37, ptr %10, align 8, !tbaa !131
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !140

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  call void @WindowManager_keyconfigs_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @WindowManager_keyconfigs_end(ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #17
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @WindowManager_keyconfigs_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #17
  call void @WindowManager_keyconfigs_begin(ptr noundef nonnull %4, ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !44
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !133
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @KeyConfig_name_length(ptr noundef nonnull %10) #18
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @KeyConfig_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #18
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #19
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.411) #16
  call void @KeyConfig_name_get(ptr noundef nonnull %10, ptr noundef %25) #18
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #19
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %28(ptr noundef %25) #16
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @WindowManager_keyconfigs_next(ptr noundef nonnull %4) #18
  %30 = load i32, ptr %6, align 8, !tbaa !44
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !141

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @WindowManager_keyconfigs_end(ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #17
  ret i32 %34
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyConfig_name_length(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyConfig, ptr %3, i64 0, i32 2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #19
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyConfig_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmKeyConfig, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_clipboard_get(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1) #0 {
  tail call fastcc void @rna_wmClipboard_get(ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_wmClipboard_get(ptr nocapture noundef writeonly %0) unnamed_addr #0 !PGOFuncName !142 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  %3 = call ptr @WM_clipboard_text_get(i8 noundef zeroext 0, ptr noundef nonnull %2) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %2, align 4, !tbaa !94
  %7 = add nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull align 1 %3, i64 %8, i1 false)
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %9(ptr noundef nonnull %3) #16
  br label %11

10:                                               ; preds = %1
  store i8 0, ptr %0, align 1, !tbaa !67
  br label %11

11:                                               ; preds = %10, %5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WindowManager_clipboard_length(ptr nocapture readnone %0) #0 {
  %2 = tail call fastcc i32 @rna_wmClipboard_length() #18
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_wmClipboard_length() unnamed_addr #0 !PGOFuncName !143 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #17
  %2 = call ptr @WM_clipboard_text_get(i8 noundef zeroext 0, ptr noundef nonnull %1) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %5(ptr noundef nonnull %2) #16
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32, ptr %1, align 4, !tbaa !94
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #17
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_clipboard_set(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_wmClipboard_set(ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_wmClipboard_set(ptr noundef %0) unnamed_addr #0 !PGOFuncName !144 {
  tail call void @WM_clipboard_text_set(ptr noundef %0, i8 noundef zeroext 0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyConfigurations_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_KeyConfigurations_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @KeyConfigurations_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @KeyConfigurations_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !145 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyConfigurations_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @KeyConfigurations_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyConfigurations_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @KeyConfigurations_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyConfigurations_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyConfigurations_active_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_WindowManager_active_keyconfig_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_WindowManager_active_keyconfig_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !146 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 13
  %6 = tail call ptr @BLI_findstring(ptr noundef nonnull %5, ptr noundef nonnull getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 45), i32 noundef 16) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !147
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %6, %2 ], [ %10, %8 ]
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull @RNA_KeyConfig, ptr noundef %12) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyConfigurations_active_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #0 {
  tail call fastcc void @rna_WindowManager_active_keyconfig_set(ptr noundef %0, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_WindowManager_active_keyconfig_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) unnamed_addr #0 !PGOFuncName !150 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds %struct.wmKeyConfig, ptr %4, i64 0, i32 2
  tail call void @WM_keyconfig_set_active(ptr noundef %8, ptr noundef nonnull %9) #16
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyConfigurations_default_value_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !147
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_KeyConfig, ptr noundef %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyConfigurations_addon_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 15
  %6 = load ptr, ptr %5, align 8, !tbaa !151
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_KeyConfig, ptr noundef %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyConfigurations_user_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !152
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_KeyConfig, ptr noundef %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyConfig_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_KeyConfig_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @KeyConfig_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @KeyConfig_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !153 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyConfig_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @KeyConfig_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyConfig_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @KeyConfig_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyConfig_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyConfig_name_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmKeyConfig, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyConfig_keymaps_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_KeyConfig_keymaps, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.wmKeyConfig, ptr %5, i64 0, i32 4
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #16
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @KeyConfig_keymaps_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @KeyConfig_keymaps_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !154 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #16
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_KeyMap, ptr noundef %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyConfig_keymaps_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @KeyConfig_keymaps_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyConfig_keymaps_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @KeyConfig_keymaps_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #17
  call void @KeyConfig_keymaps_begin(ptr noundef nonnull %4, ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !125
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %19, label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %31, label %41

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %1, %14 ]
  %21 = add nsw i32 %20, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #16
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !155

26:                                               ; preds = %19, %14
  %27 = phi i32 [ %1, %14 ], [ %21, %19 ]
  %28 = phi i1 [ true, %14 ], [ %24, %19 ]
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %45, label %46

31:                                               ; preds = %16, %35
  %32 = phi i32 [ %36, %35 ], [ %1, %16 ]
  %33 = phi ptr [ %37, %35 ], [ %17, %16 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %32, -1
  %37 = load ptr, ptr %33, align 8, !tbaa !129
  store ptr %37, ptr %10, align 8, !tbaa !131
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !156

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  call void @KeyConfig_keymaps_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @KeyConfig_keymaps_end(ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #17
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @KeyConfig_keymaps_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #17
  call void @KeyConfig_keymaps_begin(ptr noundef nonnull %4, ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !44
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !133
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @KeyMap_name_length(ptr noundef nonnull %10) #18
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @KeyMap_name_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #18
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #19
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.411) #16
  call void @KeyMap_name_get(ptr noundef nonnull %10, ptr noundef %25) #18
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #19
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %28(ptr noundef %25) #16
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @KeyConfig_keymaps_next(ptr noundef nonnull %4) #18
  %30 = load i32, ptr %6, align 8, !tbaa !44
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !157

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @KeyConfig_keymaps_end(ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #17
  ret i32 %34
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyMap_name_length(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyMap, ptr %3, i64 0, i32 4
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #19
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMap_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmKeyMap, ptr %4, i64 0, i32 4
  %6 = tail call ptr @BLI_strncpy_utf8(ptr noundef %1, ptr noundef nonnull %5, i64 noundef 64) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyConfig_is_user_defined_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyConfig, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !158
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMaps_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_KeyMaps_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @KeyMaps_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @KeyMaps_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !160 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMaps_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @KeyMaps_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMaps_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @KeyMaps_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMaps_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMap_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_KeyMap_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @KeyMap_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @KeyMap_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !161 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMap_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @KeyMap_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMap_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @KeyMap_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMap_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyMap_space_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyMap, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !162
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyMap_region_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyMap, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 2, !tbaa !164
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMap_keymap_items_begin(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_KeyMap_keymap_items, ptr %6, align 8, !tbaa !39
  %7 = getelementptr inbounds %struct.wmKeyMap, ptr %5, i64 0, i32 2
  tail call void @rna_iterator_listbase_begin(ptr noundef %0, ptr noundef nonnull %7, ptr noundef null) #16
  %8 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @KeyMap_keymap_items_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @KeyMap_keymap_items_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !165 {
  %3 = tail call ptr @rna_iterator_listbase_get(ptr noundef %1) #16
  tail call void @rna_pointer_inherit_refine(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef nonnull @RNA_KeyMapItem, ptr noundef %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMap_keymap_items_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_iterator_listbase_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @KeyMap_keymap_items_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMap_keymap_items_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @KeyMap_keymap_items_lookup_int(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #17
  call void @KeyMap_keymap_items_begin(ptr noundef nonnull %4, ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 3, i32 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !125
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %19, label %26

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %31, label %41

19:                                               ; preds = %14, %19
  %20 = phi i32 [ %21, %19 ], [ %1, %14 ]
  %21 = add nsw i32 %20, -1
  call void @rna_iterator_listbase_next(ptr noundef nonnull %4) #16
  %22 = icmp ugt i32 %20, 1
  %23 = load i32, ptr %6, align 8
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %19, label %26, !llvm.loop !166

26:                                               ; preds = %19, %14
  %27 = phi i32 [ %1, %14 ], [ %21, %19 ]
  %28 = phi i1 [ true, %14 ], [ %24, %19 ]
  %29 = icmp eq i32 %27, 0
  %30 = select i1 %29, i1 %28, i1 false
  br i1 %30, label %45, label %46

31:                                               ; preds = %16, %35
  %32 = phi i32 [ %36, %35 ], [ %1, %16 ]
  %33 = phi ptr [ %37, %35 ], [ %17, %16 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = add nsw i32 %32, -1
  %37 = load ptr, ptr %33, align 8, !tbaa !129
  store ptr %37, ptr %10, align 8, !tbaa !131
  %38 = icmp sgt i32 %32, 1
  br i1 %38, label %31, label %39, !llvm.loop !167

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %46, label %45

41:                                               ; preds = %16
  %42 = icmp ne i32 %1, 0
  %43 = icmp eq ptr %17, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %39, %26
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  call void @KeyMap_keymap_items_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  br label %46

46:                                               ; preds = %31, %41, %39, %26, %45, %3
  %47 = phi i32 [ 0, %3 ], [ 1, %45 ], [ 0, %41 ], [ 0, %26 ], [ 0, %39 ], [ 0, %31 ]
  call void @KeyMap_keymap_items_end(ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #17
  ret i32 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @KeyMap_keymap_items_lookup_string(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca %struct.CollectionPropertyIterator, align 8
  %5 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #17
  call void @KeyMap_keymap_items_begin(ptr noundef nonnull %4, ptr noundef %0) #18
  %6 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !44
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6
  %11 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %4, i64 0, i32 6, i32 2
  br label %12

12:                                               ; preds = %9, %29
  %13 = load ptr, ptr %11, align 8, !tbaa !133
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = call i32 @KeyMapItem_idname_length(ptr noundef nonnull %10) #18
  %17 = icmp slt i32 %16, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  call void @KeyMapItem_idname_get(ptr noundef nonnull %10, ptr noundef nonnull %5) #18
  %19 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %1) #19
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %29

21:                                               ; preds = %15
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !35
  %23 = add nuw nsw i32 %16, 1
  %24 = zext nneg i32 %23 to i64
  %25 = call ptr %22(i64 noundef %24, ptr noundef nonnull @.str.411) #16
  call void @KeyMapItem_idname_get(ptr noundef nonnull %10, ptr noundef %25) #18
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #19
  %27 = icmp eq i32 %26, 0
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %28(ptr noundef %25) #16
  br i1 %27, label %32, label %29

29:                                               ; preds = %21, %18, %12
  call void @KeyMap_keymap_items_next(ptr noundef nonnull %4) #18
  %30 = load i32, ptr %6, align 8, !tbaa !44
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %12, !llvm.loop !168

32:                                               ; preds = %18, %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  br label %33

33:                                               ; preds = %29, %32, %3
  %34 = phi i32 [ 0, %3 ], [ 1, %32 ], [ 0, %29 ]
  call void @KeyMap_keymap_items_end(ptr noundef nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #17
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @KeyMapItem_idname_length(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_wmKeyMapItem_idname_length(ptr noundef %0) #18
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMapItem_idname_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_wmKeyMapItem_idname_get(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyMap_is_user_modified_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyMap, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 4, !tbaa !169
  %6 = lshr i16 %5, 5
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyMap_is_user_modified_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.wmKeyMap, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 4, !tbaa !169
  %8 = and i16 %7, -33
  %9 = select i1 %5, i16 0, i16 32
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !169
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyMap_is_modal_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyMap, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 4, !tbaa !169
  %6 = and i16 %5, 1
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyMap_show_expanded_items_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyMap, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 4, !tbaa !169
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyMap_show_expanded_items_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.wmKeyMap, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 4, !tbaa !169
  %8 = and i16 %7, -5
  %9 = select i1 %5, i16 0, i16 4
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !169
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyMap_show_expanded_children_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyMap, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 4, !tbaa !169
  %6 = lshr i16 %5, 3
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyMap_show_expanded_children_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.wmKeyMap, ptr %4, i64 0, i32 7
  %7 = load i16, ptr %6, align 4, !tbaa !169
  %8 = and i16 %7, -9
  %9 = select i1 %5, i16 0, i16 8
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 4, !tbaa !169
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMapItems_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_KeyMapItems_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @KeyMapItems_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @KeyMapItems_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !170 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMapItems_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @KeyMapItems_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMapItems_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @KeyMapItems_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMapItems_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMapItem_rna_properties_begin(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 136, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !34
  %4 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 2
  store ptr @rna_KeyMapItem_rna_properties, ptr %4, align 8, !tbaa !39
  tail call void @rna_builtin_properties_begin(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @KeyMapItem_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %3, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  br label %10

10:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @KeyMapItem_rna_properties_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 !PGOFuncName !171 {
  tail call void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMapItem_rna_properties_next(ptr noundef %0) #0 {
  %2 = alloca %struct.PointerRNA, align 8
  tail call void @rna_builtin_properties_next(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.CollectionPropertyIterator, ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @KeyMapItem_rna_properties_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %2, ptr noundef nonnull %0) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMapItem_rna_properties_end(ptr noundef %0) #0 {
  tail call void @rna_iterator_listbase_end(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @KeyMapItem_rna_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rna_builtin_properties_lookup_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMapItem_rna_type_get(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #0 {
  tail call void @rna_builtin_type_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_wmKeyMapItem_idname_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !172 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 2
  tail call void @WM_operator_py_idname(ptr noundef %1, ptr noundef nonnull %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_wmKeyMapItem_idname_length(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !173 {
  %2 = alloca [64 x i8], align 16
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #17
  %5 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 2
  call void @WM_operator_py_idname(ptr noundef nonnull %2, ptr noundef nonnull %5) #16
  %6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #19
  %7 = trunc i64 %6 to i32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #17
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMapItem_idname_set(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_wmKeyMapItem_idname_set(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_wmKeyMapItem_idname_set(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !174 {
  %3 = alloca [64 x i8], align 16
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #17
  call void @WM_operator_bl_idname(ptr noundef nonnull %3, ptr noundef %1) #16
  %6 = getelementptr inbounds %struct.wmKeyMapItem, ptr %5, i64 0, i32 2
  %7 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %6) #19
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef nonnull %3, i64 noundef 64) #16
  call void @WM_keymap_properties_reset(ptr noundef %5, ptr noundef null) #16
  br label %11

11:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMapItem_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call fastcc void @rna_wmKeyMapItem_name_get(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_wmKeyMapItem_name_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !175 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 2
  %6 = tail call ptr @WM_operatortype_find(ptr noundef nonnull %5, i8 noundef zeroext 1) #16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = tail call ptr @RNA_struct_ui_name(ptr noundef %10) #16
  br label %12

12:                                               ; preds = %2, %8
  %13 = phi ptr [ %11, %8 ], [ %5, %2 ]
  %14 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %13) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @KeyMapItem_name_length(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_wmKeyMapItem_name_length(ptr noundef %0) #18
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_wmKeyMapItem_name_length(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !176 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 2
  %5 = tail call ptr @WM_operatortype_find(ptr noundef nonnull %4, i8 noundef zeroext 1) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = tail call ptr @RNA_struct_ui_name(ptr noundef %9) #16
  br label %11

11:                                               ; preds = %1, %7
  %12 = phi ptr [ %10, %7 ], [ %4, %1 ]
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #19
  %14 = trunc i64 %13 to i32
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyMapItem_properties_get(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.PointerRNA) align 8 %0, ptr nocapture noundef readonly %1) #9 {
  tail call fastcc void @rna_KeyMapItem_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_KeyMapItem_properties_get(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.PointerRNA) align 8 %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !177 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !178
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !34
  br label %10

9:                                                ; preds = %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) @PointerRNA_NULL, i64 24, i1 false), !tbaa.struct !34
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @KeyMapItem_map_type_get(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call fastcc i32 @rna_wmKeyMapItem_map_type_get(ptr noundef %0) #18
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_wmKeyMapItem_map_type_get(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !180 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = tail call i32 @WM_keymap_map_type_get(ptr noundef %3) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMapItem_map_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  tail call fastcc void @rna_wmKeyMapItem_map_type_set(ptr noundef %0, i32 noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_wmKeyMapItem_map_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !181 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = tail call fastcc i32 @rna_wmKeyMapItem_map_type_get(ptr noundef %0) #18
  %6 = icmp ne i32 %5, %1
  %7 = icmp ult i32 %1, 6
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds [6 x i16], ptr @switch.table.rna_wmKeyMapItem_map_type_set, i64 0, i64 %10
  %12 = load i16, ptr %11, align 2
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds [6 x i16], ptr @switch.table.rna_wmKeyMapItem_map_type_set.1397, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2
  %16 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 6
  store i16 %12, ptr %16, align 2, !tbaa !182
  %17 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 7
  store i16 %15, ptr %17, align 4, !tbaa !183
  br label %18

18:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyMapItem_type_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 6
  %5 = load i16, ptr %4, align 2, !tbaa !182
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyMapItem_type_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 6
  store i16 %5, ptr %6, align 2, !tbaa !182
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyMapItem_value_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 7
  %5 = load i16, ptr %4, align 4, !tbaa !183
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyMapItem_value_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 7
  store i16 %5, ptr %6, align 4, !tbaa !183
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyMapItem_id_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 15
  %5 = load i16, ptr %4, align 4, !tbaa !184
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @KeyMapItem_any_get(ptr nocapture noundef readonly %0) #7 {
  %2 = tail call fastcc i32 @rna_KeyMapItem_any_getf(ptr noundef %0) #18, !range !59
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @rna_KeyMapItem_any_getf(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !185 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 8
  %5 = load i16, ptr %4, align 2, !tbaa !186
  %6 = icmp eq i16 %5, -1
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 9
  %9 = load i16, ptr %8, align 8, !tbaa !187
  %10 = icmp eq i16 %9, -1
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 10
  %13 = load i16, ptr %12, align 2, !tbaa !188
  %14 = icmp eq i16 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 11
  %17 = load i16, ptr %16, align 4, !tbaa !189
  %18 = icmp eq i16 %17, -1
  br i1 %18, label %20, label %19

19:                                               ; preds = %15, %11, %7, %1
  br label %20

20:                                               ; preds = %15, %19
  %21 = phi i32 [ 0, %19 ], [ 1, %15 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyMapItem_any_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  tail call fastcc void @rna_KeyMapItem_any_setf(ptr noundef %0, i32 noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_KeyMapItem_any_setf(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !PGOFuncName !190 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp ne i32 %1, 0
  %6 = sext i1 %5 to i16
  %7 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 8
  %8 = insertelement <4 x i16> poison, i16 %6, i64 0
  %9 = shufflevector <4 x i16> %8, <4 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %9, ptr %7, align 2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyMapItem_shift_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 8
  %5 = load i16, ptr %4, align 2, !tbaa !186
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyMapItem_shift_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 8
  store i16 %5, ptr %6, align 2, !tbaa !186
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyMapItem_ctrl_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !187
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyMapItem_ctrl_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 9
  store i16 %5, ptr %6, align 8, !tbaa !187
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyMapItem_alt_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 10
  %5 = load i16, ptr %4, align 2, !tbaa !188
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyMapItem_alt_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 10
  store i16 %5, ptr %6, align 2, !tbaa !188
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyMapItem_oskey_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 11
  %5 = load i16, ptr %4, align 4, !tbaa !189
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyMapItem_oskey_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 11
  store i16 %5, ptr %6, align 4, !tbaa !189
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyMapItem_key_modifier_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 12
  %5 = load i16, ptr %4, align 2, !tbaa !191
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyMapItem_key_modifier_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  tail call fastcc void @rna_wmKeyMapItem_keymodifier_set(ptr noundef %0, i32 noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @rna_wmKeyMapItem_keymodifier_set(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !PGOFuncName !192 {
  %3 = icmp eq i32 %1, 218
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp sgt i32 %1, 96
  %8 = trunc i32 %1 to i16
  %9 = select i1 %7, i16 %8, i16 0
  %10 = getelementptr inbounds %struct.wmKeyMapItem, ptr %6, i64 0, i32 12
  store i16 %9, ptr %10, align 2, !tbaa !191
  br label %11

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyMapItem_show_expanded_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 8, !tbaa !193
  %6 = lshr i16 %5, 1
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyMapItem_show_expanded_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 13
  %7 = load i16, ptr %6, align 8, !tbaa !193
  %8 = and i16 %7, -3
  %9 = select i1 %5, i16 0, i16 2
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !193
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyMapItem_propvalue_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !194
  %6 = sext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyMapItem_propvalue_set(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = trunc i32 %1 to i16
  %6 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 5
  store i16 %5, ptr %6, align 8, !tbaa !194
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyMapItem_active_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 8, !tbaa !193
  %6 = and i16 %5, 1
  %7 = xor i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @KeyMapItem_active_set(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.wmKeyMapItem, ptr %4, i64 0, i32 13
  %7 = load i16, ptr %6, align 8, !tbaa !193
  %8 = and i16 %7, -2
  %9 = zext i1 %5 to i16
  %10 = or disjoint i16 %8, %9
  store i16 %10, ptr %6, align 8, !tbaa !193
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyMapItem_is_user_modified_get(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 13
  %5 = load i16, ptr %4, align 8, !tbaa !193
  %6 = lshr i16 %5, 2
  %7 = and i16 %6, 1
  %8 = zext nneg i16 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @KeyMapItem_is_user_defined_get(ptr nocapture noundef readonly %0) #7 {
  %2 = tail call fastcc i32 @rna_KeyMapItem_userdefined_get(ptr noundef %0) #18, !range !59
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @rna_KeyMapItem_userdefined_get(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !195 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 15
  %5 = load i16, ptr %4, align 4, !tbaa !184
  %6 = lshr i16 %5, 15
  %7 = zext nneg i16 %6 to i32
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Operator_report(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Operator_report(ptr noundef %0, i32 noundef %1, ptr noundef %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Operator_report(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !196 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void @BKE_report(ptr noundef %5, i32 noundef %1, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Operator_report_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !197
  %8 = load i32, ptr %7, align 4, !tbaa !94
  %9 = getelementptr inbounds i8, ptr %7, i64 4
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  tail call fastcc void @rna_Operator_report(ptr noundef %6, i32 noundef %8, ptr noundef %10) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Macro_report(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_Operator_report(ptr noundef %0, i32 noundef %1, ptr noundef %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Macro_report_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !197
  %8 = load i32, ptr %7, align 4, !tbaa !94
  %9 = getelementptr inbounds i8, ptr %7, i64 4
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  tail call fastcc void @rna_Operator_report(ptr noundef %6, i32 noundef %8, ptr noundef %10) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Window_cursor_warp(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void @WM_cursor_warp(ptr noundef %0, i32 noundef %1, i32 noundef %2) #16
  ret void
}

; Function Attrs: optsize
declare void @WM_cursor_warp(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Window_cursor_warp_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !197
  %8 = load i32, ptr %7, align 4, !tbaa !94
  %9 = getelementptr inbounds i8, ptr %7, i64 4
  %10 = load i32, ptr %9, align 4, !tbaa !94
  tail call void @WM_cursor_warp(ptr noundef %6, i32 noundef %8, i32 noundef %10) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Window_cursor_set(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @WM_cursor_set(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare void @WM_cursor_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Window_cursor_set_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !197
  %8 = load i32, ptr %7, align 4, !tbaa !94
  tail call void @WM_cursor_set(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Window_cursor_modal_set(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @WM_cursor_modal_set(ptr noundef %0, i32 noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare void @WM_cursor_modal_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Window_cursor_modal_set_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !197
  %8 = load i32, ptr %7, align 4, !tbaa !94
  tail call void @WM_cursor_modal_set(ptr noundef %6, i32 noundef %8) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Window_cursor_modal_restore(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @WM_cursor_modal_restore(ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare void @WM_cursor_modal_restore(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Window_cursor_modal_restore_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  tail call void @WM_cursor_modal_restore(ptr noundef %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_fileselect_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_fileselect_add_call(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %3, align 8, !tbaa !197
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %6) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WindowManager_modal_handler_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @rna_event_modal_handler_add(ptr noundef %0, ptr noundef %1) #18, !range !59
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_event_modal_handler_add(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !199 {
  %3 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #16
  %4 = icmp ne ptr %3, null
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_modal_handler_add_call(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %3, align 8, !tbaa !197
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds i8, ptr %5, i64 8
  %8 = tail call fastcc i32 @rna_event_modal_handler_add(ptr noundef %0, ptr noundef %6) #18, !range !59
  store i32 %8, ptr %7, align 4, !tbaa !94
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WindowManager_event_timer_add(ptr noundef %0, float noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @rna_event_timer_add(ptr noundef %0, float noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_event_timer_add(ptr noundef %0, float noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !200 {
  %4 = fpext float %1 to double
  %5 = tail call ptr @WM_event_add_timer(ptr noundef %0, ptr noundef %2, i32 noundef 272, double noundef %4) #16
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_event_timer_add_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !197
  %8 = load float, ptr %7, align 4, !tbaa !201
  %9 = getelementptr inbounds i8, ptr %7, i64 4
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = getelementptr inbounds i8, ptr %7, i64 12
  %12 = tail call fastcc ptr @rna_event_timer_add(ptr noundef %6, float noundef %8, ptr noundef %10) #18
  store ptr %12, ptr %11, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_event_timer_remove(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_event_timer_remove(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_event_timer_remove(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !203 {
  %3 = getelementptr inbounds %struct.wmTimer, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !204
  tail call void @WM_event_remove_timer(ptr noundef %0, ptr noundef %4, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_event_timer_remove_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !197
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  tail call fastcc void @rna_event_timer_remove(ptr noundef %6, ptr noundef %8) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @WindowManager_progress_begin(ptr nocapture noundef readnone %0, float noundef %1, float noundef %2) local_unnamed_addr #12 {
  tail call fastcc void @rna_progress_begin(float noundef %1, float noundef %2) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @rna_progress_begin(float noundef %0, float noundef %1) unnamed_addr #13 !PGOFuncName !205 {
  %3 = fsub float %1, %0
  %4 = fcmp une float %3, 0.000000e+00
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  store float %0, ptr @wm_progress_state.0, align 4, !tbaa !206
  store float %1, ptr @wm_progress_state.1, align 4, !tbaa !208
  br label %6

6:                                                ; preds = %2, %5
  store i1 %4, ptr @wm_progress_state.2, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @WindowManager_progress_begin_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #9 {
  %5 = load ptr, ptr %3, align 8, !tbaa !197
  %6 = load float, ptr %5, align 4, !tbaa !201
  %7 = getelementptr inbounds i8, ptr %5, i64 4
  %8 = load float, ptr %7, align 4, !tbaa !201
  tail call fastcc void @rna_progress_begin(float noundef %6, float noundef %8) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_progress_update(ptr nocapture noundef readonly %0, float noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_progress_update(ptr noundef %0, float noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_progress_update(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #0 !PGOFuncName !209 {
  %3 = load i1, ptr @wm_progress_state.2, align 4
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !210
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = load float, ptr @wm_progress_state.0, align 4, !tbaa !206
  %10 = fsub float %1, %9
  %11 = fmul float %10, 1.000000e+04
  %12 = load float, ptr @wm_progress_state.1, align 4, !tbaa !208
  %13 = fsub float %12, %9
  %14 = fdiv float %11, %13
  %15 = fptosi float %14 to i32
  tail call void @WM_cursor_time(ptr noundef nonnull %6, i32 noundef %15) #16
  br label %16

16:                                               ; preds = %4, %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_progress_update_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !197
  %8 = load float, ptr %7, align 4, !tbaa !201
  tail call fastcc void @rna_progress_update(ptr noundef %6, float noundef %8) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_progress_end(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call fastcc void @rna_progress_end(ptr noundef %0) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_progress_end(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !211 {
  %2 = load i1, ptr @wm_progress_state.2, align 4
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !210
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @WM_cursor_modal_restore(ptr noundef nonnull %5) #16
  store i1 false, ptr @wm_progress_state.2, align 4
  br label %8

8:                                                ; preds = %3, %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_progress_end_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  tail call fastcc void @rna_progress_end(ptr noundef %6) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WindowManager_invoke_props_popup(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @rna_Operator_props_popup(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Operator_props_popup(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !212 {
  %4 = tail call i32 @WM_operator_props_popup(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_invoke_props_popup_call(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %3, align 8, !tbaa !197
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds i8, ptr %5, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds i8, ptr %5, i64 16
  %10 = tail call fastcc i32 @rna_Operator_props_popup(ptr noundef %0, ptr noundef %6, ptr noundef %8) #18
  store i32 %10, ptr %9, align 4, !tbaa !94
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WindowManager_invoke_props_dialog(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @WM_operator_props_dialog_popup(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #16
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @WM_operator_props_dialog_popup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_invoke_props_dialog_call(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %3, align 8, !tbaa !197
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds i8, ptr %5, i64 8
  %8 = load i32, ptr %7, align 4, !tbaa !94
  %9 = getelementptr inbounds i8, ptr %5, i64 12
  %10 = load i32, ptr %9, align 4, !tbaa !94
  %11 = getelementptr inbounds i8, ptr %5, i64 16
  %12 = tail call i32 @WM_operator_props_dialog_popup(ptr noundef %0, ptr noundef %6, i32 noundef %8, i32 noundef %10) #16
  store i32 %12, ptr %11, align 4, !tbaa !94
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_invoke_search_popup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_Operator_enum_search_invoke(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_Operator_enum_search_invoke(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !213 {
  %3 = tail call i32 @WM_enum_search_invoke(ptr noundef %0, ptr noundef %1, ptr noundef null) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_invoke_search_popup_call(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %3, align 8, !tbaa !197
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  tail call fastcc void @rna_Operator_enum_search_invoke(ptr noundef %0, ptr noundef %6) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WindowManager_invoke_popup(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @WM_operator_ui_popup(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #16
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @WM_operator_ui_popup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_invoke_popup_call(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %3, align 8, !tbaa !197
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds i8, ptr %5, i64 8
  %8 = load i32, ptr %7, align 4, !tbaa !94
  %9 = getelementptr inbounds i8, ptr %5, i64 12
  %10 = load i32, ptr %9, align 4, !tbaa !94
  %11 = getelementptr inbounds i8, ptr %5, i64 16
  %12 = tail call i32 @WM_operator_ui_popup(ptr noundef %0, ptr noundef %6, i32 noundef %8, i32 noundef %10) #16
  store i32 %12, ptr %11, align 4, !tbaa !94
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @WindowManager_invoke_confirm(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc i32 @rna_Operator_confirm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @rna_Operator_confirm(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !214 {
  %4 = tail call i32 @WM_operator_confirm(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_invoke_confirm_call(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %3, align 8, !tbaa !197
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds i8, ptr %5, i64 8
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds i8, ptr %5, i64 16
  %10 = tail call fastcc i32 @rna_Operator_confirm(ptr noundef %0, ptr noundef %6, ptr noundef %8) #18
  store i32 %10, ptr %9, align 4, !tbaa !94
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_pupmenu_begin__internal(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @rna_PupMenuBegin(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_PupMenuBegin(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !215 {
  %5 = tail call ptr @uiPupMenuBegin(ptr noundef %1, ptr noundef %2, i32 noundef %3) #16
  tail call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_UIPopupMenu, ptr noundef %5, ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_pupmenu_begin__internal_call(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5)
  %6 = load ptr, ptr %3, align 8, !tbaa !197
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = getelementptr inbounds i8, ptr %6, i64 8
  %9 = load i32, ptr %8, align 4, !tbaa !94
  %10 = getelementptr inbounds i8, ptr %6, i64 12
  call fastcc void @rna_PupMenuBegin(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %0, ptr noundef %7, i32 noundef %9) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_pupmenu_end__internal(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_PupMenuEnd(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_PupMenuEnd(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !216 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_pupmenu_end__internal_call(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %3, align 8, !tbaa !197
  tail call fastcc void @rna_PupMenuEnd(ptr noundef %0, ptr noundef %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_piemenu_begin__internal(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  tail call fastcc void @rna_PieMenuBegin(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_PieMenuBegin(ptr dead_on_unwind noalias writable sret(%struct.PointerRNA) align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !PGOFuncName !217 {
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = tail call ptr @uiPieMenuBegin(ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %7) #16
  tail call void @RNA_pointer_create(ptr noundef null, ptr noundef nonnull @RNA_UIPieMenu, ptr noundef %8, ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_piemenu_begin__internal_call(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3) #0 {
  %5 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5)
  %6 = load ptr, ptr %3, align 8, !tbaa !197
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = getelementptr inbounds i8, ptr %6, i64 8
  %9 = load i32, ptr %8, align 4, !tbaa !94
  %10 = getelementptr inbounds i8, ptr %6, i64 12
  %11 = getelementptr inbounds i8, ptr %6, i64 36
  call fastcc void @rna_PieMenuBegin(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %5, ptr noundef %0, ptr noundef %7, i32 noundef %9, ptr noundef nonnull %10) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_piemenu_end__internal(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call fastcc void @rna_PieMenuEnd(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_PieMenuEnd(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !218 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  tail call void @uiPieMenuEnd(ptr noundef %0, ptr noundef %4) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WindowManager_piemenu_end__internal_call(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %3, align 8, !tbaa !197
  tail call fastcc void @rna_PieMenuEnd(ptr noundef %0, ptr noundef %5) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @KeyConfigurations_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @WM_keyconfig_new_user(ptr noundef %0, ptr noundef %1) #16
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @WM_keyconfig_new_user(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyConfigurations_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !197
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call ptr @WM_keyconfig_new_user(ptr noundef %6, ptr noundef %8) #16
  store ptr %10, ptr %9, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyConfigurations_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_KeyConfig_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_KeyConfig_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !219 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = tail call zeroext i8 @WM_keyconfig_remove(ptr noundef %0, ptr noundef %5) #16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmKeyConfig, ptr %5, i64 0, i32 2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.726, ptr noundef nonnull %9) #16
  br label %11

10:                                               ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %11

11:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyConfigurations_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !197
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  tail call fastcc void @rna_KeyConfig_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @KeyMaps_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = tail call fastcc ptr @rna_keymap_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #18
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_keymap_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !220 {
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #16
  br label %11

9:                                                ; preds = %5
  %10 = tail call ptr @WM_modalkeymap_add(ptr noundef %0, ptr noundef %1, ptr noundef null) #16
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %8, %7 ], [ %10, %9 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMaps_new_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !197
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !94
  %11 = getelementptr inbounds i8, ptr %7, i64 12
  %12 = load i32, ptr %11, align 4, !tbaa !94
  %13 = getelementptr inbounds i8, ptr %7, i64 16
  %14 = load i32, ptr %13, align 4, !tbaa !94
  %15 = getelementptr inbounds i8, ptr %7, i64 20
  %16 = tail call fastcc ptr @rna_keymap_new(ptr noundef %6, ptr noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14) #18
  store ptr %16, ptr %15, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMaps_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_KeyMap_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_KeyMap_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !221 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = tail call zeroext i8 @WM_keymap_remove(ptr noundef %0, ptr noundef %5) #16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmKeyMap, ptr %5, i64 0, i32 4
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.726, ptr noundef nonnull %9) #16
  br label %11

10:                                               ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %11

11:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMaps_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !197
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  tail call fastcc void @rna_KeyMap_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @KeyMaps_find(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call fastcc ptr @rna_keymap_find(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #18
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_keymap_find(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !222 {
  %5 = getelementptr inbounds %struct.wmKeyConfig, ptr %0, i64 0, i32 4
  %6 = tail call ptr @WM_keymap_list_find(ptr noundef nonnull %5, ptr noundef %1, i32 noundef %2, i32 noundef %3) #16
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMaps_find_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !197
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !94
  %11 = getelementptr inbounds i8, ptr %7, i64 12
  %12 = load i32, ptr %11, align 4, !tbaa !94
  %13 = getelementptr inbounds i8, ptr %7, i64 16
  %14 = tail call fastcc ptr @rna_keymap_find(ptr noundef %6, ptr noundef %8, i32 noundef %10, i32 noundef %12) #18
  store ptr %14, ptr %13, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @KeyMaps_find_modal(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_keymap_find_modal(ptr noundef %1) #18
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_keymap_find_modal(ptr noundef %0) unnamed_addr #0 !PGOFuncName !223 {
  %2 = tail call ptr @WM_operatortype_find(ptr noundef %0, i8 noundef zeroext 0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %2, i64 0, i32 15
  %6 = load ptr, ptr %5, align 8, !tbaa !224
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMaps_find_modal_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr %3, align 8, !tbaa !197
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds i8, ptr %5, i64 8
  %8 = tail call fastcc ptr @rna_keymap_find_modal(ptr noundef %6) #18
  store ptr %8, ptr %7, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @KeyMap_active(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @rna_keymap_active(ptr noundef %0, ptr noundef %1) #18
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_keymap_active(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !225 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %1) #16
  %4 = tail call ptr @WM_keymap_active(ptr noundef %3, ptr noundef %0) #16
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMap_active_call(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !197
  %8 = tail call fastcc ptr @rna_keymap_active(ptr noundef %6, ptr noundef %0) #18
  store ptr %8, ptr %7, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMap_restore_to_default(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @WM_keymap_restore_to_default(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare void @WM_keymap_restore_to_default(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMap_restore_to_default_call(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  tail call void @WM_keymap_restore_to_default(ptr noundef %6, ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMap_restore_item_to_default(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_keymap_restore_item_to_default(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_keymap_restore_item_to_default(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !226 {
  tail call void @WM_keymap_restore_item_to_default(ptr noundef %1, ptr noundef %0, ptr noundef %2) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMap_restore_item_to_default_call(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !197
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  tail call fastcc void @rna_keymap_restore_item_to_default(ptr noundef %6, ptr noundef %0, ptr noundef %8) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @KeyMapItems_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #0 {
  %13 = tail call fastcc ptr @rna_KeyMap_item_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) #18
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_KeyMap_item_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11) unnamed_addr #0 !PGOFuncName !227 {
  %13 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #17
  %14 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 7
  %15 = load i16, ptr %14, align 4, !tbaa !169
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.727) #16
  br label %37

19:                                               ; preds = %12
  call void @WM_operator_bl_idname(ptr noundef nonnull %13, ptr noundef %2) #16
  %20 = icmp ne i32 %6, 0
  %21 = zext i1 %20 to i32
  %22 = icmp eq i32 %7, 0
  %23 = or disjoint i32 %21, 2
  %24 = select i1 %22, i32 %21, i32 %23
  %25 = icmp eq i32 %8, 0
  %26 = or disjoint i32 %24, 4
  %27 = select i1 %25, i32 %24, i32 %26
  %28 = icmp eq i32 %9, 0
  %29 = or disjoint i32 %27, 8
  %30 = select i1 %28, i32 %27, i32 %29
  %31 = icmp eq i32 %5, 0
  %32 = select i1 %31, i32 %30, i32 -1
  %33 = call ptr @WM_keymap_add_item(ptr noundef nonnull %0, ptr noundef nonnull %13, i32 noundef %3, i32 noundef %4, i32 noundef %32, i32 noundef %10) #16
  %34 = icmp eq i32 %11, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %19
  %36 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 2
  call void @BLI_remlink(ptr noundef nonnull %36, ptr noundef %33) #16
  call void @BLI_addhead(ptr noundef nonnull %36, ptr noundef %33) #16
  br label %37

37:                                               ; preds = %19, %35, %18
  %38 = phi ptr [ null, %18 ], [ %33, %35 ], [ %33, %19 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #17
  ret ptr %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMapItems_new_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !197
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !94
  %11 = getelementptr inbounds i8, ptr %7, i64 12
  %12 = load i32, ptr %11, align 4, !tbaa !94
  %13 = getelementptr inbounds i8, ptr %7, i64 16
  %14 = load i32, ptr %13, align 4, !tbaa !94
  %15 = getelementptr inbounds i8, ptr %7, i64 20
  %16 = load i32, ptr %15, align 4, !tbaa !94
  %17 = getelementptr inbounds i8, ptr %7, i64 24
  %18 = load i32, ptr %17, align 4, !tbaa !94
  %19 = getelementptr inbounds i8, ptr %7, i64 28
  %20 = load i32, ptr %19, align 4, !tbaa !94
  %21 = getelementptr inbounds i8, ptr %7, i64 32
  %22 = load i32, ptr %21, align 4, !tbaa !94
  %23 = getelementptr inbounds i8, ptr %7, i64 36
  %24 = load i32, ptr %23, align 4, !tbaa !94
  %25 = getelementptr inbounds i8, ptr %7, i64 40
  %26 = load i32, ptr %25, align 4, !tbaa !94
  %27 = getelementptr inbounds i8, ptr %7, i64 44
  %28 = tail call fastcc ptr @rna_KeyMap_item_new(ptr noundef %6, ptr noundef %1, ptr noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26) #18
  store ptr %28, ptr %27, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @KeyMapItems_new_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
  %12 = tail call fastcc ptr @rna_KeyMap_item_new_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #18
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @rna_KeyMap_item_new_modal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #0 !PGOFuncName !228 {
  %12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #17
  store i32 0, ptr %12, align 4, !tbaa !94
  %13 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 7
  %14 = load i16, ptr %13, align 4, !tbaa !169
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  tail call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.728) #16
  br label %44

18:                                               ; preds = %11
  %19 = icmp ne i32 %6, 0
  %20 = zext i1 %19 to i32
  %21 = icmp eq i32 %7, 0
  %22 = or disjoint i32 %20, 2
  %23 = select i1 %21, i32 %20, i32 %22
  %24 = icmp eq i32 %8, 0
  %25 = or disjoint i32 %23, 4
  %26 = select i1 %24, i32 %23, i32 %25
  %27 = icmp eq i32 %9, 0
  %28 = or disjoint i32 %26, 8
  %29 = select i1 %27, i32 %26, i32 %28
  %30 = icmp eq i32 %5, 0
  %31 = select i1 %30, i32 %29, i32 -1
  %32 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !229
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %18
  %36 = tail call ptr @WM_modalkeymap_add_item_str(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %4, i32 noundef %31, i32 noundef %10, ptr noundef %2) #16
  br label %44

37:                                               ; preds = %18
  %38 = call zeroext i8 @RNA_enum_value_from_id(ptr noundef nonnull %33, ptr noundef %2, ptr noundef nonnull %12) #16
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call void @BKE_report(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.729) #16
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, ptr %12, align 4, !tbaa !94
  %43 = call ptr @WM_modalkeymap_add_item(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %4, i32 noundef %31, i32 noundef %10, i32 noundef %42) #16
  br label %44

44:                                               ; preds = %41, %35, %17
  %45 = phi ptr [ null, %17 ], [ %43, %41 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #17
  ret ptr %45
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMapItems_new_modal_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !197
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = load i32, ptr %9, align 4, !tbaa !94
  %11 = getelementptr inbounds i8, ptr %7, i64 12
  %12 = load i32, ptr %11, align 4, !tbaa !94
  %13 = getelementptr inbounds i8, ptr %7, i64 16
  %14 = load i32, ptr %13, align 4, !tbaa !94
  %15 = getelementptr inbounds i8, ptr %7, i64 20
  %16 = load i32, ptr %15, align 4, !tbaa !94
  %17 = getelementptr inbounds i8, ptr %7, i64 24
  %18 = load i32, ptr %17, align 4, !tbaa !94
  %19 = getelementptr inbounds i8, ptr %7, i64 28
  %20 = load i32, ptr %19, align 4, !tbaa !94
  %21 = getelementptr inbounds i8, ptr %7, i64 32
  %22 = load i32, ptr %21, align 4, !tbaa !94
  %23 = getelementptr inbounds i8, ptr %7, i64 36
  %24 = load i32, ptr %23, align 4, !tbaa !94
  %25 = getelementptr inbounds i8, ptr %7, i64 40
  %26 = tail call fastcc ptr @rna_KeyMap_item_new_modal(ptr noundef %6, ptr noundef %1, ptr noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24) #18
  store ptr %26, ptr %25, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMapItems_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @rna_KeyMap_item_remove(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rna_KeyMap_item_remove(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !230 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = tail call zeroext i8 @WM_keymap_remove_item(ptr noundef %0, ptr noundef %5) #16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmKeyMapItem, ptr %5, i64 0, i32 2
  %10 = getelementptr inbounds %struct.wmKeyMap, ptr %0, i64 0, i32 4
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.730, ptr noundef nonnull %9, ptr noundef nonnull %10) #16
  br label %12

11:                                               ; preds = %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %12

12:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMapItems_remove_call(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !197
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  tail call fastcc void @rna_KeyMap_item_remove(ptr noundef %6, ptr noundef %1, ptr noundef %8) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @KeyMapItems_from_id(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @WM_keymap_item_find_id(ptr noundef %0, i32 noundef %1) #16
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @WM_keymap_item_find_id(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMapItems_from_id_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !197
  %8 = load i32, ptr %7, align 4, !tbaa !94
  %9 = getelementptr inbounds i8, ptr %7, i64 4
  %10 = tail call ptr @WM_keymap_item_find_id(ptr noundef %6, i32 noundef %8) #16
  store ptr %10, ptr %9, align 8, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @KeyMapItem_compare(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @WM_keymap_item_compare(ptr noundef %0, ptr noundef %1) #16
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @WM_keymap_item_compare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @KeyMapItem_compare_call(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %3, align 8, !tbaa !197
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds i8, ptr %7, i64 8
  %10 = tail call i32 @WM_keymap_item_compare(ptr noundef %6, ptr noundef %8) #16
  store i32 %10, ptr %9, align 4, !tbaa !94
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal nonnull ptr @rna_Operator_refine(ptr nocapture noundef readonly %0) #7 !PGOFuncName !231 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 18, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !232
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @RNA_Operator, ptr %9
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi ptr [ @RNA_Operator, %1 ], [ %11, %7 ]
  ret ptr %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal ptr @rna_OperatorProperties_refine(ptr nocapture noundef readonly %0) #14 !PGOFuncName !233 {
  %2 = tail call fastcc ptr @rna_OperatorProperties_find_operator(ptr noundef %0) #18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmOperator, ptr %2, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %6, i64 0, i32 11
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 1
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi ptr [ %7, %4 ], [ %9, %8 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_OperatorProperties_idprops(ptr nocapture noundef %0, i8 noundef zeroext %1) #0 !PGOFuncName !234 {
  %3 = alloca %union.IDPropertyTemplate, align 8
  %4 = icmp ne i8 %1, 0
  %5 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  %8 = select i1 %4, i1 %7, i1 false
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %10 = call ptr @IDP_New(i32 noundef 6, ptr noundef nonnull %3, ptr noundef nonnull @.str.751) #16
  store ptr %10, ptr %5, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  br label %11

11:                                               ; preds = %2, %9
  %12 = phi ptr [ %10, %9 ], [ %6, %2 ]
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @rna_PropertyGroup_refine(ptr noundef) #3

; Function Attrs: optsize
declare ptr @rna_PropertyGroup_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare void @rna_PropertyGroup_unregister(ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare ptr @rna_PropertyGroup_idprops(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal nonnull ptr @rna_MacroOperator_refine(ptr nocapture noundef readonly %0) #7 !PGOFuncName !235 {
  %2 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmOperator, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %5, i64 0, i32 18, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !232
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @RNA_Macro, ptr %9
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi ptr [ @RNA_Macro, %1 ], [ %11, %7 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_Window_screen_update(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !236 {
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.wmWindow, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !119
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 50397184, ptr noundef nonnull %6) #16
  store ptr null, ptr %5, align 8, !tbaa !119
  br label %9

9:                                                ; preds = %8, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @rna_Window_screen_assign_poll(ptr nocapture readnone %0, ptr nocapture noundef readonly byval(%struct.PointerRNA) align 8 %1) #7 !PGOFuncName !237 {
  %3 = load ptr, ptr %1, align 8, !tbaa !112
  %4 = getelementptr inbounds %struct.bScreen, ptr %3, i64 0, i32 10
  %5 = load i16, ptr %4, align 2, !tbaa !238
  %6 = icmp eq i16 %5, 0
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @rna_ID_refine(ptr noundef) #3

; Function Attrs: optsize
declare ptr @rna_ID_idprops(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @rna_KeyMapItem_update(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !240 {
  %4 = getelementptr inbounds %struct.PointerRNA, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  tail call void @WM_keyconfig_update_tag(ptr noundef null, ptr noundef %5) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef nonnull ptr @rna_KeyMapItem_type_itemf(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #0 !PGOFuncName !241 {
  %5 = tail call fastcc i32 @rna_wmKeyMapItem_map_type_get(ptr noundef %1) #18
  %6 = add i32 %5, -1
  %7 = icmp ult i32 %6, 5
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = zext nneg i32 %6 to i64
  %10 = getelementptr inbounds [5 x ptr], ptr @switch.table.rna_KeyMapItem_type_itemf, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8
  br label %12

12:                                               ; preds = %4, %8
  %13 = phi ptr [ %11, %8 ], [ @event_type_items, %4 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef nonnull ptr @rna_KeyMapItem_value_itemf(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #0 !PGOFuncName !242 {
  %5 = tail call fastcc i32 @rna_wmKeyMapItem_map_type_get(ptr noundef %1) #18
  %6 = icmp ult i32 %5, 6
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [6 x ptr], ptr @switch.table.rna_KeyMapItem_value_itemf, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8
  br label %11

11:                                               ; preds = %4, %7
  %12 = phi ptr [ %10, %7 ], [ @event_value_items, %4 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rna_KeyMapItem_propvalue_itemf(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #0 !PGOFuncName !243 {
  %5 = tail call ptr @CTX_wm_manager(ptr noundef %0) #16
  %6 = getelementptr inbounds %struct.wmWindowManager, ptr %5, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.PointerRNA, ptr %1, i64 0, i32 2
  br label %14

11:                                               ; preds = %33, %14
  %12 = load ptr, ptr %15, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %36, label %14, !llvm.loop !244

14:                                               ; preds = %9, %11
  %15 = phi ptr [ %7, %9 ], [ %12, %11 ]
  %16 = getelementptr inbounds %struct.wmKeyConfig, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %11, label %19

19:                                               ; preds = %14, %33
  %20 = phi ptr [ %34, %33 ], [ %17, %14 ]
  %21 = getelementptr inbounds %struct.wmKeyMap, ptr %20, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !229
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.wmKeyMap, ptr %20, i64 0, i32 2
  br label %26

26:                                               ; preds = %30, %24
  %27 = phi ptr [ %25, %24 ], [ %28, %30 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !35
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %10, align 8, !tbaa !47
  %32 = icmp eq ptr %28, %31
  br i1 %32, label %36, label %26, !llvm.loop !245

33:                                               ; preds = %26, %19
  %34 = load ptr, ptr %20, align 8, !tbaa !35
  %35 = icmp eq ptr %34, null
  br i1 %35, label %11, label %19, !llvm.loop !246

36:                                               ; preds = %11, %30, %4
  %37 = phi ptr [ @keymap_propvalue_items, %4 ], [ %22, %30 ], [ @keymap_propvalue_items, %11 ]
  ret ptr %37
}

; Function Attrs: optsize
declare void @rna_builtin_properties_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_str_utf8_as_unicode_and_size(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BLI_str_utf8_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @WM_event_tablet_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @WM_event_is_tablet(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiPieMenuLayout(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @rna_iterator_listbase_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_clipboard_text_get(i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_clipboard_text_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_keyconfig_set_active(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_operator_py_idname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_operator_bl_idname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_keymap_properties_reset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @RNA_struct_ui_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @WM_keymap_map_type_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_event_add_timer(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_cursor_time(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @WM_operator_props_popup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @WM_enum_search_invoke(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @uiPieMenuBegin(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @uiPieMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @WM_keyconfig_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_modalkeymap_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @WM_keymap_remove(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_keymap_list_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_keymap_active(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_keymap_restore_item_to_default(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_modalkeymap_add_item_str(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @RNA_enum_value_from_id(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @WM_modalkeymap_add_item(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @WM_keymap_remove_item(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @rna_OperatorProperties_find_operator(ptr nocapture noundef readonly %0) unnamed_addr #14 !PGOFuncName !247 {
  %2 = load ptr, ptr %0, align 8, !tbaa !112
  %3 = getelementptr inbounds %struct.PointerRNA, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = icmp eq ptr %2, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 7
  br label %8

8:                                                ; preds = %12, %6
  %9 = phi ptr [ %7, %6 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.wmOperator, ptr %10, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = icmp eq ptr %14, %4
  br i1 %15, label %16, label %8, !llvm.loop !248

16:                                               ; preds = %8, %12, %1
  %17 = phi ptr [ null, %1 ], [ null, %8 ], [ %10, %12 ]
  ret ptr %17
}

; Function Attrs: optsize
declare ptr @IDP_New(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_keyconfig_update_tag(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 48}
!40 = !{!"CollectionPropertyIterator", !41, i64 0, !41, i64 24, !36, i64 48, !37, i64 56, !43, i64 96, !43, i64 100, !41, i64 104, !43, i64 128}
!41 = !{!"PointerRNA", !42, i64 0, !36, i64 8, !36, i64 16}
!42 = !{!"", !36, i64 0}
!43 = !{!"int", !37, i64 0}
!44 = !{!40, !43, i64 128}
!45 = !{!"rna_wm_gen.c:Operator_rna_properties_get"}
!46 = !{!"rna_wm_gen.c:rna_Operator_name_get"}
!47 = !{!41, !36, i64 16}
!48 = !{!49, !36, i64 88}
!49 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !50, i64 128, !36, i64 144, !36, i64 152, !51, i64 160, !37, i64 162}
!50 = !{!"ListBase", !36, i64 0, !36, i64 8}
!51 = !{!"short", !37, i64 0}
!52 = !{!53, !36, i64 0}
!53 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !50, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !54, i64 152, !51, i64 184}
!54 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!55 = !{!"rna_wm_gen.c:rna_Operator_name_length"}
!56 = !{!"rna_wm_gen.c:rna_Operator_properties_get"}
!57 = !{!53, !36, i64 88}
!58 = !{!49, !36, i64 80}
!59 = !{i32 0, i32 2}
!60 = !{!"rna_wm_gen.c:rna_Operator_has_reports_get"}
!61 = !{!49, !36, i64 120}
!62 = !{!63, !36, i64 0}
!63 = !{!"ReportList", !50, i64 0, !43, i64 16, !43, i64 20, !43, i64 24, !43, i64 28, !36, i64 32}
!64 = !{!49, !36, i64 152}
!65 = !{!53, !36, i64 8}
!66 = !{!"rna_wm_gen.c:rna_Operator_bl_idname_set"}
!67 = !{!37, !37, i64 0}
!68 = !{!"rna_wm_gen.c:rna_Operator_bl_label_set"}
!69 = !{!53, !36, i64 16}
!70 = !{!"rna_wm_gen.c:rna_Operator_bl_translation_context_set"}
!71 = !{!53, !36, i64 24}
!72 = !{!"rna_wm_gen.c:rna_Operator_bl_description_set"}
!73 = !{!53, !51, i64 184}
!74 = !{!"rna_wm_gen.c:OperatorProperties_rna_properties_get"}
!75 = !{!"rna_wm_gen.c:Macro_rna_properties_get"}
!76 = !{!"rna_wm_gen.c:OperatorMacro_rna_properties_get"}
!77 = !{!"rna_wm_gen.c:rna_OperatorMacro_properties_get"}
!78 = !{!79, !36, i64 80}
!79 = !{!"wmOperatorTypeMacro", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88}
!80 = !{!"rna_wm_gen.c:Event_rna_properties_get"}
!81 = !{!"rna_wm_gen.c:rna_Event_ascii_get"}
!82 = !{!83, !37, i64 42}
!83 = !{!"wmEvent", !36, i64 0, !36, i64 8, !51, i64 16, !51, i64 18, !43, i64 20, !43, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !51, i64 44, !51, i64 46, !43, i64 48, !43, i64 52, !84, i64 56, !43, i64 64, !43, i64 68, !51, i64 72, !51, i64 74, !51, i64 76, !51, i64 78, !51, i64 80, !51, i64 82, !36, i64 88, !36, i64 96, !51, i64 104, !51, i64 106, !43, i64 108, !36, i64 112}
!84 = !{!"double", !37, i64 0}
!85 = !{!"rna_wm_gen.c:rna_Event_ascii_length"}
!86 = !{!"rna_wm_gen.c:rna_Event_unicode_get"}
!87 = !{!88, !88, i64 0}
!88 = !{!"long", !37, i64 0}
!89 = !{!"rna_wm_gen.c:rna_Event_unicode_length"}
!90 = !{!83, !51, i64 18}
!91 = !{!83, !51, i64 16}
!92 = !{!83, !43, i64 20}
!93 = !{!83, !43, i64 24}
!94 = !{!43, !43, i64 0}
!95 = !{!83, !43, i64 48}
!96 = !{!83, !43, i64 52}
!97 = !{!"rna_wm_gen.c:rna_Event_pressure_get"}
!98 = !{!"rna_wm_gen.c:rna_Event_tilt_get"}
!99 = !{i32 0, i32 256}
!100 = !{!"rna_wm_gen.c:rna_Event_is_tablet_get"}
!101 = !{!83, !51, i64 72}
!102 = !{!83, !51, i64 74}
!103 = !{!83, !51, i64 76}
!104 = !{!83, !51, i64 78}
!105 = !{!"rna_wm_gen.c:Timer_rna_properties_get"}
!106 = !{!107, !84, i64 24}
!107 = !{!"wmTimer", !36, i64 0, !36, i64 8, !36, i64 16, !84, i64 24, !43, i64 32, !36, i64 40, !84, i64 48, !84, i64 56, !84, i64 64, !84, i64 72, !84, i64 80, !43, i64 88}
!108 = !{!107, !84, i64 56}
!109 = !{!107, !84, i64 48}
!110 = !{!"rna_wm_gen.c:UIPopupMenu_rna_properties_get"}
!111 = !{!"rna_wm_gen.c:rna_PopupMenu_layout_get"}
!112 = !{!41, !36, i64 0}
!113 = !{!"rna_wm_gen.c:UIPieMenu_rna_properties_get"}
!114 = !{!"rna_wm_gen.c:rna_PieMenu_layout_get"}
!115 = !{!"rna_wm_gen.c:Window_rna_properties_get"}
!116 = !{!117, !36, i64 24}
!117 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !51, i64 104, !51, i64 106, !51, i64 108, !51, i64 110, !51, i64 112, !51, i64 114, !51, i64 116, !51, i64 118, !51, i64 120, !51, i64 122, !51, i64 124, !51, i64 126, !43, i64 128, !51, i64 132, !51, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !43, i64 160, !43, i64 164, !36, i64 168, !50, i64 176, !50, i64 192, !50, i64 208, !50, i64 224, !50, i64 240}
!118 = !{!"rna_wm_gen.c:rna_Window_screen_set"}
!119 = !{!117, !36, i64 32}
!120 = !{!117, !51, i64 104}
!121 = !{!117, !51, i64 106}
!122 = !{!117, !51, i64 108}
!123 = !{!117, !51, i64 110}
!124 = !{!"rna_wm_gen.c:WindowManager_operators_get"}
!125 = !{!126, !36, i64 16}
!126 = !{!"ListBaseIterator", !36, i64 0, !43, i64 8, !36, i64 16}
!127 = distinct !{!127, !128}
!128 = !{!"llvm.loop.mustprogress"}
!129 = !{!130, !36, i64 0}
!130 = !{!"Link", !36, i64 0, !36, i64 8}
!131 = !{!126, !36, i64 0}
!132 = distinct !{!132, !128}
!133 = !{!40, !36, i64 120}
!134 = distinct !{!134, !128}
!135 = !{!"rna_wm_gen.c:WindowManager_windows_get"}
!136 = distinct !{!136, !128}
!137 = distinct !{!137, !128}
!138 = !{!"rna_wm_gen.c:WindowManager_keyconfigs_get"}
!139 = distinct !{!139, !128}
!140 = distinct !{!140, !128}
!141 = distinct !{!141, !128}
!142 = !{!"rna_wm_gen.c:rna_wmClipboard_get"}
!143 = !{!"rna_wm_gen.c:rna_wmClipboard_length"}
!144 = !{!"rna_wm_gen.c:rna_wmClipboard_set"}
!145 = !{!"rna_wm_gen.c:KeyConfigurations_rna_properties_get"}
!146 = !{!"rna_wm_gen.c:rna_WindowManager_active_keyconfig_get"}
!147 = !{!148, !36, i64 296}
!148 = !{!"wmWindowManager", !149, i64 0, !36, i64 120, !36, i64 128, !50, i64 136, !43, i64 152, !51, i64 156, !51, i64 158, !50, i64 160, !50, i64 176, !63, i64 192, !50, i64 232, !50, i64 248, !50, i64 264, !50, i64 280, !36, i64 296, !36, i64 304, !36, i64 312, !50, i64 320, !36, i64 336, !37, i64 344, !37, i64 345}
!149 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !51, i64 98, !43, i64 100, !43, i64 104, !43, i64 108, !36, i64 112}
!150 = !{!"rna_wm_gen.c:rna_WindowManager_active_keyconfig_set"}
!151 = !{!148, !36, i64 304}
!152 = !{!148, !36, i64 312}
!153 = !{!"rna_wm_gen.c:KeyConfig_rna_properties_get"}
!154 = !{!"rna_wm_gen.c:KeyConfig_keymaps_get"}
!155 = distinct !{!155, !128}
!156 = distinct !{!156, !128}
!157 = distinct !{!157, !128}
!158 = !{!159, !43, i64 164}
!159 = !{!"wmKeyConfig", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !50, i64 144, !43, i64 160, !43, i64 164}
!160 = !{!"rna_wm_gen.c:KeyMaps_rna_properties_get"}
!161 = !{!"rna_wm_gen.c:KeyMap_rna_properties_get"}
!162 = !{!163, !51, i64 112}
!163 = !{!"wmKeyMap", !36, i64 0, !36, i64 8, !50, i64 16, !50, i64 32, !37, i64 48, !51, i64 112, !51, i64 114, !51, i64 116, !51, i64 118, !36, i64 120, !36, i64 128}
!164 = !{!163, !51, i64 114}
!165 = !{!"rna_wm_gen.c:KeyMap_keymap_items_get"}
!166 = distinct !{!166, !128}
!167 = distinct !{!167, !128}
!168 = distinct !{!168, !128}
!169 = !{!163, !51, i64 116}
!170 = !{!"rna_wm_gen.c:KeyMapItems_rna_properties_get"}
!171 = !{!"rna_wm_gen.c:KeyMapItem_rna_properties_get"}
!172 = !{!"rna_wm_gen.c:rna_wmKeyMapItem_idname_get"}
!173 = !{!"rna_wm_gen.c:rna_wmKeyMapItem_idname_length"}
!174 = !{!"rna_wm_gen.c:rna_wmKeyMapItem_idname_set"}
!175 = !{!"rna_wm_gen.c:rna_wmKeyMapItem_name_get"}
!176 = !{!"rna_wm_gen.c:rna_wmKeyMapItem_name_length"}
!177 = !{!"rna_wm_gen.c:rna_KeyMapItem_properties_get"}
!178 = !{!179, !36, i64 176}
!179 = !{!"wmKeyMapItem", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !37, i64 88, !51, i64 152, !51, i64 154, !51, i64 156, !51, i64 158, !51, i64 160, !51, i64 162, !51, i64 164, !51, i64 166, !51, i64 168, !51, i64 170, !51, i64 172, !51, i64 174, !36, i64 176}
!180 = !{!"rna_wm_gen.c:rna_wmKeyMapItem_map_type_get"}
!181 = !{!"rna_wm_gen.c:rna_wmKeyMapItem_map_type_set"}
!182 = !{!179, !51, i64 154}
!183 = !{!179, !51, i64 156}
!184 = !{!179, !51, i64 172}
!185 = !{!"rna_wm_gen.c:rna_KeyMapItem_any_getf"}
!186 = !{!179, !51, i64 158}
!187 = !{!179, !51, i64 160}
!188 = !{!179, !51, i64 162}
!189 = !{!179, !51, i64 164}
!190 = !{!"rna_wm_gen.c:rna_KeyMapItem_any_setf"}
!191 = !{!179, !51, i64 166}
!192 = !{!"rna_wm_gen.c:rna_wmKeyMapItem_keymodifier_set"}
!193 = !{!179, !51, i64 168}
!194 = !{!179, !51, i64 152}
!195 = !{!"rna_wm_gen.c:rna_KeyMapItem_userdefined_get"}
!196 = !{!"rna_wm_gen.c:rna_Operator_report"}
!197 = !{!198, !36, i64 0}
!198 = !{!"ParameterList", !36, i64 0, !36, i64 8, !43, i64 16, !43, i64 20, !43, i64 24}
!199 = !{!"rna_wm_gen.c:rna_event_modal_handler_add"}
!200 = !{!"rna_wm_gen.c:rna_event_timer_add"}
!201 = !{!202, !202, i64 0}
!202 = !{!"float", !37, i64 0}
!203 = !{!"rna_wm_gen.c:rna_event_timer_remove"}
!204 = !{!107, !36, i64 16}
!205 = !{!"rna_wm_gen.c:rna_progress_begin"}
!206 = !{!207, !202, i64 0}
!207 = !{!"wmStaticProgress", !202, i64 0, !202, i64 4, !37, i64 8}
!208 = !{!207, !202, i64 4}
!209 = !{!"rna_wm_gen.c:rna_progress_update"}
!210 = !{!148, !36, i64 128}
!211 = !{!"rna_wm_gen.c:rna_progress_end"}
!212 = !{!"rna_wm_gen.c:rna_Operator_props_popup"}
!213 = !{!"rna_wm_gen.c:rna_Operator_enum_search_invoke"}
!214 = !{!"rna_wm_gen.c:rna_Operator_confirm"}
!215 = !{!"rna_wm_gen.c:rna_PupMenuBegin"}
!216 = !{!"rna_wm_gen.c:rna_PupMenuEnd"}
!217 = !{!"rna_wm_gen.c:rna_PieMenuBegin"}
!218 = !{!"rna_wm_gen.c:rna_PieMenuEnd"}
!219 = !{!"rna_wm_gen.c:rna_KeyConfig_remove"}
!220 = !{!"rna_wm_gen.c:rna_keymap_new"}
!221 = !{!"rna_wm_gen.c:rna_KeyMap_remove"}
!222 = !{!"rna_wm_gen.c:rna_keymap_find"}
!223 = !{!"rna_wm_gen.c:rna_keymap_find_modal"}
!224 = !{!53, !36, i64 128}
!225 = !{!"rna_wm_gen.c:rna_keymap_active"}
!226 = !{!"rna_wm_gen.c:rna_keymap_restore_item_to_default"}
!227 = !{!"rna_wm_gen.c:rna_KeyMap_item_new"}
!228 = !{!"rna_wm_gen.c:rna_KeyMap_item_new_modal"}
!229 = !{!163, !36, i64 128}
!230 = !{!"rna_wm_gen.c:rna_KeyMap_item_remove"}
!231 = !{!"rna_wm_gen.c:rna_Operator_refine"}
!232 = !{!53, !36, i64 160}
!233 = !{!"rna_wm_gen.c:rna_OperatorProperties_refine"}
!234 = !{!"rna_wm_gen.c:rna_OperatorProperties_idprops"}
!235 = !{!"rna_wm_gen.c:rna_MacroOperator_refine"}
!236 = !{!"rna_wm_gen.c:rna_Window_screen_update"}
!237 = !{!"rna_wm_gen.c:rna_Window_screen_assign_poll"}
!238 = !{!239, !51, i64 210}
!239 = !{!"bScreen", !149, i64 0, !50, i64 120, !50, i64 136, !50, i64 152, !50, i64 168, !36, i64 184, !36, i64 192, !43, i64 200, !43, i64 204, !51, i64 208, !51, i64 210, !51, i64 212, !51, i64 214, !51, i64 216, !51, i64 218, !51, i64 220, !51, i64 222, !51, i64 224, !51, i64 226, !51, i64 228, !51, i64 230, !36, i64 232, !36, i64 240}
!240 = !{!"rna_wm_gen.c:rna_KeyMapItem_update"}
!241 = !{!"rna_wm_gen.c:rna_KeyMapItem_type_itemf"}
!242 = !{!"rna_wm_gen.c:rna_KeyMapItem_value_itemf"}
!243 = !{!"rna_wm_gen.c:rna_KeyMapItem_propvalue_itemf"}
!244 = distinct !{!244, !128}
!245 = distinct !{!245, !128}
!246 = distinct !{!246, !128}
!247 = !{!"rna_wm_gen.c:rna_OperatorProperties_find_operator"}
!248 = distinct !{!248, !128}
