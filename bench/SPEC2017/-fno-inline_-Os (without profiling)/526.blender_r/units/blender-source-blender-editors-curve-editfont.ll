; ModuleID = 'blender/source/blender/editors/curve/editfont.c'
source_filename = "blender/source/blender/editors/curve/editfont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Text = type { %struct.ID, ptr, i32, i32, %struct.ListBase, ptr, ptr, i32, i32, ptr, i32, i32, ptr, double }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.TextLine = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.EditFont = type { ptr, ptr, ptr, ptr, ptr, [4 x [2 x float]], i32, i32, i32, i32 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.TextBox = type { float, float, float, float }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.PropertyPointerRNA = type { %struct.PointerRNA, ptr }
%struct.VFont = type { %struct.ID, [1024 x i8], ptr, ptr, ptr }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }

@.str = private unnamed_addr constant [13 x i8] c"Insert Lorem\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Insert placeholder text\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"FONT_OT_insert_lorem\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Paste File\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Paste contents from file\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"FONT_OT_text_paste_from_file\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Paste Clipboard\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Paste contents from system clipboard\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"FONT_OT_text_paste_from_clipboard\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Set Style\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Set font style\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"FONT_OT_style_set\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@style_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.110, i32 0, ptr @.str.111, ptr @.str.112 }, %struct.EnumPropertyItem { i32 2, ptr @.str.113, i32 0, ptr @.str.114, ptr @.str.112 }, %struct.EnumPropertyItem { i32 4, ptr @.str.115, i32 0, ptr @.str.116, ptr @.str.112 }, %struct.EnumPropertyItem { i32 16, ptr @.str.117, i32 0, ptr @.str.118, ptr @.str.112 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.13 = private unnamed_addr constant [6 x i8] c"Style\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Style to set selection to\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"Clear\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Clear style rather than setting it\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"Toggle Style\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"Toggle font style\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"FONT_OT_style_toggle\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"Select All\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"Select all text\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"FONT_OT_select_all\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"Copy Text\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"Copy selected text to clipboard\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"FONT_OT_text_copy\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"Cut Text\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"Cut selected text to clipboard\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"FONT_OT_text_cut\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"Paste Text\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"Paste text from clipboard\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"FONT_OT_text_paste\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"Move Cursor\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"Move cursor to position type\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"FONT_OT_move\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@move_type_items = internal global [11 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.120, i32 0, ptr @.str.121, ptr @.str.112 }, %struct.EnumPropertyItem { i32 1, ptr @.str.122, i32 0, ptr @.str.123, ptr @.str.112 }, %struct.EnumPropertyItem { i32 2, ptr @.str.124, i32 0, ptr @.str.125, ptr @.str.112 }, %struct.EnumPropertyItem { i32 3, ptr @.str.126, i32 0, ptr @.str.127, ptr @.str.112 }, %struct.EnumPropertyItem { i32 4, ptr @.str.128, i32 0, ptr @.str.129, ptr @.str.112 }, %struct.EnumPropertyItem { i32 5, ptr @.str.130, i32 0, ptr @.str.131, ptr @.str.112 }, %struct.EnumPropertyItem { i32 6, ptr @.str.132, i32 0, ptr @.str.133, ptr @.str.112 }, %struct.EnumPropertyItem { i32 7, ptr @.str.134, i32 0, ptr @.str.135, ptr @.str.112 }, %struct.EnumPropertyItem { i32 8, ptr @.str.136, i32 0, ptr @.str.137, ptr @.str.112 }, %struct.EnumPropertyItem { i32 9, ptr @.str.138, i32 0, ptr @.str.139, ptr @.str.112 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.37 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"Where to move cursor to\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"Move Select\00", align 1
@.str.40 = private unnamed_addr constant [32 x i8] c"Move the cursor while selecting\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"FONT_OT_move_select\00", align 1
@.str.42 = private unnamed_addr constant [45 x i8] c"Where to move cursor to, to make a selection\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"Change Spacing\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"Change font spacing\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"FONT_OT_change_spacing\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"Delta\00", align 1
@.str.48 = private unnamed_addr constant [54 x i8] c"Amount to decrease or increase character spacing with\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"Change Character\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"Change font character code\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"FONT_OT_change_character\00", align 1
@.str.52 = private unnamed_addr constant [51 x i8] c"Number to increase or decrease character code with\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"Line Break\00", align 1
@.str.54 = private unnamed_addr constant [37 x i8] c"Insert line break at cursor position\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"FONT_OT_line_break\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"Delete\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"Delete text by cursor position\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"FONT_OT_delete\00", align 1
@delete_type_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.140, i32 0, ptr @.str.141, ptr @.str.112 }, %struct.EnumPropertyItem { i32 1, ptr @.str.126, i32 0, ptr @.str.127, ptr @.str.112 }, %struct.EnumPropertyItem { i32 2, ptr @.str.124, i32 0, ptr @.str.125, ptr @.str.112 }, %struct.EnumPropertyItem { i32 3, ptr @.str.142, i32 0, ptr @.str.143, ptr @.str.112 }, %struct.EnumPropertyItem { i32 4, ptr @.str.144, i32 0, ptr @.str.145, ptr @.str.112 }, %struct.EnumPropertyItem { i32 5, ptr @.str.146, i32 0, ptr @.str.147, ptr @.str.112 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.59 = private unnamed_addr constant [33 x i8] c"Which part of the text to delete\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"Insert Text\00", align 1
@.str.61 = private unnamed_addr constant [31 x i8] c"Insert text at cursor position\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"FONT_OT_text_insert\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.65 = private unnamed_addr constant [38 x i8] c"Text to insert at the cursor position\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"accent\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"Accent mode\00", align 1
@.str.68 = private unnamed_addr constant [79 x i8] c"Next typed character will strike through previous, for special character input\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"Add Textbox\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"Add a new text box\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"FONT_OT_textbox_add\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"Remove Textbox\00", align 1
@.str.73 = private unnamed_addr constant [19 x i8] c"Remove the textbox\00", align 1
@.str.74 = private unnamed_addr constant [23 x i8] c"FONT_OT_textbox_remove\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.77 = private unnamed_addr constant [21 x i8] c"The current text box\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.78 = private unnamed_addr constant [9 x i8] c"editfont\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"texteditbuf\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"texteditbufinfo\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"texteditcopybuf\00", align 1
@.str.82 = private unnamed_addr constant [20 x i8] c"texteditcopybufinfo\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.83 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"texteditinfo\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"Set Case\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"Set font case\00", align 1
@.str.87 = private unnamed_addr constant [17 x i8] c"FONT_OT_case_set\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@case_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.149, i32 0, ptr @.str.150, ptr @.str.112 }, %struct.EnumPropertyItem { i32 1, ptr @.str.151, i32 0, ptr @.str.152, ptr @.str.112 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.89 = private unnamed_addr constant [5 x i8] c"Case\00", align 1
@.str.90 = private unnamed_addr constant [20 x i8] c"Lower or upper case\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"Toggle Case\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"Toggle font case\00", align 1
@.str.93 = private unnamed_addr constant [20 x i8] c"FONT_OT_case_toggle\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"Open Font\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"FONT_OT_open\00", align 1
@.str.96 = private unnamed_addr constant [28 x i8] c"Load a new font from a file\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"Unlink\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"FONT_OT_unlink\00", align 1
@.str.99 = private unnamed_addr constant [30 x i8] c"Unlink active font data block\00", align 1
@insert_lorem_exec.lastlorem = internal unnamed_addr global ptr null, align 8
@ED_lorem = external constant [0 x i8], align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.101 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.102 = private unnamed_addr constant [25 x i8] c"Failed to open file '%s'\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"tempstr\00", align 1
@.str.104 = private unnamed_addr constant [17 x i8] c"File too long %s\00", align 1
@.str.105 = private unnamed_addr constant [29 x i8] c"Failed to read file '%s', %s\00", align 1
@__func__.font_paste_utf8 = private unnamed_addr constant [16 x i8] c"font_paste_utf8\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"Clipboard empty\00", align 1
@.str.107 = private unnamed_addr constant [19 x i8] c"Clipboard too long\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"strinfo\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"BOLD\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"Bold\00", align 1
@.str.112 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"ITALIC\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"Italic\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"UNDERLINE\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"Underline\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"SMALL_CAPS\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"Small Caps\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"Text too long\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"LINE_BEGIN\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"Line Begin\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"LINE_END\00", align 1
@.str.123 = private unnamed_addr constant [9 x i8] c"Line End\00", align 1
@.str.124 = private unnamed_addr constant [19 x i8] c"PREVIOUS_CHARACTER\00", align 1
@.str.125 = private unnamed_addr constant [19 x i8] c"Previous Character\00", align 1
@.str.126 = private unnamed_addr constant [15 x i8] c"NEXT_CHARACTER\00", align 1
@.str.127 = private unnamed_addr constant [15 x i8] c"Next Character\00", align 1
@.str.128 = private unnamed_addr constant [14 x i8] c"PREVIOUS_WORD\00", align 1
@.str.129 = private unnamed_addr constant [14 x i8] c"Previous Word\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"NEXT_WORD\00", align 1
@.str.131 = private unnamed_addr constant [10 x i8] c"Next Word\00", align 1
@.str.132 = private unnamed_addr constant [14 x i8] c"PREVIOUS_LINE\00", align 1
@.str.133 = private unnamed_addr constant [14 x i8] c"Previous Line\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"NEXT_LINE\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"Next Line\00", align 1
@.str.136 = private unnamed_addr constant [14 x i8] c"PREVIOUS_PAGE\00", align 1
@.str.137 = private unnamed_addr constant [14 x i8] c"Previous Page\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"NEXT_PAGE\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"Next Page\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"SELECTION\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"Selection\00", align 1
@.str.144 = private unnamed_addr constant [18 x i8] c"NEXT_OR_SELECTION\00", align 1
@.str.145 = private unnamed_addr constant [18 x i8] c"Next or Selection\00", align 1
@.str.146 = private unnamed_addr constant [22 x i8] c"PREVIOUS_OR_SELECTION\00", align 1
@.str.147 = private unnamed_addr constant [22 x i8] c"Previous or Selection\00", align 1
@.str.148 = private unnamed_addr constant [17 x i8] c"FONT_insert_text\00", align 1
@insert_text_invoke.accentcode = internal unnamed_addr global i1 false, align 4
@.str.149 = private unnamed_addr constant [6 x i8] c"LOWER\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"Lower\00", align 1
@.str.151 = private unnamed_addr constant [6 x i8] c"UPPER\00", align 1
@.str.152 = private unnamed_addr constant [6 x i8] c"Upper\00", align 1
@.str.153 = private unnamed_addr constant [23 x i8] c"OpenPropertyPointerRNA\00", align 1
@U = external global %struct.UserDef, align 8
@.str.154 = private unnamed_addr constant [42 x i8] c"Incorrect context for running font unlink\00", align 1
@.str.155 = private unnamed_addr constant [12 x i8] c"string undo\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @FONT_OT_insert_lorem(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @insert_lorem_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @insert_lorem_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %4 = load ptr, ptr @insert_lorem_exec.lastlorem, align 8, !tbaa !18
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @ED_lorem, ptr %4
  %7 = tail call i32 @rand() #15
  %8 = sdiv i32 %7, 357913941
  %9 = add nsw i32 %8, 4
  %10 = load i8, ptr %6, align 1, !tbaa !19
  %11 = icmp ne i8 %10, 0
  %12 = icmp ne i32 %9, 0
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %28

14:                                               ; preds = %2, %14
  %15 = phi i8 [ %24, %14 ], [ %10, %2 ]
  %16 = phi i32 [ %22, %14 ], [ %9, %2 ]
  %17 = phi ptr [ %23, %14 ], [ %6, %2 ]
  %18 = zext i8 %15 to i64
  tail call fastcc void @insert_into_textbuf(ptr noundef %3, i64 noundef %18) #16
  %19 = load i8, ptr %17, align 1, !tbaa !19
  %20 = icmp eq i8 %19, 46
  %21 = sext i1 %20 to i32
  %22 = add nsw i32 %16, %21
  %23 = getelementptr inbounds i8, ptr %17, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !19
  %25 = icmp ne i8 %24, 0
  %26 = icmp ne i32 %22, 0
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %14, label %28, !llvm.loop !20

28:                                               ; preds = %14, %2
  %29 = phi ptr [ %6, %2 ], [ %23, %14 ]
  %30 = getelementptr inbounds i8, ptr %29, i64 1
  store ptr %30, ptr @insert_lorem_exec.lastlorem, align 8, !tbaa !18
  %31 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %30) #17
  %32 = icmp ult i64 %31, 5
  %33 = select i1 %32, ptr @ED_lorem, ptr %30
  store ptr %33, ptr @insert_lorem_exec.lastlorem, align 8
  tail call fastcc void @insert_into_textbuf(ptr noundef %3, i64 noundef 10) #16
  tail call fastcc void @insert_into_textbuf(ptr noundef %3, i64 noundef 10) #16
  %34 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %35 = load ptr, ptr %34, align 8, !tbaa !22
  tail call void @DAG_id_tag_update(ptr noundef %35, i16 noundef signext 0) #15
  %36 = load ptr, ptr %34, align 8, !tbaa !22
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %36) #15
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_editfont(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FONT_OT_text_paste_from_file(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paste_from_file_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @paste_from_file_invoke, ptr %5, align 8, !tbaa !29
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !17
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2560, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 8, i16 noundef signext 0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paste_from_file_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !30
  %5 = tail call ptr @RNA_string_get_alloc(ptr noundef %4, ptr noundef nonnull @.str.100, ptr noundef null, i32 noundef 0) #15
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !32
  %8 = tail call fastcc i32 @paste_from_file(ptr noundef %0, ptr noundef %7, ptr noundef %5) #16, !range !33
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !18
  tail call void %9(ptr noundef %5) #15
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paste_from_file_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !30
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.100) #15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @paste_from_file_exec(ptr noundef %0, ptr noundef nonnull %1) #16, !range !33
  br label %11

10:                                               ; preds = %3
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef nonnull %1) #15
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ %9, %8 ], [ 1, %10 ]
  ret i32 %12
}

