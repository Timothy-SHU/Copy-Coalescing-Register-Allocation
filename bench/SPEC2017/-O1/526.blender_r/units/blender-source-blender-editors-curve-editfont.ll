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
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.EditFont = type { ptr, ptr, ptr, ptr, ptr, [4 x [2 x float]], i32, i32, i32, i32 }
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @FONT_OT_insert_lorem(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @insert_lorem_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @insert_lorem_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %4 = load ptr, ptr @insert_lorem_exec.lastlorem, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @ED_lorem, ptr %4
  %7 = tail call i32 @rand() #12
  %8 = sdiv i32 %7, 357913941
  %9 = add nsw i32 %8, 4
  %10 = load i8, ptr %6, align 1, !tbaa !48
  %11 = icmp ne i8 %10, 0
  %12 = icmp ne i32 %9, 0
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %98

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %16 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 32
  br label %17

17:                                               ; preds = %14, %88
  %18 = phi i8 [ %10, %14 ], [ %94, %88 ]
  %19 = phi i32 [ %9, %14 ], [ %92, %88 ]
  %20 = phi ptr [ %6, %14 ], [ %93, %88 ]
  %21 = load ptr, ptr %15, align 8, !tbaa !49
  %22 = getelementptr inbounds %struct.Curve, ptr %21, i64 0, i32 53
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = getelementptr inbounds %struct.EditFont, ptr %23, i64 0, i32 6
  %25 = load i32, ptr %24, align 8, !tbaa !59
  %26 = icmp slt i32 %25, 32765
  br i1 %26, label %27, label %88

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.EditFont, ptr %23, i64 0, i32 7
  %29 = load i32, ptr %28, align 4, !tbaa !61
  %30 = icmp sgt i32 %25, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.EditFont, ptr %23, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !62
  %34 = sext i32 %25 to i64
  br label %35

35:                                               ; preds = %35, %31
  %36 = phi i64 [ %34, %31 ], [ %40, %35 ]
  %37 = getelementptr i32, ptr %33, i64 %36
  %38 = getelementptr i32, ptr %37, i64 -1
  %39 = load i32, ptr %38, align 4, !tbaa !63
  store i32 %39, ptr %37, align 4, !tbaa !63
  %40 = add nsw i64 %36, -1
  %41 = load i32, ptr %28, align 4, !tbaa !61
  %42 = sext i32 %41 to i64
  %43 = icmp sgt i64 %40, %42
  br i1 %43, label %35, label %44, !llvm.loop !64

44:                                               ; preds = %35, %27
  %45 = load i32, ptr %24, align 8, !tbaa !59
  %46 = load i32, ptr %28, align 4, !tbaa !61
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.EditFont, ptr %23, i64 0, i32 3
  %50 = sext i32 %45 to i64
  br label %51

51:                                               ; preds = %51, %48
  %52 = phi i64 [ %50, %48 ], [ %57, %51 ]
  %53 = load ptr, ptr %49, align 8, !tbaa !67
  %54 = getelementptr inbounds %struct.CharInfo, ptr %53, i64 %52
  %55 = getelementptr %struct.CharInfo, ptr %54, i64 -1
  %56 = load i64, ptr %55, align 2
  store i64 %56, ptr %54, align 2
  %57 = add nsw i64 %52, -1
  %58 = load i32, ptr %28, align 4, !tbaa !61
  %59 = sext i32 %58 to i64
  %60 = icmp sgt i64 %57, %59
  br i1 %60, label %51, label %61, !llvm.loop !68

61:                                               ; preds = %51, %44
  %62 = phi i32 [ %46, %44 ], [ %58, %51 ]
  %63 = zext i8 %18 to i32
  %64 = getelementptr inbounds %struct.EditFont, ptr %23, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !62
  %66 = sext i32 %62 to i64
  %67 = getelementptr inbounds i32, ptr %65, i64 %66
  store i32 %63, ptr %67, align 4, !tbaa !63
  %68 = getelementptr inbounds %struct.EditFont, ptr %23, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !67
  %70 = load i32, ptr %28, align 4, !tbaa !61
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.CharInfo, ptr %69, i64 %71
  %73 = getelementptr inbounds %struct.Curve, ptr %21, i64 0, i32 63
  %74 = load i64, ptr %73, align 8
  store i64 %74, ptr %72, align 2
  %75 = load ptr, ptr %68, align 8, !tbaa !67
  %76 = load i32, ptr %28, align 4, !tbaa !61
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.CharInfo, ptr %75, i64 %77
  store i16 0, ptr %78, align 2, !tbaa !69
  %79 = load i32, ptr %16, align 4, !tbaa !70
  %80 = trunc i32 %79 to i16
  %81 = getelementptr inbounds %struct.CharInfo, ptr %75, i64 %77, i32 1
  store i16 %80, ptr %81, align 2, !tbaa !71
  %82 = add nsw i32 %76, 1
  store i32 %82, ptr %28, align 4, !tbaa !61
  %83 = load i32, ptr %24, align 8, !tbaa !59
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr %24, align 8, !tbaa !59
  %85 = load ptr, ptr %64, align 8, !tbaa !62
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, ptr %85, i64 %86
  store i32 0, ptr %87, align 4, !tbaa !63
  br label %88

88:                                               ; preds = %17, %61
  %89 = load i8, ptr %20, align 1, !tbaa !48
  %90 = icmp eq i8 %89, 46
  %91 = sext i1 %90 to i32
  %92 = add nsw i32 %19, %91
  %93 = getelementptr inbounds i8, ptr %20, i64 1
  %94 = load i8, ptr %93, align 1, !tbaa !48
  %95 = icmp ne i8 %94, 0
  %96 = icmp ne i32 %92, 0
  %97 = select i1 %95, i1 %96, i1 false
  br i1 %97, label %17, label %98, !llvm.loop !72

98:                                               ; preds = %88, %2
  %99 = phi ptr [ %6, %2 ], [ %93, %88 ]
  %100 = getelementptr inbounds i8, ptr %99, i64 1
  store ptr %100, ptr @insert_lorem_exec.lastlorem, align 8, !tbaa !47
  %101 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %100) #13
  %102 = icmp ult i64 %101, 5
  %103 = select i1 %102, ptr @ED_lorem, ptr %100
  store ptr %103, ptr @insert_lorem_exec.lastlorem, align 8
  %104 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %105 = load ptr, ptr %104, align 8, !tbaa !49
  %106 = getelementptr inbounds %struct.Curve, ptr %105, i64 0, i32 53
  %107 = load ptr, ptr %106, align 8, !tbaa !56
  %108 = getelementptr inbounds %struct.EditFont, ptr %107, i64 0, i32 6
  %109 = load i32, ptr %108, align 8, !tbaa !59
  %110 = icmp slt i32 %109, 32765
  br i1 %110, label %111, label %172

111:                                              ; preds = %98
  %112 = getelementptr inbounds %struct.EditFont, ptr %107, i64 0, i32 7
  %113 = load i32, ptr %112, align 4, !tbaa !61
  %114 = icmp sgt i32 %109, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.EditFont, ptr %107, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !62
  %118 = sext i32 %109 to i64
  br label %119

119:                                              ; preds = %119, %115
  %120 = phi i64 [ %118, %115 ], [ %124, %119 ]
  %121 = getelementptr i32, ptr %117, i64 %120
  %122 = getelementptr i32, ptr %121, i64 -1
  %123 = load i32, ptr %122, align 4, !tbaa !63
  store i32 %123, ptr %121, align 4, !tbaa !63
  %124 = add nsw i64 %120, -1
  %125 = load i32, ptr %112, align 4, !tbaa !61
  %126 = sext i32 %125 to i64
  %127 = icmp sgt i64 %124, %126
  br i1 %127, label %119, label %128, !llvm.loop !64

128:                                              ; preds = %119, %111
  %129 = load i32, ptr %108, align 8, !tbaa !59
  %130 = load i32, ptr %112, align 4, !tbaa !61
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %145

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.EditFont, ptr %107, i64 0, i32 3
  %134 = sext i32 %129 to i64
  br label %135

135:                                              ; preds = %135, %132
  %136 = phi i64 [ %134, %132 ], [ %141, %135 ]
  %137 = load ptr, ptr %133, align 8, !tbaa !67
  %138 = getelementptr inbounds %struct.CharInfo, ptr %137, i64 %136
  %139 = getelementptr %struct.CharInfo, ptr %138, i64 -1
  %140 = load i64, ptr %139, align 2
  store i64 %140, ptr %138, align 2
  %141 = add nsw i64 %136, -1
  %142 = load i32, ptr %112, align 4, !tbaa !61
  %143 = sext i32 %142 to i64
  %144 = icmp sgt i64 %141, %143
  br i1 %144, label %135, label %145, !llvm.loop !68

145:                                              ; preds = %135, %128
  %146 = phi i32 [ %130, %128 ], [ %142, %135 ]
  %147 = getelementptr inbounds %struct.EditFont, ptr %107, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !62
  %149 = sext i32 %146 to i64
  %150 = getelementptr inbounds i32, ptr %148, i64 %149
  store i32 10, ptr %150, align 4, !tbaa !63
  %151 = getelementptr inbounds %struct.EditFont, ptr %107, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !67
  %153 = load i32, ptr %112, align 4, !tbaa !61
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.CharInfo, ptr %152, i64 %154
  %156 = getelementptr inbounds %struct.Curve, ptr %105, i64 0, i32 63
  %157 = load i64, ptr %156, align 8
  store i64 %157, ptr %155, align 2
  %158 = load ptr, ptr %151, align 8, !tbaa !67
  %159 = load i32, ptr %112, align 4, !tbaa !61
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.CharInfo, ptr %158, i64 %160
  store i16 0, ptr %161, align 2, !tbaa !69
  %162 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 32
  %163 = load i32, ptr %162, align 4, !tbaa !70
  %164 = trunc i32 %163 to i16
  %165 = getelementptr inbounds %struct.CharInfo, ptr %158, i64 %160, i32 1
  store i16 %164, ptr %165, align 2, !tbaa !71
  %166 = add nsw i32 %159, 1
  store i32 %166, ptr %112, align 4, !tbaa !61
  %167 = load i32, ptr %108, align 8, !tbaa !59
  %168 = add nsw i32 %167, 1
  store i32 %168, ptr %108, align 8, !tbaa !59
  %169 = load ptr, ptr %147, align 8, !tbaa !62
  %170 = sext i32 %168 to i64
  %171 = getelementptr inbounds i32, ptr %169, i64 %170
  store i32 0, ptr %171, align 4, !tbaa !63
  br label %172

172:                                              ; preds = %98, %145
  %173 = load ptr, ptr %104, align 8, !tbaa !49
  %174 = getelementptr inbounds %struct.Curve, ptr %173, i64 0, i32 53
  %175 = load ptr, ptr %174, align 8, !tbaa !56
  %176 = getelementptr inbounds %struct.EditFont, ptr %175, i64 0, i32 6
  %177 = load i32, ptr %176, align 8, !tbaa !59
  %178 = icmp slt i32 %177, 32765
  br i1 %178, label %179, label %240

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.EditFont, ptr %175, i64 0, i32 7
  %181 = load i32, ptr %180, align 4, !tbaa !61
  %182 = icmp sgt i32 %177, %181
  br i1 %182, label %183, label %196

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.EditFont, ptr %175, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !62
  %186 = sext i32 %177 to i64
  br label %187

187:                                              ; preds = %187, %183
  %188 = phi i64 [ %186, %183 ], [ %192, %187 ]
  %189 = getelementptr i32, ptr %185, i64 %188
  %190 = getelementptr i32, ptr %189, i64 -1
  %191 = load i32, ptr %190, align 4, !tbaa !63
  store i32 %191, ptr %189, align 4, !tbaa !63
  %192 = add nsw i64 %188, -1
  %193 = load i32, ptr %180, align 4, !tbaa !61
  %194 = sext i32 %193 to i64
  %195 = icmp sgt i64 %192, %194
  br i1 %195, label %187, label %196, !llvm.loop !64

196:                                              ; preds = %187, %179
  %197 = load i32, ptr %176, align 8, !tbaa !59
  %198 = load i32, ptr %180, align 4, !tbaa !61
  %199 = icmp sgt i32 %197, %198
  br i1 %199, label %200, label %213

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.EditFont, ptr %175, i64 0, i32 3
  %202 = sext i32 %197 to i64
  br label %203

203:                                              ; preds = %203, %200
  %204 = phi i64 [ %202, %200 ], [ %209, %203 ]
  %205 = load ptr, ptr %201, align 8, !tbaa !67
  %206 = getelementptr inbounds %struct.CharInfo, ptr %205, i64 %204
  %207 = getelementptr %struct.CharInfo, ptr %206, i64 -1
  %208 = load i64, ptr %207, align 2
  store i64 %208, ptr %206, align 2
  %209 = add nsw i64 %204, -1
  %210 = load i32, ptr %180, align 4, !tbaa !61
  %211 = sext i32 %210 to i64
  %212 = icmp sgt i64 %209, %211
  br i1 %212, label %203, label %213, !llvm.loop !68

213:                                              ; preds = %203, %196
  %214 = phi i32 [ %198, %196 ], [ %210, %203 ]
  %215 = getelementptr inbounds %struct.EditFont, ptr %175, i64 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !62
  %217 = sext i32 %214 to i64
  %218 = getelementptr inbounds i32, ptr %216, i64 %217
  store i32 10, ptr %218, align 4, !tbaa !63
  %219 = getelementptr inbounds %struct.EditFont, ptr %175, i64 0, i32 3
  %220 = load ptr, ptr %219, align 8, !tbaa !67
  %221 = load i32, ptr %180, align 4, !tbaa !61
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.CharInfo, ptr %220, i64 %222
  %224 = getelementptr inbounds %struct.Curve, ptr %173, i64 0, i32 63
  %225 = load i64, ptr %224, align 8
  store i64 %225, ptr %223, align 2
  %226 = load ptr, ptr %219, align 8, !tbaa !67
  %227 = load i32, ptr %180, align 4, !tbaa !61
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.CharInfo, ptr %226, i64 %228
  store i16 0, ptr %229, align 2, !tbaa !69
  %230 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 32
  %231 = load i32, ptr %230, align 4, !tbaa !70
  %232 = trunc i32 %231 to i16
  %233 = getelementptr inbounds %struct.CharInfo, ptr %226, i64 %228, i32 1
  store i16 %232, ptr %233, align 2, !tbaa !71
  %234 = add nsw i32 %227, 1
  store i32 %234, ptr %180, align 4, !tbaa !61
  %235 = load i32, ptr %176, align 8, !tbaa !59
  %236 = add nsw i32 %235, 1
  store i32 %236, ptr %176, align 8, !tbaa !59
  %237 = load ptr, ptr %215, align 8, !tbaa !62
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i32, ptr %237, i64 %238
  store i32 0, ptr %239, align 4, !tbaa !63
  br label %240

240:                                              ; preds = %172, %213
  %241 = load ptr, ptr %104, align 8, !tbaa !49
  tail call void @DAG_id_tag_update(ptr noundef %241, i16 noundef signext 0) #12
  %242 = load ptr, ptr %104, align 8, !tbaa !49
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %242) #12
  ret i32 4
}

declare i32 @ED_operator_editfont(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @FONT_OT_text_paste_from_file(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paste_from_file_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @paste_from_file_invoke, ptr %5, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2560, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 8, i16 noundef signext 0) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @paste_from_file_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = tail call ptr @RNA_string_get_alloc(ptr noundef %4, ptr noundef nonnull @.str.100, ptr noundef null, i32 noundef 0) #12
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !76
  %8 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %9 = tail call ptr @BLI_fopen(ptr noundef %5, ptr noundef nonnull @.str.101) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %7, i32 noundef 32, ptr noundef nonnull @.str.102, ptr noundef %5) #12
  br label %91

12:                                               ; preds = %2
  %13 = tail call i32 @fseek(ptr noundef nonnull %9, i64 noundef 0, i32 noundef 2)
  %14 = tail call ptr @__errno_location() #14
  store i32 0, ptr %14, align 4, !tbaa !63
  %15 = tail call i64 @ftell(ptr noundef nonnull %9)
  %16 = trunc i64 %15 to i32
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %87, label %18

18:                                               ; preds = %12
  %19 = icmp slt i32 %16, 32767
  br i1 %19, label %20, label %37

20:                                               ; preds = %18
  %21 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %22 = shl i64 %15, 32
  %23 = add i64 %22, 17179869184
  %24 = ashr exact i64 %23, 32
  %25 = tail call ptr %21(i64 noundef %24, ptr noundef nonnull @.str.103) #12
  %26 = tail call i32 @fseek(ptr noundef nonnull %9, i64 noundef 0, i32 noundef 0)
  store i32 0, ptr %14, align 4, !tbaa !63
  %27 = ashr exact i64 %22, 32
  %28 = tail call i64 @fread(ptr noundef %25, i64 noundef 1, i64 noundef %27, ptr noundef nonnull %9)
  %29 = and i64 %28, 4294967295
  %30 = icmp eq i64 %29, 4294967295
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %32(ptr noundef %25) #12
  br label %87

33:                                               ; preds = %20
  %34 = shl i64 %28, 32
  %35 = ashr exact i64 %34, 32
  %36 = getelementptr inbounds i8, ptr %25, i64 %35
  store i8 0, ptr %36, align 1, !tbaa !48
  br label %37

37:                                               ; preds = %33, %18
  %38 = phi ptr [ %25, %33 ], [ null, %18 ]
  %39 = phi i64 [ %28, %33 ], [ %15, %18 ]
  %40 = tail call i32 @fclose(ptr noundef nonnull %9)
  %41 = icmp eq ptr %38, null
  br i1 %41, label %82, label %42

42:                                               ; preds = %37
  %43 = shl i64 %39, 32
  %44 = ashr exact i64 %43, 32
  %45 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %46 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %47 = add nsw i64 %44, 1
  %48 = shl nsw i64 %47, 2
  %49 = tail call ptr %46(i64 noundef %48, ptr noundef nonnull @__func__.font_paste_utf8) #12
  %50 = tail call i64 @BLI_strncpy_wchar_from_utf8(ptr noundef %49, ptr noundef nonnull %38, i64 noundef %47) #12
  %51 = shl i64 %50, 32
  %52 = ashr exact i64 %51, 32
  %53 = tail call fastcc zeroext i8 @font_paste_wchar(ptr noundef %45, ptr noundef %49, i64 noundef %52, ptr noundef null), !range !77
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %54(ptr noundef %49) #12
  %55 = icmp eq i8 %53, 0
  br i1 %55, label %82, label %56

56:                                               ; preds = %42
  %57 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %58 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 19
  %59 = load ptr, ptr %58, align 8, !tbaa !49
  %60 = getelementptr inbounds %struct.Curve, ptr %59, i64 0, i32 53
  %61 = load ptr, ptr %60, align 8, !tbaa !56
  tail call void @DAG_id_tag_update(ptr noundef %59, i16 noundef signext 0) #12
  %62 = getelementptr inbounds %struct.Curve, ptr %59, i64 0, i32 63
  %63 = getelementptr inbounds %struct.EditFont, ptr %61, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !67
  %65 = getelementptr inbounds %struct.EditFont, ptr %61, i64 0, i32 7
  %66 = load i32, ptr %65, align 4, !tbaa !61
  %67 = tail call i32 @llvm.usub.sat.i32(i32 %66, i32 1)
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.CharInfo, ptr %64, i64 %68
  %70 = load i64, ptr %69, align 2
  store i64 %70, ptr %62, align 8
  %71 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 31
  %72 = load i32, ptr %71, align 8, !tbaa !78
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %56
  %75 = getelementptr inbounds %struct.Curve, ptr %59, i64 0, i32 63, i32 1
  %76 = load i16, ptr %75, align 2, !tbaa !79
  %77 = getelementptr inbounds %struct.Object, ptr %8, i64 0, i32 32
  %78 = tail call i16 @llvm.smax.i16(i16 %76, i16 1)
  %79 = zext nneg i16 %78 to i32
  store i32 %79, ptr %77, align 4
  br label %80

80:                                               ; preds = %56, %74
  %81 = load ptr, ptr %58, align 8, !tbaa !49
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %81) #12
  br label %83

82:                                               ; preds = %42, %37
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %7, i32 noundef 32, ptr noundef nonnull @.str.104, ptr noundef %5) #12
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ 4, %80 ], [ 2, %82 ]
  br i1 %41, label %91, label %85

85:                                               ; preds = %83
  %86 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %86(ptr noundef nonnull %38) #12
  br label %91

87:                                               ; preds = %31, %12
  %88 = load i32, ptr %14, align 4, !tbaa !63
  %89 = tail call ptr @strerror(i32 noundef %88) #12
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %7, i32 noundef 32, ptr noundef nonnull @.str.105, ptr noundef %5, ptr noundef %89) #12
  %90 = tail call i32 @fclose(ptr noundef nonnull %9)
  br label %91

91:                                               ; preds = %11, %83, %85, %87
  %92 = phi i32 [ 2, %87 ], [ 2, %11 ], [ %84, %85 ], [ %84, %83 ]
  %93 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %93(ptr noundef %5) #12
  ret i32 %92
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @paste_from_file_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.100) #12
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 @paste_from_file_exec(ptr noundef %0, ptr noundef %1), !range !80
  br label %11

10:                                               ; preds = %3
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #12
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ %9, %8 ], [ 1, %10 ]
  ret i32 %12
}

declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @FONT_OT_text_paste_from_clipboard(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paste_from_clipboard_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2560, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 8, i16 noundef signext 0) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @paste_from_clipboard_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %7 = call ptr @WM_clipboard_text_get(i8 noundef zeroext 0, ptr noundef nonnull %3) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @BKE_report(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.106) #12
  br label %56

10:                                               ; preds = %2
  %11 = load i32, ptr %3, align 4, !tbaa !63
  %12 = icmp slt i32 %11, 32767
  br i1 %12, label %13, label %52

13:                                               ; preds = %10
  %14 = sext i32 %11 to i64
  %15 = call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %16 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %17 = add nsw i64 %14, 1
  %18 = shl nsw i64 %17, 2
  %19 = call ptr %16(i64 noundef %18, ptr noundef nonnull @__func__.font_paste_utf8) #12
  %20 = call i64 @BLI_strncpy_wchar_from_utf8(ptr noundef %19, ptr noundef nonnull %7, i64 noundef %17) #12
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = call fastcc zeroext i8 @font_paste_wchar(ptr noundef %15, ptr noundef %19, i64 noundef %22, ptr noundef null), !range !77
  %24 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %24(ptr noundef %19) #12
  %25 = icmp eq i8 %23, 0
  br i1 %25, label %52, label %26

26:                                               ; preds = %13
  %27 = call ptr @CTX_data_main(ptr noundef %0) #12
  %28 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %29 = load ptr, ptr %28, align 8, !tbaa !49
  %30 = getelementptr inbounds %struct.Curve, ptr %29, i64 0, i32 53
  %31 = load ptr, ptr %30, align 8, !tbaa !56
  call void @DAG_id_tag_update(ptr noundef %29, i16 noundef signext 0) #12
  %32 = getelementptr inbounds %struct.Curve, ptr %29, i64 0, i32 63
  %33 = getelementptr inbounds %struct.EditFont, ptr %31, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !67
  %35 = getelementptr inbounds %struct.EditFont, ptr %31, i64 0, i32 7
  %36 = load i32, ptr %35, align 4, !tbaa !61
  %37 = call i32 @llvm.usub.sat.i32(i32 %36, i32 1)
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.CharInfo, ptr %34, i64 %38
  %40 = load i64, ptr %39, align 2
  store i64 %40, ptr %32, align 8
  %41 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 31
  %42 = load i32, ptr %41, align 8, !tbaa !78
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct.Curve, ptr %29, i64 0, i32 63, i32 1
  %46 = load i16, ptr %45, align 2, !tbaa !79
  %47 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 32
  %48 = call i16 @llvm.smax.i16(i16 %46, i16 1)
  %49 = zext nneg i16 %48 to i32
  store i32 %49, ptr %47, align 4
  br label %50

50:                                               ; preds = %26, %44
  %51 = load ptr, ptr %28, align 8, !tbaa !49
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %51) #12
  br label %53

52:                                               ; preds = %13, %10
  call void @BKE_report(ptr noundef %5, i32 noundef 32, ptr noundef nonnull @.str.107) #12
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ 4, %50 ], [ 2, %52 ]
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %55(ptr noundef nonnull %7) #12
  br label %56

56:                                               ; preds = %9, %53
  %57 = phi i32 [ 2, %9 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_text_to_object(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = alloca [3 x float], align 4
  %5 = tail call ptr @CTX_wm_region_view3d(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %6 = icmp eq ptr %1, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Text, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !81
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11

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
  %22 = load ptr, ptr %21, align 8, !tbaa !84
  %23 = load i8, ptr %22, align 1, !tbaa !48
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  store float 0.000000e+00, ptr %4, align 4, !tbaa !86
  %26 = sub nsw i32 0, %19
  %27 = sitofp i32 %26 to float
  store float %27, ptr %14, align 4, !tbaa !86
  store float 0.000000e+00, ptr %15, align 4, !tbaa !86
  br i1 %16, label %29, label %28

28:                                               ; preds = %25
  call void @mul_mat3_m4_v3(ptr noundef nonnull %17, ptr noundef nonnull %4) #12
  br label %29

29:                                               ; preds = %28, %25
  call fastcc void @txt_add_object(ptr noundef %0, ptr noundef nonnull %20, i32 noundef 1, ptr noundef nonnull %4)
  br label %30

30:                                               ; preds = %18, %29
  %31 = add nuw nsw i32 %19, 1
  %32 = load ptr, ptr %20, align 8, !tbaa !87
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %18, !llvm.loop !88

34:                                               ; preds = %11
  store float 0.000000e+00, ptr %4, align 4, !tbaa !86
  %35 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  store float 0.000000e+00, ptr %35, align 4, !tbaa !86
  %36 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0.000000e+00, ptr %36, align 4, !tbaa !86
  %37 = tail call i32 @BLI_countlist(ptr noundef nonnull %8) #12
  call fastcc void @txt_add_object(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %37, ptr noundef nonnull %4)
  br label %38

38:                                               ; preds = %30, %34, %3, %7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @CTX_wm_region_view3d(ptr noundef) local_unnamed_addr #2

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @txt_add_object(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #1 {
  %5 = alloca [3 x float], align 4
  %6 = alloca i64, align 8
  %7 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %8 = tail call ptr @CTX_data_scene(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  %9 = tail call ptr @BKE_object_add(ptr noundef %7, ptr noundef %8, i32 noundef 4) #12
  %10 = getelementptr inbounds %struct.Scene, ptr %8, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !89
  call void @ED_object_base_init_transform(ptr noundef %0, ptr noundef %11, ptr noundef null, ptr noundef nonnull %5) #12
  call void @BKE_object_where_is_calc(ptr noundef %8, ptr noundef %9) #12
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 33
  %13 = load float, ptr %3, align 4, !tbaa !86
  %14 = load float, ptr %12, align 4, !tbaa !86
  %15 = fadd float %13, %14
  store float %15, ptr %12, align 4, !tbaa !86
  %16 = getelementptr inbounds float, ptr %3, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !86
  %18 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 33, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !86
  %20 = fadd float %17, %19
  store float %20, ptr %18, align 4, !tbaa !86
  %21 = getelementptr inbounds float, ptr %3, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !86
  %23 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 33, i64 2
  %24 = load float, ptr %23, align 4, !tbaa !86
  %25 = fadd float %22, %24
  store float %25, ptr %23, align 4, !tbaa !86
  %26 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = call ptr @BKE_vfont_builtin_get() #12
  %29 = getelementptr inbounds %struct.Curve, ptr %27, i64 0, i32 55
  store ptr %28, ptr %29, align 8, !tbaa !108
  %30 = getelementptr inbounds %struct.ID, ptr %28, i64 0, i32 6
  %31 = load i32, ptr %30, align 4, !tbaa !109
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %30, align 4, !tbaa !109
  %33 = icmp sgt i32 %2, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %4, %34
  %35 = phi ptr [ %49, %34 ], [ %1, %4 ]
  %36 = phi i32 [ %50, %34 ], [ 0, %4 ]
  %37 = phi i32 [ %48, %34 ], [ 0, %4 ]
  %38 = phi i32 [ %44, %34 ], [ 0, %4 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  %39 = getelementptr inbounds %struct.TextLine, ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !84
  %41 = call i64 @BLI_strlen_utf8_ex(ptr noundef %40, ptr noundef nonnull %6) #12
  %42 = trunc i64 %41 to i32
  %43 = add i32 %38, 1
  %44 = add i32 %43, %42
  %45 = load i64, ptr %6, align 8, !tbaa !111
  %46 = trunc i64 %45 to i32
  %47 = add i32 %37, 1
  %48 = add i32 %47, %46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  %49 = load ptr, ptr %35, align 8, !tbaa !87
  %50 = add nuw nsw i32 %36, 1
  %51 = icmp slt i32 %48, 32766
  %52 = icmp slt i32 %50, %2
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %34, label %54, !llvm.loop !112

54:                                               ; preds = %34
  %55 = add nsw i32 %48, 4
  %56 = sext i32 %55 to i64
  br label %57

57:                                               ; preds = %54, %4
  %58 = phi i32 [ 0, %4 ], [ %44, %54 ]
  %59 = phi i64 [ 4, %4 ], [ %56, %54 ]
  %60 = getelementptr inbounds %struct.Curve, ptr %27, i64 0, i32 52
  %61 = load ptr, ptr %60, align 8, !tbaa !113
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  %64 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %64(ptr noundef nonnull %61) #12
  br label %65

65:                                               ; preds = %63, %57
  %66 = getelementptr inbounds %struct.Curve, ptr %27, i64 0, i32 62
  %67 = load ptr, ptr %66, align 8, !tbaa !114
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %70(ptr noundef nonnull %67) #12
  br label %71

71:                                               ; preds = %69, %65
  %72 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %73 = call ptr %72(i64 noundef %59, ptr noundef nonnull @.str.83) #12
  store ptr %73, ptr %60, align 8, !tbaa !113
  %74 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %75 = add nsw i32 %58, 4
  %76 = sext i32 %75 to i64
  %77 = shl nsw i64 %76, 3
  %78 = call ptr %74(i64 noundef %77, ptr noundef nonnull @.str.108) #12
  store ptr %78, ptr %66, align 8, !tbaa !114
  %79 = getelementptr inbounds %struct.Curve, ptr %27, i64 0, i32 51
  store i32 0, ptr %79, align 4, !tbaa !115
  %80 = add nsw i32 %58, -1
  %81 = getelementptr inbounds %struct.Curve, ptr %27, i64 0, i32 50
  store i32 %80, ptr %81, align 8, !tbaa !116
  %82 = getelementptr inbounds %struct.Curve, ptr %27, i64 0, i32 47
  store i32 0, ptr %82, align 4, !tbaa !117
  %83 = load ptr, ptr %60, align 8, !tbaa !113
  %84 = load i32, ptr %79, align 4, !tbaa !115
  %85 = icmp slt i32 %84, 32766
  %86 = icmp sgt i32 %2, 0
  %87 = and i1 %85, %86
  br i1 %87, label %88, label %115

88:                                               ; preds = %71, %107
  %89 = phi ptr [ %109, %107 ], [ %1, %71 ]
  %90 = phi i32 [ %110, %107 ], [ 0, %71 ]
  %91 = phi ptr [ %108, %107 ], [ %83, %71 ]
  %92 = getelementptr inbounds %struct.TextLine, ptr %89, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !84
  %94 = call i64 @BLI_strcpy_rlen(ptr noundef %91, ptr noundef %93) #12
  %95 = getelementptr inbounds i8, ptr %91, i64 %94
  %96 = load i32, ptr %79, align 4, !tbaa !115
  %97 = trunc i64 %94 to i32
  %98 = add i32 %96, %97
  store i32 %98, ptr %79, align 4, !tbaa !115
  %99 = load ptr, ptr %89, align 8, !tbaa !87
  %100 = icmp eq ptr %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %88
  %102 = call i64 @BLI_strcpy_rlen(ptr noundef %95, ptr noundef nonnull @.str.109) #12
  %103 = getelementptr inbounds i8, ptr %95, i64 %102
  %104 = load i32, ptr %79, align 4, !tbaa !115
  %105 = trunc i64 %102 to i32
  %106 = add i32 %104, %105
  store i32 %106, ptr %79, align 4, !tbaa !115
  br label %107

107:                                              ; preds = %101, %88
  %108 = phi ptr [ %103, %101 ], [ %95, %88 ]
  %109 = load ptr, ptr %89, align 8, !tbaa !87
  %110 = add nuw nsw i32 %90, 1
  %111 = load i32, ptr %79, align 4, !tbaa !115
  %112 = icmp slt i32 %111, 32766
  %113 = icmp slt i32 %110, %2
  %114 = select i1 %112, i1 %113, i1 false
  br i1 %114, label %88, label %115, !llvm.loop !118

115:                                              ; preds = %107, %71
  %116 = phi ptr [ %83, %71 ], [ %108, %107 ]
  %117 = load i32, ptr %81, align 8, !tbaa !116
  store i32 %117, ptr %82, align 4, !tbaa !117
  store i8 0, ptr %116, align 1, !tbaa !48
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 83886083, ptr noundef %9) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  ret void
}

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @FONT_OT_style_set(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_style_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !119
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @style_items, i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #12
  %10 = load ptr, ptr %7, align 8, !tbaa !119
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_style_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.12) #12
  %6 = load ptr, ptr %3, align 8, !tbaa !74
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.15) #12
  %8 = trunc i32 %7 to i8
  %9 = tail call fastcc i32 @set_style(ptr noundef %0, i32 noundef %5, i8 noundef zeroext %8), !range !80
  ret i32 %9
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @FONT_OT_style_toggle(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @toggle_style_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !119
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @style_items, i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @toggle_style_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %8 = call i32 @BKE_vfont_select_get(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  %13 = call i32 @RNA_enum_get(ptr noundef %12, ptr noundef nonnull @.str.12) #12
  %14 = getelementptr inbounds %struct.Curve, ptr %7, i64 0, i32 63, i32 2
  %15 = load i8, ptr %14, align 4, !tbaa !120
  %16 = trunc i32 %13 to i8
  %17 = xor i8 %15, %16
  store i8 %17, ptr %14, align 4, !tbaa !120
  %18 = zext i8 %17 to i32
  %19 = and i32 %13, %18
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i8
  %22 = call fastcc i32 @set_style(ptr noundef %0, i32 noundef %13, i8 noundef zeroext %21), !range !80
  br label %23

23:                                               ; preds = %2, %10
  %24 = phi i32 [ %22, %10 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @FONT_OT_select_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @font_select_all_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @font_select_all_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 53
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !59
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %40, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 8
  store i32 1, ptr %12, align 8, !tbaa !121
  %13 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 9
  store i32 %9, ptr %13, align 4, !tbaa !122
  %14 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 7
  store i32 %9, ptr %14, align 4, !tbaa !61
  %15 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %16 = load ptr, ptr %4, align 8, !tbaa !49
  %17 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 53
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  %19 = tail call zeroext i8 @BKE_vfont_to_curve(ptr noundef %15, ptr noundef %3, i32 noundef 10) #12
  %20 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 63
  %21 = getelementptr inbounds %struct.EditFont, ptr %18, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !67
  %23 = getelementptr inbounds %struct.EditFont, ptr %18, i64 0, i32 7
  %24 = load i32, ptr %23, align 4, !tbaa !61
  %25 = tail call i32 @llvm.usub.sat.i32(i32 %24, i32 1)
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.CharInfo, ptr %22, i64 %26
  %28 = load i64, ptr %27, align 2
  store i64 %28, ptr %20, align 8
  %29 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 31
  %30 = load i32, ptr %29, align 8, !tbaa !78
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %11
  %33 = getelementptr inbounds %struct.Curve, ptr %16, i64 0, i32 63, i32 1
  %34 = load i16, ptr %33, align 2, !tbaa !79
  %35 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 32
  %36 = tail call i16 @llvm.smax.i16(i16 %34, i16 1)
  %37 = zext nneg i16 %36 to i32
  store i32 %37, ptr %35, align 4
  br label %38

38:                                               ; preds = %11, %32
  %39 = load ptr, ptr %4, align 8, !tbaa !49
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %39) #12
  br label %40

40:                                               ; preds = %2, %38
  %41 = phi i32 [ 4, %38 ], [ 2, %2 ]
  ret i32 %41
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @FONT_OT_text_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.25, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.26, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @copy_text_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @copy_text_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %6 = call i32 @BKE_vfont_select_get(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %43, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 53
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  %13 = load ptr, ptr %12, align 8, !tbaa !123
  %14 = getelementptr inbounds %struct.EditFont, ptr %12, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  %16 = load i32, ptr %3, align 4, !tbaa !63
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr %15, i64 %17
  %19 = load i32, ptr %4, align 4, !tbaa !63
  %20 = sub i32 %19, %16
  %21 = add i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %13, ptr align 4 %18, i64 %23, i1 false)
  %24 = load ptr, ptr %12, align 8, !tbaa !123
  %25 = load i32, ptr %4, align 4, !tbaa !63
  %26 = load i32, ptr %3, align 4, !tbaa !63
  %27 = sub nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr i32, ptr %24, i64 %28
  %30 = getelementptr i32, ptr %29, i64 1
  store i32 0, ptr %30, align 4, !tbaa !63
  %31 = getelementptr inbounds %struct.EditFont, ptr %12, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !124
  %33 = getelementptr inbounds %struct.EditFont, ptr %12, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !67
  %35 = load i32, ptr %3, align 4, !tbaa !63
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.CharInfo, ptr %34, i64 %36
  %38 = load i32, ptr %4, align 4, !tbaa !63
  %39 = sub i32 %38, %35
  %40 = add i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = shl nsw i64 %41, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %32, ptr align 2 %37, i64 %42, i1 false)
  br label %43

43:                                               ; preds = %2, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @FONT_OT_text_cut(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.28, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.29, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @cut_text_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @cut_text_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %10 = call i32 @BKE_vfont_select_get(ptr noundef %9, ptr noundef nonnull %7, ptr noundef nonnull %8) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %120, label %12

12:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  %13 = call i32 @BKE_vfont_select_get(ptr noundef %9, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %50, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 53
  %19 = load ptr, ptr %18, align 8, !tbaa !56
  %20 = load ptr, ptr %19, align 8, !tbaa !123
  %21 = getelementptr inbounds %struct.EditFont, ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  %23 = load i32, ptr %5, align 4, !tbaa !63
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %22, i64 %24
  %26 = load i32, ptr %6, align 4, !tbaa !63
  %27 = sub i32 %26, %23
  %28 = add i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = shl nsw i64 %29, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %20, ptr align 4 %25, i64 %30, i1 false)
  %31 = load ptr, ptr %19, align 8, !tbaa !123
  %32 = load i32, ptr %6, align 4, !tbaa !63
  %33 = load i32, ptr %5, align 4, !tbaa !63
  %34 = sub nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr i32, ptr %31, i64 %35
  %37 = getelementptr i32, ptr %36, i64 1
  store i32 0, ptr %37, align 4, !tbaa !63
  %38 = getelementptr inbounds %struct.EditFont, ptr %19, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !124
  %40 = getelementptr inbounds %struct.EditFont, ptr %19, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !67
  %42 = load i32, ptr %5, align 4, !tbaa !63
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.CharInfo, ptr %41, i64 %43
  %45 = load i32, ptr %6, align 4, !tbaa !63
  %46 = sub i32 %45, %42
  %47 = add i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = shl nsw i64 %48, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %39, ptr align 2 %44, i64 %49, i1 false)
  br label %50

50:                                               ; preds = %12, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %51 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 19
  %52 = load ptr, ptr %51, align 8, !tbaa !49
  %53 = getelementptr inbounds %struct.Curve, ptr %52, i64 0, i32 53
  %54 = load ptr, ptr %53, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %55 = call i32 @BKE_vfont_select_get(ptr noundef %9, ptr noundef nonnull %4, ptr noundef nonnull %3) #12
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %95, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.EditFont, ptr %54, i64 0, i32 7
  %59 = load i32, ptr %58, align 4, !tbaa !61
  %60 = load i32, ptr %4, align 4, !tbaa !63
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i32 %60, ptr %58, align 4, !tbaa !61
  br label %63

63:                                               ; preds = %62, %57
  %64 = load i32, ptr %3, align 4, !tbaa !63
  %65 = add i32 %64, 1
  %66 = getelementptr inbounds %struct.EditFont, ptr %54, i64 0, i32 6
  %67 = load i32, ptr %66, align 8, !tbaa !59
  %68 = sext i32 %60 to i64
  %69 = sub i32 %67, %60
  %70 = shl i32 %69, 2
  %71 = getelementptr inbounds %struct.EditFont, ptr %54, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !62
  %73 = getelementptr inbounds i32, ptr %72, i64 %68
  %74 = sext i32 %65 to i64
  %75 = getelementptr inbounds i32, ptr %72, i64 %74
  %76 = sext i32 %70 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %73, ptr align 4 %75, i64 %76, i1 false)
  %77 = getelementptr inbounds %struct.EditFont, ptr %54, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !67
  %79 = load i32, ptr %4, align 4, !tbaa !63
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.CharInfo, ptr %78, i64 %80
  %82 = getelementptr inbounds %struct.CharInfo, ptr %78, i64 %74
  %83 = load i32, ptr %66, align 8, !tbaa !59
  %84 = sub i32 %83, %79
  %85 = sext i32 %84 to i64
  %86 = shl nsw i64 %85, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %81, ptr align 2 %82, i64 %86, i1 false)
  %87 = load i32, ptr %3, align 4, !tbaa !63
  %88 = load i32, ptr %4, align 4, !tbaa !63
  %89 = xor i32 %87, -1
  %90 = add i32 %88, %89
  %91 = load i32, ptr %66, align 8, !tbaa !59
  %92 = add i32 %90, %91
  store i32 %92, ptr %66, align 8, !tbaa !59
  %93 = getelementptr inbounds %struct.EditFont, ptr %54, i64 0, i32 9
  store i32 0, ptr %93, align 4, !tbaa !122
  %94 = getelementptr inbounds %struct.EditFont, ptr %54, i64 0, i32 8
  store i32 0, ptr %94, align 8, !tbaa !121
  br label %95

95:                                               ; preds = %50, %63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  %96 = call ptr @CTX_data_main(ptr noundef %0) #12
  %97 = load ptr, ptr %51, align 8, !tbaa !49
  %98 = getelementptr inbounds %struct.Curve, ptr %97, i64 0, i32 53
  %99 = load ptr, ptr %98, align 8, !tbaa !56
  call void @DAG_id_tag_update(ptr noundef %97, i16 noundef signext 0) #12
  %100 = getelementptr inbounds %struct.Curve, ptr %97, i64 0, i32 63
  %101 = getelementptr inbounds %struct.EditFont, ptr %99, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !67
  %103 = getelementptr inbounds %struct.EditFont, ptr %99, i64 0, i32 7
  %104 = load i32, ptr %103, align 4, !tbaa !61
  %105 = call i32 @llvm.usub.sat.i32(i32 %104, i32 1)
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.CharInfo, ptr %102, i64 %106
  %108 = load i64, ptr %107, align 2
  store i64 %108, ptr %100, align 8
  %109 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 31
  %110 = load i32, ptr %109, align 8, !tbaa !78
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %95
  %113 = getelementptr inbounds %struct.Curve, ptr %97, i64 0, i32 63, i32 1
  %114 = load i16, ptr %113, align 2, !tbaa !79
  %115 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 32
  %116 = call i16 @llvm.smax.i16(i16 %114, i16 1)
  %117 = zext nneg i16 %116 to i32
  store i32 %117, ptr %115, align 4
  br label %118

118:                                              ; preds = %95, %112
  %119 = load ptr, ptr %51, align 8, !tbaa !49
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %119) #12
  br label %120

120:                                              ; preds = %2, %118
  %121 = phi i32 [ 4, %118 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  ret i32 %121
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @FONT_OT_text_paste(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.30, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.31, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.32, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paste_text_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @paste_text_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.Curve, ptr %7, i64 0, i32 53
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = load ptr, ptr %9, align 8, !tbaa !123
  %11 = tail call i64 @wcslen(ptr noundef %10) #13
  %12 = shl i64 %11, 32
  %13 = ashr exact i64 %12, 32
  %14 = getelementptr inbounds %struct.EditFont, ptr %9, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !124
  %16 = tail call fastcc zeroext i8 @font_paste_wchar(ptr noundef %3, ptr noundef %10, i64 noundef %13, ptr noundef %15), !range !77
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  tail call void @BKE_report(ptr noundef %5, i32 noundef 16, ptr noundef nonnull @.str.119) #12
  br label %44

19:                                               ; preds = %2
  %20 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %21 = load ptr, ptr %6, align 8, !tbaa !49
  %22 = getelementptr inbounds %struct.Curve, ptr %21, i64 0, i32 53
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  tail call void @DAG_id_tag_update(ptr noundef %21, i16 noundef signext 0) #12
  %24 = getelementptr inbounds %struct.Curve, ptr %21, i64 0, i32 63
  %25 = getelementptr inbounds %struct.EditFont, ptr %23, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !67
  %27 = getelementptr inbounds %struct.EditFont, ptr %23, i64 0, i32 7
  %28 = load i32, ptr %27, align 4, !tbaa !61
  %29 = tail call i32 @llvm.usub.sat.i32(i32 %28, i32 1)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.CharInfo, ptr %26, i64 %30
  %32 = load i64, ptr %31, align 2
  store i64 %32, ptr %24, align 8
  %33 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 31
  %34 = load i32, ptr %33, align 8, !tbaa !78
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %19
  %37 = getelementptr inbounds %struct.Curve, ptr %21, i64 0, i32 63, i32 1
  %38 = load i16, ptr %37, align 2, !tbaa !79
  %39 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 32
  %40 = tail call i16 @llvm.smax.i16(i16 %38, i16 1)
  %41 = zext nneg i16 %40 to i32
  store i32 %41, ptr %39, align 4
  br label %42

42:                                               ; preds = %19, %36
  %43 = load ptr, ptr %6, align 8, !tbaa !49
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %43) #12
  br label %44

44:                                               ; preds = %18, %42
  %45 = phi i32 [ 4, %42 ], [ 2, %18 ]
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define dso_local void @FONT_OT_move(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.34, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.35, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @move_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !119
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.36, ptr noundef nonnull @move_type_items, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.36) #12
  %6 = tail call fastcc i32 @move_cursor(ptr noundef %0, i32 noundef %5, i8 noundef zeroext 0), !range !80
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @FONT_OT_move_select(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.41, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @move_select_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !119
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.36, ptr noundef nonnull @move_type_items, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.42) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @move_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.36) #12
  %6 = tail call fastcc i32 @move_cursor(ptr noundef %0, i32 noundef %5, i8 noundef zeroext 1), !range !80
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local void @FONT_OT_change_spacing(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.43, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.44, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.45, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @change_spacing_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !119
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.46, i32 noundef 1, i32 noundef -20, i32 noundef 20, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef -20, i32 noundef 20) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @change_spacing_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 53
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.46) #12
  %11 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 7
  %14 = load i32, ptr %13, align 4, !tbaa !61
  %15 = sext i32 %14 to i64
  %16 = getelementptr %struct.CharInfo, ptr %12, i64 %15
  %17 = getelementptr %struct.CharInfo, ptr %16, i64 -1
  %18 = load i16, ptr %17, align 2, !tbaa !69
  %19 = sext i16 %18 to i32
  %20 = add nsw i32 %10, %19
  %21 = tail call i32 @llvm.smin.i32(i32 %20, i32 20)
  %22 = tail call i32 @llvm.smax.i32(i32 %21, i32 -20)
  %23 = icmp eq i32 %22, %19
  br i1 %23, label %50, label %24