; Function Attrs: optsize
declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FONT_OT_text_paste_from_clipboard(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.7, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paste_from_clipboard_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2560, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 8, i16 noundef signext 0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paste_from_clipboard_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !32
  %5 = tail call fastcc i32 @paste_from_clipboard(ptr noundef %0, ptr noundef %4) #16, !range !33
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_text_to_object(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = alloca [3 x float], align 8
  %5 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  %6 = icmp eq ptr %1, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Text, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %7
  %12 = icmp eq i8 %2, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %15 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %16 = icmp eq ptr %5, null
  %17 = getelementptr inbounds %struct.RegionView3D, ptr %5, i64 0, i32 2
  br label %18

18:                                               ; preds = %13, %30
  %19 = phi i32 [ 0, %13 ], [ %31, %30 ]
  %20 = phi ptr [ %9, %13 ], [ %32, %30 ]
  %21 = getelementptr inbounds %struct.TextLine, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !37
  %23 = load i8, ptr %22, align 1, !tbaa !19
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  store float 0.000000e+00, ptr %4, align 8, !tbaa !39
  %26 = sub nsw i32 0, %19
  %27 = sitofp i32 %26 to float
  store float %27, ptr %14, align 4, !tbaa !39
  store float 0.000000e+00, ptr %15, align 8, !tbaa !39
  br i1 %16, label %29, label %28

28:                                               ; preds = %25
  call void @mul_mat3_m4_v3(ptr noundef nonnull %17, ptr noundef nonnull %4) #15
  br label %29

29:                                               ; preds = %28, %25
  call fastcc void @txt_add_object(ptr noundef %0, ptr noundef nonnull %20, i32 noundef 1, ptr noundef nonnull %4) #16
  br label %30

30:                                               ; preds = %18, %29
  %31 = add nuw nsw i32 %19, 1
  %32 = load ptr, ptr %20, align 8, !tbaa !40
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %18, !llvm.loop !41

34:                                               ; preds = %11
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !39
  %35 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0.000000e+00, ptr %35, align 8, !tbaa !39
  %36 = tail call i32 @BLI_countlist(ptr noundef nonnull %8) #15
  call fastcc void @txt_add_object(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %36, ptr noundef nonnull %4) #16
  br label %37

37:                                               ; preds = %30, %34, %3, %7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @txt_add_object(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #1 {
  %5 = alloca [3 x float], align 4
  %6 = alloca i64, align 8
  %7 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %9 = tail call ptr @BKE_object_add(ptr noundef %7, ptr noundef %8, i32 noundef 4) #15
  %10 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  call void @ED_object_base_init_transform(ptr noundef %0, ptr noundef %11, ptr noundef null, ptr noundef nonnull %5) #15
  call void @BKE_object_where_is_calc(ptr noundef %8, ptr noundef %9) #15
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 33
  call fastcc void @add_v3_v3(ptr noundef nonnull %12, ptr noundef %3) #16
  %13 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = call ptr @BKE_vfont_builtin_get() #15
  %16 = getelementptr inbounds %struct.Curve, ptr %14, i64 0, i32 55
  store ptr %15, ptr %16, align 8, !tbaa !61
  %17 = getelementptr inbounds %struct.ID, ptr %15, i64 0, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !64
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 4, !tbaa !64
  %20 = icmp sgt i32 %2, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %4, %21
  %22 = phi ptr [ %36, %21 ], [ %1, %4 ]
  %23 = phi i32 [ %37, %21 ], [ 0, %4 ]
  %24 = phi i32 [ %35, %21 ], [ 0, %4 ]
  %25 = phi i32 [ %31, %21 ], [ 0, %4 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %26 = getelementptr inbounds %struct.TextLine, ptr %22, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !37
  %28 = call i64 @BLI_strlen_utf8_ex(ptr noundef %27, ptr noundef nonnull %6) #15
  %29 = trunc i64 %28 to i32
  %30 = add i32 %25, 1
  %31 = add i32 %30, %29
  %32 = load i64, ptr %6, align 8, !tbaa !66
  %33 = trunc i64 %32 to i32
  %34 = add nsw i32 %24, 1
  %35 = add i32 %34, %33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  %36 = load ptr, ptr %22, align 8, !tbaa !40
  %37 = add nuw nsw i32 %23, 1
  %38 = icmp slt i32 %35, 32766
  %39 = icmp slt i32 %37, %2
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %21, label %41, !llvm.loop !67

41:                                               ; preds = %21
  %42 = add nsw i32 %35, 4
  %43 = sext i32 %42 to i64
  br label %44

44:                                               ; preds = %41, %4
  %45 = phi i32 [ 0, %4 ], [ %31, %41 ]
  %46 = phi i64 [ 4, %4 ], [ %43, %41 ]
  %47 = getelementptr inbounds %struct.Curve, ptr %14, i64 0, i32 52
  %48 = load ptr, ptr %47, align 8, !tbaa !68
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !18
  call void %51(ptr noundef nonnull %48) #15
  br label %52

52:                                               ; preds = %50, %44
  %53 = getelementptr inbounds %struct.Curve, ptr %14, i64 0, i32 62
  %54 = load ptr, ptr %53, align 8, !tbaa !69
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !18
  call void %57(ptr noundef nonnull %54) #15
  br label %58

58:                                               ; preds = %56, %52
  %59 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !18
  %60 = call ptr %59(i64 noundef %46, ptr noundef nonnull @.str.83) #15
  store ptr %60, ptr %47, align 8, !tbaa !68
  %61 = load ptr, ptr @MEM_callocN, align 8, !tbaa !18
  %62 = add nsw i32 %45, 4
  %63 = sext i32 %62 to i64
  %64 = shl nsw i64 %63, 3
  %65 = call ptr %61(i64 noundef %64, ptr noundef nonnull @.str.108) #15
  store ptr %65, ptr %53, align 8, !tbaa !69
  %66 = getelementptr inbounds %struct.Curve, ptr %14, i64 0, i32 51
  store i32 0, ptr %66, align 4, !tbaa !70
  %67 = add nsw i32 %45, -1
  %68 = getelementptr inbounds %struct.Curve, ptr %14, i64 0, i32 50
  store i32 %67, ptr %68, align 8, !tbaa !71
  %69 = getelementptr inbounds %struct.Curve, ptr %14, i64 0, i32 47
  store i32 0, ptr %69, align 4, !tbaa !72
  %70 = load ptr, ptr %47, align 8, !tbaa !68
  br i1 %20, label %71, label %101

71:                                               ; preds = %58, %91
  %72 = phi ptr [ %93, %91 ], [ %1, %58 ]
  %73 = phi i32 [ %95, %91 ], [ 0, %58 ]
  %74 = phi ptr [ %94, %91 ], [ %70, %58 ]
  %75 = getelementptr inbounds %struct.TextLine, ptr %72, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !37
  %77 = call i64 @BLI_strcpy_rlen(ptr noundef %74, ptr noundef %76) #15
  %78 = getelementptr inbounds i8, ptr %74, i64 %77
  %79 = load i32, ptr %66, align 4, !tbaa !70
  %80 = trunc i64 %77 to i32
  %81 = add i32 %79, %80
  store i32 %81, ptr %66, align 4, !tbaa !70
  %82 = load ptr, ptr %72, align 8, !tbaa !40
  %83 = icmp eq ptr %82, null
  br i1 %83, label %91, label %84

84:                                               ; preds = %71
  %85 = call i64 @BLI_strcpy_rlen(ptr noundef %78, ptr noundef nonnull @.str.109) #15
  %86 = getelementptr inbounds i8, ptr %78, i64 %85
  %87 = load i32, ptr %66, align 4, !tbaa !70
  %88 = trunc i64 %85 to i32
  %89 = add i32 %87, %88
  store i32 %89, ptr %66, align 4, !tbaa !70
  %90 = load ptr, ptr %72, align 8, !tbaa !40
  br label %91

91:                                               ; preds = %84, %71
  %92 = phi i32 [ %89, %84 ], [ %81, %71 ]
  %93 = phi ptr [ %90, %84 ], [ null, %71 ]
  %94 = phi ptr [ %86, %84 ], [ %78, %71 ]
  %95 = add nuw nsw i32 %73, 1
  %96 = icmp slt i32 %92, 32766
  %97 = icmp slt i32 %95, %2
  %98 = select i1 %96, i1 %97, i1 false
  br i1 %98, label %71, label %99, !llvm.loop !73

99:                                               ; preds = %91
  %100 = load i32, ptr %68, align 8, !tbaa !71
  br label %101

101:                                              ; preds = %99, %58
  %102 = phi i32 [ %67, %58 ], [ %100, %99 ]
  %103 = phi ptr [ %70, %58 ], [ %94, %99 ]
  store i32 %102, ptr %69, align 4, !tbaa !72
  store i8 0, ptr %103, align 1, !tbaa !19
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 83886083, ptr noundef %9) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #18
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FONT_OT_style_set(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_style_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @style_items, i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #15
  %10 = load ptr, ptr %7, align 8, !tbaa !74
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_style_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !30
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.12) #15
  %6 = load ptr, ptr %3, align 8, !tbaa !30
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.15) #15
  %8 = trunc i32 %7 to i8
  %9 = tail call fastcc i32 @set_style(ptr noundef %0, i32 noundef %5, i8 noundef zeroext %8) #16, !range !33
  ret i32 %9
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FONT_OT_style_toggle(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @toggle_style_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @style_items, i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @toggle_style_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %8 = call i32 @BKE_vfont_select_get(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !30
  %13 = call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.12) #15
  %14 = getelementptr inbounds %struct.Curve, ptr %7, i64 0, i32 63, i32 2
  %15 = load i8, ptr %14, align 4, !tbaa !75
  %16 = trunc i32 %13 to i8
  %17 = xor i8 %15, %16
  store i8 %17, ptr %14, align 4, !tbaa !75
  %18 = zext i8 %17 to i32
  %19 = and i32 %13, %18
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i8
  %22 = call fastcc i32 @set_style(ptr noundef %0, i32 noundef %13, i8 noundef zeroext %21) #16, !range !33
  br label %23

23:                                               ; preds = %2, %10
  %24 = phi i32 [ %22, %10 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret i32 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @FONT_OT_select_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @font_select_all_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @font_select_all_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 53
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !77
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 8
  store i32 1, ptr %12, align 8, !tbaa !79
  %13 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 9
  store i32 %9, ptr %13, align 4, !tbaa !80
  %14 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 7
  store i32 %9, ptr %14, align 4, !tbaa !81
  tail call fastcc void @text_update_edited(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 10) #16
  br label %15

15:                                               ; preds = %2, %11
  %16 = phi i32 [ 4, %11 ], [ 2, %2 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @FONT_OT_text_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.25, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.26, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @copy_text_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @copy_text_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  tail call fastcc void @copy_selection(ptr noundef %3) #16
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @FONT_OT_text_cut(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.28, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.29, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @cut_text_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @cut_text_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %6 = call i32 @BKE_vfont_select_get(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  call fastcc void @copy_selection(ptr noundef %5) #16
  %9 = call fastcc i32 @kill_selection(ptr noundef %5, i32 noundef 0) #16
  call fastcc void @text_update_edited(ptr noundef %0, ptr noundef %5, i32 noundef 0) #16
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi i32 [ 4, %8 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @FONT_OT_text_paste(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.30, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.31, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paste_text_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paste_text_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !32
  %6 = tail call fastcc zeroext i8 @paste_selection(ptr noundef %3, ptr noundef %5) #16, !range !82
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call fastcc void @text_update_edited(ptr noundef %0, ptr noundef %3, i32 noundef 0) #16
  br label %9

9:                                                ; preds = %2, %8
  %10 = phi i32 [ 4, %8 ], [ 2, %2 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FONT_OT_move(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.34, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.35, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @move_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.36, ptr noundef nonnull @move_type_items, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !30
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.36) #15
  %6 = tail call fastcc i32 @move_cursor(ptr noundef %0, i32 noundef %5, i8 noundef zeroext 0) #16, !range !33
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FONT_OT_move_select(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.41, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @move_select_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.36, ptr noundef nonnull @move_type_items, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.42) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @move_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !30
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.36) #15
  %6 = tail call fastcc i32 @move_cursor(ptr noundef %0, i32 noundef %5, i8 noundef zeroext 1) #16, !range !33
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FONT_OT_change_spacing(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.43, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.44, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.45, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @change_spacing_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.46, i32 noundef 1, i32 noundef -20, i32 noundef 20, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef -20, i32 noundef 20) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @change_spacing_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 53
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !30
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.46) #15
  %11 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !83
  %13 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 7
  %14 = load i32, ptr %13, align 4, !tbaa !81
  %15 = sext i32 %14 to i64
  %16 = getelementptr %struct.CharInfo, ptr %12, i64 %15
  %17 = getelementptr %struct.CharInfo, ptr %16, i64 -1
  %18 = load i16, ptr %17, align 2, !tbaa !84
  %19 = sext i16 %18 to i32
  %20 = add nsw i32 %10, %19
  %21 = tail call i32 @llvm.smin.i32(i32 %20, i32 20)
  %22 = tail call i32 @llvm.smax.i32(i32 %21, i32 -20)
  %23 = icmp eq i32 %22, %19
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = trunc i32 %22 to i16
  store i16 %25, ptr %17, align 2, !tbaa !84
  tail call fastcc void @text_update_edited(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #16
  br label %26

26:                                               ; preds = %2, %24
  %27 = phi i32 [ 4, %24 ], [ 2, %2 ]
  ret i32 %27
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FONT_OT_change_character(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.49, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.50, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.51, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @change_character_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.46, i32 noundef 1, i32 noundef -255, i32 noundef 255, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.52, i32 noundef -255, i32 noundef 255) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @change_character_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 53
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !30
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.46) #15
  %11 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !81
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  %17 = zext nneg i32 %12 to i64
  %18 = getelementptr i32, ptr %16, i64 %17
  %19 = getelementptr i32, ptr %18, i64 -1
  %20 = load i32, ptr %19, align 4, !tbaa !86
  %21 = add nsw i32 %20, %10
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 255)
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 0)
  %24 = icmp eq i32 %23, %20
  br i1 %24, label %26, label %25

25:                                               ; preds = %14
  store i32 %23, ptr %19, align 4, !tbaa !86
  tail call fastcc void @text_update_edited(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 0) #16
  br label %26

26:                                               ; preds = %14, %2, %25
  %27 = phi i32 [ 4, %25 ], [ 2, %2 ], [ 2, %14 ]
  ret i32 %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @FONT_OT_line_break(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.53, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.54, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.55, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @line_break_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @line_break_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 53
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  tail call fastcc void @insert_into_textbuf(ptr noundef %3, i64 noundef 10) #16
  %8 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 9
  store i32 0, ptr %8, align 4, !tbaa !80
  %9 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 8
  store i32 0, ptr %9, align 8, !tbaa !79
  tail call fastcc void @text_update_edited(ptr noundef %0, ptr noundef %3, i32 noundef 0) #16
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FONT_OT_delete(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.56, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.57, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.58, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @delete_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.36, ptr noundef nonnull @delete_type_items, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.59) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @delete_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.Curve, ptr %7, i64 0, i32 53
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !30
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.36) #15
  %13 = getelementptr inbounds %struct.EditFont, ptr %9, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !77
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %122, label %16

16:                                               ; preds = %2
  %17 = call i32 @BKE_vfont_select_get(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  switch i32 %12, label %122 [
    i32 4, label %25
    i32 5, label %25
    i32 0, label %21
    i32 3, label %25
    i32 2, label %28
    i32 1, label %78
  ]

20:                                               ; preds = %16
  switch i32 %12, label %122 [
    i32 4, label %78
    i32 5, label %28
    i32 0, label %21
    i32 3, label %25
    i32 2, label %28
    i32 1, label %78
  ]

21:                                               ; preds = %20, %19
  %22 = getelementptr inbounds %struct.EditFont, ptr %9, i64 0, i32 7
  store i32 0, ptr %22, align 4, !tbaa !81
  store i32 0, ptr %13, align 8, !tbaa !77
  %23 = getelementptr inbounds %struct.EditFont, ptr %9, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !85
  br label %119

25:                                               ; preds = %20, %19, %19, %19
  %26 = call fastcc i32 @kill_selection(ptr noundef nonnull %5, i32 noundef 0) #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %122, label %121

28:                                               ; preds = %20, %20, %19
  %29 = getelementptr inbounds %struct.EditFont, ptr %9, i64 0, i32 7
  %30 = load i32, ptr %29, align 4, !tbaa !81
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %122, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %13, align 8, !tbaa !77
  %34 = icmp sgt i32 %30, %33
  br i1 %34, label %50, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.EditFont, ptr %9, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !85
  %38 = zext nneg i32 %30 to i64
  br label %39

39:                                               ; preds = %35, %39
  %40 = phi i64 [ %38, %35 ], [ %44, %39 ]
  %41 = getelementptr inbounds i32, ptr %37, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !86
  %43 = getelementptr i32, ptr %41, i64 -1
  store i32 %42, ptr %43, align 4, !tbaa !86
  %44 = add nuw nsw i64 %40, 1
  %45 = load i32, ptr %13, align 8, !tbaa !77
  %46 = trunc i64 %40 to i32
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %39, label %48, !llvm.loop !87

48:                                               ; preds = %39
  %49 = load i32, ptr %29, align 4, !tbaa !81
  br label %50

50:                                               ; preds = %48, %32
  %51 = phi i32 [ %45, %48 ], [ %33, %32 ]
  %52 = phi i32 [ %49, %48 ], [ %30, %32 ]
  %53 = icmp sgt i32 %52, %51
  br i1 %53, label %69, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.EditFont, ptr %9, i64 0, i32 3
  %56 = sext i32 %52 to i64
  br label %57

57:                                               ; preds = %54, %57
  %58 = phi i64 [ %56, %54 ], [ %63, %57 ]
  %59 = load ptr, ptr %55, align 8, !tbaa !83
  %60 = getelementptr %struct.CharInfo, ptr %59, i64 %58
  %61 = getelementptr %struct.CharInfo, ptr %60, i64 -1
  %62 = load i64, ptr %60, align 2
  store i64 %62, ptr %61, align 2
  %63 = add nsw i64 %58, 1
  %64 = load i32, ptr %13, align 8, !tbaa !77
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %58, %65
  br i1 %66, label %57, label %67, !llvm.loop !88

67:                                               ; preds = %57
  %68 = load i32, ptr %29, align 4, !tbaa !81
  br label %69

69:                                               ; preds = %67, %50
  %70 = phi i32 [ %52, %50 ], [ %68, %67 ]
  %71 = phi i32 [ %51, %50 ], [ %64, %67 ]
  %72 = add nsw i32 %70, -1
  store i32 %72, ptr %29, align 4, !tbaa !81
  %73 = getelementptr inbounds %struct.EditFont, ptr %9, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !85
  %75 = add nsw i32 %71, -1
  store i32 %75, ptr %13, align 8, !tbaa !77
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, ptr %74, i64 %76
  br label %119

78:                                               ; preds = %20, %20, %19
  %79 = getelementptr inbounds %struct.EditFont, ptr %9, i64 0, i32 7
  %80 = load i32, ptr %79, align 4, !tbaa !81
  %81 = load i32, ptr %13, align 8, !tbaa !77
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %122

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.EditFont, ptr %9, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !85
  %86 = sext i32 %80 to i64
  br label %87

87:                                               ; preds = %83, %87
  %88 = phi i64 [ %86, %83 ], [ %89, %87 ]
  %89 = add nsw i64 %88, 1
  %90 = getelementptr inbounds i32, ptr %85, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !86
  %92 = getelementptr inbounds i32, ptr %85, i64 %88
  store i32 %91, ptr %92, align 4, !tbaa !86
  %93 = load i32, ptr %13, align 8, !tbaa !77
  %94 = sext i32 %93 to i64
  %95 = icmp slt i64 %89, %94
  br i1 %95, label %87, label %96, !llvm.loop !89

96:                                               ; preds = %87
  %97 = load i32, ptr %79, align 4, !tbaa !81
  %98 = icmp slt i32 %97, %93
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.EditFont, ptr %9, i64 0, i32 3
  %101 = sext i32 %97 to i64
  br label %102

102:                                              ; preds = %99, %102
  %103 = phi i64 [ %101, %99 ], [ %106, %102 ]
  %104 = load ptr, ptr %100, align 8, !tbaa !83
  %105 = getelementptr inbounds %struct.CharInfo, ptr %104, i64 %103
  %106 = add nsw i64 %103, 1
  %107 = getelementptr inbounds %struct.CharInfo, ptr %104, i64 %106
  %108 = load i64, ptr %107, align 2
  store i64 %108, ptr %105, align 2
  %109 = load i32, ptr %13, align 8, !tbaa !77
  %110 = sext i32 %109 to i64
  %111 = icmp slt i64 %106, %110
  br i1 %111, label %102, label %112, !llvm.loop !90

112:                                              ; preds = %102, %96
  %113 = phi i32 [ %93, %96 ], [ %109, %102 ]
  %114 = getelementptr inbounds %struct.EditFont, ptr %9, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !85
  %116 = add nsw i32 %113, -1
  store i32 %116, ptr %13, align 8, !tbaa !77
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, ptr %115, i64 %117
  br label %119

119:                                              ; preds = %21, %69, %112
  %120 = phi ptr [ %118, %112 ], [ %77, %69 ], [ %24, %21 ]
  store i32 0, ptr %120, align 4, !tbaa !86
  br label %121

121:                                              ; preds = %119, %25
  call fastcc void @text_update_edited(ptr noundef %0, ptr noundef %5, i32 noundef 0) #16
  br label %122

122:                                              ; preds = %20, %19, %78, %28, %25, %2, %121
  %123 = phi i32 [ 4, %121 ], [ 2, %2 ], [ 2, %25 ], [ 2, %28 ], [ 2, %78 ], [ 2, %19 ], [ 2, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret i32 %123
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FONT_OT_text_insert(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.60, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.61, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.62, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @insert_text_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @insert_text_invoke, ptr %5, align 8, !tbaa !29
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.63, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65) #15
  %11 = load ptr, ptr %8, align 8, !tbaa !74
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.66, i32 noundef 0, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @insert_text_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !30
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.63) #15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !30
  %10 = tail call ptr @RNA_string_get_alloc(ptr noundef %9, ptr noundef nonnull @.str.63, ptr noundef null, i32 noundef 0) #15
  %11 = tail call i64 @BLI_strlen_utf8(ptr noundef %10) #15
  %12 = trunc i64 %11 to i32
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !18
  %14 = shl i64 %11, 32
  %15 = add i64 %14, 4294967296
  %16 = ashr exact i64 %15, 32
  %17 = ashr exact i64 %15, 30
  %18 = tail call ptr %13(i64 noundef %17, ptr noundef nonnull @.str.148) #15
  %19 = tail call i64 @BLI_strncpy_wchar_from_utf8(ptr noundef %18, ptr noundef %10, i64 noundef %16) #15
  %20 = icmp sgt i32 %12, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %8
  %22 = and i64 %11, 4294967295
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi i64 [ 0, %21 ], [ %28, %23 ]
  %25 = getelementptr inbounds i32, ptr %18, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !86
  %27 = sext i32 %26 to i64
  tail call fastcc void @insert_into_textbuf(ptr noundef %3, i64 noundef %27) #16
  %28 = add nuw nsw i64 %24, 1
  %29 = icmp eq i64 %28, %22
  br i1 %29, label %30, label %23, !llvm.loop !91

30:                                               ; preds = %23, %8
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !18
  tail call void %31(ptr noundef %18) #15
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !18
  tail call void %32(ptr noundef %10) #15
  %33 = tail call fastcc i32 @kill_selection(ptr noundef %3, i32 noundef 1) #16
  tail call fastcc void @text_update_edited(ptr noundef %0, ptr noundef %3, i32 noundef 0) #16
  br label %34

34:                                               ; preds = %2, %30
  %35 = phi i32 [ 4, %30 ], [ 2, %2 ]
  ret i32 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @insert_text_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #1 {
  %4 = alloca [2 x i32], align 8
  %5 = alloca [8 x i8], align 8
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 53
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 8
  %12 = load i8, ptr %11, align 2, !tbaa !92
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 19
  %15 = load i16, ptr %14, align 4, !tbaa !94
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 17
  %17 = load i16, ptr %16, align 8, !tbaa !95
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %19 = load i16, ptr %18, align 2, !tbaa !96
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !97
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %23 = load i16, ptr %22, align 2, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  store i64 0, ptr %4, align 8
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !30
  %26 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %25, ptr noundef nonnull @.str.63) #15
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %3
  %29 = tail call i32 @insert_text_exec(ptr noundef %0, ptr noundef nonnull %1) #16, !range !33
  br label %126

30:                                               ; preds = %3
  %31 = load ptr, ptr %24, align 8, !tbaa !30
  %32 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %31, ptr noundef nonnull @.str.66) #15
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 6
  %36 = load i32, ptr %35, align 8, !tbaa !77
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %126, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 7
  %40 = load i32, ptr %39, align 4, !tbaa !81
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %126

42:                                               ; preds = %38
  store i1 true, ptr @insert_text_invoke.accentcode, align 4
  br label %126

43:                                               ; preds = %30
  switch i16 %21, label %63 [
    i16 219, label %44
    i16 223, label %52
  ]

44:                                               ; preds = %43
  %45 = icmp eq i16 %15, 0
  %46 = icmp eq i16 %19, 0
  %47 = select i1 %45, i1 %46, i1 false
  %48 = icmp eq i16 %17, 0
  %49 = select i1 %47, i1 %48, i1 false
  %50 = icmp eq i16 %23, 0
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %126, label %71

52:                                               ; preds = %43
  %53 = icmp eq i16 %15, 0
  br i1 %53, label %126, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 6
  %56 = load i32, ptr %55, align 8, !tbaa !77
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %126, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 7
  %60 = load i32, ptr %59, align 4, !tbaa !81
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %126

62:                                               ; preds = %58
  store i1 true, ptr @insert_text_invoke.accentcode, align 4
  br label %126

63:                                               ; preds = %43
  %64 = icmp eq i16 %23, 0
  br i1 %64, label %126, label %65

65:                                               ; preds = %63
  %66 = icmp eq i8 %12, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 7
  %69 = load i8, ptr %68, align 4, !tbaa !19
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %126, label %71

71:                                               ; preds = %44, %67, %65
  %72 = phi i1 [ true, %67 ], [ false, %65 ], [ false, %44 ]
  %73 = phi i64 [ 0, %67 ], [ %13, %65 ], [ 9, %44 ]
  %74 = add nsw i64 %73, -32
  %75 = icmp ult i64 %74, 222
  %76 = icmp ne i64 %73, 127
  %77 = and i1 %76, %75
  %78 = icmp eq i64 %73, 13
  %79 = or i1 %78, %77
  %80 = and i64 %73, 253
  %81 = icmp eq i64 %80, 8
  %82 = or i1 %81, %79
  br i1 %82, label %87, label %83

83:                                               ; preds = %71
  %84 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 7
  %85 = load i8, ptr %84, align 4, !tbaa !19
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %118, label %87

87:                                               ; preds = %71, %83
  %88 = load i1, ptr @insert_text_invoke.accentcode, align 4
  br i1 %88, label %89, label %104

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 7
  %91 = load i32, ptr %90, align 4, !tbaa !81
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !85
  %96 = zext nneg i32 %91 to i64
  %97 = getelementptr i32, ptr %95, i64 %96
  %98 = getelementptr i32, ptr %97, i64 -1
  %99 = load i32, ptr %98, align 4, !tbaa !86
  %100 = trunc i32 %99 to i8
  %101 = trunc i64 %73 to i32
  %102 = tail call fastcc zeroext i8 @findaccent(i8 noundef zeroext %100, i32 noundef %101) #16
  %103 = zext i8 %102 to i32
  store i32 %103, ptr %4, align 8, !tbaa !86
  store i32 %103, ptr %98, align 4, !tbaa !86
  br label %114

104:                                              ; preds = %87
  %105 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 7
  %106 = load i8, ptr %105, align 4, !tbaa !19
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = call i64 @BLI_strncpy_wchar_from_utf8(ptr noundef nonnull %4, ptr noundef nonnull %105, i64 noundef 2) #15
  %110 = load i32, ptr %4, align 8, !tbaa !86
  %111 = sext i32 %110 to i64
  call fastcc void @insert_into_textbuf(ptr noundef nonnull %6, i64 noundef %111) #16
  br label %114

112:                                              ; preds = %104
  br i1 %72, label %115, label %113

113:                                              ; preds = %112
  tail call fastcc void @insert_into_textbuf(ptr noundef nonnull %6, i64 noundef %73) #16
  br label %114

114:                                              ; preds = %89, %93, %113, %108
  store i1 false, ptr @insert_text_invoke.accentcode, align 4
  br label %115

115:                                              ; preds = %114, %112
  %116 = call fastcc i32 @kill_selection(ptr noundef nonnull %6, i32 noundef 1) #16
  call fastcc void @text_update_edited(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 0) #16
  %117 = load i32, ptr %4, align 8, !tbaa !86
  br label %120

118:                                              ; preds = %83
  %119 = trunc i64 %73 to i32
  store i32 %119, ptr %4, align 8, !tbaa !86
  tail call fastcc void @insert_into_textbuf(ptr noundef nonnull %6, i64 noundef %73) #16
  tail call fastcc void @text_update_edited(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 0) #16
  br label %120

120:                                              ; preds = %115, %118
  %121 = phi i32 [ %117, %115 ], [ %119, %118 ]
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  store i64 0, ptr %5, align 8
  %124 = call i64 @BLI_strncpy_wchar_as_utf8(ptr noundef nonnull %5, ptr noundef nonnull %4, i64 noundef 8) #15
  %125 = load ptr, ptr %24, align 8, !tbaa !30
  call void @RNA_string_set(ptr noundef %125, ptr noundef nonnull @.str.63, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  br label %126

126:                                              ; preds = %123, %120, %63, %67, %52, %54, %58, %62, %44, %34, %38, %42, %28
  %127 = phi i32 [ %29, %28 ], [ 4, %42 ], [ 4, %38 ], [ 4, %34 ], [ 8, %44 ], [ 8, %62 ], [ 8, %58 ], [ 8, %54 ], [ 8, %52 ], [ 8, %67 ], [ 8, %63 ], [ 4, %120 ], [ 4, %123 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret i32 %127
}

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @FONT_OT_textbox_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.69, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.70, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.71, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @textbox_add_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable_font, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @textbox_add_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 60
  %7 = load i32, ptr %6, align 8, !tbaa !99
  %8 = icmp slt i32 %7, 256
  br i1 %8, label %9, label %36

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 61
  %11 = load i32, ptr %10, align 4, !tbaa !100
  %12 = icmp sgt i32 %7, %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = sext i32 %11 to i64
  br label %27

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 59
  %17 = sext i32 %7 to i64
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i64 [ %17, %15 ], [ %23, %18 ]
  %20 = load ptr, ptr %16, align 8, !tbaa !101
  %21 = getelementptr inbounds %struct.TextBox, ptr %20, i64 %19
  %22 = getelementptr %struct.TextBox, ptr %21, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %21, ptr noundef nonnull align 4 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !102
  %23 = add nsw i64 %19, -1
  %24 = load i32, ptr %10, align 4, !tbaa !100
  %25 = sext i32 %24 to i64
  %26 = icmp sgt i64 %23, %25
  br i1 %26, label %18, label %27, !llvm.loop !103

27:                                               ; preds = %18, %13
  %28 = phi i64 [ %14, %13 ], [ %25, %18 ]
  %29 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 59
  %30 = load ptr, ptr %29, align 8, !tbaa !101
  %31 = getelementptr inbounds %struct.TextBox, ptr %30, i64 %28
  %32 = getelementptr %struct.TextBox, ptr %31, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %31, ptr noundef nonnull align 4 dereferenceable(16) %32, i64 16, i1 false), !tbaa.struct !102
  %33 = load <2 x i32>, ptr %6, align 8, !tbaa !86
  %34 = add nsw <2 x i32> %33, <i32 1, i32 1>
  store <2 x i32> %34, ptr %6, align 8, !tbaa !86
  %35 = load ptr, ptr %4, align 8, !tbaa !22
  br label %36

36:                                               ; preds = %27, %2
  %37 = phi ptr [ %35, %27 ], [ %5, %2 ]
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %37) #15
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_object_active_editable_font(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FONT_OT_textbox_remove(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.72, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.73, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.74, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @textbox_remove_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable_font, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.75, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i32 noundef 0, i32 noundef 2147483647) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @textbox_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !30
  %8 = tail call i32 @RNA_int_get(ptr noundef %7, ptr noundef nonnull @.str.75) #15
  %9 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 60
  %10 = load i32, ptr %9, align 8, !tbaa !99
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %34

12:                                               ; preds = %2
  %13 = icmp slt i32 %8, %10
  br i1 %13, label %14, label %26

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 59
  %16 = sext i32 %8 to i64
  br label %17

17:                                               ; preds = %14, %17
  %18 = phi i64 [ %16, %14 ], [ %21, %17 ]
  %19 = load ptr, ptr %15, align 8, !tbaa !101
  %20 = getelementptr inbounds %struct.TextBox, ptr %19, i64 %18
  %21 = add nsw i64 %18, 1
  %22 = getelementptr inbounds %struct.TextBox, ptr %19, i64 %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %20, ptr noundef nonnull align 4 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !102
  %23 = load i32, ptr %9, align 8, !tbaa !99
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %17, label %26, !llvm.loop !104

26:                                               ; preds = %17, %12
  %27 = phi i32 [ %10, %12 ], [ %23, %17 ]
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr %9, align 8, !tbaa !99
  %29 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 61
  %30 = load i32, ptr %29, align 4, !tbaa !100
  %31 = icmp slt i32 %30, %8
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = add nsw i32 %30, -1
  store i32 %33, ptr %29, align 4, !tbaa !100
  br label %34

34:                                               ; preds = %26, %32, %2
  %35 = load ptr, ptr %4, align 8, !tbaa !22
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %35) #15
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @make_editText(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 53
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !18
  %9 = tail call ptr %8(i64 noundef 88, ptr noundef nonnull @.str.78) #15
  store ptr %9, ptr %4, align 8, !tbaa !76
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !18
  %11 = tail call ptr %10(i64 noundef 131080, ptr noundef nonnull @.str.79) #15
  %12 = getelementptr inbounds %struct.EditFont, ptr %9, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !85
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !18
  %14 = tail call ptr %13(i64 noundef 262160, ptr noundef nonnull @.str.80) #15
  %15 = getelementptr inbounds %struct.EditFont, ptr %9, i64 0, i32 3
  store ptr %14, ptr %15, align 8, !tbaa !83
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !18
  %17 = tail call ptr %16(i64 noundef 131080, ptr noundef nonnull @.str.81) #15
  store ptr %17, ptr %9, align 8, !tbaa !105
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !18
  %19 = tail call ptr %18(i64 noundef 262160, ptr noundef nonnull @.str.82) #15
  %20 = getelementptr inbounds %struct.EditFont, ptr %9, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !106
  br label %21

21:                                               ; preds = %7, %1
  %22 = phi ptr [ %9, %7 ], [ %5, %1 ]
  %23 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !85
  %25 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 52
  %26 = load ptr, ptr %25, align 8, !tbaa !68
  %27 = tail call i64 @BLI_strncpy_wchar_from_utf8(ptr noundef %24, ptr noundef %26, i64 noundef 32770) #15
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 6
  store i32 %28, ptr %29, align 8, !tbaa !77
  %30 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !83
  %32 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 62
  %33 = load ptr, ptr %32, align 8, !tbaa !69
  %34 = shl i64 %27, 32
  %35 = ashr exact i64 %34, 29
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %31, ptr align 2 %33, i64 %35, i1 false)
  %36 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 7
  %37 = load i32, ptr %36, align 4, !tbaa !81
  %38 = load i32, ptr %29, align 8, !tbaa !77
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %21
  store i32 %38, ptr %36, align 4, !tbaa !81
  br label %41

41:                                               ; preds = %40, %21
  %42 = phi i32 [ %38, %40 ], [ %37, %21 ]
  %43 = load ptr, ptr %30, align 8, !tbaa !83
  %44 = tail call i32 @llvm.usub.sat.i32(i32 %42, i32 1)
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 63
  %47 = getelementptr inbounds %struct.CharInfo, ptr %43, i64 %45
  %48 = load i64, ptr %47, align 2
  store i64 %48, ptr %46, align 8
  %49 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 47
  %50 = load <2 x i32>, ptr %49, align 4, !tbaa !86
  store <2 x i32> %50, ptr %36, align 4, !tbaa !86
  %51 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 49
  %52 = load i32, ptr %51, align 4, !tbaa !107
  %53 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 9
  store i32 %52, ptr %53, align 4, !tbaa !80
  tail call void @BKE_vfont_select_clamp(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_strncpy_wchar_from_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @BKE_vfont_select_clamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @load_editText(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 53
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 52
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  tail call void %6(ptr noundef %8) #15
  %9 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !77
  %11 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 50
  store i32 %10, ptr %11, align 8, !tbaa !71
  %12 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !85
  %14 = tail call i64 @BLI_wstrlen_utf8(ptr noundef %13) #15
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 51
  store i32 %15, ptr %16, align 4, !tbaa !70
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !18
  %18 = shl i64 %14, 32
  %19 = ashr exact i64 %18, 32
  %20 = add nsw i64 %19, 4
  %21 = tail call ptr %17(i64 noundef %20, ptr noundef nonnull @.str.83) #15
  store ptr %21, ptr %7, align 8, !tbaa !68
  %22 = load ptr, ptr %12, align 8, !tbaa !85
  %23 = load i32, ptr %16, align 4, !tbaa !70
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = tail call i64 @BLI_strncpy_wchar_as_utf8(ptr noundef %21, ptr noundef %22, i64 noundef %25) #15
  %27 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 62
  %28 = load ptr, ptr %27, align 8, !tbaa !69
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %1
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !18
  tail call void %31(ptr noundef nonnull %28) #15
  br label %32

32:                                               ; preds = %30, %1
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !18
  %34 = load i32, ptr %11, align 8, !tbaa !71
  %35 = add nsw i32 %34, 4
  %36 = sext i32 %35 to i64
  %37 = shl nsw i64 %36, 3
  %38 = tail call ptr %33(i64 noundef %37, ptr noundef nonnull @.str.84) #15
  store ptr %38, ptr %27, align 8, !tbaa !69
  %39 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !83
  %41 = load i32, ptr %11, align 8, !tbaa !71
  %42 = sext i32 %41 to i64
  %43 = shl nsw i64 %42, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %38, ptr align 2 %40, i64 %43, i1 false)
  %44 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 7
  %45 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 47
  %46 = load <2 x i32>, ptr %44, align 4, !tbaa !86
  store <2 x i32> %46, ptr %45, align 4, !tbaa !86
  %47 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 9
  %48 = load i32, ptr %47, align 4, !tbaa !80
  %49 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 49
  store i32 %48, ptr %49, align 4, !tbaa !107
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_wstrlen_utf8(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_strncpy_wchar_as_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_editText(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  tail call void @BKE_curve_editfont_free(ptr noundef %3) #15
  ret void
}

; Function Attrs: optsize
declare void @BKE_curve_editfont_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FONT_OT_case_set(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.85, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.86, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.87, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_case_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.88, ptr noundef nonnull @case_items, i32 noundef 0, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @set_case_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !30
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.88) #15
  tail call fastcc void @set_case(ptr noundef %0, i32 noundef %5) #16
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @FONT_OT_case_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.91, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.92, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.93, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @toggle_case_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @toggle_case_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 53
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !85
  %10 = tail call i64 @wcslen(ptr noundef %9) #17
  %11 = trunc i64 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %2, %19
  %14 = phi i32 [ %20, %19 ], [ %11, %2 ]
  %15 = phi ptr [ %21, %19 ], [ %9, %2 ]
  %16 = load i32, ptr %15, align 4, !tbaa !86
  %17 = add i32 %16, -97
  %18 = icmp ult i32 %17, 26
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = add nsw i32 %14, -1
  %21 = getelementptr inbounds i32, ptr %15, i64 1
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %23, label %13, !llvm.loop !108

23:                                               ; preds = %19, %13, %2
  %24 = phi i32 [ 1, %2 ], [ 0, %13 ], [ 1, %19 ]
  tail call fastcc void @set_case(ptr noundef %0, i32 noundef %24) #16
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FONT_OT_open(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.94, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.95, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.96, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @font_open_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @open_invoke, ptr %5, align 8, !tbaa !29
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @font_open_cancel, ptr %6, align 8, !tbaa !109
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !17
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2176, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 9, i16 noundef signext 0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @font_open_exec(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #18
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !30
  call void @RNA_string_get(ptr noundef %7, ptr noundef nonnull @.str.100, ptr noundef nonnull %4) #15
  %8 = call ptr @BKE_vfont_load(ptr noundef %5, ptr noundef nonnull %4) #15
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !110
  %12 = icmp eq ptr %11, null
  br i1 %9, label %13, label %16

13:                                               ; preds = %2
  br i1 %12, label %34, label %14

14:                                               ; preds = %13
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !18
  call void %15(ptr noundef nonnull %11) #15
  br label %34

16:                                               ; preds = %2
  br i1 %12, label %17, label %19

17:                                               ; preds = %16
  call fastcc void @font_ui_template_init(ptr noundef %0, ptr noundef nonnull %1) #16
  %18 = load ptr, ptr %10, align 8, !tbaa !110
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi ptr [ %18, %17 ], [ %11, %16 ]
  %21 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !111
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !64
  %27 = add nsw i32 %26, -1
  store i32 %27, ptr %25, align 4, !tbaa !64
  call void @RNA_id_pointer_create(ptr noundef nonnull %8, ptr noundef nonnull %3) #15
  %28 = load ptr, ptr %21, align 8, !tbaa !111
  call void @RNA_property_pointer_set(ptr noundef nonnull %20, ptr noundef %28, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %3) #15
  %29 = load ptr, ptr %21, align 8, !tbaa !111
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %20, ptr noundef %29) #15
  %30 = load ptr, ptr %10, align 8, !tbaa !110
  br label %31

31:                                               ; preds = %24, %19
  %32 = phi ptr [ %30, %24 ], [ %20, %19 ]
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !18
  call void %33(ptr noundef %32) #15
  br label %34

34:                                               ; preds = %13, %14, %31
  %35 = phi i32 [ 4, %31 ], [ 2, %14 ], [ 2, %13 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret i32 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @open_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  tail call fastcc void @font_ui_template_init(ptr noundef %0, ptr noundef %1) #16
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !111
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef nonnull %6, ptr noundef nonnull %8) #15
  %11 = load ptr, ptr %4, align 8, !tbaa.struct !115
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = call zeroext i8 @BKE_vfont_is_builtin(ptr noundef nonnull %11) #15
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.VFont, ptr %11, i64 0, i32 1
  br label %18

18:                                               ; preds = %3, %10, %13, %16
  %19 = phi ptr [ %17, %16 ], [ getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 6), %13 ], [ getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 6), %10 ], [ getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 6), %3 ]
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !30
  %22 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %21, ptr noundef nonnull @.str.100) #15
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %18
  %25 = call i32 @font_open_exec(ptr noundef %0, ptr noundef nonnull %1) #16, !range !33
  br label %28

26:                                               ; preds = %18
  %27 = load ptr, ptr %20, align 8, !tbaa !30
  call void @RNA_string_set(ptr noundef %27, ptr noundef nonnull @.str.100, ptr noundef nonnull %19) #15
  call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef nonnull %1) #15
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ 1, %26 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @font_open_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #1 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !18
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !110
  tail call void %3(ptr noundef %5) #15
  store ptr null, ptr %4, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @FONT_OT_unlink(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.97, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.98, ptr %2, align 8, !tbaa !14
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.99, ptr %3, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @font_unlink_exec, ptr %4, align 8, !tbaa !15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @font_unlink_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PropertyPointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  %5 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %4, i64 0, i32 1
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !32
  call void @BKE_report(ptr noundef %10, i32 noundef 32, ptr noundef nonnull @.str.154) #15
  br label %15

11:                                               ; preds = %2
  %12 = call ptr @BKE_vfont_builtin_get() #15
  call void @RNA_id_pointer_create(ptr noundef %12, ptr noundef nonnull %3) #15
  %13 = load ptr, ptr %5, align 8, !tbaa !111
  call void @RNA_property_pointer_set(ptr noundef nonnull %4, ptr noundef %13, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %3) #15
  %14 = load ptr, ptr %5, align 8, !tbaa !111
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %14) #15
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ 2, %8 ], [ 4, %11 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @undo_push_font(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  tail call void @undo_editmode_push(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @get_undoFont, ptr noundef nonnull @free_undoFont, ptr noundef nonnull @undoFont_to_editFont, ptr noundef nonnull @editFont_to_undoFont, ptr noundef null) #15
  ret void
}

; Function Attrs: optsize
declare void @undo_editmode_push(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @get_undoFont(ptr noundef %0) #1 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !116
  %7 = icmp eq i16 %6, 4
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @free_undoFont(ptr noundef %0) #1 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !18
  tail call void %2(ptr noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @undoFont_to_editFont(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #5 {
  %4 = getelementptr inbounds %struct.Curve, ptr %1, i64 0, i32 53
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = load i16, ptr %0, align 2, !tbaa !117
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 7
  store i32 %7, ptr %8, align 4, !tbaa !81
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  %10 = load i16, ptr %9, align 2, !tbaa !117
  %11 = sext i16 %10 to i32
  %12 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 6
  store i32 %11, ptr %12, align 8, !tbaa !77
  %13 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !85
  %15 = getelementptr inbounds i8, ptr %0, i64 4
  %16 = add nsw i32 %11, 1
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %14, ptr nonnull align 1 %15, i64 %18, i1 false)
  %19 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !83
  %21 = load i32, ptr %12, align 8, !tbaa !77
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 2
  %25 = getelementptr inbounds i8, ptr %15, i64 %24
  %26 = sext i32 %21 to i64
  %27 = shl nsw i64 %26, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %20, ptr nonnull align 1 %25, i64 %27, i1 false)
  %28 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 9
  store i32 0, ptr %28, align 4, !tbaa !80
  %29 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 8
  store i32 0, ptr %29, align 8, !tbaa !79
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @editFont_to_undoFont(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #1 {
  %3 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 53
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !18
  %6 = tail call ptr %5(i64 noundef 393248, ptr noundef nonnull @.str.155) #15
  %7 = getelementptr inbounds i8, ptr %6, i64 4
  %8 = getelementptr inbounds %struct.EditFont, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !85
  %10 = getelementptr inbounds %struct.EditFont, ptr %4, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !77
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %7, ptr align 4 %9, i64 %14, i1 false)
  %15 = load i32, ptr %10, align 8, !tbaa !77
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 2
  %19 = getelementptr inbounds i8, ptr %7, i64 %18
  %20 = getelementptr inbounds %struct.EditFont, ptr %4, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !83
  %22 = sext i32 %15 to i64
  %23 = shl nsw i64 %22, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr align 2 %21, i64 %23, i1 false)
  %24 = getelementptr inbounds %struct.EditFont, ptr %4, i64 0, i32 7
  %25 = load i32, ptr %24, align 4, !tbaa !81
  %26 = trunc i32 %25 to i16
  store i16 %26, ptr %6, align 2, !tbaa !117
  %27 = load i32, ptr %10, align 8, !tbaa !77
  %28 = trunc i32 %27 to i16
  %29 = getelementptr inbounds i8, ptr %6, i64 2
  store i16 %28, ptr %29, align 2, !tbaa !117
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @mouse_font(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #1 {
  %6 = alloca %struct.ViewContext, align 8
  %7 = alloca [2 x float], align 8
  %8 = alloca [4 x [3 x float]], align 16
  %9 = alloca [4 x [2 x float]], align 16
  %10 = alloca %struct.rctf, align 4
  %11 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  %14 = load <2 x i32>, ptr %1, align 4, !tbaa !86
  %15 = sitofp <2 x i32> %14 to <2 x float>
  store <2 x float> %15, ptr %7, align 8, !tbaa !39
  %16 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 61
  %17 = load i32, ptr %16, align 4, !tbaa !100
  %18 = add nsw i32 %17, -1
  %19 = tail call fastcc i32 @max_ii(i32 noundef %18) #16
  %20 = tail call float @ED_view3d_select_dist_px() #15
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %6) #15
  %21 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !118
  %23 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !120
  call void @ED_view3d_init_mats_rv3d(ptr noundef %22, ptr noundef %24) #15
  %25 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 60
  %26 = load i32, ptr %25, align 8, !tbaa !99
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %107

28:                                               ; preds = %5
  %29 = fmul float %20, %20
  %30 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 59
  %31 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 2
  %32 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 1
  %33 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 3
  %34 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 2
  %35 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 1
  %36 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 3
  %37 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 3
  br label %38

38:                                               ; preds = %28, %89
  %39 = phi i32 [ %26, %28 ], [ %98, %89 ]
  %40 = phi i32 [ 0, %28 ], [ %97, %89 ]
  %41 = phi float [ %29, %28 ], [ %96, %89 ]
  %42 = phi i32 [ -1, %28 ], [ %95, %89 ]
  %43 = add nsw i32 %40, %19
  %44 = srem i32 %43, %39
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #18
  %45 = load ptr, ptr %30, align 8, !tbaa !101
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds %struct.TextBox, ptr %45, i64 %46
  call void @BKE_curve_rect_from_textbox(ptr noundef nonnull %13, ptr noundef %47, ptr noundef nonnull %10) #15
  %48 = load float, ptr %10, align 4, !tbaa !121
  %49 = load float, ptr %31, align 4, !tbaa !122
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %8, float noundef %48, float noundef %49) #16
  %50 = load float, ptr %33, align 4, !tbaa !123
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %32, float noundef %48, float noundef %50) #16
  %51 = load float, ptr %35, align 4, !tbaa !124
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %34, float noundef %51, float noundef %50) #16
  call fastcc void @copy_v3_fl3(ptr noundef nonnull %36, float noundef %51, float noundef %49) #16
  br label %52