24:                                               ; preds = %2
  %25 = trunc i32 %22 to i16
  store i16 %25, ptr %17, align 2, !tbaa !69
  %26 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %27 = load ptr, ptr %4, align 8, !tbaa !49
  %28 = getelementptr inbounds %struct.Curve, ptr %27, i64 0, i32 53
  %29 = load ptr, ptr %28, align 8, !tbaa !56
  tail call void @DAG_id_tag_update(ptr noundef %27, i16 noundef signext 0) #12
  %30 = getelementptr inbounds %struct.Curve, ptr %27, i64 0, i32 63
  %31 = getelementptr inbounds %struct.EditFont, ptr %29, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !67
  %33 = getelementptr inbounds %struct.EditFont, ptr %29, i64 0, i32 7
  %34 = load i32, ptr %33, align 4, !tbaa !61
  %35 = tail call i32 @llvm.usub.sat.i32(i32 %34, i32 1)
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.CharInfo, ptr %32, i64 %36
  %38 = load i64, ptr %37, align 2
  store i64 %38, ptr %30, align 8
  %39 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 31
  %40 = load i32, ptr %39, align 8, !tbaa !78
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %24
  %43 = getelementptr inbounds %struct.Curve, ptr %27, i64 0, i32 63, i32 1
  %44 = load i16, ptr %43, align 2, !tbaa !79
  %45 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 32
  %46 = tail call i16 @llvm.smax.i16(i16 %44, i16 1)
  %47 = zext nneg i16 %46 to i32
  store i32 %47, ptr %45, align 4
  br label %48

48:                                               ; preds = %24, %42
  %49 = load ptr, ptr %4, align 8, !tbaa !49
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %49) #12
  br label %50

50:                                               ; preds = %2, %48
  %51 = phi i32 [ 4, %48 ], [ 2, %2 ]
  ret i32 %51
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @FONT_OT_change_character(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.49, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.50, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.51, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @change_character_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !119
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.46, i32 noundef 1, i32 noundef -255, i32 noundef 255, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.52, i32 noundef -255, i32 noundef 255) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @change_character_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 53
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = tail call i32 @RNA_int_get(ptr noundef %9, ptr noundef nonnull @.str.46) #12
  %11 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !61
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %50, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !62
  %17 = zext nneg i32 %12 to i64
  %18 = getelementptr i32, ptr %16, i64 %17
  %19 = getelementptr i32, ptr %18, i64 -1
  %20 = load i32, ptr %19, align 4, !tbaa !63
  %21 = add nsw i32 %20, %10
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 255)
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 0)
  %24 = icmp eq i32 %23, %20
  br i1 %24, label %50, label %25

25:                                               ; preds = %14
  store i32 %23, ptr %19, align 4, !tbaa !63
  %26 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %27 = load ptr, ptr %4, align 8, !tbaa !49
  %28 = getelementptr inbounds %struct.Curve, ptr %27, i64 0, i32 53
  %29 = load ptr, ptr %28, align 8, !tbaa !56
  tail call void @DAG_id_tag_update(ptr noundef %27, i16 noundef signext 0) #12
  %30 = getelementptr inbounds %struct.Curve, ptr %27, i64 0, i32 63
  %31 = getelementptr inbounds %struct.EditFont, ptr %29, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !67
  %33 = getelementptr inbounds %struct.EditFont, ptr %29, i64 0, i32 7
  %34 = load i32, ptr %33, align 4, !tbaa !61
  %35 = tail call i32 @llvm.usub.sat.i32(i32 %34, i32 1)
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.CharInfo, ptr %32, i64 %36
  %38 = load i64, ptr %37, align 2
  store i64 %38, ptr %30, align 8
  %39 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 31
  %40 = load i32, ptr %39, align 8, !tbaa !78
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %25
  %43 = getelementptr inbounds %struct.Curve, ptr %27, i64 0, i32 63, i32 1
  %44 = load i16, ptr %43, align 2, !tbaa !79
  %45 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 32
  %46 = tail call i16 @llvm.smax.i16(i16 %44, i16 1)
  %47 = zext nneg i16 %46 to i32
  store i32 %47, ptr %45, align 4
  br label %48

48:                                               ; preds = %25, %42
  %49 = load ptr, ptr %4, align 8, !tbaa !49
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %49) #12
  br label %50

50:                                               ; preds = %14, %2, %48
  %51 = phi i32 [ 4, %48 ], [ 2, %2 ], [ 2, %14 ]
  ret i32 %51
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @FONT_OT_line_break(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.53, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.54, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.55, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @line_break_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @line_break_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 53
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !59
  %10 = icmp slt i32 %9, 32765
  br i1 %10, label %11, label %72

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 7
  %13 = load i32, ptr %12, align 4, !tbaa !61
  %14 = icmp sgt i32 %9, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  %18 = sext i32 %9 to i64
  br label %19

19:                                               ; preds = %19, %15
  %20 = phi i64 [ %18, %15 ], [ %24, %19 ]
  %21 = getelementptr i32, ptr %17, i64 %20
  %22 = getelementptr i32, ptr %21, i64 -1
  %23 = load i32, ptr %22, align 4, !tbaa !63
  store i32 %23, ptr %21, align 4, !tbaa !63
  %24 = add nsw i64 %20, -1
  %25 = load i32, ptr %12, align 4, !tbaa !61
  %26 = sext i32 %25 to i64
  %27 = icmp sgt i64 %24, %26
  br i1 %27, label %19, label %28, !llvm.loop !64

28:                                               ; preds = %19, %11
  %29 = load i32, ptr %8, align 8, !tbaa !59
  %30 = load i32, ptr %12, align 4, !tbaa !61
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 3
  %34 = sext i32 %29 to i64
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi i64 [ %34, %32 ], [ %41, %35 ]
  %37 = load ptr, ptr %33, align 8, !tbaa !67
  %38 = getelementptr inbounds %struct.CharInfo, ptr %37, i64 %36
  %39 = getelementptr %struct.CharInfo, ptr %38, i64 -1
  %40 = load i64, ptr %39, align 2
  store i64 %40, ptr %38, align 2
  %41 = add nsw i64 %36, -1
  %42 = load i32, ptr %12, align 4, !tbaa !61
  %43 = sext i32 %42 to i64
  %44 = icmp sgt i64 %41, %43
  br i1 %44, label %35, label %45, !llvm.loop !68

45:                                               ; preds = %35, %28
  %46 = phi i32 [ %30, %28 ], [ %42, %35 ]
  %47 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !62
  %49 = sext i32 %46 to i64
  %50 = getelementptr inbounds i32, ptr %48, i64 %49
  store i32 10, ptr %50, align 4, !tbaa !63
  %51 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !67
  %53 = load i32, ptr %12, align 4, !tbaa !61
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.CharInfo, ptr %52, i64 %54
  %56 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 63
  %57 = load i64, ptr %56, align 8
  store i64 %57, ptr %55, align 2
  %58 = load ptr, ptr %51, align 8, !tbaa !67
  %59 = load i32, ptr %12, align 4, !tbaa !61
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.CharInfo, ptr %58, i64 %60
  store i16 0, ptr %61, align 2, !tbaa !69
  %62 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 32
  %63 = load i32, ptr %62, align 4, !tbaa !70
  %64 = trunc i32 %63 to i16
  %65 = getelementptr inbounds %struct.CharInfo, ptr %58, i64 %60, i32 1
  store i16 %64, ptr %65, align 2, !tbaa !71
  %66 = add nsw i32 %59, 1
  store i32 %66, ptr %12, align 4, !tbaa !61
  %67 = load i32, ptr %8, align 8, !tbaa !59
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %8, align 8, !tbaa !59
  %69 = load ptr, ptr %47, align 8, !tbaa !62
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, ptr %69, i64 %70
  store i32 0, ptr %71, align 4, !tbaa !63
  br label %72

72:                                               ; preds = %2, %45
  %73 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 9
  store i32 0, ptr %73, align 4, !tbaa !122
  %74 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 8
  store i32 0, ptr %74, align 8, !tbaa !121
  %75 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %76 = load ptr, ptr %4, align 8, !tbaa !49
  %77 = getelementptr inbounds %struct.Curve, ptr %76, i64 0, i32 53
  %78 = load ptr, ptr %77, align 8, !tbaa !56
  tail call void @DAG_id_tag_update(ptr noundef %76, i16 noundef signext 0) #12
  %79 = getelementptr inbounds %struct.Curve, ptr %76, i64 0, i32 63
  %80 = getelementptr inbounds %struct.EditFont, ptr %78, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !67
  %82 = getelementptr inbounds %struct.EditFont, ptr %78, i64 0, i32 7
  %83 = load i32, ptr %82, align 4, !tbaa !61
  %84 = tail call i32 @llvm.usub.sat.i32(i32 %83, i32 1)
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.CharInfo, ptr %81, i64 %85
  %87 = load i64, ptr %86, align 2
  store i64 %87, ptr %79, align 8
  %88 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 31
  %89 = load i32, ptr %88, align 8, !tbaa !78
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %72
  %92 = getelementptr inbounds %struct.Curve, ptr %76, i64 0, i32 63, i32 1
  %93 = load i16, ptr %92, align 2, !tbaa !79
  %94 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 32
  %95 = tail call i16 @llvm.smax.i16(i16 %93, i16 1)
  %96 = zext nneg i16 %95 to i32
  store i32 %96, ptr %94, align 4
  br label %97

97:                                               ; preds = %72, %91
  %98 = load ptr, ptr %4, align 8, !tbaa !49
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %98) #12
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @FONT_OT_delete(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.56, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.57, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.58, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @delete_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !119
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.36, ptr noundef nonnull @delete_type_items, i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.59) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @delete_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %8 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.Curve, ptr %9, i64 0, i32 53
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  %12 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !74
  %14 = tail call i32 @RNA_enum_get(ptr noundef %13, ptr noundef nonnull @.str.36) #12
  %15 = getelementptr inbounds %struct.EditFont, ptr %11, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !59
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %199, label %18

18:                                               ; preds = %2
  %19 = call i32 @BKE_vfont_select_get(ptr noundef %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
  %20 = icmp eq i32 %19, 0
  %21 = icmp eq i32 %14, 4
  br i1 %20, label %26, label %22

22:                                               ; preds = %18
  br i1 %21, label %30, label %23

23:                                               ; preds = %22
  %24 = icmp eq i32 %14, 5
  %25 = select i1 %24, i32 3, i32 %14
  br label %30

26:                                               ; preds = %18
  br i1 %21, label %30, label %27

27:                                               ; preds = %26
  %28 = icmp eq i32 %14, 5
  %29 = select i1 %28, i32 2, i32 %14
  br label %30

30:                                               ; preds = %26, %22, %27, %23
  %31 = phi i32 [ %25, %23 ], [ %29, %27 ], [ 3, %22 ], [ 1, %26 ]
  switch i32 %31, label %199 [
    i32 0, label %32
    i32 3, label %36
    i32 2, label %80
    i32 1, label %126
  ]

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.EditFont, ptr %11, i64 0, i32 7
  store i32 0, ptr %33, align 4, !tbaa !61
  store i32 0, ptr %15, align 8, !tbaa !59
  %34 = getelementptr inbounds %struct.EditFont, ptr %11, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !62
  br label %171

36:                                               ; preds = %30
  %37 = load ptr, ptr %8, align 8, !tbaa !49
  %38 = getelementptr inbounds %struct.Curve, ptr %37, i64 0, i32 53
  %39 = load ptr, ptr %38, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %40 = call i32 @BKE_vfont_select_get(ptr noundef %7, ptr noundef nonnull %4, ptr noundef nonnull %3) #12
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %198, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.EditFont, ptr %39, i64 0, i32 7
  %44 = load i32, ptr %43, align 4, !tbaa !61
  %45 = load i32, ptr %4, align 4, !tbaa !63
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i32 %45, ptr %43, align 4, !tbaa !61
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i32, ptr %3, align 4, !tbaa !63
  %50 = add i32 %49, 1
  %51 = getelementptr inbounds %struct.EditFont, ptr %39, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !59
  %53 = sext i32 %45 to i64
  %54 = sub i32 %52, %45
  %55 = shl i32 %54, 2
  %56 = getelementptr inbounds %struct.EditFont, ptr %39, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !62
  %58 = getelementptr inbounds i32, ptr %57, i64 %53
  %59 = sext i32 %50 to i64
  %60 = getelementptr inbounds i32, ptr %57, i64 %59
  %61 = sext i32 %55 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %58, ptr align 4 %60, i64 %61, i1 false)
  %62 = getelementptr inbounds %struct.EditFont, ptr %39, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !67
  %64 = load i32, ptr %4, align 4, !tbaa !63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.CharInfo, ptr %63, i64 %65
  %67 = getelementptr inbounds %struct.CharInfo, ptr %63, i64 %59
  %68 = load i32, ptr %51, align 8, !tbaa !59
  %69 = sub i32 %68, %64
  %70 = sext i32 %69 to i64
  %71 = shl nsw i64 %70, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %66, ptr align 2 %67, i64 %71, i1 false)
  %72 = load i32, ptr %3, align 4, !tbaa !63
  %73 = load i32, ptr %4, align 4, !tbaa !63
  %74 = xor i32 %72, -1
  %75 = add i32 %73, %74
  %76 = load i32, ptr %51, align 8, !tbaa !59
  %77 = add i32 %75, %76
  store i32 %77, ptr %51, align 8, !tbaa !59
  %78 = getelementptr inbounds %struct.EditFont, ptr %39, i64 0, i32 9
  store i32 0, ptr %78, align 4, !tbaa !122
  %79 = getelementptr inbounds %struct.EditFont, ptr %39, i64 0, i32 8
  store i32 0, ptr %79, align 8, !tbaa !121
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br i1 %41, label %199, label %173

80:                                               ; preds = %30
  %81 = getelementptr inbounds %struct.EditFont, ptr %11, i64 0, i32 7
  %82 = load i32, ptr %81, align 4, !tbaa !61
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %199, label %84

84:                                               ; preds = %80
  %85 = load i32, ptr %15, align 8, !tbaa !59
  %86 = icmp sgt i32 %82, %85
  br i1 %86, label %100, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.EditFont, ptr %11, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !62
  %90 = zext nneg i32 %82 to i64
  br label %91

91:                                               ; preds = %87, %91
  %92 = phi i64 [ %90, %87 ], [ %96, %91 ]
  %93 = getelementptr inbounds i32, ptr %89, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !63
  %95 = getelementptr i32, ptr %93, i64 -1
  store i32 %94, ptr %95, align 4, !tbaa !63
  %96 = add nuw nsw i64 %92, 1
  %97 = load i32, ptr %15, align 8, !tbaa !59
  %98 = trunc i64 %92 to i32
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %91, label %100, !llvm.loop !125

100:                                              ; preds = %91, %84
  %101 = load i32, ptr %81, align 4, !tbaa !61
  %102 = load i32, ptr %15, align 8, !tbaa !59
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %117, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.EditFont, ptr %11, i64 0, i32 3
  %106 = sext i32 %101 to i64
  br label %107

107:                                              ; preds = %104, %107
  %108 = phi i64 [ %106, %104 ], [ %113, %107 ]
  %109 = load ptr, ptr %105, align 8, !tbaa !67
  %110 = getelementptr %struct.CharInfo, ptr %109, i64 %108
  %111 = getelementptr %struct.CharInfo, ptr %110, i64 -1
  %112 = load i64, ptr %110, align 2
  store i64 %112, ptr %111, align 2
  %113 = add nsw i64 %108, 1
  %114 = load i32, ptr %15, align 8, !tbaa !59
  %115 = sext i32 %114 to i64
  %116 = icmp slt i64 %108, %115
  br i1 %116, label %107, label %117, !llvm.loop !126

117:                                              ; preds = %107, %100
  %118 = phi i32 [ %102, %100 ], [ %114, %107 ]
  %119 = load i32, ptr %81, align 4, !tbaa !61
  %120 = add nsw i32 %119, -1
  store i32 %120, ptr %81, align 4, !tbaa !61
  %121 = getelementptr inbounds %struct.EditFont, ptr %11, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !62
  %123 = add nsw i32 %118, -1
  store i32 %123, ptr %15, align 8, !tbaa !59
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, ptr %122, i64 %124
  br label %171

126:                                              ; preds = %30
  %127 = getelementptr inbounds %struct.EditFont, ptr %11, i64 0, i32 7
  %128 = load i32, ptr %127, align 4, !tbaa !61
  %129 = load i32, ptr %15, align 8, !tbaa !59
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %199

131:                                              ; preds = %126
  %132 = load i32, ptr %15, align 8, !tbaa !59
  %133 = icmp slt i32 %128, %132
  br i1 %133, label %134, label %147

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.EditFont, ptr %11, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !62
  %137 = sext i32 %128 to i64
  br label %138

138:                                              ; preds = %134, %138
  %139 = phi i64 [ %137, %134 ], [ %140, %138 ]
  %140 = add nsw i64 %139, 1
  %141 = getelementptr inbounds i32, ptr %136, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !63
  %143 = getelementptr inbounds i32, ptr %136, i64 %139
  store i32 %142, ptr %143, align 4, !tbaa !63
  %144 = load i32, ptr %15, align 8, !tbaa !59
  %145 = sext i32 %144 to i64
  %146 = icmp slt i64 %140, %145
  br i1 %146, label %138, label %147, !llvm.loop !127

147:                                              ; preds = %138, %131
  %148 = load i32, ptr %127, align 4, !tbaa !61
  %149 = load i32, ptr %15, align 8, !tbaa !59
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %164

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.EditFont, ptr %11, i64 0, i32 3
  %153 = sext i32 %148 to i64
  br label %154