52:                                               ; preds = %38, %52
  %53 = phi i64 [ 0, %38 ], [ %64, %52 ]
  %54 = phi i32 [ 0, %38 ], [ %63, %52 ]
  %55 = load ptr, ptr %37, align 8, !tbaa !125
  %56 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 %53
  %57 = getelementptr inbounds [4 x [2 x float]], ptr %9, i64 0, i64 %53
  %58 = call i32 @ED_view3d_project_float_object(ptr noundef %55, ptr noundef nonnull %56, ptr noundef nonnull %57, i32 noundef 1) #15
  %59 = icmp eq i32 %58, 0
  %60 = trunc i64 %53 to i32
  %61 = shl nuw nsw i32 1, %60
  %62 = select i1 %59, i32 %61, i32 0
  %63 = or i32 %62, %54
  %64 = add nuw nsw i64 %53, 1
  %65 = icmp eq i64 %64, 4
  br i1 %65, label %66, label %52, !llvm.loop !126

66:                                               ; preds = %52, %85
  %67 = phi i64 [ %87, %85 ], [ 0, %52 ]
  %68 = phi i32 [ %70, %85 ], [ 3, %52 ]
  %69 = phi float [ %86, %85 ], [ %41, %52 ]
  %70 = trunc i64 %67 to i32
  %71 = shl nuw nsw i32 1, %70
  %72 = and i32 %71, %63
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %66
  %75 = shl nuw nsw i32 1, %68
  %76 = and i32 %75, %63
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %74
  %79 = zext nneg i32 %68 to i64
  %80 = getelementptr inbounds [4 x [2 x float]], ptr %9, i64 0, i64 %79
  %81 = getelementptr inbounds [4 x [2 x float]], ptr %9, i64 0, i64 %67
  %82 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %7, ptr noundef nonnull %80, ptr noundef nonnull %81) #15
  %83 = fcmp ogt float %69, %82
  %84 = select i1 %83, float %82, float %69
  br label %85

85:                                               ; preds = %66, %74, %78
  %86 = phi float [ %84, %78 ], [ %69, %74 ], [ %69, %66 ]
  %87 = add nuw nsw i64 %67, 1
  %88 = icmp eq i64 %87, 4
  br i1 %88, label %89, label %66, !llvm.loop !127

89:                                               ; preds = %85
  %90 = icmp eq i32 %40, 0
  %91 = fadd float %86, 4.000000e+00
  %92 = select i1 %90, float %91, float %86
  %93 = fcmp olt float %92, %41
  %94 = add nsw i32 %44, 1
  %95 = select i1 %93, i32 %94, i32 %42
  %96 = select i1 %93, float %92, float %41
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #18
  %97 = add nuw nsw i32 %40, 1
  %98 = load i32, ptr %25, align 8, !tbaa !99
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %38, label %100, !llvm.loop !128

100:                                              ; preds = %89
  %101 = icmp eq i32 %95, -1
  br i1 %101, label %107, label %102

102:                                              ; preds = %100
  %103 = load i32, ptr %16, align 4, !tbaa !100
  %104 = icmp eq i32 %103, %95
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  store i32 %95, ptr %16, align 4, !tbaa !100
  %106 = load ptr, ptr %12, align 8, !tbaa !22
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %106) #15
  br label %107