154:                                              ; preds = %151, %154
  %155 = phi i64 [ %153, %151 ], [ %158, %154 ]
  %156 = load ptr, ptr %152, align 8, !tbaa !67
  %157 = getelementptr inbounds %struct.CharInfo, ptr %156, i64 %155
  %158 = add nsw i64 %155, 1
  %159 = getelementptr inbounds %struct.CharInfo, ptr %156, i64 %158
  %160 = load i64, ptr %159, align 2
  store i64 %160, ptr %157, align 2
  %161 = load i32, ptr %15, align 8, !tbaa !59
  %162 = sext i32 %161 to i64
  %163 = icmp slt i64 %158, %162
  br i1 %163, label %154, label %164, !llvm.loop !128

164:                                              ; preds = %154, %147
  %165 = phi i32 [ %149, %147 ], [ %161, %154 ]
  %166 = getelementptr inbounds %struct.EditFont, ptr %11, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !62
  %168 = add nsw i32 %165, -1
  store i32 %168, ptr %15, align 8, !tbaa !59
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, ptr %167, i64 %169
  br label %171

171:                                              ; preds = %32, %117, %164
  %172 = phi ptr [ %170, %164 ], [ %125, %117 ], [ %35, %32 ]
  store i32 0, ptr %172, align 4, !tbaa !63
  br label %173

173:                                              ; preds = %171, %48
  %174 = call ptr @CTX_data_main(ptr noundef %0) #12
  %175 = load ptr, ptr %8, align 8, !tbaa !49
  %176 = getelementptr inbounds %struct.Curve, ptr %175, i64 0, i32 53
  %177 = load ptr, ptr %176, align 8, !tbaa !56
  call void @DAG_id_tag_update(ptr noundef %175, i16 noundef signext 0) #12
  %178 = getelementptr inbounds %struct.Curve, ptr %175, i64 0, i32 63
  %179 = getelementptr inbounds %struct.EditFont, ptr %177, i64 0, i32 3
  %180 = load ptr, ptr %179, align 8, !tbaa !67
  %181 = getelementptr inbounds %struct.EditFont, ptr %177, i64 0, i32 7
  %182 = load i32, ptr %181, align 4, !tbaa !61
  %183 = call i32 @llvm.usub.sat.i32(i32 %182, i32 1)
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.CharInfo, ptr %180, i64 %184
  %186 = load i64, ptr %185, align 2
  store i64 %186, ptr %178, align 8
  %187 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 31
  %188 = load i32, ptr %187, align 8, !tbaa !78
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %173
  %191 = getelementptr inbounds %struct.Curve, ptr %175, i64 0, i32 63, i32 1
  %192 = load i16, ptr %191, align 2, !tbaa !79
  %193 = getelementptr inbounds %struct.Object, ptr %7, i64 0, i32 32
  %194 = call i16 @llvm.smax.i16(i16 %192, i16 1)
  %195 = zext nneg i16 %194 to i32
  store i32 %195, ptr %193, align 4
  br label %196

196:                                              ; preds = %173, %190
  %197 = load ptr, ptr %8, align 8, !tbaa !49
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %197) #12
  br label %199

198:                                              ; preds = %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  br label %199

199:                                              ; preds = %198, %30, %126, %80, %48, %2, %196
  %200 = phi i32 [ 4, %196 ], [ 2, %2 ], [ 2, %48 ], [ 2, %80 ], [ 2, %126 ], [ 2, %30 ], [ 2, %198 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %200
}

; Function Attrs: nounwind uwtable
define dso_local void @FONT_OT_text_insert(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.60, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.61, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.62, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @insert_text_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @insert_text_invoke, ptr %5, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !119
  %10 = tail call ptr @RNA_def_string(ptr noundef %9, ptr noundef nonnull @.str.63, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65) #12
  %11 = load ptr, ptr %8, align 8, !tbaa !119
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.66, i32 noundef 0, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @insert_text_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %5, ptr noundef nonnull @.str.63) #12
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %126, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa !74
  %10 = tail call ptr @RNA_string_get_alloc(ptr noundef %9, ptr noundef nonnull @.str.63, ptr noundef null, i32 noundef 0) #12
  %11 = tail call i64 @BLI_strlen_utf8(ptr noundef %10) #12
  %12 = trunc i64 %11 to i32
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %14 = shl i64 %11, 32
  %15 = add i64 %14, 4294967296
  %16 = ashr exact i64 %15, 32
  %17 = ashr exact i64 %15, 30
  %18 = tail call ptr %13(i64 noundef %17, ptr noundef nonnull @.str.148) #12
  %19 = tail call i64 @BLI_strncpy_wchar_from_utf8(ptr noundef %18, ptr noundef %10, i64 noundef %16) #12
  %20 = icmp sgt i32 %12, 0
  br i1 %20, label %21, label %98

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %23 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 32
  %24 = and i64 %11, 4294967295
  br label %25

25:                                               ; preds = %21, %95
  %26 = phi i64 [ 0, %21 ], [ %96, %95 ]
  %27 = getelementptr inbounds i32, ptr %18, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !63
  %29 = load ptr, ptr %22, align 8, !tbaa !49
  %30 = getelementptr inbounds %struct.Curve, ptr %29, i64 0, i32 53
  %31 = load ptr, ptr %30, align 8, !tbaa !56
  %32 = getelementptr inbounds %struct.EditFont, ptr %31, i64 0, i32 6
  %33 = load i32, ptr %32, align 8, !tbaa !59
  %34 = icmp slt i32 %33, 32765
  br i1 %34, label %35, label %95

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.EditFont, ptr %31, i64 0, i32 7
  %37 = load i32, ptr %36, align 4, !tbaa !61
  %38 = icmp sgt i32 %33, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.EditFont, ptr %31, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !62
  %42 = sext i32 %33 to i64
  br label %43

43:                                               ; preds = %43, %39
  %44 = phi i64 [ %42, %39 ], [ %48, %43 ]
  %45 = getelementptr i32, ptr %41, i64 %44
  %46 = getelementptr i32, ptr %45, i64 -1
  %47 = load i32, ptr %46, align 4, !tbaa !63
  store i32 %47, ptr %45, align 4, !tbaa !63
  %48 = add nsw i64 %44, -1
  %49 = load i32, ptr %36, align 4, !tbaa !61
  %50 = sext i32 %49 to i64
  %51 = icmp sgt i64 %48, %50
  br i1 %51, label %43, label %52, !llvm.loop !64

52:                                               ; preds = %43, %35
  %53 = load i32, ptr %32, align 8, !tbaa !59
  %54 = load i32, ptr %36, align 4, !tbaa !61
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.EditFont, ptr %31, i64 0, i32 3
  %58 = sext i32 %53 to i64
  br label %59

59:                                               ; preds = %59, %56
  %60 = phi i64 [ %58, %56 ], [ %65, %59 ]
  %61 = load ptr, ptr %57, align 8, !tbaa !67
  %62 = getelementptr inbounds %struct.CharInfo, ptr %61, i64 %60
  %63 = getelementptr %struct.CharInfo, ptr %62, i64 -1
  %64 = load i64, ptr %63, align 2
  store i64 %64, ptr %62, align 2
  %65 = add nsw i64 %60, -1
  %66 = load i32, ptr %36, align 4, !tbaa !61
  %67 = sext i32 %66 to i64
  %68 = icmp sgt i64 %65, %67
  br i1 %68, label %59, label %69, !llvm.loop !68

69:                                               ; preds = %59, %52
  %70 = phi i32 [ %54, %52 ], [ %66, %59 ]
  %71 = getelementptr inbounds %struct.EditFont, ptr %31, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !62
  %73 = sext i32 %70 to i64
  %74 = getelementptr inbounds i32, ptr %72, i64 %73
  store i32 %28, ptr %74, align 4, !tbaa !63
  %75 = getelementptr inbounds %struct.EditFont, ptr %31, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !67
  %77 = load i32, ptr %36, align 4, !tbaa !61
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.CharInfo, ptr %76, i64 %78
  %80 = getelementptr inbounds %struct.Curve, ptr %29, i64 0, i32 63
  %81 = load i64, ptr %80, align 8
  store i64 %81, ptr %79, align 2
  %82 = load ptr, ptr %75, align 8, !tbaa !67
  %83 = load i32, ptr %36, align 4, !tbaa !61
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.CharInfo, ptr %82, i64 %84
  store i16 0, ptr %85, align 2, !tbaa !69
  %86 = load i32, ptr %23, align 4, !tbaa !70
  %87 = trunc i32 %86 to i16
  %88 = getelementptr inbounds %struct.CharInfo, ptr %82, i64 %84, i32 1
  store i16 %87, ptr %88, align 2, !tbaa !71
  %89 = add nsw i32 %83, 1
  store i32 %89, ptr %36, align 4, !tbaa !61
  %90 = load i32, ptr %32, align 8, !tbaa !59
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr %32, align 8, !tbaa !59
  %92 = load ptr, ptr %71, align 8, !tbaa !62
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, ptr %92, i64 %93
  store i32 0, ptr %94, align 4, !tbaa !63
  br label %95

95:                                               ; preds = %25, %69
  %96 = add nuw nsw i64 %26, 1
  %97 = icmp eq i64 %96, %24
  br i1 %97, label %98, label %25, !llvm.loop !129

98:                                               ; preds = %95, %8
  %99 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %99(ptr noundef %18) #12
  %100 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %100(ptr noundef %10) #12
  tail call fastcc void @kill_selection(ptr noundef %3, i32 noundef 1)
  %101 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %102 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %103 = load ptr, ptr %102, align 8, !tbaa !49
  %104 = getelementptr inbounds %struct.Curve, ptr %103, i64 0, i32 53
  %105 = load ptr, ptr %104, align 8, !tbaa !56
  tail call void @DAG_id_tag_update(ptr noundef %103, i16 noundef signext 0) #12
  %106 = getelementptr inbounds %struct.Curve, ptr %103, i64 0, i32 63
  %107 = getelementptr inbounds %struct.EditFont, ptr %105, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !67
  %109 = getelementptr inbounds %struct.EditFont, ptr %105, i64 0, i32 7
  %110 = load i32, ptr %109, align 4, !tbaa !61
  %111 = tail call i32 @llvm.usub.sat.i32(i32 %110, i32 1)
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.CharInfo, ptr %108, i64 %112
  %114 = load i64, ptr %113, align 2
  store i64 %114, ptr %106, align 8
  %115 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 31
  %116 = load i32, ptr %115, align 8, !tbaa !78
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %98
  %119 = getelementptr inbounds %struct.Curve, ptr %103, i64 0, i32 63, i32 1
  %120 = load i16, ptr %119, align 2, !tbaa !79
  %121 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 32
  %122 = tail call i16 @llvm.smax.i16(i16 %120, i16 1)
  %123 = zext nneg i16 %122 to i32
  store i32 %123, ptr %121, align 4
  br label %124

124:                                              ; preds = %98, %118
  %125 = load ptr, ptr %102, align 8, !tbaa !49
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %125) #12
  br label %126

126:                                              ; preds = %2, %124
  %127 = phi i32 [ 4, %124 ], [ 2, %2 ]
  ret i32 %127
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @insert_text_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #1 {
  %4 = alloca [2 x i32], align 8
  %5 = alloca [8 x i8], align 8
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 53
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 8
  %12 = load i8, ptr %11, align 2, !tbaa !130
  %13 = zext i8 %12 to i64
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 19
  %15 = load i16, ptr %14, align 4, !tbaa !132
  %16 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 17
  %17 = load i16, ptr %16, align 8, !tbaa !133
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %19 = load i16, ptr %18, align 2, !tbaa !134
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !135
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %23 = load i16, ptr %22, align 2, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store i64 0, ptr %4, align 8
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !74
  %26 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %25, ptr noundef nonnull @.str.63) #12
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %3
  %29 = tail call i32 @insert_text_exec(ptr noundef %0, ptr noundef %1), !range !80
  br label %510

30:                                               ; preds = %3
  %31 = load ptr, ptr %24, align 8, !tbaa !74
  %32 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %31, ptr noundef nonnull @.str.66) #12
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 6
  %36 = load i32, ptr %35, align 8, !tbaa !59
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %510, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 7
  %40 = load i32, ptr %39, align 4, !tbaa !61
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %510

42:                                               ; preds = %38
  store i1 true, ptr @insert_text_invoke.accentcode, align 4
  br label %510

43:                                               ; preds = %30
  %44 = icmp eq i16 %21, 219
  br i1 %44, label %45, label %51

45:                                               ; preds = %43
  %46 = icmp eq i16 %15, 0
  %47 = icmp eq i16 %19, 0
  %48 = select i1 %46, i1 %47, i1 false
  %49 = icmp eq i16 %17, 0
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %510, label %51

51:                                               ; preds = %45, %43
  %52 = phi i64 [ %13, %43 ], [ 9, %45 ]
  %53 = icmp eq i16 %21, 223
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = icmp eq i16 %15, 0
  br i1 %55, label %510, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 6
  %58 = load i32, ptr %57, align 8, !tbaa !59
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %510, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 7
  %62 = load i32, ptr %61, align 4, !tbaa !61
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %510

64:                                               ; preds = %60
  store i1 true, ptr @insert_text_invoke.accentcode, align 4
  br label %510

65:                                               ; preds = %51
  %66 = icmp eq i16 %23, 0
  br i1 %66, label %510, label %67

67:                                               ; preds = %65
  %68 = icmp eq i64 %52, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 7
  %71 = load i8, ptr %70, align 4, !tbaa !48
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %510, label %73

73:                                               ; preds = %69, %67
  %74 = add nsw i64 %52, -32
  %75 = icmp ult i64 %74, 222
  %76 = icmp ne i64 %52, 127
  %77 = and i1 %76, %75
  %78 = icmp eq i64 %52, 13
  %79 = or i1 %78, %77
  %80 = and i64 %52, 253
  %81 = icmp eq i64 %80, 8
  %82 = or i1 %81, %79
  br i1 %82, label %87, label %83

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 7
  %85 = load i8, ptr %84, align 4, !tbaa !48
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %410, label %87

87:                                               ; preds = %73, %83
  %88 = load i1, ptr @insert_text_invoke.accentcode, align 4
  br i1 %88, label %89, label %248

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 7
  %91 = load i32, ptr %90, align 4, !tbaa !61
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %392

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !62
  %96 = zext nneg i32 %91 to i64
  %97 = getelementptr i32, ptr %95, i64 %96
  %98 = getelementptr i32, ptr %97, i64 -1
  %99 = load i32, ptr %98, align 4, !tbaa !63
  %100 = trunc i32 %99 to i8
  %101 = trunc i64 %52 to i32
  switch i8 %100, label %224 [
    i8 97, label %102
    i8 99, label %111
    i8 101, label %115
    i8 105, label %120
    i8 110, label %125
    i8 111, label %128
    i8 114, label %139
    i8 115, label %142
    i8 116, label %145
    i8 117, label %148
    i8 121, label %153
    i8 65, label %158
    i8 67, label %166
    i8 69, label %169
    i8 73, label %174
    i8 78, label %179
    i8 79, label %182
    i8 85, label %190
    i8 89, label %195
    i8 49, label %198
    i8 51, label %203
    i8 58, label %206
    i8 45, label %209
    i8 124, label %216
    i8 61, label %221
  ]

102:                                              ; preds = %93
  %103 = trunc i64 %52 to i8
  switch i8 %103, label %229 [
    i8 96, label %240
    i8 39, label %104
    i8 94, label %105
    i8 126, label %106
    i8 34, label %107
    i8 111, label %108
    i8 101, label %109
    i8 45, label %110
  ]

104:                                              ; preds = %102
  br label %240

105:                                              ; preds = %102
  br label %240

106:                                              ; preds = %102
  br label %240

107:                                              ; preds = %102
  br label %240

108:                                              ; preds = %102
  br label %240

109:                                              ; preds = %102
  br label %240

110:                                              ; preds = %102
  br label %240

111:                                              ; preds = %93
  %112 = trunc i64 %52 to i8
  switch i8 %112, label %230 [
    i8 44, label %240
    i8 124, label %113
    i8 111, label %114
  ]

113:                                              ; preds = %111
  br label %240

114:                                              ; preds = %111
  br label %240

115:                                              ; preds = %93
  %116 = trunc i64 %52 to i8
  switch i8 %116, label %231 [
    i8 96, label %240
    i8 39, label %117
    i8 94, label %118
    i8 34, label %119
  ]

117:                                              ; preds = %115
  br label %240

118:                                              ; preds = %115
  br label %240

119:                                              ; preds = %115
  br label %240

120:                                              ; preds = %93
  %121 = trunc i64 %52 to i8
  switch i8 %121, label %232 [
    i8 96, label %240
    i8 39, label %122
    i8 94, label %123
    i8 34, label %124
  ]

122:                                              ; preds = %120
  br label %240

123:                                              ; preds = %120
  br label %240

124:                                              ; preds = %120
  br label %240

125:                                              ; preds = %93
  %126 = icmp eq i32 %101, 126
  %127 = select i1 %126, i8 -15, i8 0
  br label %240

128:                                              ; preds = %93
  %129 = trunc i64 %52 to i8
  switch i8 %129, label %233 [
    i8 96, label %240
    i8 39, label %130
    i8 94, label %131
    i8 126, label %132
    i8 34, label %133
    i8 47, label %134
    i8 45, label %135
    i8 101, label %136
    i8 99, label %137
    i8 114, label %138
  ]

130:                                              ; preds = %128
  br label %240

131:                                              ; preds = %128
  br label %240

132:                                              ; preds = %128
  br label %240

133:                                              ; preds = %128
  br label %240

134:                                              ; preds = %128
  br label %240

135:                                              ; preds = %128
  br label %240

136:                                              ; preds = %128
  br label %240

137:                                              ; preds = %128
  br label %240

138:                                              ; preds = %128
  br label %240

139:                                              ; preds = %93
  %140 = icmp eq i32 %101, 111
  %141 = select i1 %140, i8 -82, i8 0
  br label %240

142:                                              ; preds = %93
  %143 = icmp eq i32 %101, 115
  %144 = select i1 %143, i8 -89, i8 0
  br label %240

145:                                              ; preds = %93
  %146 = icmp eq i32 %101, 109
  %147 = select i1 %146, i8 -103, i8 0
  br label %240

148:                                              ; preds = %93
  %149 = trunc i64 %52 to i8
  switch i8 %149, label %234 [
    i8 96, label %240
    i8 39, label %150
    i8 94, label %151
    i8 34, label %152
  ]

150:                                              ; preds = %148
  br label %240

151:                                              ; preds = %148
  br label %240

152:                                              ; preds = %148
  br label %240

153:                                              ; preds = %93
  %154 = icmp eq i32 %101, 34
  %155 = sext i1 %154 to i8
  %156 = icmp eq i32 %101, 39
  %157 = select i1 %156, i8 -3, i8 %155
  br label %240

158:                                              ; preds = %93
  %159 = trunc i64 %52 to i8
  switch i8 %159, label %235 [
    i8 96, label %240
    i8 39, label %160
    i8 94, label %161
    i8 126, label %162
    i8 34, label %163
    i8 111, label %164
    i8 101, label %165
  ]

160:                                              ; preds = %158
  br label %240

161:                                              ; preds = %158
  br label %240

162:                                              ; preds = %158
  br label %240

163:                                              ; preds = %158
  br label %240

164:                                              ; preds = %158
  br label %240

165:                                              ; preds = %158
  br label %240

166:                                              ; preds = %93
  %167 = icmp eq i32 %101, 44
  %168 = select i1 %167, i8 -57, i8 0
  br label %240

169:                                              ; preds = %93
  %170 = trunc i64 %52 to i8
  switch i8 %170, label %236 [
    i8 96, label %240
    i8 39, label %171
    i8 94, label %172
    i8 34, label %173
  ]

171:                                              ; preds = %169
  br label %240

172:                                              ; preds = %169
  br label %240

173:                                              ; preds = %169
  br label %240

174:                                              ; preds = %93
  %175 = trunc i64 %52 to i8
  switch i8 %175, label %237 [
    i8 96, label %240
    i8 39, label %176
    i8 94, label %177
    i8 34, label %178
  ]

176:                                              ; preds = %174
  br label %240

177:                                              ; preds = %174
  br label %240

178:                                              ; preds = %174
  br label %240

179:                                              ; preds = %93
  %180 = icmp eq i32 %101, 126
  %181 = select i1 %180, i8 -47, i8 0
  br label %240

182:                                              ; preds = %93
  %183 = trunc i64 %52 to i8
  switch i8 %183, label %238 [
    i8 96, label %240
    i8 39, label %184
    i8 94, label %185
    i8 126, label %186
    i8 34, label %187
    i8 47, label %188
    i8 101, label %189
  ]

184:                                              ; preds = %182
  br label %240

185:                                              ; preds = %182
  br label %240

186:                                              ; preds = %182
  br label %240

187:                                              ; preds = %182
  br label %240

188:                                              ; preds = %182
  br label %240

189:                                              ; preds = %182
  br label %240

190:                                              ; preds = %93
  %191 = trunc i64 %52 to i8
  switch i8 %191, label %239 [
    i8 96, label %240
    i8 39, label %192
    i8 94, label %193
    i8 34, label %194
  ]

192:                                              ; preds = %190
  br label %240

193:                                              ; preds = %190
  br label %240

194:                                              ; preds = %190
  br label %240

195:                                              ; preds = %93
  %196 = icmp eq i32 %101, 39
  %197 = select i1 %196, i8 -35, i8 0
  br label %240

198:                                              ; preds = %93
  %199 = icmp eq i32 %101, 52
  %200 = select i1 %199, i8 -68, i8 0
  %201 = icmp eq i32 %101, 50
  %202 = select i1 %201, i8 -67, i8 %200
  br label %240

203:                                              ; preds = %93
  %204 = icmp eq i32 %101, 52
  %205 = select i1 %204, i8 -66, i8 0
  br label %240

206:                                              ; preds = %93
  %207 = icmp eq i32 %101, 45
  %208 = select i1 %207, i8 -9, i8 0
  br label %240

209:                                              ; preds = %93
  %210 = icmp eq i32 %101, 58
  %211 = select i1 %210, i8 -9, i8 0
  %212 = icmp eq i32 %101, 124
  %213 = select i1 %212, i8 -121, i8 %211
  %214 = icmp eq i32 %101, 43
  %215 = select i1 %214, i8 -79, i8 %213
  br label %240