107:                                              ; preds = %5, %100, %102, %105
  %108 = phi i8 [ 1, %105 ], [ 1, %102 ], [ 0, %100 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #18
  ret i8 %108
}

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #6 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  ret i32 %2
}

; Function Attrs: optsize
declare float @ED_view3d_select_dist_px() local_unnamed_addr #2

; Function Attrs: optsize
declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_view3d_init_mats_rv3d(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_curve_rect_from_textbox(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @copy_v3_fl3(ptr nocapture noundef writeonly %0, float noundef %1, float noundef %2) unnamed_addr #0 {
  store float %1, ptr %0, align 4, !tbaa !39
  %4 = getelementptr inbounds float, ptr %0, i64 1
  store float %2, ptr %4, align 4, !tbaa !39
  %5 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %5, align 4, !tbaa !39
  ret void
}

; Function Attrs: optsize
declare i32 @ED_view3d_project_float_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @dist_squared_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @rand() local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @insert_into_textbuf(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 53
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.EditFont, ptr %6, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !77
  %9 = icmp slt i32 %8, 32765
  br i1 %9, label %10, label %75

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.EditFont, ptr %6, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !81
  %13 = icmp sgt i32 %8, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.EditFont, ptr %6, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  %17 = sext i32 %8 to i64
  br label %18

18:                                               ; preds = %14, %18
  %19 = phi i64 [ %17, %14 ], [ %23, %18 ]
  %20 = getelementptr i32, ptr %16, i64 %19
  %21 = getelementptr i32, ptr %20, i64 -1
  %22 = load i32, ptr %21, align 4, !tbaa !86
  store i32 %22, ptr %20, align 4, !tbaa !86
  %23 = add nsw i64 %19, -1
  %24 = load i32, ptr %11, align 4, !tbaa !81
  %25 = sext i32 %24 to i64
  %26 = icmp sgt i64 %23, %25
  br i1 %26, label %18, label %27, !llvm.loop !129

27:                                               ; preds = %18
  %28 = load i32, ptr %7, align 8, !tbaa !77
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi i32 [ %24, %27 ], [ %12, %10 ]
  %31 = phi i32 [ %28, %27 ], [ %8, %10 ]
  %32 = icmp sgt i32 %31, %30
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = sext i32 %30 to i64
  br label %48

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.EditFont, ptr %6, i64 0, i32 3
  %37 = sext i32 %31 to i64
  br label %38

38:                                               ; preds = %35, %38
  %39 = phi i64 [ %37, %35 ], [ %44, %38 ]
  %40 = load ptr, ptr %36, align 8, !tbaa !83
  %41 = getelementptr inbounds %struct.CharInfo, ptr %40, i64 %39
  %42 = getelementptr %struct.CharInfo, ptr %41, i64 -1
  %43 = load i64, ptr %42, align 2
  store i64 %43, ptr %41, align 2
  %44 = add nsw i64 %39, -1
  %45 = load i32, ptr %11, align 4, !tbaa !81
  %46 = sext i32 %45 to i64
  %47 = icmp sgt i64 %44, %46
  br i1 %47, label %38, label %48, !llvm.loop !130

48:                                               ; preds = %38, %33
  %49 = phi i64 [ %34, %33 ], [ %46, %38 ]
  %50 = trunc i64 %1 to i32
  %51 = getelementptr inbounds %struct.EditFont, ptr %6, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !85
  %53 = getelementptr inbounds i32, ptr %52, i64 %49
  store i32 %50, ptr %53, align 4, !tbaa !86
  %54 = getelementptr inbounds %struct.EditFont, ptr %6, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !83
  %56 = load i32, ptr %11, align 4, !tbaa !81
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.CharInfo, ptr %55, i64 %57
  %59 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 63
  %60 = load i64, ptr %59, align 8
  store i64 %60, ptr %58, align 2
  %61 = load ptr, ptr %54, align 8, !tbaa !83
  %62 = load i32, ptr %11, align 4, !tbaa !81
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.CharInfo, ptr %61, i64 %63
  store i16 0, ptr %64, align 2, !tbaa !84
  %65 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 32
  %66 = load i32, ptr %65, align 4, !tbaa !131
  %67 = trunc i32 %66 to i16
  %68 = getelementptr inbounds %struct.CharInfo, ptr %61, i64 %63, i32 1
  store i16 %67, ptr %68, align 2, !tbaa !132
  %69 = add nsw i32 %62, 1
  store i32 %69, ptr %11, align 4, !tbaa !81
  %70 = load i32, ptr %7, align 8, !tbaa !77
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %7, align 8, !tbaa !77
  %72 = load ptr, ptr %51, align 8, !tbaa !85
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, ptr %72, i64 %73
  store i32 0, ptr %74, align 4, !tbaa !86
  br label %75

75:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_string_get_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @paste_from_file(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %5 = tail call ptr @BLI_fopen(ptr noundef %2, ptr noundef nonnull @.str.101) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.102, ptr noundef %2) #15
  br label %47

8:                                                ; preds = %3
  %9 = tail call i32 @fseek(ptr noundef nonnull %5, i64 noundef 0, i32 noundef 2) #16
  %10 = tail call ptr @__errno_location() #19
  store i32 0, ptr %10, align 4, !tbaa !86
  %11 = tail call i64 @ftell(ptr noundef nonnull %5) #16
  %12 = trunc i64 %11 to i32
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %43, label %14

14:                                               ; preds = %8
  %15 = icmp slt i32 %12, 32767
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = tail call i32 @fclose(ptr noundef nonnull %5) #16
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.104, ptr noundef %2) #15
  br label %47

18:                                               ; preds = %14
  %19 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !18
  %20 = shl i64 %11, 32
  %21 = add i64 %20, 17179869184
  %22 = ashr exact i64 %21, 32
  %23 = tail call ptr %19(i64 noundef %22, ptr noundef nonnull @.str.103) #15
  %24 = tail call i32 @fseek(ptr noundef nonnull %5, i64 noundef 0, i32 noundef 0) #16
  store i32 0, ptr %10, align 4, !tbaa !86
  %25 = ashr exact i64 %20, 32
  %26 = tail call i64 @fread(ptr noundef %23, i64 noundef 1, i64 noundef %25, ptr noundef nonnull %5) #16
  %27 = and i64 %26, 4294967295
  %28 = icmp eq i64 %27, 4294967295
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !18
  tail call void %30(ptr noundef %23) #15
  br label %43

31:                                               ; preds = %18
  %32 = shl i64 %26, 32
  %33 = ashr exact i64 %32, 32
  %34 = getelementptr inbounds i8, ptr %23, i64 %33
  store i8 0, ptr %34, align 1, !tbaa !19
  %35 = tail call i32 @fclose(ptr noundef nonnull %5) #16
  %36 = tail call fastcc zeroext i8 @font_paste_utf8(ptr noundef %0, ptr noundef nonnull %23, i64 noundef %33) #16, !range !82
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  tail call fastcc void @text_update_edited(ptr noundef %0, ptr noundef %4, i32 noundef 0) #16
  br label %40

39:                                               ; preds = %31
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.104, ptr noundef %2) #15
  br label %40

40:                                               ; preds = %39, %38
  %41 = phi i32 [ 4, %38 ], [ 2, %39 ]
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !18
  tail call void %42(ptr noundef nonnull %23) #15
  br label %47

43:                                               ; preds = %8, %29
  %44 = load i32, ptr %10, align 4, !tbaa !86
  %45 = tail call ptr @strerror(i32 noundef %44) #15
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.105, ptr noundef %2, ptr noundef %45) #15
  %46 = tail call i32 @fclose(ptr noundef nonnull %5) #16
  br label %47

47:                                               ; preds = %16, %40, %43, %7
  %48 = phi i32 [ 2, %43 ], [ 2, %7 ], [ %41, %40 ], [ 2, %16 ]
  ret i32 %48
}

; Function Attrs: optsize
declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @font_paste_utf8(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 {
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !18
  %6 = add nsw i64 %2, 1
  %7 = shl nsw i64 %6, 2
  %8 = tail call ptr %5(i64 noundef %7, ptr noundef nonnull @__func__.font_paste_utf8) #15
  %9 = tail call i64 @BLI_strncpy_wchar_from_utf8(ptr noundef %8, ptr noundef %1, i64 noundef %6) #15
  %10 = shl i64 %9, 32
  %11 = ashr exact i64 %10, 32
  %12 = tail call fastcc zeroext i8 @font_paste_wchar(ptr noundef %4, ptr noundef %8, i64 noundef %11, ptr noundef null) #16, !range !82
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !18
  tail call void %13(ptr noundef %8) #15
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @text_update_edited(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 53
  %8 = load ptr, ptr %7, align 8, !tbaa !76
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @DAG_id_tag_update(ptr noundef nonnull %6, i16 noundef signext 0) #15
  br label %13

11:                                               ; preds = %3
  %12 = tail call zeroext i8 @BKE_vfont_to_curve(ptr noundef %4, ptr noundef nonnull %1, i32 noundef %2) #15
  br label %13

13:                                               ; preds = %11, %10
  %14 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 63
  %15 = getelementptr inbounds %struct.EditFont, ptr %8, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !83
  %17 = getelementptr inbounds %struct.EditFont, ptr %8, i64 0, i32 7
  %18 = load i32, ptr %17, align 4, !tbaa !81
  %19 = tail call i32 @llvm.usub.sat.i32(i32 %18, i32 1)
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.CharInfo, ptr %16, i64 %20
  %22 = load i64, ptr %21, align 2
  store i64 %22, ptr %14, align 8
  %23 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 31
  %24 = load i32, ptr %23, align 8, !tbaa !133
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %13
  %27 = lshr i64 %22, 16
  %28 = trunc i64 %27 to i16
  %29 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 32
  %30 = tail call i16 @llvm.smax.i16(i16 %28, i16 1)
  %31 = zext nneg i16 %30 to i32
  store i32 %31, ptr %29, align 4
  br label %32

32:                                               ; preds = %26, %13
  %33 = load ptr, ptr %5, align 8, !tbaa !22
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %33) #15
  ret void
}

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @font_paste_wchar(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr noundef readonly %3) unnamed_addr #1 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 53
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  %11 = call i32 @BKE_vfont_select_get(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %5) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load i32, ptr %5, align 4, !tbaa !86
  %15 = load i32, ptr %6, align 4, !tbaa !86
  %16 = sub nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  br label %19

18:                                               ; preds = %4
  store i32 0, ptr %5, align 4, !tbaa !86
  store i32 0, ptr %6, align 4, !tbaa !86
  br label %19

19:                                               ; preds = %13, %18
  %20 = phi i64 [ %17, %13 ], [ 0, %18 ]
  %21 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !77
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %2
  %25 = sub i64 %24, %20
  %26 = icmp ult i64 %25, 32767
  br i1 %26, label %27, label %73

27:                                               ; preds = %19
  %28 = call fastcc i32 @kill_selection(ptr noundef nonnull %0, i32 noundef 0) #16
  %29 = icmp eq i64 %2, 0
  br i1 %29, label %73, label %30

30:                                               ; preds = %27
  %31 = load i32, ptr %21, align 8, !tbaa !77
  %32 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 7
  %33 = load i32, ptr %32, align 4, !tbaa !81
  %34 = sext i32 %33 to i64
  %35 = sub i32 %31, %33
  %36 = shl i32 %35, 2
  %37 = add i32 %36, 4
  %38 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !85
  %40 = getelementptr inbounds i32, ptr %39, i64 %34
  %41 = getelementptr inbounds i32, ptr %40, i64 %2
  %42 = sext i32 %37 to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %41, ptr align 4 %40, i64 %42, i1 false)
  %43 = load ptr, ptr %38, align 8, !tbaa !85
  %44 = load i32, ptr %32, align 4, !tbaa !81
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, ptr %43, i64 %45
  %47 = shl nsw i64 %2, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %46, ptr align 4 %1, i64 %47, i1 false)
  %48 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !83
  %50 = load i32, ptr %32, align 4, !tbaa !81
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.CharInfo, ptr %49, i64 %51
  %53 = getelementptr inbounds %struct.CharInfo, ptr %52, i64 %2
  %54 = load i32, ptr %21, align 8, !tbaa !77
  %55 = sub i32 %54, %50
  %56 = add i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = shl nsw i64 %57, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %53, ptr align 2 %52, i64 %58, i1 false)
  %59 = icmp eq ptr %3, null
  %60 = load ptr, ptr %48, align 8, !tbaa !83
  %61 = load i32, ptr %32, align 4, !tbaa !81
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.CharInfo, ptr %60, i64 %62
  %64 = shl nsw i64 %2, 3
  br i1 %59, label %66, label %65

65:                                               ; preds = %30
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %63, ptr nonnull align 2 %3, i64 %64, i1 false)
  br label %67

66:                                               ; preds = %30
  call void @llvm.memset.p0.i64(ptr align 2 %63, i8 0, i64 %64, i1 false)
  br label %67

67:                                               ; preds = %66, %65
  %68 = trunc i64 %2 to i32
  %69 = load <2 x i32>, ptr %21, align 8, !tbaa !86
  %70 = insertelement <2 x i32> poison, i32 %68, i64 0
  %71 = shufflevector <2 x i32> %70, <2 x i32> poison, <2 x i32> zeroinitializer
  %72 = add <2 x i32> %69, %71
  store <2 x i32> %72, ptr %21, align 8, !tbaa !86
  br label %73

73:                                               ; preds = %19, %27, %67
  %74 = phi i8 [ 1, %67 ], [ 1, %27 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  ret i8 %74
}

; Function Attrs: optsize
declare i32 @BKE_vfont_select_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @kill_selection(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 53
  %8 = load ptr, ptr %7, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %9 = call i32 @BKE_vfont_select_get(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %65, label %11

11:                                               ; preds = %2
  %12 = icmp ne i32 %1, 0
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds %struct.EditFont, ptr %8, i64 0, i32 7
  %15 = load i32, ptr %14, align 4, !tbaa !81
  %16 = load i32, ptr %4, align 4, !tbaa !86
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = add nsw i32 %16, %13
  store i32 %19, ptr %14, align 4, !tbaa !81
  br label %20

20:                                               ; preds = %18, %11
  %21 = icmp eq i32 %9, -1
  %22 = and i1 %12, %21
  %23 = load i32, ptr %3, align 4, !tbaa !86
  br i1 %22, label %24, label %27

24:                                               ; preds = %20
  %25 = add nsw i32 %16, 1
  store i32 %25, ptr %4, align 4, !tbaa !86
  %26 = add nsw i32 %23, 1
  store i32 %26, ptr %3, align 4, !tbaa !86
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i32 [ %25, %24 ], [ %16, %20 ]
  %29 = phi i32 [ %26, %24 ], [ %23, %20 ]
  %30 = icmp eq i32 %1, 0
  %31 = zext i1 %30 to i32
  %32 = add nuw nsw i32 %31, %13
  %33 = add i32 %32, %29
  %34 = getelementptr inbounds %struct.EditFont, ptr %8, i64 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !77
  %36 = sext i32 %28 to i64
  %37 = add i32 %35, %13
  %38 = sub i32 %37, %28
  %39 = shl i32 %38, 2
  %40 = getelementptr inbounds %struct.EditFont, ptr %8, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !85
  %42 = getelementptr inbounds i32, ptr %41, i64 %36
  %43 = sext i32 %33 to i64
  %44 = getelementptr inbounds i32, ptr %41, i64 %43
  %45 = sext i32 %39 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %42, ptr align 4 %44, i64 %45, i1 false)
  %46 = getelementptr inbounds %struct.EditFont, ptr %8, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !83
  %48 = load i32, ptr %4, align 4, !tbaa !86
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.CharInfo, ptr %47, i64 %49
  %51 = getelementptr inbounds %struct.CharInfo, ptr %47, i64 %43
  %52 = load i32, ptr %34, align 8, !tbaa !77
  %53 = sub i32 %13, %48
  %54 = add i32 %53, %52
  %55 = sext i32 %54 to i64
  %56 = shl nsw i64 %55, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %50, ptr align 2 %51, i64 %56, i1 false)
  %57 = load i32, ptr %3, align 4, !tbaa !86
  %58 = load i32, ptr %4, align 4, !tbaa !86
  %59 = xor i32 %57, -1
  %60 = add i32 %58, %59
  %61 = load i32, ptr %34, align 8, !tbaa !77
  %62 = add i32 %60, %61
  store i32 %62, ptr %34, align 8, !tbaa !77
  %63 = getelementptr inbounds %struct.EditFont, ptr %8, i64 0, i32 9
  store i32 0, ptr %63, align 4, !tbaa !80
  %64 = getelementptr inbounds %struct.EditFont, ptr %8, i64 0, i32 8
  store i32 0, ptr %64, align 8, !tbaa !79
  br label %65

65:                                               ; preds = %27, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret i32 %9
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_vfont_to_curve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @paste_from_clipboard(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  %5 = call ptr @WM_clipboard_text_get(i8 noundef zeroext 0, ptr noundef nonnull %3) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.106) #15
  br label %20

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4, !tbaa !86
  %10 = icmp slt i32 %9, 32767
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = sext i32 %9 to i64
  %13 = call fastcc zeroext i8 @font_paste_utf8(ptr noundef %0, ptr noundef nonnull %5, i64 noundef %12) #16, !range !82
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  call fastcc void @text_update_edited(ptr noundef %0, ptr noundef %4, i32 noundef 0) #16
  br label %17

16:                                               ; preds = %11, %8
  call void @BKE_report(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.107) #15
  br label %17

17:                                               ; preds = %16, %15
  %18 = phi i32 [ 4, %15 ], [ 2, %16 ]
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !18
  call void %19(ptr noundef nonnull %5) #15
  br label %20

20:                                               ; preds = %17, %7
  %21 = phi i32 [ 2, %7 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret i32 %21
}