216:                                              ; preds = %93
  %217 = icmp eq i32 %101, 45
  %218 = select i1 %217, i8 -121, i8 0
  %219 = icmp eq i32 %101, 61
  %220 = select i1 %219, i8 -120, i8 %218
  br label %240

221:                                              ; preds = %93
  %222 = icmp eq i32 %101, 124
  %223 = select i1 %222, i8 -120, i8 0
  br label %240

224:                                              ; preds = %93
  %225 = icmp eq i8 %100, 43
  %226 = icmp eq i32 %101, 45
  %227 = and i1 %226, %225
  %228 = select i1 %227, i8 -79, i8 0
  br label %240

229:                                              ; preds = %102
  br label %240

230:                                              ; preds = %111
  br label %240

231:                                              ; preds = %115
  br label %240

232:                                              ; preds = %120
  br label %240

233:                                              ; preds = %128
  br label %240

234:                                              ; preds = %148
  br label %240

235:                                              ; preds = %158
  br label %240

236:                                              ; preds = %169
  br label %240

237:                                              ; preds = %174
  br label %240

238:                                              ; preds = %182
  br label %240

239:                                              ; preds = %190
  br label %240

240:                                              ; preds = %102, %104, %105, %106, %107, %108, %109, %110, %111, %113, %114, %115, %117, %118, %119, %120, %122, %123, %124, %125, %128, %130, %131, %132, %133, %134, %135, %136, %137, %138, %139, %142, %145, %148, %150, %151, %152, %153, %158, %160, %161, %162, %163, %164, %165, %166, %169, %171, %172, %173, %174, %176, %177, %178, %179, %182, %184, %185, %186, %187, %188, %189, %190, %192, %193, %194, %195, %198, %203, %206, %209, %216, %221, %224, %229, %230, %231, %232, %233, %234, %235, %236, %237, %238, %239
  %241 = phi i8 [ -31, %104 ], [ -30, %105 ], [ -29, %106 ], [ -28, %107 ], [ -27, %108 ], [ -26, %109 ], [ -86, %110 ], [ -94, %113 ], [ -87, %114 ], [ -23, %117 ], [ -22, %118 ], [ -21, %119 ], [ -19, %122 ], [ -18, %123 ], [ -17, %124 ], [ -13, %130 ], [ -12, %131 ], [ -11, %132 ], [ -10, %133 ], [ -8, %134 ], [ -70, %135 ], [ -113, %136 ], [ -87, %137 ], [ -82, %138 ], [ -6, %150 ], [ -5, %151 ], [ -4, %152 ], [ -63, %160 ], [ -62, %161 ], [ -61, %162 ], [ -60, %163 ], [ -59, %164 ], [ -58, %165 ], [ -55, %171 ], [ -54, %172 ], [ -53, %173 ], [ -51, %176 ], [ -50, %177 ], [ -49, %178 ], [ -45, %184 ], [ -44, %185 ], [ -43, %186 ], [ -42, %187 ], [ -40, %188 ], [ -115, %189 ], [ -38, %192 ], [ -37, %193 ], [ -36, %194 ], [ -32, %102 ], [ 0, %229 ], [ -25, %111 ], [ 0, %230 ], [ -24, %115 ], [ 0, %231 ], [ -20, %120 ], [ 0, %232 ], [ %127, %125 ], [ -14, %128 ], [ 0, %233 ], [ %141, %139 ], [ %144, %142 ], [ %147, %145 ], [ -7, %148 ], [ 0, %234 ], [ -64, %158 ], [ 0, %235 ], [ %168, %166 ], [ -56, %169 ], [ 0, %236 ], [ -52, %174 ], [ 0, %237 ], [ %181, %179 ], [ -46, %182 ], [ 0, %238 ], [ -39, %190 ], [ 0, %239 ], [ %197, %195 ], [ %205, %203 ], [ %208, %206 ], [ %223, %221 ], [ %228, %224 ], [ %157, %153 ], [ %202, %198 ], [ %220, %216 ], [ %215, %209 ]
  %242 = icmp eq i8 %241, 0
  %243 = select i1 %242, i8 %100, i8 %241
  %244 = zext i8 %243 to i32
  store i32 %244, ptr %4, align 8, !tbaa !63
  %245 = zext nneg i32 %91 to i64
  %246 = getelementptr i32, ptr %95, i64 %245
  %247 = getelementptr i32, ptr %246, i64 -1
  store i32 %244, ptr %247, align 4, !tbaa !63
  br label %392

248:                                              ; preds = %87
  %249 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 7
  %250 = load i8, ptr %249, align 4, !tbaa !48
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %322, label %252

252:                                              ; preds = %248
  %253 = call i64 @BLI_strncpy_wchar_from_utf8(ptr noundef nonnull %4, ptr noundef nonnull %249, i64 noundef 2) #12
  %254 = load i32, ptr %4, align 8, !tbaa !63
  %255 = load ptr, ptr %7, align 8, !tbaa !49
  %256 = getelementptr inbounds %struct.Curve, ptr %255, i64 0, i32 53
  %257 = load ptr, ptr %256, align 8, !tbaa !56
  %258 = getelementptr inbounds %struct.EditFont, ptr %257, i64 0, i32 6
  %259 = load i32, ptr %258, align 8, !tbaa !59
  %260 = icmp slt i32 %259, 32765
  br i1 %260, label %261, label %392

261:                                              ; preds = %252
  %262 = getelementptr inbounds %struct.EditFont, ptr %257, i64 0, i32 7
  %263 = load i32, ptr %262, align 4, !tbaa !61
  %264 = icmp sgt i32 %259, %263
  br i1 %264, label %265, label %278

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.EditFont, ptr %257, i64 0, i32 2
  %267 = load ptr, ptr %266, align 8, !tbaa !62
  %268 = sext i32 %259 to i64
  br label %269

269:                                              ; preds = %269, %265
  %270 = phi i64 [ %268, %265 ], [ %274, %269 ]
  %271 = getelementptr i32, ptr %267, i64 %270
  %272 = getelementptr i32, ptr %271, i64 -1
  %273 = load i32, ptr %272, align 4, !tbaa !63
  store i32 %273, ptr %271, align 4, !tbaa !63
  %274 = add nsw i64 %270, -1
  %275 = load i32, ptr %262, align 4, !tbaa !61
  %276 = sext i32 %275 to i64
  %277 = icmp sgt i64 %274, %276
  br i1 %277, label %269, label %278, !llvm.loop !64

278:                                              ; preds = %269, %261
  %279 = load i32, ptr %258, align 8, !tbaa !59
  %280 = load i32, ptr %262, align 4, !tbaa !61
  %281 = icmp sgt i32 %279, %280
  br i1 %281, label %282, label %295

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.EditFont, ptr %257, i64 0, i32 3
  %284 = sext i32 %279 to i64
  br label %285

285:                                              ; preds = %285, %282
  %286 = phi i64 [ %284, %282 ], [ %291, %285 ]
  %287 = load ptr, ptr %283, align 8, !tbaa !67
  %288 = getelementptr inbounds %struct.CharInfo, ptr %287, i64 %286
  %289 = getelementptr %struct.CharInfo, ptr %288, i64 -1
  %290 = load i64, ptr %289, align 2
  store i64 %290, ptr %288, align 2
  %291 = add nsw i64 %286, -1
  %292 = load i32, ptr %262, align 4, !tbaa !61
  %293 = sext i32 %292 to i64
  %294 = icmp sgt i64 %291, %293
  br i1 %294, label %285, label %295, !llvm.loop !68

295:                                              ; preds = %285, %278
  %296 = phi i32 [ %280, %278 ], [ %292, %285 ]
  %297 = getelementptr inbounds %struct.EditFont, ptr %257, i64 0, i32 2
  %298 = load ptr, ptr %297, align 8, !tbaa !62
  %299 = sext i32 %296 to i64
  %300 = getelementptr inbounds i32, ptr %298, i64 %299
  store i32 %254, ptr %300, align 4, !tbaa !63
  %301 = getelementptr inbounds %struct.EditFont, ptr %257, i64 0, i32 3
  %302 = load ptr, ptr %301, align 8, !tbaa !67
  %303 = load i32, ptr %262, align 4, !tbaa !61
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.CharInfo, ptr %302, i64 %304
  %306 = getelementptr inbounds %struct.Curve, ptr %255, i64 0, i32 63
  %307 = load i64, ptr %306, align 8
  store i64 %307, ptr %305, align 2
  %308 = load ptr, ptr %301, align 8, !tbaa !67
  %309 = load i32, ptr %262, align 4, !tbaa !61
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.CharInfo, ptr %308, i64 %310
  store i16 0, ptr %311, align 2, !tbaa !69
  %312 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 32
  %313 = load i32, ptr %312, align 4, !tbaa !70
  %314 = trunc i32 %313 to i16
  %315 = getelementptr inbounds %struct.CharInfo, ptr %308, i64 %310, i32 1
  store i16 %314, ptr %315, align 2, !tbaa !71
  %316 = add nsw i32 %309, 1
  store i32 %316, ptr %262, align 4, !tbaa !61
  %317 = load i32, ptr %258, align 8, !tbaa !59
  %318 = add nsw i32 %317, 1
  store i32 %318, ptr %258, align 8, !tbaa !59
  %319 = load ptr, ptr %297, align 8, !tbaa !62
  %320 = sext i32 %318 to i64
  %321 = getelementptr inbounds i32, ptr %319, i64 %320
  store i32 0, ptr %321, align 4, !tbaa !63
  br label %392

322:                                              ; preds = %248
  br i1 %68, label %393, label %323

323:                                              ; preds = %322
  %324 = load ptr, ptr %7, align 8, !tbaa !49
  %325 = getelementptr inbounds %struct.Curve, ptr %324, i64 0, i32 53
  %326 = load ptr, ptr %325, align 8, !tbaa !56
  %327 = getelementptr inbounds %struct.EditFont, ptr %326, i64 0, i32 6
  %328 = load i32, ptr %327, align 8, !tbaa !59
  %329 = icmp slt i32 %328, 32765
  br i1 %329, label %330, label %392

330:                                              ; preds = %323
  %331 = getelementptr inbounds %struct.EditFont, ptr %326, i64 0, i32 7
  %332 = load i32, ptr %331, align 4, !tbaa !61
  %333 = icmp sgt i32 %328, %332
  br i1 %333, label %334, label %347

334:                                              ; preds = %330
  %335 = getelementptr inbounds %struct.EditFont, ptr %326, i64 0, i32 2
  %336 = load ptr, ptr %335, align 8, !tbaa !62
  %337 = sext i32 %328 to i64
  br label %338

338:                                              ; preds = %338, %334
  %339 = phi i64 [ %337, %334 ], [ %343, %338 ]
  %340 = getelementptr i32, ptr %336, i64 %339
  %341 = getelementptr i32, ptr %340, i64 -1
  %342 = load i32, ptr %341, align 4, !tbaa !63
  store i32 %342, ptr %340, align 4, !tbaa !63
  %343 = add nsw i64 %339, -1
  %344 = load i32, ptr %331, align 4, !tbaa !61
  %345 = sext i32 %344 to i64
  %346 = icmp sgt i64 %343, %345
  br i1 %346, label %338, label %347, !llvm.loop !64

347:                                              ; preds = %338, %330
  %348 = load i32, ptr %327, align 8, !tbaa !59
  %349 = load i32, ptr %331, align 4, !tbaa !61
  %350 = icmp sgt i32 %348, %349
  br i1 %350, label %351, label %364

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.EditFont, ptr %326, i64 0, i32 3
  %353 = sext i32 %348 to i64
  br label %354

354:                                              ; preds = %354, %351
  %355 = phi i64 [ %353, %351 ], [ %360, %354 ]
  %356 = load ptr, ptr %352, align 8, !tbaa !67
  %357 = getelementptr inbounds %struct.CharInfo, ptr %356, i64 %355
  %358 = getelementptr %struct.CharInfo, ptr %357, i64 -1
  %359 = load i64, ptr %358, align 2
  store i64 %359, ptr %357, align 2
  %360 = add nsw i64 %355, -1
  %361 = load i32, ptr %331, align 4, !tbaa !61
  %362 = sext i32 %361 to i64
  %363 = icmp sgt i64 %360, %362
  br i1 %363, label %354, label %364, !llvm.loop !68

364:                                              ; preds = %354, %347
  %365 = phi i32 [ %349, %347 ], [ %361, %354 ]
  %366 = trunc i64 %52 to i32
  %367 = getelementptr inbounds %struct.EditFont, ptr %326, i64 0, i32 2
  %368 = load ptr, ptr %367, align 8, !tbaa !62
  %369 = sext i32 %365 to i64
  %370 = getelementptr inbounds i32, ptr %368, i64 %369
  store i32 %366, ptr %370, align 4, !tbaa !63
  %371 = getelementptr inbounds %struct.EditFont, ptr %326, i64 0, i32 3
  %372 = load ptr, ptr %371, align 8, !tbaa !67
  %373 = load i32, ptr %331, align 4, !tbaa !61
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.CharInfo, ptr %372, i64 %374
  %376 = getelementptr inbounds %struct.Curve, ptr %324, i64 0, i32 63
  %377 = load i64, ptr %376, align 8
  store i64 %377, ptr %375, align 2
  %378 = load ptr, ptr %371, align 8, !tbaa !67
  %379 = load i32, ptr %331, align 4, !tbaa !61
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.CharInfo, ptr %378, i64 %380
  store i16 0, ptr %381, align 2, !tbaa !69
  %382 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 32
  %383 = load i32, ptr %382, align 4, !tbaa !70
  %384 = trunc i32 %383 to i16
  %385 = getelementptr inbounds %struct.CharInfo, ptr %378, i64 %380, i32 1
  store i16 %384, ptr %385, align 2, !tbaa !71
  %386 = add nsw i32 %379, 1
  store i32 %386, ptr %331, align 4, !tbaa !61
  %387 = load i32, ptr %327, align 8, !tbaa !59
  %388 = add nsw i32 %387, 1
  store i32 %388, ptr %327, align 8, !tbaa !59
  %389 = load ptr, ptr %367, align 8, !tbaa !62
  %390 = sext i32 %388 to i64
  %391 = getelementptr inbounds i32, ptr %389, i64 %390
  store i32 0, ptr %391, align 4, !tbaa !63
  br label %392

392:                                              ; preds = %364, %323, %295, %252, %89, %240
  store i1 false, ptr @insert_text_invoke.accentcode, align 4
  br label %393

393:                                              ; preds = %392, %322
  call fastcc void @kill_selection(ptr noundef %6, i32 noundef 1)
  %394 = call ptr @CTX_data_main(ptr noundef %0) #12
  %395 = load ptr, ptr %7, align 8, !tbaa !49
  %396 = getelementptr inbounds %struct.Curve, ptr %395, i64 0, i32 53
  %397 = load ptr, ptr %396, align 8, !tbaa !56
  call void @DAG_id_tag_update(ptr noundef %395, i16 noundef signext 0) #12
  %398 = getelementptr inbounds %struct.Curve, ptr %395, i64 0, i32 63
  %399 = getelementptr inbounds %struct.EditFont, ptr %397, i64 0, i32 3
  %400 = load ptr, ptr %399, align 8, !tbaa !67
  %401 = getelementptr inbounds %struct.EditFont, ptr %397, i64 0, i32 7
  %402 = load i32, ptr %401, align 4, !tbaa !61
  %403 = call i32 @llvm.usub.sat.i32(i32 %402, i32 1)
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.CharInfo, ptr %400, i64 %404
  %406 = load i64, ptr %405, align 2
  store i64 %406, ptr %398, align 8
  %407 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 31
  %408 = load i32, ptr %407, align 8, !tbaa !78
  %409 = icmp sgt i32 %408, 0
  br i1 %409, label %496, label %503

410:                                              ; preds = %83
  %411 = trunc i64 %52 to i32
  store i32 %411, ptr %4, align 8, !tbaa !63
  %412 = load ptr, ptr %7, align 8, !tbaa !49
  %413 = getelementptr inbounds %struct.Curve, ptr %412, i64 0, i32 53
  %414 = load ptr, ptr %413, align 8, !tbaa !56
  %415 = getelementptr inbounds %struct.EditFont, ptr %414, i64 0, i32 6
  %416 = load i32, ptr %415, align 8, !tbaa !59
  %417 = icmp slt i32 %416, 32765
  br i1 %417, label %418, label %479

418:                                              ; preds = %410
  %419 = getelementptr inbounds %struct.EditFont, ptr %414, i64 0, i32 7
  %420 = load i32, ptr %419, align 4, !tbaa !61
  %421 = icmp sgt i32 %416, %420
  br i1 %421, label %422, label %435

422:                                              ; preds = %418
  %423 = getelementptr inbounds %struct.EditFont, ptr %414, i64 0, i32 2
  %424 = load ptr, ptr %423, align 8, !tbaa !62
  %425 = sext i32 %416 to i64
  br label %426

426:                                              ; preds = %426, %422
  %427 = phi i64 [ %425, %422 ], [ %431, %426 ]
  %428 = getelementptr i32, ptr %424, i64 %427
  %429 = getelementptr i32, ptr %428, i64 -1
  %430 = load i32, ptr %429, align 4, !tbaa !63
  store i32 %430, ptr %428, align 4, !tbaa !63
  %431 = add nsw i64 %427, -1
  %432 = load i32, ptr %419, align 4, !tbaa !61
  %433 = sext i32 %432 to i64
  %434 = icmp sgt i64 %431, %433
  br i1 %434, label %426, label %435, !llvm.loop !64

435:                                              ; preds = %426, %418
  %436 = load i32, ptr %415, align 8, !tbaa !59
  %437 = load i32, ptr %419, align 4, !tbaa !61
  %438 = icmp sgt i32 %436, %437
  br i1 %438, label %439, label %452

439:                                              ; preds = %435
  %440 = getelementptr inbounds %struct.EditFont, ptr %414, i64 0, i32 3
  %441 = sext i32 %436 to i64
  br label %442

442:                                              ; preds = %442, %439
  %443 = phi i64 [ %441, %439 ], [ %448, %442 ]
  %444 = load ptr, ptr %440, align 8, !tbaa !67
  %445 = getelementptr inbounds %struct.CharInfo, ptr %444, i64 %443
  %446 = getelementptr %struct.CharInfo, ptr %445, i64 -1
  %447 = load i64, ptr %446, align 2
  store i64 %447, ptr %445, align 2
  %448 = add nsw i64 %443, -1
  %449 = load i32, ptr %419, align 4, !tbaa !61
  %450 = sext i32 %449 to i64
  %451 = icmp sgt i64 %448, %450
  br i1 %451, label %442, label %452, !llvm.loop !68

452:                                              ; preds = %442, %435
  %453 = phi i32 [ %437, %435 ], [ %449, %442 ]
  %454 = getelementptr inbounds %struct.EditFont, ptr %414, i64 0, i32 2
  %455 = load ptr, ptr %454, align 8, !tbaa !62
  %456 = sext i32 %453 to i64
  %457 = getelementptr inbounds i32, ptr %455, i64 %456
  store i32 %411, ptr %457, align 4, !tbaa !63
  %458 = getelementptr inbounds %struct.EditFont, ptr %414, i64 0, i32 3
  %459 = load ptr, ptr %458, align 8, !tbaa !67
  %460 = load i32, ptr %419, align 4, !tbaa !61
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.CharInfo, ptr %459, i64 %461
  %463 = getelementptr inbounds %struct.Curve, ptr %412, i64 0, i32 63
  %464 = load i64, ptr %463, align 8
  store i64 %464, ptr %462, align 2
  %465 = load ptr, ptr %458, align 8, !tbaa !67
  %466 = load i32, ptr %419, align 4, !tbaa !61
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.CharInfo, ptr %465, i64 %467
  store i16 0, ptr %468, align 2, !tbaa !69
  %469 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 32
  %470 = load i32, ptr %469, align 4, !tbaa !70
  %471 = trunc i32 %470 to i16
  %472 = getelementptr inbounds %struct.CharInfo, ptr %465, i64 %467, i32 1
  store i16 %471, ptr %472, align 2, !tbaa !71
  %473 = add nsw i32 %466, 1
  store i32 %473, ptr %419, align 4, !tbaa !61
  %474 = load i32, ptr %415, align 8, !tbaa !59
  %475 = add nsw i32 %474, 1
  store i32 %475, ptr %415, align 8, !tbaa !59
  %476 = load ptr, ptr %454, align 8, !tbaa !62
  %477 = sext i32 %475 to i64
  %478 = getelementptr inbounds i32, ptr %476, i64 %477
  store i32 0, ptr %478, align 4, !tbaa !63
  br label %479

479:                                              ; preds = %410, %452
  %480 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  %481 = load ptr, ptr %7, align 8, !tbaa !49
  %482 = getelementptr inbounds %struct.Curve, ptr %481, i64 0, i32 53
  %483 = load ptr, ptr %482, align 8, !tbaa !56
  tail call void @DAG_id_tag_update(ptr noundef %481, i16 noundef signext 0) #12
  %484 = getelementptr inbounds %struct.Curve, ptr %481, i64 0, i32 63
  %485 = getelementptr inbounds %struct.EditFont, ptr %483, i64 0, i32 3
  %486 = load ptr, ptr %485, align 8, !tbaa !67
  %487 = getelementptr inbounds %struct.EditFont, ptr %483, i64 0, i32 7
  %488 = load i32, ptr %487, align 4, !tbaa !61
  %489 = tail call i32 @llvm.usub.sat.i32(i32 %488, i32 1)
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds %struct.CharInfo, ptr %486, i64 %490
  %492 = load i64, ptr %491, align 2
  store i64 %492, ptr %484, align 8
  %493 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 31
  %494 = load i32, ptr %493, align 8, !tbaa !78
  %495 = icmp sgt i32 %494, 0
  br i1 %495, label %496, label %503