; Function Attrs: optsize
declare ptr @WM_clipboard_text_get(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_object_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_object_base_init_transform(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_object_where_is_calc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #13 {
  %3 = load float, ptr %1, align 4, !tbaa !39
  %4 = load float, ptr %0, align 4, !tbaa !39
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !39
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !39
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !39
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !39
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !39
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !39
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !39
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_vfont_builtin_get() local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_strlen_utf8_ex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_strcpy_rlen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @set_style(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #1 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 53
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %11 = call i32 @BKE_vfont_select_get(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %3
  %14 = load i32, ptr %4, align 4, !tbaa !86
  %15 = load i32, ptr %5, align 4, !tbaa !86
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %35, label %17

17:                                               ; preds = %13
  %18 = icmp eq i8 %2, 0
  %19 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 3
  %20 = trunc i32 %1 to i8
  %21 = xor i8 %20, -1
  %22 = sext i32 %14 to i64
  %23 = add i32 %15, 1
  %24 = load ptr, ptr %19, align 8, !tbaa !83
  br label %25

25:                                               ; preds = %17, %25
  %26 = phi i64 [ %22, %17 ], [ %32, %25 ]
  %27 = getelementptr inbounds %struct.CharInfo, ptr %24, i64 %26, i32 2
  %28 = load i8, ptr %27, align 2, !tbaa !134
  %29 = and i8 %28, %21
  %30 = or i8 %28, %20
  %31 = select i1 %18, i8 %30, i8 %29
  store i8 %31, ptr %27, align 2, !tbaa !134
  %32 = add nsw i64 %26, 1
  %33 = trunc i64 %32 to i32
  %34 = icmp eq i32 %23, %33
  br i1 %34, label %35, label %25, !llvm.loop !135

35:                                               ; preds = %25, %13
  %36 = load ptr, ptr %7, align 8, !tbaa !22
  call void @DAG_id_tag_update(ptr noundef %36, i16 noundef signext 0) #15
  %37 = load ptr, ptr %7, align 8, !tbaa !22
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %37) #15
  br label %38

38:                                               ; preds = %3, %35
  %39 = phi i32 [ 4, %35 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret i32 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_selection(ptr noundef %0) unnamed_addr #1 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  %4 = call i32 @BKE_vfont_select_get(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %41, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 53
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = load ptr, ptr %10, align 8, !tbaa !105
  %12 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !85
  %14 = load i32, ptr %2, align 4, !tbaa !86
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %13, i64 %15
  %17 = load i32, ptr %3, align 4, !tbaa !86
  %18 = sub i32 %17, %14
  %19 = add i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %11, ptr align 4 %16, i64 %21, i1 false)
  %22 = load ptr, ptr %10, align 8, !tbaa !105
  %23 = load i32, ptr %3, align 4, !tbaa !86
  %24 = load i32, ptr %2, align 4, !tbaa !86
  %25 = sub nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr i32, ptr %22, i64 %26
  %28 = getelementptr i32, ptr %27, i64 1
  store i32 0, ptr %28, align 4, !tbaa !86
  %29 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !106
  %31 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !83
  %33 = load i32, ptr %2, align 4, !tbaa !86
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.CharInfo, ptr %32, i64 %34
  %36 = load i32, ptr %3, align 4, !tbaa !86
  %37 = sub i32 %36, %33
  %38 = add i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = shl nsw i64 %39, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %30, ptr align 2 %35, i64 %40, i1 false)
  br label %41

41:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @paste_selection(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.Curve, ptr %4, i64 0, i32 53
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = tail call i64 @wcslen(ptr noundef %7) #17
  %9 = shl i64 %8, 32
  %10 = ashr exact i64 %9, 32
  %11 = getelementptr inbounds %struct.EditFont, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !106
  %13 = tail call fastcc zeroext i8 @font_paste_wchar(ptr noundef %0, ptr noundef %7, i64 noundef %10, ptr noundef %12) #16, !range !82
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  tail call void @BKE_report(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.119) #15
  br label %16

16:                                               ; preds = %2, %15
  %17 = phi i8 [ 0, %15 ], [ 1, %2 ]
  ret i8 %17
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @wcslen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @move_cursor(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #1 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 53
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = icmp eq i8 %2, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !79
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 7
  %18 = load i32, ptr %17, align 4, !tbaa !81
  %19 = add nsw i32 %18, 1
  %20 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 9
  store i32 %19, ptr %20, align 4, !tbaa !80
  store i32 %19, ptr %13, align 8, !tbaa !79
  br label %21

21:                                               ; preds = %16, %12, %3
  switch i32 %1, label %138 [
    i32 0, label %33
    i32 1, label %22
    i32 4, label %71
    i32 5, label %80
    i32 2, label %89
    i32 3, label %93
    i32 6, label %100
    i32 7, label %97
    i32 8, label %98
    i32 9, label %99
  ]

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 3
  %24 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 7
  %25 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !77
  %27 = load i32, ptr %24, align 4, !tbaa !81
  %28 = icmp slt i32 %27, %26
  br i1 %28, label %29, label %100

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !85
  %32 = sext i32 %27 to i64
  br label %57

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 3
  %35 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 7
  %36 = load i32, ptr %35, align 4, !tbaa !81
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %100

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !85
  %41 = zext nneg i32 %36 to i64
  br label %42

42:                                               ; preds = %38, %54
  %43 = phi i64 [ %41, %38 ], [ %44, %54 ]
  %44 = add nsw i64 %43, -1
  %45 = getelementptr inbounds i32, ptr %40, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !86
  %47 = icmp eq i32 %46, 10
  br i1 %47, label %100, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %34, align 8, !tbaa !83
  %50 = getelementptr inbounds %struct.CharInfo, ptr %49, i64 %44, i32 2
  %51 = load i8, ptr %50, align 2, !tbaa !134
  %52 = and i8 %51, 8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %100

54:                                               ; preds = %48
  %55 = trunc i64 %44 to i32
  store i32 %55, ptr %35, align 4, !tbaa !81
  %56 = icmp ugt i64 %43, 1
  br i1 %56, label %42, label %100, !llvm.loop !136

57:                                               ; preds = %29, %67
  %58 = phi i64 [ %32, %29 ], [ %68, %67 ]
  %59 = getelementptr inbounds i32, ptr %31, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !86
  switch i32 %60, label %61 [
    i32 0, label %100
    i32 10, label %100
  ]

61:                                               ; preds = %57
  %62 = load ptr, ptr %23, align 8, !tbaa !83
  %63 = getelementptr inbounds %struct.CharInfo, ptr %62, i64 %58, i32 2
  %64 = load i8, ptr %63, align 2, !tbaa !134
  %65 = and i8 %64, 8
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %100

67:                                               ; preds = %61
  %68 = add nsw i64 %58, 1
  %69 = trunc i64 %68 to i32
  store i32 %69, ptr %24, align 4, !tbaa !81
  %70 = icmp eq i32 %26, %69
  br i1 %70, label %100, label %57, !llvm.loop !137

71:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %72 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 7
  %73 = load i32, ptr %72, align 4, !tbaa !81
  store i32 %73, ptr %4, align 4, !tbaa !86
  %74 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !85
  %76 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 6
  %77 = load i32, ptr %76, align 8, !tbaa !77
  %78 = sext i32 %77 to i64
  call void @BLI_str_cursor_step_wchar(ptr noundef %75, i64 noundef %78, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 1, i8 noundef zeroext 1) #15
  %79 = load i32, ptr %4, align 4, !tbaa !86
  store i32 %79, ptr %72, align 4, !tbaa !81
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  br label %100

80:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %81 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 7
  %82 = load i32, ptr %81, align 4, !tbaa !81
  store i32 %82, ptr %5, align 4, !tbaa !86
  %83 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !85
  %85 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 6
  %86 = load i32, ptr %85, align 8, !tbaa !77
  %87 = sext i32 %86 to i64
  call void @BLI_str_cursor_step_wchar(ptr noundef %84, i64 noundef %87, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 1, i8 noundef zeroext 1) #15
  %88 = load i32, ptr %5, align 4, !tbaa !86
  store i32 %88, ptr %81, align 4, !tbaa !81
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  br label %100

89:                                               ; preds = %21
  %90 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 7
  %91 = load i32, ptr %90, align 4, !tbaa !81
  %92 = add nsw i32 %91, -1
  store i32 %92, ptr %90, align 4, !tbaa !81
  br label %100

93:                                               ; preds = %21
  %94 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 7
  %95 = load i32, ptr %94, align 4, !tbaa !81
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr %94, align 4, !tbaa !81
  br label %100

97:                                               ; preds = %21
  br label %100

98:                                               ; preds = %21
  br label %100

99:                                               ; preds = %21
  br label %100

100:                                              ; preds = %67, %61, %57, %57, %54, %42, %48, %22, %33, %21, %99, %98, %97, %93, %89, %80, %71
  %101 = phi i1 [ false, %71 ], [ false, %80 ], [ false, %89 ], [ false, %93 ], [ false, %97 ], [ false, %98 ], [ false, %99 ], [ true, %21 ], [ false, %33 ], [ false, %22 ], [ false, %48 ], [ false, %42 ], [ false, %54 ], [ false, %57 ], [ false, %57 ], [ false, %61 ], [ false, %67 ]
  %102 = phi i1 [ false, %71 ], [ false, %80 ], [ false, %89 ], [ false, %93 ], [ true, %97 ], [ false, %98 ], [ false, %99 ], [ false, %21 ], [ false, %33 ], [ false, %22 ], [ false, %48 ], [ false, %42 ], [ false, %54 ], [ false, %57 ], [ false, %57 ], [ false, %61 ], [ false, %67 ]
  %103 = phi i1 [ false, %71 ], [ false, %80 ], [ false, %89 ], [ false, %93 ], [ false, %97 ], [ true, %98 ], [ false, %99 ], [ false, %21 ], [ false, %33 ], [ false, %22 ], [ false, %48 ], [ false, %42 ], [ false, %54 ], [ false, %57 ], [ false, %57 ], [ false, %61 ], [ false, %67 ]
  %104 = phi i1 [ false, %71 ], [ false, %80 ], [ false, %89 ], [ false, %93 ], [ false, %97 ], [ false, %98 ], [ true, %99 ], [ false, %21 ], [ false, %33 ], [ false, %22 ], [ false, %48 ], [ false, %42 ], [ false, %54 ], [ false, %57 ], [ false, %57 ], [ false, %61 ], [ false, %67 ]
  %105 = phi i32 [ 1, %71 ], [ 1, %80 ], [ 1, %89 ], [ 1, %93 ], [ 3, %97 ], [ %1, %98 ], [ %1, %99 ], [ 2, %21 ], [ 1, %33 ], [ 1, %22 ], [ 1, %48 ], [ 1, %42 ], [ 1, %54 ], [ 1, %57 ], [ 1, %57 ], [ 1, %61 ], [ 1, %67 ]
  %106 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 7
  %107 = load i32, ptr %106, align 4, !tbaa !81
  %108 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 6
  %109 = load i32, ptr %108, align 8, !tbaa !77
  %110 = icmp sgt i32 %107, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %100
  %112 = icmp sgt i32 %107, 32765
  br i1 %112, label %115, label %113

113:                                              ; preds = %111
  %114 = icmp slt i32 %107, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %113, %111, %100
  %116 = phi i32 [ %109, %100 ], [ 32766, %111 ], [ 0, %113 ]
  store i32 %116, ptr %106, align 4, !tbaa !81
  br label %117

117:                                              ; preds = %115, %113
  %118 = or i1 %101, %102
  %119 = or i1 %118, %103
  %120 = or i1 %119, %104
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = call ptr @CTX_data_main(ptr noundef %0) #15
  %123 = call zeroext i8 @BKE_vfont_to_curve(ptr noundef %122, ptr noundef %6, i32 noundef %105) #15
  br label %124

124:                                              ; preds = %117, %121
  %125 = phi i32 [ 1, %121 ], [ %105, %117 ]
  br i1 %11, label %126, label %134

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 8
  %128 = load i32, ptr %127, align 8, !tbaa !79
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %126
  %131 = call ptr @CTX_data_main(ptr noundef %0) #15
  %132 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 9
  store i32 0, ptr %132, align 4, !tbaa !80
  store i32 0, ptr %127, align 8, !tbaa !79
  %133 = call zeroext i8 @BKE_vfont_to_curve(ptr noundef %131, ptr noundef %6, i32 noundef 10) #15
  br label %137

134:                                              ; preds = %124
  %135 = load i32, ptr %106, align 4, !tbaa !81
  %136 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 9
  store i32 %135, ptr %136, align 4, !tbaa !80
  br label %137

137:                                              ; preds = %130, %126, %134
  call fastcc void @text_update_edited(ptr noundef %0, ptr noundef %6, i32 noundef %125) #16
  br label %138

138:                                              ; preds = %21, %137
  %139 = phi i32 [ 4, %137 ], [ 2, %21 ]
  ret i32 %139
}

; Function Attrs: optsize
declare void @BLI_str_cursor_step_wchar(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_strlen_utf8(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @findaccent(i8 noundef zeroext %0, i32 noundef %1) unnamed_addr #6 {
  switch i8 %0, label %100 [
    i8 97, label %3
    i8 99, label %11
    i8 101, label %14
    i8 105, label %18
    i8 110, label %22
    i8 111, label %24
    i8 114, label %34
    i8 115, label %36
    i8 116, label %38
    i8 117, label %40
    i8 121, label %44
    i8 65, label %48
    i8 67, label %55
    i8 69, label %57
    i8 73, label %61
    i8 78, label %65
    i8 79, label %67
    i8 85, label %74
    i8 89, label %78
    i8 49, label %80
    i8 51, label %84
    i8 58, label %86
    i8 45, label %88
    i8 124, label %94
    i8 61, label %98
  ]

3:                                                ; preds = %2
  switch i32 %1, label %107 [
    i32 96, label %108
    i32 39, label %4
    i32 94, label %5
    i32 126, label %6
    i32 34, label %7
    i32 111, label %8
    i32 101, label %9
    i32 45, label %10
  ]

4:                                                ; preds = %3
  br label %108

5:                                                ; preds = %3
  br label %108

6:                                                ; preds = %3
  br label %108

7:                                                ; preds = %3
  br label %108

8:                                                ; preds = %3
  br label %108

9:                                                ; preds = %3
  br label %108

10:                                               ; preds = %3
  br label %108

11:                                               ; preds = %2
  switch i32 %1, label %107 [
    i32 44, label %108
    i32 124, label %12
    i32 111, label %13
  ]

12:                                               ; preds = %11
  br label %108

13:                                               ; preds = %11
  br label %108

14:                                               ; preds = %2
  switch i32 %1, label %107 [
    i32 96, label %108
    i32 39, label %15
    i32 94, label %16
    i32 34, label %17
  ]

15:                                               ; preds = %14
  br label %108

16:                                               ; preds = %14
  br label %108

17:                                               ; preds = %14
  br label %108

18:                                               ; preds = %2
  switch i32 %1, label %107 [
    i32 96, label %108
    i32 39, label %19
    i32 94, label %20
    i32 34, label %21
  ]

19:                                               ; preds = %18
  br label %108

20:                                               ; preds = %18
  br label %108

21:                                               ; preds = %18
  br label %108

22:                                               ; preds = %2
  %23 = icmp eq i32 %1, 126
  br i1 %23, label %108, label %107

24:                                               ; preds = %2
  switch i32 %1, label %107 [
    i32 96, label %108
    i32 39, label %25
    i32 94, label %26
    i32 126, label %27
    i32 34, label %28
    i32 47, label %29
    i32 45, label %30
    i32 101, label %31
    i32 99, label %32
    i32 114, label %33
  ]

25:                                               ; preds = %24
  br label %108

26:                                               ; preds = %24
  br label %108

27:                                               ; preds = %24
  br label %108

28:                                               ; preds = %24
  br label %108

29:                                               ; preds = %24
  br label %108

30:                                               ; preds = %24
  br label %108

31:                                               ; preds = %24
  br label %108

32:                                               ; preds = %24
  br label %108

33:                                               ; preds = %24
  br label %108

34:                                               ; preds = %2
  %35 = icmp eq i32 %1, 111
  br i1 %35, label %108, label %107

36:                                               ; preds = %2
  %37 = icmp eq i32 %1, 115
  br i1 %37, label %108, label %107

38:                                               ; preds = %2
  %39 = icmp eq i32 %1, 109
  br i1 %39, label %108, label %107

40:                                               ; preds = %2
  switch i32 %1, label %107 [
    i32 96, label %108
    i32 39, label %41
    i32 94, label %42
    i32 34, label %43
  ]

41:                                               ; preds = %40
  br label %108

42:                                               ; preds = %40
  br label %108

43:                                               ; preds = %40
  br label %108

44:                                               ; preds = %2
  %45 = icmp eq i32 %1, 34
  %46 = sext i1 %45 to i8
  %47 = icmp eq i32 %1, 39
  br i1 %47, label %108, label %104

48:                                               ; preds = %2
  switch i32 %1, label %107 [
    i32 96, label %108
    i32 39, label %49
    i32 94, label %50
    i32 126, label %51
    i32 34, label %52
    i32 111, label %53
    i32 101, label %54
  ]

49:                                               ; preds = %48
  br label %108

50:                                               ; preds = %48
  br label %108

51:                                               ; preds = %48
  br label %108

52:                                               ; preds = %48
  br label %108

53:                                               ; preds = %48
  br label %108

54:                                               ; preds = %48
  br label %108

55:                                               ; preds = %2
  %56 = icmp eq i32 %1, 44
  br i1 %56, label %108, label %107

57:                                               ; preds = %2
  switch i32 %1, label %107 [
    i32 96, label %108
    i32 39, label %58
    i32 94, label %59
    i32 34, label %60
  ]

58:                                               ; preds = %57
  br label %108

59:                                               ; preds = %57
  br label %108

60:                                               ; preds = %57
  br label %108

61:                                               ; preds = %2
  switch i32 %1, label %107 [
    i32 96, label %108
    i32 39, label %62
    i32 94, label %63
    i32 34, label %64
  ]

62:                                               ; preds = %61
  br label %108

63:                                               ; preds = %61
  br label %108

64:                                               ; preds = %61
  br label %108

65:                                               ; preds = %2
  %66 = icmp eq i32 %1, 126
  br i1 %66, label %108, label %107

67:                                               ; preds = %2
  switch i32 %1, label %107 [
    i32 96, label %108
    i32 39, label %68
    i32 94, label %69
    i32 126, label %70
    i32 34, label %71
    i32 47, label %72
    i32 101, label %73
  ]

68:                                               ; preds = %67
  br label %108

69:                                               ; preds = %67
  br label %108

70:                                               ; preds = %67
  br label %108

71:                                               ; preds = %67
  br label %108

72:                                               ; preds = %67
  br label %108

73:                                               ; preds = %67
  br label %108

74:                                               ; preds = %2
  switch i32 %1, label %107 [
    i32 96, label %108
    i32 39, label %75
    i32 94, label %76
    i32 34, label %77
  ]

75:                                               ; preds = %74
  br label %108

76:                                               ; preds = %74
  br label %108

77:                                               ; preds = %74
  br label %108

78:                                               ; preds = %2
  %79 = icmp eq i32 %1, 39
  br i1 %79, label %108, label %107

80:                                               ; preds = %2
  %81 = icmp eq i32 %1, 52
  %82 = select i1 %81, i8 -68, i8 0
  %83 = icmp eq i32 %1, 50
  br i1 %83, label %108, label %104

84:                                               ; preds = %2
  %85 = icmp eq i32 %1, 52
  br i1 %85, label %108, label %107

86:                                               ; preds = %2
  %87 = icmp eq i32 %1, 45
  br i1 %87, label %108, label %107

88:                                               ; preds = %2
  %89 = icmp eq i32 %1, 58
  %90 = select i1 %89, i8 -9, i8 0
  %91 = icmp eq i32 %1, 124
  %92 = select i1 %91, i8 -121, i8 %90
  %93 = icmp eq i32 %1, 43
  br i1 %93, label %108, label %104

94:                                               ; preds = %2
  %95 = icmp eq i32 %1, 45
  %96 = select i1 %95, i8 -121, i8 0
  %97 = icmp eq i32 %1, 61
  br i1 %97, label %108, label %104

98:                                               ; preds = %2
  %99 = icmp eq i32 %1, 124
  br i1 %99, label %108, label %107

100:                                              ; preds = %2
  %101 = icmp eq i8 %0, 43
  %102 = icmp eq i32 %1, 45
  %103 = and i1 %101, %102
  br i1 %103, label %108, label %107

104:                                              ; preds = %88, %94, %80, %44
  %105 = phi i8 [ %46, %44 ], [ %82, %80 ], [ %96, %94 ], [ %92, %88 ]
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %74, %67, %61, %57, %48, %40, %24, %18, %14, %11, %3, %100, %98, %86, %84, %78, %65, %55, %38, %36, %34, %22, %104
  br label %108

108:                                              ; preds = %88, %94, %80, %44, %100, %98, %86, %84, %78, %65, %55, %38, %36, %34, %22, %74, %67, %61, %57, %48, %40, %24, %18, %14, %11, %3, %77, %76, %75, %73, %72, %71, %70, %69, %68, %64, %63, %62, %60, %59, %58, %54, %53, %52, %51, %50, %49, %43, %42, %41, %33, %32, %31, %30, %29, %28, %27, %26, %25, %21, %20, %19, %17, %16, %15, %13, %12, %10, %9, %8, %7, %6, %5, %4, %104, %107
  %109 = phi i8 [ %0, %107 ], [ %105, %104 ], [ -39, %74 ], [ -46, %67 ], [ -52, %61 ], [ -56, %57 ], [ -64, %48 ], [ -7, %40 ], [ -14, %24 ], [ -20, %18 ], [ -24, %14 ], [ -25, %11 ], [ -32, %3 ], [ -36, %77 ], [ -37, %76 ], [ -38, %75 ], [ -115, %73 ], [ -40, %72 ], [ -42, %71 ], [ -43, %70 ], [ -44, %69 ], [ -45, %68 ], [ -49, %64 ], [ -50, %63 ], [ -51, %62 ], [ -53, %60 ], [ -54, %59 ], [ -55, %58 ], [ -58, %54 ], [ -59, %53 ], [ -60, %52 ], [ -61, %51 ], [ -62, %50 ], [ -63, %49 ], [ -4, %43 ], [ -5, %42 ], [ -6, %41 ], [ -82, %33 ], [ -87, %32 ], [ -113, %31 ], [ -70, %30 ], [ -8, %29 ], [ -10, %28 ], [ -11, %27 ], [ -12, %26 ], [ -13, %25 ], [ -17, %21 ], [ -18, %20 ], [ -19, %19 ], [ -21, %17 ], [ -22, %16 ], [ -23, %15 ], [ -87, %13 ], [ -94, %12 ], [ -86, %10 ], [ -26, %9 ], [ -27, %8 ], [ -28, %7 ], [ -29, %6 ], [ -30, %5 ], [ -31, %4 ], [ -15, %22 ], [ -82, %34 ], [ -89, %36 ], [ -103, %38 ], [ -57, %55 ], [ -47, %65 ], [ -35, %78 ], [ -66, %84 ], [ -9, %86 ], [ -120, %98 ], [ -79, %100 ], [ -3, %44 ], [ -67, %80 ], [ -120, %94 ], [ -79, %88 ]
  ret i8 %109
}

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_case(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.Curve, ptr %7, i64 0, i32 53
  %9 = load ptr, ptr %8, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %10 = call i32 @BKE_vfont_select_get(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %59, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr %4, align 4, !tbaa !86
  %14 = load i32, ptr %3, align 4, !tbaa !86
  %15 = add i32 %13, 1
  %16 = sub i32 %15, %14
  %17 = getelementptr inbounds %struct.EditFont, ptr %9, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %12
  %21 = sext i32 %14 to i64
  %22 = getelementptr inbounds i32, ptr %18, i64 %21
  br label %23

23:                                               ; preds = %20, %31
  %24 = phi i32 [ %32, %31 ], [ %16, %20 ]
  %25 = phi ptr [ %33, %31 ], [ %22, %20 ]
  %26 = load i32, ptr %25, align 4, !tbaa !86
  %27 = add i32 %26, -97
  %28 = icmp ult i32 %27, 26
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = add nsw i32 %26, -32
  store i32 %30, ptr %25, align 4, !tbaa !86
  br label %31

31:                                               ; preds = %29, %23
  %32 = add nsw i32 %24, -1
  %33 = getelementptr inbounds i32, ptr %25, i64 1
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %23, !llvm.loop !138

35:                                               ; preds = %31, %12
  %36 = icmp eq i32 %1, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %35
  %38 = load i32, ptr %4, align 4, !tbaa !86
  %39 = load i32, ptr %3, align 4, !tbaa !86
  %40 = add i32 %38, 1
  %41 = sub i32 %40, %39
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %37
  %44 = sext i32 %39 to i64
  %45 = getelementptr inbounds i32, ptr %18, i64 %44
  br label %46

46:                                               ; preds = %43, %54
  %47 = phi i32 [ %55, %54 ], [ %41, %43 ]
  %48 = phi ptr [ %56, %54 ], [ %45, %43 ]
  %49 = load i32, ptr %48, align 4, !tbaa !86
  %50 = add i32 %49, -65
  %51 = icmp ult i32 %50, 26
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = or disjoint i32 %49, 32
  store i32 %53, ptr %48, align 4, !tbaa !86
  br label %54

54:                                               ; preds = %52, %46
  %55 = add nsw i32 %47, -1
  %56 = getelementptr inbounds i32, ptr %48, i64 1
  %57 = icmp eq i32 %55, 0
  br i1 %57, label %58, label %46, !llvm.loop !139

58:                                               ; preds = %54, %37, %35
  call fastcc void @text_update_edited(ptr noundef %0, ptr noundef %5, i32 noundef 0) #16
  br label %59

59:                                               ; preds = %58, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret void
}

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_vfont_load(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @font_ui_template_init(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !18
  %4 = tail call ptr %3(i64 noundef 32, ptr noundef nonnull @.str.153) #15
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %4, ptr %5, align 8, !tbaa !110
  %6 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %4, i64 0, i32 1
  tail call void @uiIDContextProperty(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %6) #15
  ret void
}

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_pointer_set(ptr noundef, ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiIDContextProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_vfont_is_builtin(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #14

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize willreturn memory(read) }
attributes #18 = { nounwind }
attributes #19 = { nounwind optsize willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 24}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 72}
!17 = !{!6, !12, i64 184}
!18 = !{!7, !7, i64 0}
!19 = !{!8, !8, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !7, i64 296}
!23 = !{!"Object", !24, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !25, i64 140, !25, i64 144, !25, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !26, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !25, i64 432, !25, i64 436, !7, i64 440, !7, i64 448, !25, i64 456, !25, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !27, i64 616, !27, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !25, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !25, i64 968, !25, i64 972, !25, i64 976, !25, i64 980, !25, i64 984, !27, i64 988, !27, i64 992, !27, i64 996, !27, i64 1000, !27, i64 1004, !27, i64 1008, !27, i64 1012, !27, i64 1016, !27, i64 1020, !27, i64 1024, !27, i64 1028, !27, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !27, i64 1048, !27, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !27, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !25, i64 1144, !25, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !27, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !28, i64 1304, !28, i64 1312, !25, i64 1320, !25, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!24 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !25, i64 100, !25, i64 104, !25, i64 108, !7, i64 112}
!25 = !{!"int", !8, i64 0}
!26 = !{!"bAnimVizSettings", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !25, i64 32, !25, i64 36, !25, i64 40, !25, i64 44}
!27 = !{!"float", !8, i64 0}
!28 = !{!"long", !8, i64 0}
!29 = !{!6, !7, i64 48}
!30 = !{!31, !7, i64 112}
!31 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!32 = !{!31, !7, i64 120}
!33 = !{i32 2, i32 5}
!34 = !{!35, !7, i64 136}
!35 = !{!"Text", !24, i64 0, !7, i64 120, !25, i64 128, !25, i64 132, !10, i64 136, !7, i64 152, !7, i64 160, !25, i64 168, !25, i64 172, !7, i64 176, !25, i64 184, !25, i64 188, !7, i64 192, !36, i64 200}
!36 = !{!"double", !8, i64 0}
!37 = !{!38, !7, i64 16}
!38 = !{!"TextLine", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !25, i64 32, !25, i64 36}
!39 = !{!27, !27, i64 0}
!40 = !{!38, !7, i64 0}
!41 = distinct !{!41, !21}
!42 = !{!43, !7, i64 168}
!43 = !{!"Scene", !24, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !25, i64 232, !25, i64 236, !25, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !44, i64 280, !53, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !25, i64 4380, !10, i64 4384, !54, i64 4400, !55, i64 4416, !58, i64 4600, !7, i64 4608, !59, i64 4616, !7, i64 4640, !28, i64 4648, !28, i64 4656, !46, i64 4664, !47, i64 4824, !60, i64 4888, !7, i64 4952}
!44 = !{!"RenderData", !45, i64 0, !7, i64 248, !7, i64 256, !48, i64 264, !49, i64 328, !25, i64 400, !25, i64 404, !25, i64 408, !27, i64 412, !25, i64 416, !25, i64 420, !25, i64 424, !25, i64 428, !12, i64 432, !12, i64 434, !27, i64 436, !27, i64 440, !27, i64 444, !27, i64 448, !27, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !25, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !25, i64 484, !25, i64 488, !12, i64 492, !12, i64 494, !25, i64 496, !25, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !25, i64 516, !25, i64 520, !25, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !50, i64 544, !50, i64 560, !51, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !27, i64 612, !27, i64 616, !27, i64 620, !27, i64 624, !25, i64 628, !27, i64 632, !27, i64 636, !27, i64 640, !27, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !27, i64 660, !27, i64 664, !12, i64 668, !12, i64 670, !27, i64 672, !27, i64 676, !8, i64 680, !25, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !25, i64 2520, !12, i64 2524, !12, i64 2526, !27, i64 2528, !27, i64 2532, !12, i64 2536, !12, i64 2538, !27, i64 2540, !12, i64 2544, !12, i64 2546, !25, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !27, i64 2560, !27, i64 2564, !7, i64 2568, !25, i64 2576, !27, i64 2580, !8, i64 2584, !52, i64 2616, !25, i64 3976, !25, i64 3980}
!45 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !27, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !46, i64 24, !47, i64 184}
!46 = !{!"ColorManagedViewSettings", !25, i64 0, !25, i64 4, !8, i64 8, !8, i64 72, !27, i64 136, !27, i64 140, !7, i64 144, !7, i64 152}
!47 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!48 = !{!"QuicktimeCodecSettings", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20, !25, i64 24, !25, i64 28, !25, i64 32, !25, i64 36, !25, i64 40, !25, i64 44, !12, i64 48, !12, i64 50, !25, i64 52, !25, i64 56, !25, i64 60}
!49 = !{!"FFMpegCodecData", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20, !25, i64 24, !25, i64 28, !27, i64 32, !25, i64 36, !25, i64 40, !25, i64 44, !25, i64 48, !25, i64 52, !25, i64 56, !25, i64 60, !7, i64 64}
!50 = !{!"rctf", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12}
!51 = !{!"rcti", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12}
!52 = !{!"BakeData", !45, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !27, i64 1280, !27, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!53 = !{!"AudioData", !25, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !25, i64 16, !12, i64 20, !12, i64 22, !27, i64 24, !27, i64 28}
!54 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!55 = !{!"GameData", !54, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !56, i64 40, !12, i64 64, !12, i64 66, !27, i64 68, !57, i64 72, !27, i64 128, !27, i64 132, !25, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !27, i64 164, !27, i64 168, !27, i64 172, !27, i64 176, !27, i64 180}
!56 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !27, i64 8, !27, i64 12, !7, i64 16}
!57 = !{!"RecastData", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !27, i64 16, !27, i64 20, !27, i64 24, !27, i64 28, !27, i64 32, !27, i64 36, !25, i64 40, !27, i64 44, !27, i64 48, !12, i64 52, !12, i64 54}
!58 = !{!"UnitSettings", !27, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!59 = !{!"PhysicsSettings", !8, i64 0, !25, i64 12, !25, i64 16, !25, i64 20}
!60 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!61 = !{!62, !7, i64 448}
!62 = !{!"Curve", !24, i64 0, !7, i64 120, !7, i64 128, !10, i64 136, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !8, i64 208, !8, i64 220, !8, i64 232, !12, i64 244, !12, i64 246, !12, i64 248, !12, i64 250, !27, i64 252, !27, i64 256, !25, i64 260, !12, i64 264, !12, i64 266, !25, i64 268, !27, i64 272, !27, i64 276, !27, i64 280, !12, i64 284, !12, i64 286, !12, i64 288, !12, i64 290, !25, i64 292, !25, i64 296, !8, i64 300, !12, i64 304, !8, i64 306, !8, i64 307, !27, i64 308, !27, i64 312, !27, i64 316, !27, i64 320, !27, i64 324, !27, i64 328, !27, i64 332, !27, i64 336, !27, i64 340, !27, i64 344, !25, i64 348, !25, i64 352, !25, i64 356, !25, i64 360, !25, i64 364, !7, i64 368, !7, i64 376, !8, i64 384, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !25, i64 488, !25, i64 492, !7, i64 496, !63, i64 504, !27, i64 512, !27, i64 516, !27, i64 520, !8, i64 524, !8, i64 525, !8, i64 526}
!63 = !{!"CharInfo", !12, i64 0, !12, i64 2, !8, i64 4, !8, i64 5, !12, i64 6}
!64 = !{!65, !25, i64 100}
!65 = !{!"VFont", !24, i64 0, !8, i64 120, !7, i64 1144, !7, i64 1152, !7, i64 1160}
!66 = !{!28, !28, i64 0}
!67 = distinct !{!67, !21}
!68 = !{!62, !7, i64 368}
!69 = !{!62, !7, i64 496}
!70 = !{!62, !25, i64 364}
!71 = !{!62, !25, i64 360}
!72 = !{!62, !25, i64 348}
!73 = distinct !{!73, !21}
!74 = !{!6, !7, i64 88}
!75 = !{!62, !8, i64 508}
!76 = !{!62, !7, i64 376}
!77 = !{!78, !25, i64 72}
!78 = !{!"EditFont", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40, !25, i64 72, !25, i64 76, !25, i64 80, !25, i64 84}
!79 = !{!78, !25, i64 80}
!80 = !{!78, !25, i64 84}
!81 = !{!78, !25, i64 76}
!82 = !{i8 0, i8 2}
!83 = !{!78, !7, i64 24}
!84 = !{!63, !12, i64 0}
!85 = !{!78, !7, i64 16}
!86 = !{!25, !25, i64 0}
!87 = distinct !{!87, !21}
!88 = distinct !{!88, !21}
!89 = distinct !{!89, !21}
!90 = distinct !{!90, !21}
!91 = distinct !{!91, !21}
!92 = !{!93, !8, i64 42}
!93 = !{!"wmEvent", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !25, i64 20, !25, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !12, i64 44, !12, i64 46, !25, i64 48, !25, i64 52, !36, i64 56, !25, i64 64, !25, i64 68, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 106, !25, i64 108, !7, i64 112}
!94 = !{!93, !12, i64 76}
!95 = !{!93, !12, i64 72}
!96 = !{!93, !12, i64 74}
!97 = !{!93, !12, i64 16}
!98 = !{!93, !12, i64 18}
!99 = !{!62, !25, i64 488}
!100 = !{!62, !25, i64 492}
!101 = !{!62, !7, i64 480}
!102 = !{i64 0, i64 4, !39, i64 4, i64 4, !39, i64 8, i64 4, !39, i64 12, i64 4, !39}
!103 = distinct !{!103, !21}
!104 = distinct !{!104, !21}
!105 = !{!78, !7, i64 0}
!106 = !{!78, !7, i64 8}
!107 = !{!62, !25, i64 356}
!108 = distinct !{!108, !21}
!109 = !{!6, !7, i64 56}
!110 = !{!31, !7, i64 96}
!111 = !{!112, !7, i64 24}
!112 = !{!"PropertyPointerRNA", !113, i64 0, !7, i64 24}
!113 = !{!"PointerRNA", !114, i64 0, !7, i64 8, !7, i64 16}
!114 = !{!"", !7, i64 0}
!115 = !{i64 0, i64 8, !18, i64 8, i64 8, !18, i64 16, i64 8, !18}
!116 = !{!23, !12, i64 136}
!117 = !{!12, !12, i64 0}
!118 = !{!119, !7, i64 16}
!119 = !{!"ViewContext", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !8, i64 56}
!120 = !{!119, !7, i64 40}
!121 = !{!50, !27, i64 0}
!122 = !{!50, !27, i64 8}
!123 = !{!50, !27, i64 12}
!124 = !{!50, !27, i64 4}
!125 = !{!119, !7, i64 24}
!126 = distinct !{!126, !21}
!127 = distinct !{!127, !21}
!128 = distinct !{!128, !21}
!129 = distinct !{!129, !21}
!130 = distinct !{!130, !21}
!131 = !{!23, !25, i64 460}
!132 = !{!63, !12, i64 2}
!133 = !{!23, !25, i64 456}
!134 = !{!63, !8, i64 4}
!135 = distinct !{!135, !21}
!136 = distinct !{!136, !21}
!137 = distinct !{!137, !21}
!138 = distinct !{!138, !21}
!139 = distinct !{!139, !21}