496:                                              ; preds = %479, %393
  %497 = phi ptr [ %395, %393 ], [ %481, %479 ]
  %498 = getelementptr inbounds %struct.Curve, ptr %497, i64 0, i32 63, i32 1
  %499 = load i16, ptr %498, align 2, !tbaa !79
  %500 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 32
  %501 = call i16 @llvm.smax.i16(i16 %499, i16 1)
  %502 = zext nneg i16 %501 to i32
  store i32 %502, ptr %500, align 4
  br label %503

503:                                              ; preds = %496, %479, %393
  %504 = load ptr, ptr %7, align 8, !tbaa !49
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %504) #12
  %505 = load i32, ptr %4, align 8, !tbaa !63
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %510, label %507

507:                                              ; preds = %503
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  store i64 0, ptr %5, align 8
  %508 = call i64 @BLI_strncpy_wchar_as_utf8(ptr noundef nonnull %5, ptr noundef nonnull %4, i64 noundef 8) #12
  %509 = load ptr, ptr %24, align 8, !tbaa !74
  call void @RNA_string_set(ptr noundef %509, ptr noundef nonnull @.str.63, ptr noundef nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  br label %510

510:                                              ; preds = %507, %503, %65, %69, %54, %56, %60, %64, %45, %34, %38, %42, %28
  %511 = phi i32 [ %29, %28 ], [ 4, %42 ], [ 4, %38 ], [ 4, %34 ], [ 8, %45 ], [ 8, %64 ], [ 8, %60 ], [ 8, %56 ], [ 8, %54 ], [ 8, %69 ], [ 8, %65 ], [ 4, %503 ], [ 4, %507 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret i32 %511
}

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @FONT_OT_textbox_add(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.69, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.70, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.71, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @textbox_add_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable_font, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @textbox_add_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 60
  %7 = load i32, ptr %6, align 8, !tbaa !137
  %8 = icmp slt i32 %7, 256
  br i1 %8, label %9, label %37

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 61
  %11 = load i32, ptr %10, align 4, !tbaa !138
  %12 = icmp sgt i32 %7, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 59
  %15 = sext i32 %7 to i64
  br label %16

16:                                               ; preds = %13, %16
  %17 = phi i64 [ %15, %13 ], [ %21, %16 ]
  %18 = load ptr, ptr %14, align 8, !tbaa !139
  %19 = getelementptr inbounds %struct.TextBox, ptr %18, i64 %17
  %20 = getelementptr %struct.TextBox, ptr %19, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %19, ptr noundef nonnull align 4 dereferenceable(16) %20, i64 16, i1 false), !tbaa.struct !140
  %21 = add nsw i64 %17, -1
  %22 = load i32, ptr %10, align 4, !tbaa !138
  %23 = sext i32 %22 to i64
  %24 = icmp sgt i64 %21, %23
  br i1 %24, label %16, label %25, !llvm.loop !141

25:                                               ; preds = %16, %9
  %26 = phi i32 [ %11, %9 ], [ %22, %16 ]
  %27 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 61
  %28 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 59
  %29 = load ptr, ptr %28, align 8, !tbaa !139
  %30 = sext i32 %26 to i64
  %31 = getelementptr inbounds %struct.TextBox, ptr %29, i64 %30
  %32 = getelementptr %struct.TextBox, ptr %31, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %31, ptr noundef nonnull align 4 dereferenceable(16) %32, i64 16, i1 false), !tbaa.struct !140
  %33 = load i32, ptr %27, align 4, !tbaa !138
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %27, align 4, !tbaa !138
  %35 = load i32, ptr %6, align 8, !tbaa !137
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr %6, align 8, !tbaa !137
  br label %37

37:                                               ; preds = %25, %2
  %38 = load ptr, ptr %4, align 8, !tbaa !49
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %38) #12
  ret i32 4
}

declare i32 @ED_operator_object_active_editable_font(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @FONT_OT_textbox_remove(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.72, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.73, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.74, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @textbox_remove_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_object_active_editable_font, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !119
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.75, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i32 noundef 0, i32 noundef 2147483647) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @textbox_remove_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_active_object(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = tail call i32 @RNA_int_get(ptr noundef %7, ptr noundef nonnull @.str.75) #12
  %9 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 60
  %10 = load i32, ptr %9, align 8, !tbaa !137
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load i32, ptr %9, align 8, !tbaa !137
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 59
  %17 = sext i32 %8 to i64
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i64 [ %17, %15 ], [ %22, %18 ]
  %20 = load ptr, ptr %16, align 8, !tbaa !139
  %21 = getelementptr inbounds %struct.TextBox, ptr %20, i64 %19
  %22 = add nsw i64 %19, 1
  %23 = getelementptr inbounds %struct.TextBox, ptr %20, i64 %22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %21, ptr noundef nonnull align 4 dereferenceable(16) %23, i64 16, i1 false), !tbaa.struct !140
  %24 = load i32, ptr %9, align 8, !tbaa !137
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %18, label %27, !llvm.loop !142

27:                                               ; preds = %18, %12
  %28 = phi i32 [ %13, %12 ], [ %24, %18 ]
  %29 = add nsw i32 %28, -1
  store i32 %29, ptr %9, align 8, !tbaa !137
  %30 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 61
  %31 = load i32, ptr %30, align 4, !tbaa !138
  %32 = icmp slt i32 %31, %8
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = add nsw i32 %31, -1
  store i32 %34, ptr %30, align 4, !tbaa !138
  br label %35

35:                                               ; preds = %27, %33, %2
  %36 = load ptr, ptr %4, align 8, !tbaa !49
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %36) #12
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @make_editText(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 53
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %9 = tail call ptr %8(i64 noundef 88, ptr noundef nonnull @.str.78) #12
  store ptr %9, ptr %4, align 8, !tbaa !56
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %11 = tail call ptr %10(i64 noundef 131080, ptr noundef nonnull @.str.79) #12
  %12 = getelementptr inbounds %struct.EditFont, ptr %9, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !62
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %14 = tail call ptr %13(i64 noundef 262160, ptr noundef nonnull @.str.80) #12
  %15 = getelementptr inbounds %struct.EditFont, ptr %9, i64 0, i32 3
  store ptr %14, ptr %15, align 8, !tbaa !67
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %17 = tail call ptr %16(i64 noundef 131080, ptr noundef nonnull @.str.81) #12
  store ptr %17, ptr %9, align 8, !tbaa !123
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %19 = tail call ptr %18(i64 noundef 262160, ptr noundef nonnull @.str.82) #12
  %20 = getelementptr inbounds %struct.EditFont, ptr %9, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !124
  br label %21

21:                                               ; preds = %7, %1
  %22 = phi ptr [ %9, %7 ], [ %5, %1 ]
  %23 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !62
  %25 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 52
  %26 = load ptr, ptr %25, align 8, !tbaa !113
  %27 = tail call i64 @BLI_strncpy_wchar_from_utf8(ptr noundef %24, ptr noundef %26, i64 noundef 32770) #12
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 6
  store i32 %28, ptr %29, align 8, !tbaa !59
  %30 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !67
  %32 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 62
  %33 = load ptr, ptr %32, align 8, !tbaa !114
  %34 = shl i64 %27, 32
  %35 = ashr exact i64 %34, 29
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %31, ptr align 2 %33, i64 %35, i1 false)
  %36 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 7
  %37 = load i32, ptr %36, align 4, !tbaa !61
  %38 = load i32, ptr %29, align 8, !tbaa !59
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %21
  store i32 %38, ptr %36, align 4, !tbaa !61
  br label %41

41:                                               ; preds = %40, %21
  %42 = load ptr, ptr %30, align 8, !tbaa !67
  %43 = load i32, ptr %36, align 4, !tbaa !61
  %44 = tail call i32 @llvm.usub.sat.i32(i32 %43, i32 1)
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 63
  %47 = getelementptr inbounds %struct.CharInfo, ptr %42, i64 %45
  %48 = load i64, ptr %47, align 2
  store i64 %48, ptr %46, align 8
  %49 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 47
  %50 = load i32, ptr %49, align 4, !tbaa !117
  store i32 %50, ptr %36, align 4, !tbaa !61
  %51 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 48
  %52 = load i32, ptr %51, align 8, !tbaa !143
  %53 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 8
  store i32 %52, ptr %53, align 8, !tbaa !121
  %54 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 49
  %55 = load i32, ptr %54, align 4, !tbaa !144
  %56 = getelementptr inbounds %struct.EditFont, ptr %22, i64 0, i32 9
  store i32 %55, ptr %56, align 4, !tbaa !122
  tail call void @BKE_vfont_select_clamp(ptr noundef %0) #12
  ret void
}

declare i64 @BLI_strncpy_wchar_from_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @BKE_vfont_select_clamp(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @load_editText(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 53
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 52
  %8 = load ptr, ptr %7, align 8, !tbaa !113
  tail call void %6(ptr noundef %8) #12
  %9 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !59
  %11 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 50
  store i32 %10, ptr %11, align 8, !tbaa !116
  %12 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = tail call i64 @BLI_wstrlen_utf8(ptr noundef %13) #12
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 51
  store i32 %15, ptr %16, align 4, !tbaa !115
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !47
  %18 = shl i64 %14, 32
  %19 = ashr exact i64 %18, 32
  %20 = add nsw i64 %19, 4
  %21 = tail call ptr %17(i64 noundef %20, ptr noundef nonnull @.str.83) #12
  store ptr %21, ptr %7, align 8, !tbaa !113
  %22 = load ptr, ptr %12, align 8, !tbaa !62
  %23 = load i32, ptr %16, align 4, !tbaa !115
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = tail call i64 @BLI_strncpy_wchar_as_utf8(ptr noundef %21, ptr noundef %22, i64 noundef %25) #12
  %27 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 62
  %28 = load ptr, ptr %27, align 8, !tbaa !114
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %1
  %31 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %31(ptr noundef nonnull %28) #12
  br label %32

32:                                               ; preds = %30, %1
  %33 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %34 = load i32, ptr %11, align 8, !tbaa !116
  %35 = add nsw i32 %34, 4
  %36 = sext i32 %35 to i64
  %37 = shl nsw i64 %36, 3
  %38 = tail call ptr %33(i64 noundef %37, ptr noundef nonnull @.str.84) #12
  store ptr %38, ptr %27, align 8, !tbaa !114
  %39 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !67
  %41 = load i32, ptr %11, align 8, !tbaa !116
  %42 = sext i32 %41 to i64
  %43 = shl nsw i64 %42, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %38, ptr align 2 %40, i64 %43, i1 false)
  %44 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 7
  %45 = load i32, ptr %44, align 4, !tbaa !61
  %46 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 47
  store i32 %45, ptr %46, align 4, !tbaa !117
  %47 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 8
  %48 = load i32, ptr %47, align 8, !tbaa !121
  %49 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 48
  store i32 %48, ptr %49, align 8, !tbaa !143
  %50 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 9
  %51 = load i32, ptr %50, align 4, !tbaa !122
  %52 = getelementptr inbounds %struct.Curve, ptr %3, i64 0, i32 49
  store i32 %51, ptr %52, align 4, !tbaa !144
  ret void
}

declare i64 @BLI_wstrlen_utf8(ptr noundef) local_unnamed_addr #2

declare i64 @BLI_strncpy_wchar_as_utf8(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @free_editText(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  tail call void @BKE_curve_editfont_free(ptr noundef %3) #12
  ret void
}

declare void @BKE_curve_editfont_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @FONT_OT_case_set(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.85, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.86, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.87, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @set_case_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !119
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.88, ptr noundef nonnull @case_items, i32 noundef 0, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @set_case_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.88) #12
  tail call fastcc void @set_case(ptr noundef %0, i32 noundef %5)
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @FONT_OT_case_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.91, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.92, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.93, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @toggle_case_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editfont, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @toggle_case_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.Object, ptr %3, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.Curve, ptr %5, i64 0, i32 53
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.EditFont, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = tail call i64 @wcslen(ptr noundef %9) #13
  %11 = trunc i64 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %2, %19
  %14 = phi i32 [ %20, %19 ], [ %11, %2 ]
  %15 = phi ptr [ %21, %19 ], [ %9, %2 ]
  %16 = load i32, ptr %15, align 4, !tbaa !63
  %17 = add i32 %16, -97
  %18 = icmp ult i32 %17, 26
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = add nsw i32 %14, -1
  %21 = getelementptr inbounds i32, ptr %15, i64 1
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %23, label %13, !llvm.loop !145

23:                                               ; preds = %19, %13, %2
  %24 = phi i32 [ 1, %2 ], [ 1, %19 ], [ 0, %13 ]
  tail call fastcc void @set_case(ptr noundef %0, i32 noundef %24)
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @FONT_OT_open(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.94, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.95, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.96, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @font_open_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @open_invoke, ptr %5, align 8, !tbaa !73
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @font_open_cancel, ptr %6, align 8, !tbaa !146
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %7, align 8, !tbaa !46
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2176, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 9, i16 noundef signext 0) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @font_open_exec(ptr noundef %0, ptr nocapture noundef %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #12
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  call void @RNA_string_get(ptr noundef %7, ptr noundef nonnull @.str.100, ptr noundef nonnull %4) #12
  %8 = call ptr @BKE_vfont_load(ptr noundef %5, ptr noundef nonnull %4) #12
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !147
  %12 = icmp eq ptr %11, null
  br i1 %9, label %13, label %16

13:                                               ; preds = %2
  br i1 %12, label %35, label %14

14:                                               ; preds = %13
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  call void %15(ptr noundef nonnull %11) #12
  br label %35

16:                                               ; preds = %2
  br i1 %12, label %17, label %21

17:                                               ; preds = %16
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %19 = call ptr %18(i64 noundef 32, ptr noundef nonnull @.str.153) #12
  store ptr %19, ptr %10, align 8, !tbaa !147
  %20 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %19, i64 0, i32 1
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef %19, ptr noundef nonnull %20) #12
  br label %21

21:                                               ; preds = %17, %16
  %22 = load ptr, ptr %10, align 8, !tbaa !147
  %23 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !148
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !109
  %29 = add nsw i32 %28, -1
  store i32 %29, ptr %27, align 4, !tbaa !109
  call void @RNA_id_pointer_create(ptr noundef nonnull %8, ptr noundef nonnull %3) #12
  %30 = load ptr, ptr %23, align 8, !tbaa !148
  call void @RNA_property_pointer_set(ptr noundef %22, ptr noundef %30, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %3) #12
  %31 = load ptr, ptr %23, align 8, !tbaa !148
  call void @RNA_property_update(ptr noundef %0, ptr noundef %22, ptr noundef %31) #12
  br label %32

32:                                               ; preds = %26, %21
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %34 = load ptr, ptr %10, align 8, !tbaa !147
  call void %33(ptr noundef %34) #12
  br label %35

35:                                               ; preds = %13, %14, %32
  %36 = phi i32 [ 4, %32 ], [ 2, %14 ], [ 2, %13 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @open_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %6 = tail call ptr %5(i64 noundef 32, ptr noundef nonnull @.str.153) #12
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %6, ptr %7, align 8, !tbaa !147
  %8 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %6, i64 0, i32 1
  tail call void @uiIDContextProperty(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %8) #12
  %9 = load ptr, ptr %7, align 8, !tbaa !147
  %10 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !148
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @RNA_property_pointer_get(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %4, ptr noundef %9, ptr noundef nonnull %11) #12
  %14 = load ptr, ptr %4, align 8, !tbaa.struct !152
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  br label %15

15:                                               ; preds = %13, %3
  %16 = phi ptr [ %14, %13 ], [ null, %3 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = call zeroext i8 @BKE_vfont_is_builtin(ptr noundef nonnull %16) #12
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.VFont, ptr %16, i64 0, i32 1
  br label %23

23:                                               ; preds = %15, %18, %21
  %24 = phi ptr [ %22, %21 ], [ getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 6), %18 ], [ getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 6), %15 ]
  %25 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !74
  %27 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %26, ptr noundef nonnull @.str.100) #12
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = call i32 @font_open_exec(ptr noundef %0, ptr noundef %1), !range !80
  br label %33

31:                                               ; preds = %23
  %32 = load ptr, ptr %25, align 8, !tbaa !74
  call void @RNA_string_set(ptr noundef %32, ptr noundef nonnull @.str.100, ptr noundef nonnull %24) #12
  call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #12
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ 1, %31 ]
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal void @font_open_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #1 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !147
  tail call void %3(ptr noundef %5) #12
  store ptr null, ptr %4, align 8, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @FONT_OT_unlink(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.97, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.98, ptr %2, align 8, !tbaa !43
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.99, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @font_unlink_exec, ptr %4, align 8, !tbaa !44
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @font_unlink_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PropertyPointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #12
  %5 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %4, i64 0, i32 1
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %6 = load ptr, ptr %5, align 8, !tbaa !148
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  call void @BKE_report(ptr noundef %10, i32 noundef 32, ptr noundef nonnull @.str.154) #12
  br label %15

11:                                               ; preds = %2
  %12 = call ptr @BKE_vfont_builtin_get() #12
  call void @RNA_id_pointer_create(ptr noundef %12, ptr noundef nonnull %3) #12
  %13 = load ptr, ptr %5, align 8, !tbaa !148
  call void @RNA_property_pointer_set(ptr noundef nonnull %4, ptr noundef %13, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %3) #12
  %14 = load ptr, ptr %5, align 8, !tbaa !148
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %14) #12
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ 2, %8 ], [ 4, %11 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local void @undo_push_font(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  tail call void @undo_editmode_push(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @get_undoFont, ptr noundef nonnull @free_undoFont, ptr noundef nonnull @undoFont_to_editFont, ptr noundef nonnull @editFont_to_undoFont, ptr noundef null) #12
  ret void
}

declare void @undo_editmode_push(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @get_undoFont(ptr noundef %0) #1 {
  %2 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !153
  %7 = icmp eq i16 %6, 4
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  br label %11

11:                                               ; preds = %1, %4, %8
  %12 = phi ptr [ %10, %8 ], [ null, %4 ], [ null, %1 ]
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define internal void @free_undoFont(ptr noundef %0) #1 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %2(ptr noundef %0) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @undoFont_to_editFont(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #5 {
  %4 = getelementptr inbounds %struct.Curve, ptr %1, i64 0, i32 53
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = load i16, ptr %0, align 2, !tbaa !154
  %7 = sext i16 %6 to i32
  %8 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 7
  store i32 %7, ptr %8, align 4, !tbaa !61
  %9 = getelementptr inbounds i8, ptr %0, i64 2
  %10 = load i16, ptr %9, align 2, !tbaa !154
  %11 = sext i16 %10 to i32
  %12 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 6
  store i32 %11, ptr %12, align 8, !tbaa !59
  %13 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !62
  %15 = getelementptr inbounds i8, ptr %0, i64 4
  %16 = add nsw i32 %11, 1
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %14, ptr nonnull align 1 %15, i64 %18, i1 false)
  %19 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !67
  %21 = load i32, ptr %12, align 8, !tbaa !59
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 2
  %25 = getelementptr inbounds i8, ptr %15, i64 %24
  %26 = sext i32 %21 to i64
  %27 = shl nsw i64 %26, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %20, ptr nonnull align 1 %25, i64 %27, i1 false)
  %28 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 9
  store i32 0, ptr %28, align 4, !tbaa !122
  %29 = getelementptr inbounds %struct.EditFont, ptr %5, i64 0, i32 8
  store i32 0, ptr %29, align 8, !tbaa !121
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @editFont_to_undoFont(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #1 {
  %3 = getelementptr inbounds %struct.Curve, ptr %0, i64 0, i32 53
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %6 = tail call ptr %5(i64 noundef 393248, ptr noundef nonnull @.str.155) #12
  %7 = getelementptr inbounds i8, ptr %6, i64 4
  %8 = getelementptr inbounds %struct.EditFont, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = getelementptr inbounds %struct.EditFont, ptr %4, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !59
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %7, ptr align 4 %9, i64 %14, i1 false)
  %15 = load i32, ptr %10, align 8, !tbaa !59
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 2
  %19 = getelementptr inbounds i8, ptr %7, i64 %18
  %20 = getelementptr inbounds %struct.EditFont, ptr %4, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !67
  %22 = sext i32 %15 to i64
  %23 = shl nsw i64 %22, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %19, ptr align 2 %21, i64 %23, i1 false)
  %24 = getelementptr inbounds %struct.EditFont, ptr %4, i64 0, i32 7
  %25 = load i32, ptr %24, align 4, !tbaa !61
  %26 = trunc i32 %25 to i16
  store i16 %26, ptr %6, align 2, !tbaa !154
  %27 = load i32, ptr %10, align 8, !tbaa !59
  %28 = trunc i32 %27 to i16
  %29 = getelementptr inbounds i8, ptr %6, i64 2
  store i16 %28, ptr %29, align 2, !tbaa !154
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @mouse_font(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) local_unnamed_addr #1 {
  %6 = alloca %struct.ViewContext, align 8
  %7 = alloca [2 x float], align 4
  %8 = alloca [4 x [3 x float]], align 16
  %9 = alloca [4 x [2 x float]], align 16
  %10 = alloca %struct.rctf, align 4
  %11 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %12 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  %14 = load i32, ptr %1, align 4, !tbaa !63
  %15 = sitofp i32 %14 to float
  store float %15, ptr %7, align 4, !tbaa !86
  %16 = getelementptr inbounds float, ptr %7, i64 1
  %17 = getelementptr inbounds i32, ptr %1, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !63
  %19 = sitofp i32 %18 to float
  store float %19, ptr %16, align 4, !tbaa !86
  %20 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 61
  %21 = load i32, ptr %20, align 4, !tbaa !138
  %22 = tail call i32 @llvm.smax.i32(i32 %21, i32 1)
  %23 = add nsw i32 %22, -1
  %24 = tail call float @ED_view3d_select_dist_px() #12
  call void @view3d_set_viewcontext(ptr noundef %0, ptr noundef nonnull %6) #12
  %25 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !155
  %27 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !157
  call void @ED_view3d_init_mats_rv3d(ptr noundef %26, ptr noundef %28) #12
  %29 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 60
  %30 = load i32, ptr %29, align 8, !tbaa !137
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %113

32:                                               ; preds = %5
  %33 = fmul float %24, %24
  %34 = getelementptr inbounds %struct.Curve, ptr %13, i64 0, i32 59
  %35 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 2
  %36 = getelementptr inbounds float, ptr %8, i64 1
  %37 = getelementptr inbounds float, ptr %8, i64 2
  %38 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 1
  %39 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 3
  %40 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 1, i64 1
  %41 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 1, i64 2
  %42 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 2
  %43 = getelementptr inbounds %struct.rctf, ptr %10, i64 0, i32 1
  %44 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 2, i64 1
  %45 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 2, i64 2
  %46 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 3
  %47 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 3, i64 1
  %48 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 3, i64 2
  %49 = getelementptr inbounds %struct.ViewContext, ptr %6, i64 0, i32 3
  br label %50

50:                                               ; preds = %32, %102
  %51 = phi i32 [ %30, %32 ], [ %111, %102 ]
  %52 = phi i32 [ 0, %32 ], [ %110, %102 ]
  %53 = phi float [ %33, %32 ], [ %109, %102 ]
  %54 = phi i32 [ -1, %32 ], [ %108, %102 ]
  %55 = add nuw nsw i32 %23, %52
  %56 = srem i32 %55, %51
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #12
  %57 = load ptr, ptr %34, align 8, !tbaa !139
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds %struct.TextBox, ptr %57, i64 %58
  call void @BKE_curve_rect_from_textbox(ptr noundef %13, ptr noundef %59, ptr noundef nonnull %10) #12
  %60 = load float, ptr %10, align 4, !tbaa !158
  %61 = load float, ptr %35, align 4, !tbaa !159
  store float %60, ptr %8, align 16, !tbaa !86
  store float %61, ptr %36, align 4, !tbaa !86
  store float 0.000000e+00, ptr %37, align 8, !tbaa !86
  %62 = load float, ptr %39, align 4, !tbaa !160
  store float %60, ptr %38, align 4, !tbaa !86
  store float %62, ptr %40, align 16, !tbaa !86
  store float 0.000000e+00, ptr %41, align 4, !tbaa !86
  %63 = load float, ptr %43, align 4, !tbaa !161
  store float %63, ptr %42, align 8, !tbaa !86
  store float %62, ptr %44, align 4, !tbaa !86
  store float 0.000000e+00, ptr %45, align 16, !tbaa !86
  store float %63, ptr %46, align 4, !tbaa !86
  store float %61, ptr %47, align 8, !tbaa !86
  store float 0.000000e+00, ptr %48, align 4, !tbaa !86
  br label %64

64:                                               ; preds = %50, %64
  %65 = phi i64 [ 0, %50 ], [ %76, %64 ]
  %66 = phi i32 [ 0, %50 ], [ %75, %64 ]
  %67 = load ptr, ptr %49, align 8, !tbaa !162
  %68 = getelementptr inbounds [4 x [3 x float]], ptr %8, i64 0, i64 %65
  %69 = getelementptr inbounds [4 x [2 x float]], ptr %9, i64 0, i64 %65
  %70 = call i32 @ED_view3d_project_float_object(ptr noundef %67, ptr noundef nonnull %68, ptr noundef nonnull %69, i32 noundef 1) #12
  %71 = icmp eq i32 %70, 0
  %72 = trunc i64 %65 to i32
  %73 = shl nuw nsw i32 1, %72
  %74 = select i1 %71, i32 %73, i32 0
  %75 = or i32 %74, %66
  %76 = add nuw nsw i64 %65, 1
  %77 = icmp eq i64 %76, 4
  br i1 %77, label %78, label %64, !llvm.loop !163

78:                                               ; preds = %64, %97
  %79 = phi i64 [ %99, %97 ], [ 0, %64 ]
  %80 = phi i32 [ %100, %97 ], [ 3, %64 ]
  %81 = phi float [ %98, %97 ], [ %53, %64 ]
  %82 = trunc i64 %79 to i32
  %83 = shl nuw nsw i32 1, %82
  %84 = and i32 %83, %75
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %78
  %87 = shl nuw nsw i32 1, %80
  %88 = and i32 %87, %75
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %86
  %91 = zext nneg i32 %80 to i64
  %92 = getelementptr inbounds [4 x [2 x float]], ptr %9, i64 0, i64 %91
  %93 = getelementptr inbounds [4 x [2 x float]], ptr %9, i64 0, i64 %79
  %94 = call float @dist_squared_to_line_segment_v2(ptr noundef nonnull %7, ptr noundef nonnull %92, ptr noundef nonnull %93) #12
  %95 = fcmp ogt float %81, %94
  %96 = select i1 %95, float %94, float %81
  br label %97

97:                                               ; preds = %78, %86, %90
  %98 = phi float [ %96, %90 ], [ %81, %86 ], [ %81, %78 ]
  %99 = add nuw nsw i64 %79, 1
  %100 = trunc i64 %79 to i32
  %101 = icmp eq i64 %99, 4
  br i1 %101, label %102, label %78, !llvm.loop !164

102:                                              ; preds = %97
  %103 = icmp eq i32 %52, 0
  %104 = fadd float %98, 4.000000e+00
  %105 = select i1 %103, float %104, float %98
  %106 = fcmp olt float %105, %53
  %107 = add nsw i32 %56, 1
  %108 = select i1 %106, i32 %107, i32 %54
  %109 = select i1 %106, float %105, float %53
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #12
  %110 = add nuw nsw i32 %52, 1
  %111 = load i32, ptr %29, align 8, !tbaa !137
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %50, label %113, !llvm.loop !165

113:                                              ; preds = %102, %5
  %114 = phi i32 [ -1, %5 ], [ %108, %102 ]
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %121, label %116

116:                                              ; preds = %113
  %117 = load i32, ptr %20, align 4, !tbaa !138
  %118 = icmp eq i32 %117, %114
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  store i32 %114, ptr %20, align 4, !tbaa !138
  %120 = load ptr, ptr %12, align 8, !tbaa !49
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %120) #12
  br label %121

121:                                              ; preds = %113, %116, %119
  %122 = phi i8 [ 1, %119 ], [ 1, %116 ], [ 0, %113 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #12
  ret i8 %122
}

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare float @ED_view3d_select_dist_px() local_unnamed_addr #2

declare void @view3d_set_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_view3d_init_mats_rv3d(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_curve_rect_from_textbox(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ED_view3d_project_float_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare float @dist_squared_to_line_segment_v2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @RNA_string_get_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @font_paste_wchar(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr noundef readonly %3) unnamed_addr #1 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.Curve, ptr %10, i64 0, i32 53
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %13 = call i32 @BKE_vfont_select_get(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %7) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, ptr %7, align 4, !tbaa !63
  store i32 0, ptr %8, align 4, !tbaa !63
  br label %16

16:                                               ; preds = %15, %4
  %17 = getelementptr inbounds %struct.EditFont, ptr %12, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !59
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %2
  %21 = load i32, ptr %7, align 4, !tbaa !63
  %22 = load i32, ptr %8, align 4, !tbaa !63
  %23 = sub nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = sub i64 %20, %24
  %26 = icmp ult i64 %25, 32767
  br i1 %26, label %27, label %116

27:                                               ; preds = %16
  %28 = load ptr, ptr %9, align 8, !tbaa !49
  %29 = getelementptr inbounds %struct.Curve, ptr %28, i64 0, i32 53
  %30 = load ptr, ptr %29, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  %31 = call i32 @BKE_vfont_select_get(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %5) #12
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %71, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.EditFont, ptr %30, i64 0, i32 7
  %35 = load i32, ptr %34, align 4, !tbaa !61
  %36 = load i32, ptr %6, align 4, !tbaa !63
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 %36, ptr %34, align 4, !tbaa !61
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, ptr %5, align 4, !tbaa !63
  %41 = add i32 %40, 1
  %42 = getelementptr inbounds %struct.EditFont, ptr %30, i64 0, i32 6
  %43 = load i32, ptr %42, align 8, !tbaa !59
  %44 = sext i32 %36 to i64
  %45 = sub i32 %43, %36
  %46 = shl i32 %45, 2
  %47 = getelementptr inbounds %struct.EditFont, ptr %30, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !62
  %49 = getelementptr inbounds i32, ptr %48, i64 %44
  %50 = sext i32 %41 to i64
  %51 = getelementptr inbounds i32, ptr %48, i64 %50
  %52 = sext i32 %46 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %49, ptr align 4 %51, i64 %52, i1 false)
  %53 = getelementptr inbounds %struct.EditFont, ptr %30, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !67
  %55 = load i32, ptr %6, align 4, !tbaa !63
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.CharInfo, ptr %54, i64 %56
  %58 = getelementptr inbounds %struct.CharInfo, ptr %54, i64 %50
  %59 = load i32, ptr %42, align 8, !tbaa !59
  %60 = sub i32 %59, %55
  %61 = sext i32 %60 to i64
  %62 = shl nsw i64 %61, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %57, ptr align 2 %58, i64 %62, i1 false)
  %63 = load i32, ptr %5, align 4, !tbaa !63
  %64 = load i32, ptr %6, align 4, !tbaa !63
  %65 = xor i32 %63, -1
  %66 = add i32 %64, %65
  %67 = load i32, ptr %42, align 8, !tbaa !59
  %68 = add i32 %66, %67
  store i32 %68, ptr %42, align 8, !tbaa !59
  %69 = getelementptr inbounds %struct.EditFont, ptr %30, i64 0, i32 9
  store i32 0, ptr %69, align 4, !tbaa !122
  %70 = getelementptr inbounds %struct.EditFont, ptr %30, i64 0, i32 8
  store i32 0, ptr %70, align 8, !tbaa !121
  br label %71

71:                                               ; preds = %27, %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  %72 = icmp eq i64 %2, 0
  br i1 %72, label %116, label %73

73:                                               ; preds = %71
  %74 = load i32, ptr %17, align 8, !tbaa !59
  %75 = getelementptr inbounds %struct.EditFont, ptr %12, i64 0, i32 7
  %76 = load i32, ptr %75, align 4, !tbaa !61
  %77 = sext i32 %76 to i64
  %78 = sub i32 %74, %76
  %79 = shl i32 %78, 2
  %80 = add i32 %79, 4
  %81 = getelementptr inbounds %struct.EditFont, ptr %12, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !62
  %83 = getelementptr inbounds i32, ptr %82, i64 %77
  %84 = getelementptr inbounds i32, ptr %83, i64 %2
  %85 = sext i32 %80 to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %84, ptr align 4 %83, i64 %85, i1 false)
  %86 = load ptr, ptr %81, align 8, !tbaa !62
  %87 = load i32, ptr %75, align 4, !tbaa !61
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, ptr %86, i64 %88
  %90 = shl nsw i64 %2, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %89, ptr align 4 %1, i64 %90, i1 false)
  %91 = getelementptr inbounds %struct.EditFont, ptr %12, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !67
  %93 = load i32, ptr %75, align 4, !tbaa !61
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.CharInfo, ptr %92, i64 %94
  %96 = getelementptr inbounds %struct.CharInfo, ptr %95, i64 %2
  %97 = load i32, ptr %17, align 8, !tbaa !59
  %98 = sub i32 %97, %93
  %99 = add i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = shl nsw i64 %100, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %96, ptr align 2 %95, i64 %101, i1 false)
  %102 = icmp eq ptr %3, null
  %103 = load ptr, ptr %91, align 8, !tbaa !67
  %104 = load i32, ptr %75, align 4, !tbaa !61
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.CharInfo, ptr %103, i64 %105
  %107 = shl nsw i64 %2, 3
  br i1 %102, label %109, label %108

108:                                              ; preds = %73
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %106, ptr nonnull align 2 %3, i64 %107, i1 false)
  br label %110

109:                                              ; preds = %73
  call void @llvm.memset.p0.i64(ptr align 2 %106, i8 0, i64 %107, i1 false)
  br label %110

110:                                              ; preds = %109, %108
  %111 = load i32, ptr %17, align 8, !tbaa !59
  %112 = trunc i64 %2 to i32
  %113 = add i32 %111, %112
  store i32 %113, ptr %17, align 8, !tbaa !59
  %114 = load i32, ptr %75, align 4, !tbaa !61
  %115 = add i32 %114, %112
  store i32 %115, ptr %75, align 4, !tbaa !61
  br label %116

116:                                              ; preds = %16, %71, %110
  %117 = phi i8 [ 1, %110 ], [ 1, %71 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  ret i8 %117
}

declare i32 @BKE_vfont_select_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @kill_selection(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %struct.Curve, ptr %6, i64 0, i32 53
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %9 = call i32 @BKE_vfont_select_get(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %3) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %65, label %11

11:                                               ; preds = %2
  %12 = icmp ne i32 %1, 0
  %13 = zext i1 %12 to i32
  %14 = getelementptr inbounds %struct.EditFont, ptr %8, i64 0, i32 7
  %15 = load i32, ptr %14, align 4, !tbaa !61
  %16 = load i32, ptr %4, align 4, !tbaa !63
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = add nsw i32 %16, %13
  store i32 %19, ptr %14, align 4, !tbaa !61
  br label %20

20:                                               ; preds = %18, %11
  %21 = icmp eq i32 %9, -1
  %22 = and i1 %12, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = add nsw i32 %16, 1
  store i32 %24, ptr %4, align 4, !tbaa !63
  %25 = load i32, ptr %3, align 4, !tbaa !63
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %3, align 4, !tbaa !63
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, ptr %3, align 4, !tbaa !63
  %29 = icmp eq i32 %1, 0
  %30 = zext i1 %29 to i32
  %31 = add nuw nsw i32 %30, %13
  %32 = add i32 %31, %28
  %33 = getelementptr inbounds %struct.EditFont, ptr %8, i64 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !59
  %35 = load i32, ptr %4, align 4, !tbaa !63
  %36 = sext i32 %35 to i64
  %37 = add i32 %34, %13
  %38 = sub i32 %37, %35
  %39 = shl i32 %38, 2
  %40 = getelementptr inbounds %struct.EditFont, ptr %8, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !62
  %42 = getelementptr inbounds i32, ptr %41, i64 %36
  %43 = sext i32 %32 to i64
  %44 = getelementptr inbounds i32, ptr %41, i64 %43
  %45 = sext i32 %39 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %42, ptr align 4 %44, i64 %45, i1 false)
  %46 = getelementptr inbounds %struct.EditFont, ptr %8, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !67
  %48 = load i32, ptr %4, align 4, !tbaa !63
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.CharInfo, ptr %47, i64 %49
  %51 = getelementptr inbounds %struct.CharInfo, ptr %47, i64 %43
  %52 = load i32, ptr %33, align 8, !tbaa !59
  %53 = sub i32 %13, %48
  %54 = add i32 %53, %52
  %55 = sext i32 %54 to i64
  %56 = shl nsw i64 %55, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 2 %50, ptr align 2 %51, i64 %56, i1 false)
  %57 = load i32, ptr %3, align 4, !tbaa !63
  %58 = load i32, ptr %4, align 4, !tbaa !63
  %59 = xor i32 %57, -1
  %60 = add i32 %58, %59
  %61 = load i32, ptr %33, align 8, !tbaa !59
  %62 = add i32 %60, %61
  store i32 %62, ptr %33, align 8, !tbaa !59
  %63 = getelementptr inbounds %struct.EditFont, ptr %8, i64 0, i32 9
  store i32 0, ptr %63, align 4, !tbaa !122
  %64 = getelementptr inbounds %struct.EditFont, ptr %8, i64 0, i32 8
  store i32 0, ptr %64, align 8, !tbaa !121
  br label %65

65:                                               ; preds = %27, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_vfont_to_curve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_clipboard_text_get(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_object_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_object_base_init_transform(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_object_where_is_calc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_vfont_builtin_get() local_unnamed_addr #2

declare i64 @BLI_strlen_utf8_ex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_strcpy_rlen(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @set_style(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #1 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 53
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %11 = call i32 @BKE_vfont_select_get(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %45, label %13

13:                                               ; preds = %3
  %14 = load i32, ptr %4, align 4, !tbaa !63
  %15 = load i32, ptr %5, align 4, !tbaa !63
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %42, label %17

17:                                               ; preds = %13
  %18 = icmp eq i8 %2, 0
  %19 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 3
  %20 = trunc i32 %1 to i8
  %21 = xor i8 %20, -1
  %22 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 3
  %23 = trunc i32 %1 to i8
  %24 = sext i32 %14 to i64
  %25 = add i32 %15, 1
  br label %26

26:                                               ; preds = %17, %38
  %27 = phi i64 [ %24, %17 ], [ %39, %38 ]
  br i1 %18, label %33, label %28

28:                                               ; preds = %26
  %29 = load ptr, ptr %19, align 8, !tbaa !67
  %30 = getelementptr inbounds %struct.CharInfo, ptr %29, i64 %27, i32 2
  %31 = load i8, ptr %30, align 2, !tbaa !166
  %32 = and i8 %31, %21
  store i8 %32, ptr %30, align 2, !tbaa !166
  br label %38

33:                                               ; preds = %26
  %34 = load ptr, ptr %22, align 8, !tbaa !67
  %35 = getelementptr inbounds %struct.CharInfo, ptr %34, i64 %27, i32 2
  %36 = load i8, ptr %35, align 2, !tbaa !166
  %37 = or i8 %36, %23
  store i8 %37, ptr %35, align 2, !tbaa !166
  br label %38

38:                                               ; preds = %28, %33
  %39 = add nsw i64 %27, 1
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i32 %25, %40
  br i1 %41, label %42, label %26, !llvm.loop !167

42:                                               ; preds = %38, %13
  %43 = load ptr, ptr %7, align 8, !tbaa !49
  call void @DAG_id_tag_update(ptr noundef %43, i16 noundef signext 0) #12
  %44 = load ptr, ptr %7, align 8, !tbaa !49
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %44) #12
  br label %45

45:                                               ; preds = %3, %42
  %46 = phi i32 [ 4, %42 ], [ 2, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %46
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @move_cursor(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #1 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %7 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.Curve, ptr %8, i64 0, i32 53
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = icmp eq i8 %2, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !121
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 7
  %18 = load i32, ptr %17, align 4, !tbaa !61
  %19 = add nsw i32 %18, 1
  %20 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 9
  store i32 %19, ptr %20, align 4, !tbaa !122
  store i32 %19, ptr %13, align 8, !tbaa !121
  br label %21

21:                                               ; preds = %16, %12, %3
  switch i32 %1, label %102 [
    i32 0, label %33
    i32 1, label %22
    i32 4, label %72
    i32 5, label %81
    i32 2, label %90
    i32 3, label %94
    i32 6, label %98
    i32 7, label %99
    i32 8, label %100
    i32 9, label %101
  ]

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 3
  %24 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 7
  %25 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !59
  %27 = load i32, ptr %24, align 4, !tbaa !61
  %28 = icmp slt i32 %27, %26
  br i1 %28, label %29, label %102

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !62
  %32 = sext i32 %27 to i64
  br label %57

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 3
  %35 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 7
  %36 = load i32, ptr %35, align 4, !tbaa !61
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %102

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !62
  %41 = zext nneg i32 %36 to i64
  br label %42

42:                                               ; preds = %38, %54
  %43 = phi i64 [ %41, %38 ], [ %44, %54 ]
  %44 = add nsw i64 %43, -1
  %45 = getelementptr inbounds i32, ptr %40, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !63
  %47 = icmp eq i32 %46, 10
  br i1 %47, label %102, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %34, align 8, !tbaa !67
  %50 = getelementptr inbounds %struct.CharInfo, ptr %49, i64 %44, i32 2
  %51 = load i8, ptr %50, align 2, !tbaa !166
  %52 = and i8 %51, 8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %102

54:                                               ; preds = %48
  %55 = trunc i64 %44 to i32
  store i32 %55, ptr %35, align 4, !tbaa !61
  %56 = icmp sgt i64 %43, 1
  br i1 %56, label %42, label %102, !llvm.loop !168

57:                                               ; preds = %29, %67
  %58 = phi i64 [ %32, %29 ], [ %68, %67 ]
  %59 = getelementptr inbounds i32, ptr %31, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !63
  switch i32 %60, label %61 [
    i32 0, label %102
    i32 10, label %102
  ]

61:                                               ; preds = %57
  %62 = load ptr, ptr %23, align 8, !tbaa !67
  %63 = getelementptr inbounds %struct.CharInfo, ptr %62, i64 %58, i32 2
  %64 = load i8, ptr %63, align 2, !tbaa !166
  %65 = and i8 %64, 8
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %102

67:                                               ; preds = %61
  %68 = add nsw i64 %58, 1
  %69 = trunc i64 %68 to i32
  store i32 %69, ptr %24, align 4, !tbaa !61
  %70 = trunc i64 %68 to i32
  %71 = icmp eq i32 %26, %70
  br i1 %71, label %102, label %57, !llvm.loop !169

72:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %73 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 7
  %74 = load i32, ptr %73, align 4, !tbaa !61
  store i32 %74, ptr %4, align 4, !tbaa !63
  %75 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !62
  %77 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 6
  %78 = load i32, ptr %77, align 8, !tbaa !59
  %79 = sext i32 %78 to i64
  call void @BLI_str_cursor_step_wchar(ptr noundef %76, i64 noundef %79, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 1, i8 noundef zeroext 1) #12
  %80 = load i32, ptr %4, align 4, !tbaa !63
  store i32 %80, ptr %73, align 4, !tbaa !61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %102

81:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %82 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 7
  %83 = load i32, ptr %82, align 4, !tbaa !61
  store i32 %83, ptr %5, align 4, !tbaa !63
  %84 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !62
  %86 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 6
  %87 = load i32, ptr %86, align 8, !tbaa !59
  %88 = sext i32 %87 to i64
  call void @BLI_str_cursor_step_wchar(ptr noundef %85, i64 noundef %88, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 1, i8 noundef zeroext 1) #12
  %89 = load i32, ptr %5, align 4, !tbaa !63
  store i32 %89, ptr %82, align 4, !tbaa !61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %102

90:                                               ; preds = %21
  %91 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 7
  %92 = load i32, ptr %91, align 4, !tbaa !61
  %93 = add nsw i32 %92, -1
  store i32 %93, ptr %91, align 4, !tbaa !61
  br label %102

94:                                               ; preds = %21
  %95 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 7
  %96 = load i32, ptr %95, align 4, !tbaa !61
  %97 = add nsw i32 %96, 1
  store i32 %97, ptr %95, align 4, !tbaa !61
  br label %102

98:                                               ; preds = %21
  br label %102

99:                                               ; preds = %21
  br label %102

100:                                              ; preds = %21
  br label %102

101:                                              ; preds = %21
  br label %102

102:                                              ; preds = %57, %57, %61, %67, %48, %42, %54, %22, %33, %21, %101, %100, %99, %98, %94, %90, %81, %72
  %103 = phi i1 [ true, %21 ], [ false, %101 ], [ false, %100 ], [ false, %99 ], [ false, %98 ], [ false, %94 ], [ false, %90 ], [ false, %81 ], [ false, %72 ], [ false, %33 ], [ false, %22 ], [ false, %54 ], [ false, %42 ], [ false, %48 ], [ false, %67 ], [ false, %61 ], [ false, %57 ], [ false, %57 ]
  %104 = phi i1 [ false, %21 ], [ false, %101 ], [ false, %100 ], [ false, %99 ], [ true, %98 ], [ false, %94 ], [ false, %90 ], [ false, %81 ], [ false, %72 ], [ false, %33 ], [ false, %22 ], [ false, %54 ], [ false, %42 ], [ false, %48 ], [ false, %67 ], [ false, %61 ], [ false, %57 ], [ false, %57 ]
  %105 = phi i1 [ false, %21 ], [ false, %101 ], [ false, %100 ], [ true, %99 ], [ false, %98 ], [ false, %94 ], [ false, %90 ], [ false, %81 ], [ false, %72 ], [ false, %33 ], [ false, %22 ], [ false, %54 ], [ false, %42 ], [ false, %48 ], [ false, %67 ], [ false, %61 ], [ false, %57 ], [ false, %57 ]
  %106 = phi i1 [ false, %21 ], [ false, %101 ], [ true, %100 ], [ false, %99 ], [ false, %98 ], [ false, %94 ], [ false, %90 ], [ false, %81 ], [ false, %72 ], [ false, %33 ], [ false, %22 ], [ false, %54 ], [ false, %42 ], [ false, %48 ], [ false, %67 ], [ false, %61 ], [ false, %57 ], [ false, %57 ]
  %107 = phi i1 [ false, %21 ], [ true, %101 ], [ false, %100 ], [ false, %99 ], [ false, %98 ], [ false, %94 ], [ false, %90 ], [ false, %81 ], [ false, %72 ], [ false, %33 ], [ false, %22 ], [ false, %54 ], [ false, %42 ], [ false, %48 ], [ false, %67 ], [ false, %61 ], [ false, %57 ], [ false, %57 ]
  %108 = phi i32 [ -1, %21 ], [ %1, %101 ], [ %1, %100 ], [ 3, %99 ], [ 2, %98 ], [ 1, %94 ], [ 1, %90 ], [ 1, %81 ], [ 1, %72 ], [ 1, %33 ], [ 1, %22 ], [ 1, %54 ], [ 1, %42 ], [ 1, %48 ], [ 1, %67 ], [ 1, %61 ], [ 1, %57 ], [ 1, %57 ]
  br i1 %103, label %167, label %109

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 7
  %111 = load i32, ptr %110, align 4, !tbaa !61
  %112 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 6
  %113 = load i32, ptr %112, align 8, !tbaa !59
  %114 = icmp sgt i32 %111, %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %109
  %116 = icmp sgt i32 %111, 32765
  br i1 %116, label %119, label %117

117:                                              ; preds = %115
  %118 = icmp slt i32 %111, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %117, %115, %109
  %120 = phi i32 [ %113, %109 ], [ 32766, %115 ], [ 0, %117 ]
  store i32 %120, ptr %110, align 4, !tbaa !61
  br label %121

121:                                              ; preds = %119, %117
  %122 = or i1 %104, %105
  %123 = or i1 %122, %106
  %124 = or i1 %123, %107
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = call ptr @CTX_data_main(ptr noundef %0) #12
  %127 = call zeroext i8 @BKE_vfont_to_curve(ptr noundef %126, ptr noundef %6, i32 noundef %108) #12
  br label %128

128:                                              ; preds = %121, %125
  %129 = phi i32 [ 1, %125 ], [ %108, %121 ]
  br i1 %11, label %130, label %138

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 8
  %132 = load i32, ptr %131, align 8, !tbaa !121
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %130
  %135 = call ptr @CTX_data_main(ptr noundef %0) #12
  %136 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 9
  store i32 0, ptr %136, align 4, !tbaa !122
  store i32 0, ptr %131, align 8, !tbaa !121
  %137 = call zeroext i8 @BKE_vfont_to_curve(ptr noundef %135, ptr noundef %6, i32 noundef 10) #12
  br label %141

138:                                              ; preds = %128
  %139 = load i32, ptr %110, align 4, !tbaa !61
  %140 = getelementptr inbounds %struct.EditFont, ptr %10, i64 0, i32 9
  store i32 %139, ptr %140, align 4, !tbaa !122
  br label %141

141:                                              ; preds = %134, %130, %138
  %142 = call ptr @CTX_data_main(ptr noundef %0) #12
  %143 = load ptr, ptr %7, align 8, !tbaa !49
  %144 = getelementptr inbounds %struct.Curve, ptr %143, i64 0, i32 53
  %145 = load ptr, ptr %144, align 8, !tbaa !56
  %146 = call zeroext i8 @BKE_vfont_to_curve(ptr noundef %142, ptr noundef %6, i32 noundef %129) #12
  %147 = getelementptr inbounds %struct.Curve, ptr %143, i64 0, i32 63
  %148 = getelementptr inbounds %struct.EditFont, ptr %145, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !67
  %150 = getelementptr inbounds %struct.EditFont, ptr %145, i64 0, i32 7
  %151 = load i32, ptr %150, align 4, !tbaa !61
  %152 = call i32 @llvm.usub.sat.i32(i32 %151, i32 1)
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.CharInfo, ptr %149, i64 %153
  %155 = load i64, ptr %154, align 2
  store i64 %155, ptr %147, align 8
  %156 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 31
  %157 = load i32, ptr %156, align 8, !tbaa !78
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %141
  %160 = getelementptr inbounds %struct.Curve, ptr %143, i64 0, i32 63, i32 1
  %161 = load i16, ptr %160, align 2, !tbaa !79
  %162 = getelementptr inbounds %struct.Object, ptr %6, i64 0, i32 32
  %163 = call i16 @llvm.smax.i16(i16 %161, i16 1)
  %164 = zext nneg i16 %163 to i32
  store i32 %164, ptr %162, align 4
  br label %165

165:                                              ; preds = %141, %159
  %166 = load ptr, ptr %7, align 8, !tbaa !49
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %166) #12
  br label %167

167:                                              ; preds = %102, %165
  %168 = phi i32 [ 4, %165 ], [ 2, %102 ]
  ret i32 %168
}

declare void @BLI_str_cursor_step_wchar(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_strlen_utf8(ptr noundef) local_unnamed_addr #2

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @set_case(ptr noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds %struct.Curve, ptr %7, i64 0, i32 53
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %10 = call i32 @BKE_vfont_select_get(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %83, label %12

12:                                               ; preds = %2
  %13 = load i32, ptr %4, align 4, !tbaa !63
  %14 = load i32, ptr %3, align 4, !tbaa !63
  %15 = add i32 %13, 1
  %16 = sub i32 %15, %14
  %17 = getelementptr inbounds %struct.EditFont, ptr %9, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !62
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %12
  %21 = sext i32 %14 to i64
  %22 = getelementptr inbounds i32, ptr %18, i64 %21
  br label %23

23:                                               ; preds = %20, %31
  %24 = phi i32 [ %32, %31 ], [ %16, %20 ]
  %25 = phi ptr [ %33, %31 ], [ %22, %20 ]
  %26 = load i32, ptr %25, align 4, !tbaa !63
  %27 = add i32 %26, -97
  %28 = icmp ult i32 %27, 26
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = add nsw i32 %26, -32
  store i32 %30, ptr %25, align 4, !tbaa !63
  br label %31

31:                                               ; preds = %29, %23
  %32 = add nsw i32 %24, -1
  %33 = getelementptr inbounds i32, ptr %25, i64 1
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %23, !llvm.loop !170

35:                                               ; preds = %31, %12
  %36 = icmp eq i32 %1, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %35
  %38 = load i32, ptr %4, align 4, !tbaa !63
  %39 = load i32, ptr %3, align 4, !tbaa !63
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
  %49 = load i32, ptr %48, align 4, !tbaa !63
  %50 = add i32 %49, -65
  %51 = icmp ult i32 %50, 26
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = or disjoint i32 %49, 32
  store i32 %53, ptr %48, align 4, !tbaa !63
  br label %54

54:                                               ; preds = %52, %46
  %55 = add nsw i32 %47, -1
  %56 = getelementptr inbounds i32, ptr %48, i64 1
  %57 = icmp eq i32 %55, 0
  br i1 %57, label %58, label %46, !llvm.loop !171

58:                                               ; preds = %54, %37, %35
  %59 = call ptr @CTX_data_main(ptr noundef %0) #12
  %60 = load ptr, ptr %6, align 8, !tbaa !49
  %61 = getelementptr inbounds %struct.Curve, ptr %60, i64 0, i32 53
  %62 = load ptr, ptr %61, align 8, !tbaa !56
  call void @DAG_id_tag_update(ptr noundef %60, i16 noundef signext 0) #12
  %63 = getelementptr inbounds %struct.Curve, ptr %60, i64 0, i32 63
  %64 = getelementptr inbounds %struct.EditFont, ptr %62, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !67
  %66 = getelementptr inbounds %struct.EditFont, ptr %62, i64 0, i32 7
  %67 = load i32, ptr %66, align 4, !tbaa !61
  %68 = call i32 @llvm.usub.sat.i32(i32 %67, i32 1)
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.CharInfo, ptr %65, i64 %69
  %71 = load i64, ptr %70, align 2
  store i64 %71, ptr %63, align 8
  %72 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 31
  %73 = load i32, ptr %72, align 8, !tbaa !78
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %58
  %76 = getelementptr inbounds %struct.Curve, ptr %60, i64 0, i32 63, i32 1
  %77 = load i16, ptr %76, align 2, !tbaa !79
  %78 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 32
  %79 = call i16 @llvm.smax.i16(i16 %77, i16 1)
  %80 = zext nneg i16 %79 to i32
  store i32 %80, ptr %78, align 4
  br label %81

81:                                               ; preds = %58, %75
  %82 = load ptr, ptr %6, align 8, !tbaa !49
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 274399232, ptr noundef %82) #12
  br label %83

83:                                               ; preds = %81, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret void
}

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_vfont_load(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_pointer_set(ptr noundef, ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) local_unnamed_addr #2

declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiIDContextProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_pointer_get(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_vfont_is_builtin(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!36, !36, i64 0}
!48 = !{!37, !37, i64 0}
!49 = !{!50, !36, i64 296}
!50 = !{!"Object", !51, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !52, i64 140, !52, i64 144, !52, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !53, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !52, i64 432, !52, i64 436, !36, i64 440, !36, i64 448, !52, i64 456, !52, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !54, i64 616, !54, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !52, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !52, i64 968, !52, i64 972, !52, i64 976, !52, i64 980, !52, i64 984, !54, i64 988, !54, i64 992, !54, i64 996, !54, i64 1000, !54, i64 1004, !54, i64 1008, !54, i64 1012, !54, i64 1016, !54, i64 1020, !54, i64 1024, !54, i64 1028, !54, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !54, i64 1048, !54, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !54, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !52, i64 1144, !52, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !54, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !55, i64 1304, !55, i64 1312, !52, i64 1320, !52, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!51 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !52, i64 100, !52, i64 104, !52, i64 108, !36, i64 112}
!52 = !{!"int", !37, i64 0}
!53 = !{!"bAnimVizSettings", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !52, i64 32, !52, i64 36, !52, i64 40, !52, i64 44}
!54 = !{!"float", !37, i64 0}
!55 = !{!"long", !37, i64 0}
!56 = !{!57, !36, i64 376}
!57 = !{!"Curve", !51, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !37, i64 208, !37, i64 220, !37, i64 232, !41, i64 244, !41, i64 246, !41, i64 248, !41, i64 250, !54, i64 252, !54, i64 256, !52, i64 260, !41, i64 264, !41, i64 266, !52, i64 268, !54, i64 272, !54, i64 276, !54, i64 280, !41, i64 284, !41, i64 286, !41, i64 288, !41, i64 290, !52, i64 292, !52, i64 296, !37, i64 300, !41, i64 304, !37, i64 306, !37, i64 307, !54, i64 308, !54, i64 312, !54, i64 316, !54, i64 320, !54, i64 324, !54, i64 328, !54, i64 332, !54, i64 336, !54, i64 340, !54, i64 344, !52, i64 348, !52, i64 352, !52, i64 356, !52, i64 360, !52, i64 364, !36, i64 368, !36, i64 376, !37, i64 384, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !36, i64 480, !52, i64 488, !52, i64 492, !36, i64 496, !58, i64 504, !54, i64 512, !54, i64 516, !54, i64 520, !37, i64 524, !37, i64 525, !37, i64 526}
!58 = !{!"CharInfo", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !41, i64 6}
!59 = !{!60, !52, i64 72}
!60 = !{!"EditFont", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !52, i64 72, !52, i64 76, !52, i64 80, !52, i64 84}
!61 = !{!60, !52, i64 76}
!62 = !{!60, !36, i64 16}
!63 = !{!52, !52, i64 0}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!60, !36, i64 24}
!68 = distinct !{!68, !65, !66}
!69 = !{!58, !41, i64 0}
!70 = !{!50, !52, i64 460}
!71 = !{!58, !41, i64 2}
!72 = distinct !{!72, !65, !66}
!73 = !{!35, !36, i64 48}
!74 = !{!75, !36, i64 112}
!75 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!76 = !{!75, !36, i64 120}
!77 = !{i8 0, i8 2}
!78 = !{!50, !52, i64 456}
!79 = !{!57, !41, i64 506}
!80 = !{i32 2, i32 5}
!81 = !{!82, !36, i64 136}
!82 = !{!"Text", !51, i64 0, !36, i64 120, !52, i64 128, !52, i64 132, !39, i64 136, !36, i64 152, !36, i64 160, !52, i64 168, !52, i64 172, !36, i64 176, !52, i64 184, !52, i64 188, !36, i64 192, !83, i64 200}
!83 = !{!"double", !37, i64 0}
!84 = !{!85, !36, i64 16}
!85 = !{!"TextLine", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !52, i64 32, !52, i64 36}
!86 = !{!54, !54, i64 0}
!87 = !{!85, !36, i64 0}
!88 = distinct !{!88, !65, !66}
!89 = !{!90, !36, i64 168}
!90 = !{!"Scene", !51, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !52, i64 232, !52, i64 236, !52, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !91, i64 280, !100, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !52, i64 4380, !39, i64 4384, !101, i64 4400, !102, i64 4416, !105, i64 4600, !36, i64 4608, !106, i64 4616, !36, i64 4640, !55, i64 4648, !55, i64 4656, !93, i64 4664, !94, i64 4824, !107, i64 4888, !36, i64 4952}
!91 = !{!"RenderData", !92, i64 0, !36, i64 248, !36, i64 256, !95, i64 264, !96, i64 328, !52, i64 400, !52, i64 404, !52, i64 408, !54, i64 412, !52, i64 416, !52, i64 420, !52, i64 424, !52, i64 428, !41, i64 432, !41, i64 434, !54, i64 436, !54, i64 440, !54, i64 444, !54, i64 448, !54, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !52, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !52, i64 484, !52, i64 488, !41, i64 492, !41, i64 494, !52, i64 496, !52, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !52, i64 516, !52, i64 520, !52, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !97, i64 544, !97, i64 560, !98, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !54, i64 612, !54, i64 616, !54, i64 620, !54, i64 624, !52, i64 628, !54, i64 632, !54, i64 636, !54, i64 640, !54, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !54, i64 660, !54, i64 664, !41, i64 668, !41, i64 670, !54, i64 672, !54, i64 676, !37, i64 680, !52, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !52, i64 2520, !41, i64 2524, !41, i64 2526, !54, i64 2528, !54, i64 2532, !41, i64 2536, !41, i64 2538, !54, i64 2540, !41, i64 2544, !41, i64 2546, !52, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !54, i64 2560, !54, i64 2564, !36, i64 2568, !52, i64 2576, !54, i64 2580, !37, i64 2584, !99, i64 2616, !52, i64 3976, !52, i64 3980}
!92 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !54, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !93, i64 24, !94, i64 184}
!93 = !{!"ColorManagedViewSettings", !52, i64 0, !52, i64 4, !37, i64 8, !37, i64 72, !54, i64 136, !54, i64 140, !36, i64 144, !36, i64 152}
!94 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!95 = !{!"QuicktimeCodecSettings", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !52, i64 40, !52, i64 44, !41, i64 48, !41, i64 50, !52, i64 52, !52, i64 56, !52, i64 60}
!96 = !{!"FFMpegCodecData", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !54, i64 32, !52, i64 36, !52, i64 40, !52, i64 44, !52, i64 48, !52, i64 52, !52, i64 56, !52, i64 60, !36, i64 64}
!97 = !{!"rctf", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12}
!98 = !{!"rcti", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12}
!99 = !{!"BakeData", !92, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !54, i64 1280, !54, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!100 = !{!"AudioData", !52, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !52, i64 16, !41, i64 20, !41, i64 22, !54, i64 24, !54, i64 28}
!101 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!102 = !{!"GameData", !101, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !103, i64 40, !41, i64 64, !41, i64 66, !54, i64 68, !104, i64 72, !54, i64 128, !54, i64 132, !52, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !54, i64 164, !54, i64 168, !54, i64 172, !54, i64 176, !54, i64 180}
!103 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !54, i64 8, !54, i64 12, !36, i64 16}
!104 = !{!"RecastData", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !54, i64 28, !54, i64 32, !54, i64 36, !52, i64 40, !54, i64 44, !54, i64 48, !41, i64 52, !41, i64 54}
!105 = !{!"UnitSettings", !54, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!106 = !{!"PhysicsSettings", !37, i64 0, !52, i64 12, !52, i64 16, !52, i64 20}
!107 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!108 = !{!57, !36, i64 448}
!109 = !{!110, !52, i64 100}
!110 = !{!"VFont", !51, i64 0, !37, i64 120, !36, i64 1144, !36, i64 1152, !36, i64 1160}
!111 = !{!55, !55, i64 0}
!112 = distinct !{!112, !65, !66}
!113 = !{!57, !36, i64 368}
!114 = !{!57, !36, i64 496}
!115 = !{!57, !52, i64 364}
!116 = !{!57, !52, i64 360}
!117 = !{!57, !52, i64 348}
!118 = distinct !{!118, !65, !66}
!119 = !{!35, !36, i64 88}
!120 = !{!57, !37, i64 508}
!121 = !{!60, !52, i64 80}
!122 = !{!60, !52, i64 84}
!123 = !{!60, !36, i64 0}
!124 = !{!60, !36, i64 8}
!125 = distinct !{!125, !65, !66}
!126 = distinct !{!126, !65, !66}
!127 = distinct !{!127, !65, !66}
!128 = distinct !{!128, !65, !66}
!129 = distinct !{!129, !65, !66}
!130 = !{!131, !37, i64 42}
!131 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !52, i64 20, !52, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !52, i64 48, !52, i64 52, !83, i64 56, !52, i64 64, !52, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !52, i64 108, !36, i64 112}
!132 = !{!131, !41, i64 76}
!133 = !{!131, !41, i64 72}
!134 = !{!131, !41, i64 74}
!135 = !{!131, !41, i64 16}
!136 = !{!131, !41, i64 18}
!137 = !{!57, !52, i64 488}
!138 = !{!57, !52, i64 492}
!139 = !{!57, !36, i64 480}
!140 = !{i64 0, i64 4, !86, i64 4, i64 4, !86, i64 8, i64 4, !86, i64 12, i64 4, !86}
!141 = distinct !{!141, !65, !66}
!142 = distinct !{!142, !65, !66}
!143 = !{!57, !52, i64 352}
!144 = !{!57, !52, i64 356}
!145 = distinct !{!145, !65, !66}
!146 = !{!35, !36, i64 56}
!147 = !{!75, !36, i64 96}
!148 = !{!149, !36, i64 24}
!149 = !{!"PropertyPointerRNA", !150, i64 0, !36, i64 24}
!150 = !{!"PointerRNA", !151, i64 0, !36, i64 8, !36, i64 16}
!151 = !{!"", !36, i64 0}
!152 = !{i64 0, i64 8, !47, i64 8, i64 8, !47, i64 16, i64 8, !47}
!153 = !{!50, !41, i64 136}
!154 = !{!41, !41, i64 0}
!155 = !{!156, !36, i64 16}
!156 = !{!"ViewContext", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56}
!157 = !{!156, !36, i64 40}
!158 = !{!97, !54, i64 0}
!159 = !{!97, !54, i64 8}
!160 = !{!97, !54, i64 12}
!161 = !{!97, !54, i64 4}
!162 = !{!156, !36, i64 24}
!163 = distinct !{!163, !65, !66}
!164 = distinct !{!164, !65, !66}
!165 = distinct !{!165, !65, !66}
!166 = !{!58, !37, i64 4}
!167 = distinct !{!167, !65, !66}
!168 = distinct !{!168, !65, !66}
!169 = distinct !{!169, !65, !66}
!170 = distinct !{!170, !65, !66}
!171 = distinct !{!171, !65, !66}
