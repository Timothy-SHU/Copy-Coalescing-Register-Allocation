; ModuleID = 'blender/source/blender/editors/space_text/text_ops.c'
source_filename = "blender/source/blender/editors/space_text/text_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.TextLine = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.Text = type { %struct.ID, ptr, i32, i32, %struct.ListBase, ptr, ptr, i32, i32, ptr, i32, i32, ptr, double }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.SpaceText = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], ptr, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, float, %struct.rcti, %struct.rcti, i32, i32, [256 x i8], [256 x i8], i16, i16, [4 x i8], ptr, [2 x float] }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.PropertyPointerRNA = type { %struct.PointerRNA, ptr }
%struct.FlattenString = type { [256 x i8], [256 x i32], ptr, ptr, i32, i32 }
%struct.TextScroll = type { [2 x i32], [2 x i32], i32, i32, i32 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.SetSelection = type { i32, i32, i32, [2 x i16] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"Create Text Block\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"TEXT_OT_new\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Create a new text data block\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Open Text Block\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"TEXT_OT_open\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Open a new text data block\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Make internal\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Make text file internal after loading\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Reload\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"TEXT_OT_reload\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Reload active text data block from its file\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Unlink\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"TEXT_OT_unlink\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Unlink active text data block\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"Make Internal\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"TEXT_OT_make_internal\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Make active text file internal\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"Save\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"TEXT_OT_save\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"Save active text data block\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"Save As\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"TEXT_OT_save_as\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"Save active text file with options\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"Run Script\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"TEXT_OT_run_script\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Run active script\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"Refresh PyConstraints\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"TEXT_OT_refresh_pyconstraints\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"Refresh all pyconstraints\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"Paste\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"TEXT_OT_paste\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"Paste text from clipboard\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"selection\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"Selection\00", align 1
@.str.35 = private unnamed_addr constant [60 x i8] c"Paste text selected elsewhere rather than copied (X11 only)\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"Duplicate Line\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"TEXT_OT_duplicate_line\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"Duplicate the current line\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"Copy\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"TEXT_OT_copy\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"Copy selected text to clipboard\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"Cut\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"TEXT_OT_cut\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"Cut selected text to clipboard\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"Indent\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"TEXT_OT_indent\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"Indent selected text\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"Unindent\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"TEXT_OT_unindent\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"Unindent selected text\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"Line Break\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"TEXT_OT_line_break\00", align 1
@.str.53 = private unnamed_addr constant [37 x i8] c"Insert line break at cursor position\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"Comment\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"TEXT_OT_comment\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"Convert selected text to comment\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"Uncomment\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"TEXT_OT_uncomment\00", align 1
@.str.59 = private unnamed_addr constant [33 x i8] c"Convert selected comment to text\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"Convert Whitespace\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"TEXT_OT_convert_whitespace\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"Convert whitespaces by type\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@whitespace_type_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.172, i32 0, ptr @.str.173, ptr null }, %struct.EnumPropertyItem { i32 1, ptr @.str.174, i32 0, ptr @.str.175, ptr null }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.64 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.65 = private unnamed_addr constant [33 x i8] c"Type of whitespace to convert to\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"Select All\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"TEXT_OT_select_all\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"Select all text\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"Select Line\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"TEXT_OT_select_line\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"Select text by line\00", align 1
@.str.72 = private unnamed_addr constant [12 x i8] c"Select Word\00", align 1
@.str.73 = private unnamed_addr constant [20 x i8] c"TEXT_OT_select_word\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"Select word under cursor\00", align 1
@TEXT_OT_move_lines.direction_items = internal global [3 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 -1, ptr @.str.75, i32 0, ptr @.str.76, ptr @.str.77 }, %struct.EnumPropertyItem { i32 1, ptr @.str.78, i32 0, ptr @.str.79, ptr @.str.77 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.75 = private unnamed_addr constant [3 x i8] c"UP\00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c"Up\00", align 1
@.str.77 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"DOWN\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"Down\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"Move Lines\00", align 1
@.str.81 = private unnamed_addr constant [19 x i8] c"TEXT_OT_move_lines\00", align 1
@.str.82 = private unnamed_addr constant [44 x i8] c"Move the currently selected line(s) up/down\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"Direction\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"Move Cursor\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"TEXT_OT_move\00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c"Move cursor to position type\00", align 1
@move_type_items = internal global [13 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.176, i32 0, ptr @.str.177, ptr @.str.77 }, %struct.EnumPropertyItem { i32 1, ptr @.str.178, i32 0, ptr @.str.179, ptr @.str.77 }, %struct.EnumPropertyItem { i32 2, ptr @.str.180, i32 0, ptr @.str.181, ptr @.str.77 }, %struct.EnumPropertyItem { i32 3, ptr @.str.182, i32 0, ptr @.str.183, ptr @.str.77 }, %struct.EnumPropertyItem { i32 4, ptr @.str.184, i32 0, ptr @.str.185, ptr @.str.77 }, %struct.EnumPropertyItem { i32 5, ptr @.str.186, i32 0, ptr @.str.187, ptr @.str.77 }, %struct.EnumPropertyItem { i32 6, ptr @.str.188, i32 0, ptr @.str.189, ptr @.str.77 }, %struct.EnumPropertyItem { i32 7, ptr @.str.190, i32 0, ptr @.str.191, ptr @.str.77 }, %struct.EnumPropertyItem { i32 8, ptr @.str.192, i32 0, ptr @.str.193, ptr @.str.77 }, %struct.EnumPropertyItem { i32 9, ptr @.str.194, i32 0, ptr @.str.195, ptr @.str.77 }, %struct.EnumPropertyItem { i32 10, ptr @.str.196, i32 0, ptr @.str.197, ptr @.str.77 }, %struct.EnumPropertyItem { i32 11, ptr @.str.198, i32 0, ptr @.str.199, ptr @.str.77 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.88 = private unnamed_addr constant [24 x i8] c"Where to move cursor to\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"Move Select\00", align 1
@.str.90 = private unnamed_addr constant [20 x i8] c"TEXT_OT_move_select\00", align 1
@.str.91 = private unnamed_addr constant [32 x i8] c"Move the cursor while selecting\00", align 1
@.str.92 = private unnamed_addr constant [45 x i8] c"Where to move cursor to, to make a selection\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"Jump\00", align 1
@.str.94 = private unnamed_addr constant [13 x i8] c"TEXT_OT_jump\00", align 1
@.str.95 = private unnamed_addr constant [20 x i8] c"Jump cursor to line\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.98 = private unnamed_addr constant [23 x i8] c"Line number to jump to\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"Delete\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"TEXT_OT_delete\00", align 1
@.str.102 = private unnamed_addr constant [31 x i8] c"Delete text by cursor position\00", align 1
@delete_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.186, i32 0, ptr @.str.187, ptr @.str.77 }, %struct.EnumPropertyItem { i32 1, ptr @.str.184, i32 0, ptr @.str.185, ptr @.str.77 }, %struct.EnumPropertyItem { i32 2, ptr @.str.190, i32 0, ptr @.str.191, ptr @.str.77 }, %struct.EnumPropertyItem { i32 3, ptr @.str.188, i32 0, ptr @.str.189, ptr @.str.77 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.103 = private unnamed_addr constant [33 x i8] c"Which part of the text to delete\00", align 1
@.str.104 = private unnamed_addr constant [17 x i8] c"Toggle Overwrite\00", align 1
@.str.105 = private unnamed_addr constant [25 x i8] c"TEXT_OT_overwrite_toggle\00", align 1
@.str.106 = private unnamed_addr constant [30 x i8] c"Toggle overwrite while typing\00", align 1
@.str.107 = private unnamed_addr constant [7 x i8] c"Scroll\00", align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"TEXT_OT_scroll\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"Lines\00", align 1
@.str.111 = private unnamed_addr constant [26 x i8] c"Number of lines to scroll\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"Scrollbar\00", align 1
@.str.113 = private unnamed_addr constant [19 x i8] c"TEXT_OT_scroll_bar\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"Set Selection\00", align 1
@.str.115 = private unnamed_addr constant [22 x i8] c"TEXT_OT_selection_set\00", align 1
@.str.116 = private unnamed_addr constant [21 x i8] c"Set cursor selection\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.118 = private unnamed_addr constant [7 x i8] c"Select\00", align 1
@.str.119 = private unnamed_addr constant [37 x i8] c"Set selection end rather than cursor\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"Set Cursor\00", align 1
@.str.121 = private unnamed_addr constant [19 x i8] c"TEXT_OT_cursor_set\00", align 1
@.str.122 = private unnamed_addr constant [20 x i8] c"Set cursor position\00", align 1
@.str.123 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.124 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.126 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.127 = private unnamed_addr constant [12 x i8] c"Line Number\00", align 1
@.str.128 = private unnamed_addr constant [20 x i8] c"TEXT_OT_line_number\00", align 1
@.str.129 = private unnamed_addr constant [24 x i8] c"The current line number\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"Insert\00", align 1
@.str.131 = private unnamed_addr constant [15 x i8] c"TEXT_OT_insert\00", align 1
@.str.132 = private unnamed_addr constant [31 x i8] c"Insert text at cursor position\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.134 = private unnamed_addr constant [38 x i8] c"Text to insert at the cursor position\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"Find Next\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"TEXT_OT_find\00", align 1
@.str.137 = private unnamed_addr constant [20 x i8] c"Find specified text\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"Replace\00", align 1
@.str.139 = private unnamed_addr constant [16 x i8] c"TEXT_OT_replace\00", align 1
@.str.140 = private unnamed_addr constant [37 x i8] c"Replace text with the specified text\00", align 1
@.str.141 = private unnamed_addr constant [18 x i8] c"Find Set Selected\00", align 1
@.str.142 = private unnamed_addr constant [26 x i8] c"TEXT_OT_find_set_selected\00", align 1
@.str.143 = private unnamed_addr constant [40 x i8] c"Find specified text and set as selected\00", align 1
@.str.144 = private unnamed_addr constant [21 x i8] c"Replace Set Selected\00", align 1
@.str.145 = private unnamed_addr constant [29 x i8] c"TEXT_OT_replace_set_selected\00", align 1
@.str.146 = private unnamed_addr constant [53 x i8] c"Replace text with specified text and set as selected\00", align 1
@.str.147 = private unnamed_addr constant [17 x i8] c"Resolve Conflict\00", align 1
@.str.148 = private unnamed_addr constant [25 x i8] c"TEXT_OT_resolve_conflict\00", align 1
@.str.149 = private unnamed_addr constant [56 x i8] c"When external text is out of sync, resolve the conflict\00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"resolution\00", align 1
@resolution_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.213, i32 0, ptr @.str.209, ptr @.str.77 }, %struct.EnumPropertyItem { i32 1, ptr @.str.214, i32 0, ptr @.str.9, ptr @.str.77 }, %struct.EnumPropertyItem { i32 2, ptr @.str.215, i32 0, ptr @.str.18, ptr @.str.77 }, %struct.EnumPropertyItem { i32 3, ptr @.str.216, i32 0, ptr @.str.15, ptr @.str.77 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.151 = private unnamed_addr constant [11 x i8] c"Resolution\00", align 1
@.str.152 = private unnamed_addr constant [71 x i8] c"How to solve conflict due to differences in internal and external text\00", align 1
@.str.153 = private unnamed_addr constant [13 x i8] c"To 3D Object\00", align 1
@.str.154 = private unnamed_addr constant [21 x i8] c"TEXT_OT_to_3d_object\00", align 1
@.str.155 = private unnamed_addr constant [50 x i8] c"Create 3D text object from active text data block\00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"split_lines\00", align 1
@.str.157 = private unnamed_addr constant [12 x i8] c"Split Lines\00", align 1
@.str.158 = private unnamed_addr constant [39 x i8] c"Create one object per line in the text\00", align 1
@.str.159 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.160 = private unnamed_addr constant [23 x i8] c"OpenPropertyPointerRNA\00", align 1
@.str.161 = private unnamed_addr constant [22 x i8] c"Could not reopen file\00", align 1
@.str.162 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.163 = private unnamed_addr constant [24 x i8] c"Unable to save '%s': %s\00", align 1
@.str.164 = private unnamed_addr constant [27 x i8] c"unknown error writing file\00", align 1
@.str.165 = private unnamed_addr constant [16 x i8] c"Saved Text '%s'\00", align 1
@.str.166 = private unnamed_addr constant [24 x i8] c"Unable to stat '%s': %s\00", align 1
@.str.167 = private unnamed_addr constant [27 x i8] c"unknown error stating file\00", align 1
@.str.168 = private unnamed_addr constant [30 x i8] c"Python disabled in this build\00", align 1
@.str.169 = private unnamed_addr constant [12 x i8] c"cut buffera\00", align 1
@.str.170 = private unnamed_addr constant [12 x i8] c"cut bufferb\00", align 1
@.str.171 = private unnamed_addr constant [15 x i8] c"Converted_Line\00", align 1
@.str.172 = private unnamed_addr constant [7 x i8] c"SPACES\00", align 1
@.str.173 = private unnamed_addr constant [10 x i8] c"To Spaces\00", align 1
@.str.174 = private unnamed_addr constant [5 x i8] c"TABS\00", align 1
@.str.175 = private unnamed_addr constant [8 x i8] c"To Tabs\00", align 1
@.str.176 = private unnamed_addr constant [11 x i8] c"LINE_BEGIN\00", align 1
@.str.177 = private unnamed_addr constant [11 x i8] c"Line Begin\00", align 1
@.str.178 = private unnamed_addr constant [9 x i8] c"LINE_END\00", align 1
@.str.179 = private unnamed_addr constant [9 x i8] c"Line End\00", align 1
@.str.180 = private unnamed_addr constant [9 x i8] c"FILE_TOP\00", align 1
@.str.181 = private unnamed_addr constant [9 x i8] c"File Top\00", align 1
@.str.182 = private unnamed_addr constant [12 x i8] c"FILE_BOTTOM\00", align 1
@.str.183 = private unnamed_addr constant [12 x i8] c"File Bottom\00", align 1
@.str.184 = private unnamed_addr constant [19 x i8] c"PREVIOUS_CHARACTER\00", align 1
@.str.185 = private unnamed_addr constant [19 x i8] c"Previous Character\00", align 1
@.str.186 = private unnamed_addr constant [15 x i8] c"NEXT_CHARACTER\00", align 1
@.str.187 = private unnamed_addr constant [15 x i8] c"Next Character\00", align 1
@.str.188 = private unnamed_addr constant [14 x i8] c"PREVIOUS_WORD\00", align 1
@.str.189 = private unnamed_addr constant [14 x i8] c"Previous Word\00", align 1
@.str.190 = private unnamed_addr constant [10 x i8] c"NEXT_WORD\00", align 1
@.str.191 = private unnamed_addr constant [10 x i8] c"Next Word\00", align 1
@.str.192 = private unnamed_addr constant [14 x i8] c"PREVIOUS_LINE\00", align 1
@.str.193 = private unnamed_addr constant [14 x i8] c"Previous Line\00", align 1
@.str.194 = private unnamed_addr constant [10 x i8] c"NEXT_LINE\00", align 1
@.str.195 = private unnamed_addr constant [10 x i8] c"Next Line\00", align 1
@.str.196 = private unnamed_addr constant [14 x i8] c"PREVIOUS_PAGE\00", align 1
@.str.197 = private unnamed_addr constant [14 x i8] c"Previous Page\00", align 1
@.str.198 = private unnamed_addr constant [10 x i8] c"NEXT_PAGE\00", align 1
@.str.199 = private unnamed_addr constant [10 x i8] c"Next Page\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.200 = private unnamed_addr constant [11 x i8] c"TextScroll\00", align 1
@.str.201 = private unnamed_addr constant [10 x i8] c"SetCursor\00", align 1
@text_line_number_invoke.jump_to = internal unnamed_addr global i32 0, align 4
@text_line_number_invoke.last_jump = internal unnamed_addr global double 0.000000e+00, align 8
@.str.202 = private unnamed_addr constant [19 x i8] c"Text not found: %s\00", align 1
@.str.203 = private unnamed_addr constant [41 x i8] c"File Modified Outside and Inside Blender\00", align 1
@.str.204 = private unnamed_addr constant [40 x i8] c"Reload from disk (ignore local changes)\00", align 1
@.str.205 = private unnamed_addr constant [38 x i8] c"Save to disk (ignore outside changes)\00", align 1
@.str.206 = private unnamed_addr constant [35 x i8] c"Make text internal (separate copy)\00", align 1
@.str.207 = private unnamed_addr constant [30 x i8] c"File Modified Outside Blender\00", align 1
@.str.208 = private unnamed_addr constant [17 x i8] c"Reload from disk\00", align 1
@.str.209 = private unnamed_addr constant [7 x i8] c"Ignore\00", align 1
@.str.210 = private unnamed_addr constant [29 x i8] c"File Deleted Outside Blender\00", align 1
@.str.211 = private unnamed_addr constant [19 x i8] c"Make text internal\00", align 1
@.str.212 = private unnamed_addr constant [14 x i8] c"Recreate file\00", align 1
@.str.213 = private unnamed_addr constant [7 x i8] c"IGNORE\00", align 1
@.str.214 = private unnamed_addr constant [7 x i8] c"RELOAD\00", align 1
@.str.215 = private unnamed_addr constant [5 x i8] c"SAVE\00", align 1
@.str.216 = private unnamed_addr constant [14 x i8] c"MAKE_INTERNAL\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @text_space_edit_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %4 = icmp ne ptr %2, null
  %5 = icmp ne ptr %3, null
  %6 = select i1 %4, i1 %5, i1 false
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i32 [ 0, %1 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_wm_space_text(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_text(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @text_update_line_edited(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.TextLine, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %8(ptr noundef nonnull %5) #14
  store ptr null, ptr %4, align 8, !tbaa !44
  br label %9

9:                                                ; preds = %1, %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @text_update_edited(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %12
  %6 = phi ptr [ %13, %12 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.TextLine, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %11(ptr noundef nonnull %8) #14
  store ptr null, ptr %7, align 8, !tbaa !44
  br label %12

12:                                               ; preds = %5, %10
  %13 = load ptr, ptr %6, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !47

15:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_new(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_new_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_new_poll, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_new_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  %6 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %7 = tail call ptr @CTX_data_main(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %8 = tail call ptr @BKE_text_add(ptr noundef %7, ptr noundef nonnull @.str.99) #14
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5) #14
  %9 = load ptr, ptr %5, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  call void @RNA_id_pointer_create(ptr noundef %8, ptr noundef nonnull %4) #14
  %12 = load ptr, ptr %5, align 8, !tbaa !46
  call void @RNA_property_pointer_set(ptr noundef nonnull %3, ptr noundef %12, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %4) #14
  %13 = load ptr, ptr %5, align 8, !tbaa !46
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %13) #14
  br label %22

14:                                               ; preds = %2
  %15 = icmp eq ptr %6, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.SpaceText, ptr %6, i64 0, i32 6
  store ptr %8, ptr %17, align 8, !tbaa !58
  %18 = getelementptr inbounds %struct.SpaceText, ptr %6, i64 0, i32 14
  store i32 0, ptr %18, align 8, !tbaa !62
  %19 = getelementptr inbounds %struct.SpaceText, ptr %6, i64 0, i32 7
  store i32 0, ptr %19, align 8, !tbaa !63
  %20 = getelementptr inbounds %struct.SpaceText, ptr %6, i64 0, i32 32
  store float 0.000000e+00, ptr %20, align 8, !tbaa !64
  %21 = getelementptr inbounds %struct.SpaceText, ptr %6, i64 0, i32 32, i64 1
  store float 0.000000e+00, ptr %21, align 4, !tbaa !64
  call void @text_drawcache_tag_update(ptr noundef nonnull %6, i32 noundef 1) #14
  br label %22

22:                                               ; preds = %14, %16, %11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326595, ptr noundef %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @text_new_poll(ptr nocapture readnone %0) #4 {
  ret i32 1
}

; Function Attrs: nounwind uwtable
define dso_local void @TEXT_OT_open(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_open_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @text_open_invoke, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @text_open_cancel, ptr %6, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_new_poll, ptr %7, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %8, align 8, !tbaa !57
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2624, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 8, i16 noundef signext 0) #14
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_open_exec(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #14
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.6) #14
  %10 = trunc i32 %9 to i8
  %11 = load ptr, ptr %7, align 8, !tbaa !68
  call void @RNA_string_get(ptr noundef %11, ptr noundef nonnull @.str.159, ptr noundef nonnull %4) #14
  %12 = load ptr, ptr @G, align 8, !tbaa !70
  %13 = getelementptr inbounds %struct.Main, ptr %12, i64 0, i32 2
  %14 = call ptr @BKE_text_load_ex(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %13, i8 noundef zeroext %10) #14
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  %18 = icmp eq ptr %17, null
  br i1 %15, label %19, label %22

19:                                               ; preds = %2
  br i1 %18, label %46, label %20

20:                                               ; preds = %19
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %21(ptr noundef nonnull %17) #14
  br label %46

22:                                               ; preds = %2
  br i1 %18, label %23, label %27

23:                                               ; preds = %22
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %25 = call ptr %24(i64 noundef 32, ptr noundef nonnull @.str.160) #14
  store ptr %25, ptr %16, align 8, !tbaa !72
  %26 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %25, i64 0, i32 1
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef %25, ptr noundef nonnull %26) #14
  br label %27

27:                                               ; preds = %23, %22
  %28 = load ptr, ptr %16, align 8, !tbaa !72
  %29 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !73
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  call void @RNA_id_pointer_create(ptr noundef nonnull %14, ptr noundef nonnull %3) #14
  %33 = load ptr, ptr %29, align 8, !tbaa !73
  call void @RNA_property_pointer_set(ptr noundef %28, ptr noundef %33, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %3) #14
  %34 = load ptr, ptr %29, align 8, !tbaa !73
  call void @RNA_property_update(ptr noundef %0, ptr noundef %28, ptr noundef %34) #14
  br label %43

35:                                               ; preds = %27
  %36 = icmp eq ptr %5, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 6
  store ptr %14, ptr %38, align 8, !tbaa !58
  %39 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 14
  store i32 0, ptr %39, align 8, !tbaa !62
  %40 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 7
  store i32 0, ptr %40, align 8, !tbaa !63
  %41 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 32
  store float 0.000000e+00, ptr %41, align 8, !tbaa !64
  %42 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 32, i64 1
  store float 0.000000e+00, ptr %42, align 4, !tbaa !64
  br label %43

43:                                               ; preds = %35, %37, %32
  call void @text_drawcache_tag_update(ptr noundef %5, i32 noundef 1) #14
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326595, ptr noundef nonnull %14) #14
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %45 = load ptr, ptr %16, align 8, !tbaa !72
  call void %44(ptr noundef %45) #14
  br label %46

46:                                               ; preds = %19, %20, %43
  %47 = phi i32 [ 4, %43 ], [ 2, %20 ], [ 2, %19 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_open_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6, %3
  %11 = load ptr, ptr @G, align 8, !tbaa !70
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 2
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi ptr [ %12, %10 ], [ %8, %6 ]
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  %17 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %16, ptr noundef nonnull @.str.159) #14
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = tail call i32 @text_open_exec(ptr noundef %0, ptr noundef %1), !range !78
  br label %27

21:                                               ; preds = %13
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %23 = tail call ptr %22(i64 noundef 32, ptr noundef nonnull @.str.160) #14
  %24 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %23, ptr %24, align 8, !tbaa !72
  %25 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %23, i64 0, i32 1
  tail call void @uiIDContextProperty(ptr noundef %0, ptr noundef %23, ptr noundef nonnull %25) #14
  %26 = load ptr, ptr %15, align 8, !tbaa !68
  tail call void @RNA_string_set(ptr noundef %26, ptr noundef nonnull @.str.159, ptr noundef nonnull %14) #14
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #14
  br label %27

27:                                               ; preds = %21, %19
  %28 = phi i32 [ %20, %19 ], [ 1, %21 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal void @text_open_cancel(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  tail call void %3(ptr noundef %5) #14
  ret void
}

declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_reload(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_reload_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_reload_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %4 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %6 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 4
  %9 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = tail call i32 @BLI_findindex(ptr noundef nonnull %8, ptr noundef %10) #14
  %12 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !80
  %14 = tail call i32 @BKE_text_reload(ptr noundef %4) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load ptr, ptr %8, align 8, !tbaa !46
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %22

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !81
  tail call void @BKE_report(ptr noundef %21, i32 noundef 32, ptr noundef nonnull @.str.161) #14
  br label %48

22:                                               ; preds = %16, %29
  %23 = phi ptr [ %30, %29 ], [ %17, %16 ]
  %24 = getelementptr inbounds %struct.TextLine, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %28(ptr noundef nonnull %25) #14
  store ptr null, ptr %24, align 8, !tbaa !44
  br label %29

29:                                               ; preds = %27, %22
  %30 = load ptr, ptr %23, align 8, !tbaa !46
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %22, !llvm.loop !47

32:                                               ; preds = %29, %16
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  %33 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  tail call void @text_drawcache_tag_update(ptr noundef %33, i32 noundef 1) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %4) #14
  store i32 %7, ptr %6, align 8, !tbaa !63
  %34 = icmp slt i32 %7, 1
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @text_get_total_lines(ptr noundef %3, ptr noundef %5) #14
  %37 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 8
  %38 = load i32, ptr %37, align 4, !tbaa !82
  %39 = sdiv i32 %38, -2
  %40 = add i32 %39, %36
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load i32, ptr %6, align 8, !tbaa !63
  %44 = icmp sgt i32 %43, %40
  br i1 %44, label %45, label %47

45:                                               ; preds = %42, %32
  %46 = phi i32 [ 0, %32 ], [ %40, %42 ]
  store i32 %46, ptr %6, align 8, !tbaa !63
  br label %47

47:                                               ; preds = %45, %35, %42
  tail call void @txt_move_to(ptr noundef %4, i32 noundef %11, i32 noundef %13, i8 noundef zeroext 0) #14
  br label %48

48:                                               ; preds = %47, %19
  %49 = phi i32 [ 4, %47 ], [ 2, %19 ]
  ret i32 %49
}

declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @text_edit_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ID, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i32 [ 0, %1 ], [ %8, %4 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_unlink(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_unlink_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_unlink_poll, ptr %6, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %7, align 8, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_unlink_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #14
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %5 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %6 = icmp eq ptr %4, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  store ptr %9, ptr %12, align 8, !tbaa !58
  br label %18

13:                                               ; preds = %7
  %14 = load ptr, ptr %5, align 8, !tbaa !84
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  store ptr %14, ptr %17, align 8, !tbaa !58
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi ptr [ %12, %11 ], [ %17, %16 ]
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  %20 = load ptr, ptr %19, align 8, !tbaa !58
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %20) #14
  br label %21

21:                                               ; preds = %18, %13, %2
  tail call void @BKE_text_unlink(ptr noundef %3, ptr noundef %5) #14
  tail call void @BKE_libblock_free(ptr noundef %3, ptr noundef %5) #14
  tail call void @text_drawcache_tag_update(ptr noundef %4, i32 noundef 1) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326596, ptr noundef null) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @text_unlink_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_make_internal(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_make_internal_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_make_internal_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !85
  %6 = or i32 %5, 5
  store i32 %6, ptr %4, align 8, !tbaa !85
  %7 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %11(ptr noundef nonnull %8) #14
  store ptr null, ptr %7, align 8, !tbaa !77
  br label %12

12:                                               ; preds = %10, %2
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %3) #14
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_save(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_save_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_save_poll, ptr %5, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_save_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  tail call fastcc void @txt_write_file(ptr noundef %3, ptr noundef %5)
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %3) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @text_save_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !85
  %16 = lshr i32 %15, 2
  %17 = and i32 %16, 1
  %18 = xor i32 %17, 1
  br label %19

19:                                               ; preds = %1, %9, %13, %5
  %20 = phi i32 [ 0, %5 ], [ 0, %9 ], [ %18, %13 ], [ 0, %1 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local void @TEXT_OT_save_as(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_save_as_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @text_save_as_invoke, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %6, align 8, !tbaa !56
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2624, i16 noundef signext 9, i16 noundef signext 1, i16 noundef signext 8, i16 noundef signext 0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_save_as_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  call void @RNA_string_get(ptr noundef %8, ptr noundef nonnull @.str.159, ptr noundef nonnull %3) #14
  %9 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %13(ptr noundef nonnull %10) #14
  br label %14

14:                                               ; preds = %12, %6
  %15 = call ptr @BLI_strdup(ptr noundef nonnull %3) #14
  store ptr %15, ptr %9, align 8, !tbaa !77
  %16 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !85
  %18 = and i32 %17, -5
  store i32 %18, ptr %16, align 8, !tbaa !85
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !81
  call fastcc void @txt_write_file(ptr noundef nonnull %4, ptr noundef %20)
  call void @text_update_cursor_moved(ptr noundef %0) #14
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef nonnull %4) #14
  br label %21

21:                                               ; preds = %2, %14
  %22 = phi i32 [ 4, %14 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #14
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_save_as_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.159) #14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @text_save_as_exec(ptr noundef %0, ptr noundef %1), !range !78
  br label %28

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !77
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !85
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  br label %25

22:                                               ; preds = %15
  %23 = load ptr, ptr @G, align 8, !tbaa !70
  %24 = getelementptr inbounds %struct.Main, ptr %23, i64 0, i32 2
  br label %25

25:                                               ; preds = %11, %20, %22
  %26 = phi ptr [ %21, %20 ], [ %24, %22 ], [ %13, %11 ]
  %27 = load ptr, ptr %5, align 8, !tbaa !68
  tail call void @RNA_string_set(ptr noundef %27, ptr noundef nonnull @.str.159, ptr noundef nonnull %26) #14
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #14
  br label %28

28:                                               ; preds = %25, %9
  %29 = phi i32 [ %10, %9 ], [ 1, %25 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_run_script(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_run_script_poll, ptr %4, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_run_script_exec, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @text_run_script_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_run_script_exec(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  tail call void @BKE_report(ptr noundef %4, i32 noundef 32, ptr noundef nonnull @.str.168) #14
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_refresh_pyconstraints(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_refresh_pyconstraints_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @text_refresh_pyconstraints_exec(ptr nocapture readnone %0, ptr nocapture readnone %1) #4 {
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @TEXT_OT_paste(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.30, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.32, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_paste_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_paste_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.33) #14
  %7 = trunc i32 %6 to i8
  %8 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %9 = call ptr @WM_clipboard_text_get(i8 noundef zeroext %7, ptr noundef nonnull %3) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %2
  %12 = call ptr @CTX_wm_space_text(ptr noundef %0) #14
  call void @text_drawcache_tag_update(ptr noundef %12, i32 noundef 0) #14
  call void @txt_insert_buf(ptr noundef %8, ptr noundef nonnull %9) #14
  %13 = getelementptr inbounds %struct.Text, ptr %8, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %24, %23 ], [ %14, %11 ]
  %18 = getelementptr inbounds %struct.TextLine, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %22(ptr noundef nonnull %19) #14
  store ptr null, ptr %18, align 8, !tbaa !44
  br label %23

23:                                               ; preds = %21, %16
  %24 = load ptr, ptr %17, align 8, !tbaa !46
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %16, !llvm.loop !47

26:                                               ; preds = %23, %11
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %27(ptr noundef nonnull %9) #14
  call void @text_update_cursor_moved(ptr noundef %0) #14
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %8) #14
  %28 = call ptr @CTX_wm_space_text(ptr noundef %0) #14
  br label %29

29:                                               ; preds = %26, %2
  %30 = phi i32 [ 2, %2 ], [ 4, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %30
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_duplicate_line(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.38, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_duplicate_line_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_duplicate_line_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  tail call void @txt_duplicate_line(ptr noundef %3) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %3) #14
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.40, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.41, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_copy_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_copy_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  tail call fastcc void @txt_copy_clipboard(ptr noundef %3)
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_cut(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.44, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_cut_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_cut_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  tail call void @text_drawcache_tag_update(ptr noundef %4, i32 noundef 0) #14
  tail call fastcc void @txt_copy_clipboard(ptr noundef %3)
  tail call void @txt_delete_selected(ptr noundef %3) #14
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %3) #14
  %5 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_indent(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.45, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.46, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.47, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_indent_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_indent_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  tail call void @text_drawcache_tag_update(ptr noundef %4, i32 noundef 0) #14
  %5 = tail call zeroext i8 @txt_has_sel(ptr noundef %3) #14
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @txt_order_cursors(ptr noundef %3, i8 noundef zeroext 0) #14
  tail call void @txt_indent(ptr noundef %3) #14
  br label %10

8:                                                ; preds = %2
  %9 = tail call zeroext i8 @txt_add_char(ptr noundef %3, i32 noundef 9) #14
  br label %10

10:                                               ; preds = %8, %7
  %11 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %10, %21
  %15 = phi ptr [ %22, %21 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.TextLine, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %20(ptr noundef nonnull %17) #14
  store ptr null, ptr %16, align 8, !tbaa !44
  br label %21

21:                                               ; preds = %19, %14
  %22 = load ptr, ptr %15, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %14, !llvm.loop !47

24:                                               ; preds = %21, %10
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %3) #14
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_unindent(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.48, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.49, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.50, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_unindent_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_unindent_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  tail call void @text_drawcache_tag_update(ptr noundef %4, i32 noundef 0) #14
  tail call void @txt_order_cursors(ptr noundef %3, i8 noundef zeroext 0) #14
  tail call void @txt_unindent(ptr noundef %3) #14
  %5 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %2, %15
  %9 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.TextLine, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %14(ptr noundef nonnull %11) #14
  store ptr null, ptr %10, align 8, !tbaa !44
  br label %15

15:                                               ; preds = %13, %8
  %16 = load ptr, ptr %9, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !47

18:                                               ; preds = %15, %2
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %3) #14
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_line_break(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.51, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.52, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.53, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_line_break_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_line_break_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %4 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !85
  %7 = and i32 %6, 1024
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 16
  %11 = load i32, ptr %10, align 8, !tbaa !86
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi i32 [ %11, %9 ], [ 1, %2 ]
  tail call void @text_drawcache_tag_update(ptr noundef %3, i32 noundef 0) #14
  %14 = tail call i32 @txt_setcurr_tab_spaces(ptr noundef %4, i32 noundef %13) #14
  tail call void @txt_split_curline(ptr noundef %4) #14
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12, %16
  %17 = phi i32 [ %23, %16 ], [ 0, %12 ]
  %18 = load i32, ptr %5, align 8, !tbaa !85
  %19 = and i32 %18, 1024
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 9, i32 32
  %22 = tail call zeroext i8 @txt_add_char(ptr noundef %4, i32 noundef %21) #14
  %23 = add nuw nsw i32 %17, 1
  %24 = icmp eq i32 %23, %14
  br i1 %24, label %25, label %16, !llvm.loop !87

25:                                               ; preds = %16, %12
  %26 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !79
  %28 = icmp eq ptr %27, null
  br i1 %28, label %48, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.TextLine, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !88
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.TextLine, ptr %31, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !44
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %38(ptr noundef nonnull %35) #14
  store ptr null, ptr %34, align 8, !tbaa !44
  br label %39

39:                                               ; preds = %37, %33, %29
  %40 = load ptr, ptr %26, align 8, !tbaa !79
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.TextLine, ptr %40, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !44
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %47(ptr noundef nonnull %44) #14
  store ptr null, ptr %43, align 8, !tbaa !44
  br label %48

48:                                               ; preds = %46, %42, %39, %25
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %4) #14
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_comment(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.54, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.55, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.56, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_comment_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_comment_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %4 = tail call zeroext i8 @txt_has_sel(ptr noundef %3) #14
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  tail call void @text_drawcache_tag_update(ptr noundef %7, i32 noundef 0) #14
  tail call void @txt_order_cursors(ptr noundef %3, i8 noundef zeroext 0) #14
  tail call void @txt_comment(ptr noundef %3) #14
  %8 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %6, %18
  %12 = phi ptr [ %19, %18 ], [ %9, %6 ]
  %13 = getelementptr inbounds %struct.TextLine, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %17(ptr noundef nonnull %14) #14
  store ptr null, ptr %13, align 8, !tbaa !44
  br label %18

18:                                               ; preds = %16, %11
  %19 = load ptr, ptr %12, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %11, !llvm.loop !47

21:                                               ; preds = %18, %6
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %3) #14
  br label %22

22:                                               ; preds = %2, %21
  %23 = phi i32 [ 4, %21 ], [ 2, %2 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_uncomment(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.58, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.59, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_uncomment_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_uncomment_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %4 = tail call zeroext i8 @txt_has_sel(ptr noundef %3) #14
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  tail call void @text_drawcache_tag_update(ptr noundef %7, i32 noundef 0) #14
  tail call void @txt_order_cursors(ptr noundef %3, i8 noundef zeroext 0) #14
  tail call void @txt_uncomment(ptr noundef %3) #14
  %8 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %6, %18
  %12 = phi ptr [ %19, %18 ], [ %9, %6 ]
  %13 = getelementptr inbounds %struct.TextLine, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %17(ptr noundef nonnull %14) #14
  store ptr null, ptr %13, align 8, !tbaa !44
  br label %18

18:                                               ; preds = %16, %11
  %19 = load ptr, ptr %12, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %11, !llvm.loop !47

21:                                               ; preds = %18, %6
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %3) #14
  br label %22

22:                                               ; preds = %2, %21
  %23 = phi i32 [ 4, %21 ], [ 2, %2 ]
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define dso_local void @TEXT_OT_convert_whitespace(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.60, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.61, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.62, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_convert_whitespace_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.63, ptr noundef nonnull @whitespace_type_items, i32 noundef 0, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_convert_whitespace_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.FlattenString, align 8
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %5 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 1304, ptr nonnull %3) #14
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.63) #14
  %9 = getelementptr inbounds %struct.Text, ptr %5, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %70, label %12

12:                                               ; preds = %2, %65
  %13 = phi ptr [ %68, %65 ], [ %10, %2 ]
  %14 = getelementptr inbounds %struct.TextLine, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !89
  %16 = getelementptr inbounds %struct.TextLine, ptr %13, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !90
  %18 = call i32 @flatten_string(ptr noundef %4, ptr noundef nonnull %3, ptr noundef %15) #14
  %19 = add nsw i32 %18, 1
  call void @flatten_string_free(ptr noundef nonnull %3) #14
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %21 = sext i32 %19 to i64
  %22 = call ptr %20(i64 noundef %21, ptr noundef nonnull @.str.171) #14
  %23 = sext i32 %17 to i64
  %24 = icmp eq i32 %17, 0
  br i1 %24, label %52, label %25

25:                                               ; preds = %12, %48
  %26 = phi i64 [ %50, %48 ], [ 0, %12 ]
  %27 = phi i64 [ %49, %48 ], [ 0, %12 ]
  %28 = getelementptr inbounds i8, ptr %15, i64 %26
  %29 = load i8, ptr %28, align 1, !tbaa !91
  %30 = icmp eq i8 %29, 9
  %31 = getelementptr inbounds i8, ptr %22, i64 %27
  br i1 %30, label %32, label %46

32:                                               ; preds = %25
  store i8 0, ptr %31, align 1, !tbaa !91
  %33 = call i32 @flatten_string(ptr noundef %4, ptr noundef nonnull %3, ptr noundef %22) #14
  call void @flatten_string_free(ptr noundef nonnull %3) #14
  store i8 9, ptr %31, align 1, !tbaa !91
  %34 = getelementptr i8, ptr %31, i64 1
  store i8 0, ptr %34, align 1, !tbaa !91
  %35 = call i32 @flatten_string(ptr noundef %4, ptr noundef nonnull %3, ptr noundef %22) #14
  call void @flatten_string_free(ptr noundef nonnull %3) #14
  %36 = icmp sgt i32 %35, %33
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = getelementptr i8, ptr %22, i64 %27
  %39 = xor i32 %33, -1
  %40 = add i32 %35, %39
  %41 = zext i32 %40 to i64
  %42 = add nuw nsw i64 %41, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %38, i8 32, i64 %42, i1 false), !tbaa !91
  %43 = zext i32 %40 to i64
  %44 = add i64 %27, 1
  %45 = add i64 %44, %43
  br label %48

46:                                               ; preds = %25
  store i8 %29, ptr %31, align 1, !tbaa !91
  %47 = add i64 %27, 1
  br label %48

48:                                               ; preds = %37, %32, %46
  %49 = phi i64 [ %47, %46 ], [ %27, %32 ], [ %45, %37 ]
  %50 = add nuw i64 %26, 1
  %51 = icmp eq i64 %50, %23
  br i1 %51, label %52, label %25, !llvm.loop !92

52:                                               ; preds = %48, %12
  %53 = phi i64 [ 0, %12 ], [ %49, %48 ]
  %54 = getelementptr inbounds i8, ptr %22, i64 %53
  store i8 0, ptr %54, align 1, !tbaa !91
  %55 = load ptr, ptr %14, align 8, !tbaa !89
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %58(ptr noundef nonnull %55) #14
  br label %59

59:                                               ; preds = %57, %52
  %60 = getelementptr inbounds %struct.TextLine, ptr %13, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !44
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %64(ptr noundef nonnull %61) #14
  br label %65

65:                                               ; preds = %63, %59
  store ptr %22, ptr %14, align 8, !tbaa !89
  %66 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22) #15
  %67 = trunc i64 %66 to i32
  store i32 %67, ptr %16, align 8, !tbaa !90
  store ptr null, ptr %60, align 8, !tbaa !44
  %68 = load ptr, ptr %13, align 8, !tbaa !46
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %12, !llvm.loop !93

70:                                               ; preds = %65, %2
  %71 = icmp eq i32 %8, 1
  br i1 %71, label %72, label %189

72:                                               ; preds = %70
  %73 = load ptr, ptr %9, align 8, !tbaa !46
  %74 = icmp eq ptr %73, null
  br i1 %74, label %189, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 16
  %77 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 16
  br label %78

78:                                               ; preds = %75, %186
  %79 = phi ptr [ %73, %75 ], [ %187, %186 ]
  %80 = getelementptr inbounds %struct.TextLine, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !89
  %82 = getelementptr inbounds %struct.TextLine, ptr %79, i64 0, i32 4
  %83 = load i32, ptr %82, align 8, !tbaa !90
  %84 = sext i32 %83 to i64
  %85 = icmp eq i32 %83, 0
  br i1 %85, label %118, label %86

86:                                               ; preds = %78
  %87 = load i32, ptr %76, align 8, !tbaa !86
  %88 = sext i32 %87 to i64
  %89 = icmp eq i32 %87, 0
  %90 = add nsw i32 %87, -1
  br label %91

91:                                               ; preds = %86, %108
  %92 = phi i64 [ 0, %86 ], [ %116, %108 ]
  %93 = phi i32 [ 0, %86 ], [ %112, %108 ]
  br i1 %89, label %108, label %94

94:                                               ; preds = %91, %104
  %95 = phi i64 [ %106, %104 ], [ 0, %91 ]
  %96 = phi i32 [ %105, %104 ], [ 0, %91 ]
  %97 = add i64 %95, %92
  %98 = icmp ugt i64 %97, %84
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds i8, ptr %81, i64 %97
  %101 = load i8, ptr %100, align 1, !tbaa !91
  %102 = icmp eq i8 %101, 32
  %103 = select i1 %102, i32 %96, i32 1
  br label %104

104:                                              ; preds = %99, %94
  %105 = phi i32 [ %96, %94 ], [ %103, %99 ]
  %106 = add nuw i64 %95, 1
  %107 = icmp eq i64 %106, %88
  br i1 %107, label %108, label %94, !llvm.loop !94

108:                                              ; preds = %104, %91
  %109 = phi i32 [ 0, %91 ], [ %105, %104 ]
  %110 = icmp eq i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = add nuw nsw i32 %93, %111
  %113 = select i1 %110, i32 %90, i32 0
  %114 = sext i32 %113 to i64
  %115 = add i64 %92, 1
  %116 = add i64 %115, %114
  %117 = icmp ult i64 %116, %84
  br i1 %117, label %91, label %118, !llvm.loop !95

118:                                              ; preds = %108, %78
  %119 = phi i32 [ 0, %78 ], [ %112, %108 ]
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %186, label %121

121:                                              ; preds = %118
  %122 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %123 = load i32, ptr %77, align 8, !tbaa !86
  %124 = sub i32 1, %123
  %125 = mul i32 %124, %119
  %126 = add i32 %83, 1
  %127 = add i32 %126, %125
  %128 = sext i32 %127 to i64
  %129 = call ptr %122(i64 noundef %128, ptr noundef nonnull @.str.171) #14
  %130 = icmp eq i32 %83, 0
  br i1 %130, label %169, label %131

131:                                              ; preds = %121, %164
  %132 = phi i64 [ %166, %164 ], [ 0, %121 ]
  %133 = phi i64 [ %167, %164 ], [ 0, %121 ]
  %134 = load i32, ptr %77, align 8, !tbaa !86
  %135 = sext i32 %134 to i64
  %136 = icmp eq i32 %134, 0
  br i1 %136, label %151, label %137

137:                                              ; preds = %131, %147
  %138 = phi i64 [ %149, %147 ], [ 0, %131 ]
  %139 = phi i32 [ %148, %147 ], [ 0, %131 ]
  %140 = add i64 %138, %133
  %141 = icmp ugt i64 %140, %84
  br i1 %141, label %147, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds i8, ptr %81, i64 %140
  %144 = load i8, ptr %143, align 1, !tbaa !91
  %145 = icmp eq i8 %144, 32
  %146 = select i1 %145, i32 %139, i32 1
  br label %147

147:                                              ; preds = %142, %137
  %148 = phi i32 [ %139, %137 ], [ %146, %142 ]
  %149 = add nuw i64 %138, 1
  %150 = icmp eq i64 %149, %135
  br i1 %150, label %151, label %137, !llvm.loop !96

151:                                              ; preds = %147, %131
  %152 = phi i32 [ 0, %131 ], [ %148, %147 ]
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = getelementptr inbounds i8, ptr %129, i64 %132
  store i8 9, ptr %155, align 1, !tbaa !91
  %156 = load i32, ptr %77, align 8, !tbaa !86
  %157 = add nsw i32 %156, -1
  %158 = sext i32 %157 to i64
  %159 = add i64 %133, %158
  br label %164

160:                                              ; preds = %151
  %161 = getelementptr inbounds i8, ptr %81, i64 %133
  %162 = load i8, ptr %161, align 1, !tbaa !91
  %163 = getelementptr inbounds i8, ptr %129, i64 %132
  store i8 %162, ptr %163, align 1, !tbaa !91
  br label %164

164:                                              ; preds = %154, %160
  %165 = phi i64 [ %133, %160 ], [ %159, %154 ]
  %166 = add nuw i64 %132, 1
  %167 = add i64 %165, 1
  %168 = icmp ult i64 %167, %84
  br i1 %168, label %131, label %169, !llvm.loop !97

169:                                              ; preds = %164, %121
  %170 = phi i64 [ 0, %121 ], [ %166, %164 ]
  %171 = and i64 %170, 4294967295
  %172 = getelementptr inbounds i8, ptr %129, i64 %171
  store i8 0, ptr %172, align 1, !tbaa !91
  %173 = load ptr, ptr %80, align 8, !tbaa !89
  %174 = icmp eq ptr %173, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %169
  %176 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %176(ptr noundef nonnull %173) #14
  br label %177

177:                                              ; preds = %175, %169
  %178 = getelementptr inbounds %struct.TextLine, ptr %79, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !44
  %180 = icmp eq ptr %179, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %177
  %182 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %182(ptr noundef nonnull %179) #14
  br label %183

183:                                              ; preds = %181, %177
  store ptr %129, ptr %80, align 8, !tbaa !89
  %184 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %129) #15
  %185 = trunc i64 %184 to i32
  store i32 %185, ptr %82, align 8, !tbaa !90
  store ptr null, ptr %178, align 8, !tbaa !44
  br label %186

186:                                              ; preds = %183, %118
  %187 = load ptr, ptr %79, align 8, !tbaa !46
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %78, !llvm.loop !98

189:                                              ; preds = %186, %72, %70
  %190 = load ptr, ptr %9, align 8, !tbaa !46
  %191 = icmp eq ptr %190, null
  br i1 %191, label %202, label %192

192:                                              ; preds = %189, %199
  %193 = phi ptr [ %200, %199 ], [ %190, %189 ]
  %194 = getelementptr inbounds %struct.TextLine, ptr %193, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !44
  %196 = icmp eq ptr %195, null
  br i1 %196, label %199, label %197

197:                                              ; preds = %192
  %198 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %198(ptr noundef nonnull %195) #14
  store ptr null, ptr %194, align 8, !tbaa !44
  br label %199

199:                                              ; preds = %197, %192
  %200 = load ptr, ptr %193, align 8, !tbaa !46
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %192, !llvm.loop !47

202:                                              ; preds = %199, %189
  call void @text_update_cursor_moved(ptr noundef %0) #14
  call void @text_drawcache_tag_update(ptr noundef %4, i32 noundef 1) #14
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %5) #14
  call void @llvm.lifetime.end.p0(i64 1304, ptr nonnull %3) #14
  ret i32 4
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_select_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.66, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.67, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.68, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_select_all_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_select_all_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  tail call void @txt_sel_all(ptr noundef %3) #14
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %3) #14
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_select_line(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.69, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.70, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.71, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_select_line_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_select_line_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  tail call void @txt_sel_line(ptr noundef %3) #14
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %3) #14
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_select_word(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.72, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.73, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.74, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_select_word_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_select_word_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  tail call void @txt_jump_left(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  tail call void @txt_jump_right(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 0) #14
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %3) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @TEXT_OT_move_lines(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.80, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.81, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.82, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @move_lines_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.83, ptr noundef nonnull @TEXT_OT_move_lines.direction_items, i32 noundef 1, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.77) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @move_lines_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.83) #14
  tail call void @txt_move_lines(ptr noundef %3, i32 noundef %6) #14
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %3) #14
  %7 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @TEXT_OT_move(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.85, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.86, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.87, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_move_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.63, ptr noundef nonnull @move_type_items, i32 noundef 0, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.88) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.63) #14
  tail call fastcc void @text_move_cursor(ptr noundef %0, i32 noundef %5, i8 noundef zeroext 0)
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @TEXT_OT_move_select(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.89, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.90, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.91, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_move_select_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_space_edit_poll, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.63, ptr noundef nonnull @move_type_items, i32 noundef 0, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.92) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_move_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.63) #14
  tail call fastcc void @text_move_cursor(ptr noundef %0, i32 noundef %5, i8 noundef zeroext 1)
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @TEXT_OT_jump(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.93, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.94, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.95, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @text_jump_invoke, ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_jump_exec, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %6, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.96, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 1, i32 noundef 10000) #14
  tail call void @RNA_def_property_translation_context(ptr noundef %9, ptr noundef nonnull @.str.99) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @text_jump_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !99
  %5 = sext i16 %4 to i32
  %6 = mul nsw i32 %5, 10
  %7 = mul nsw i32 %5, 5
  %8 = tail call i32 @WM_operator_props_dialog_popup(ptr noundef %0, ptr noundef %1, i32 noundef %6, i32 noundef %7) #14
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_jump_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.96) #14
  %7 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !103
  %9 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 4, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !104
  %11 = tail call i32 @txt_get_span(ptr noundef %8, ptr noundef %10) #14
  %12 = icmp slt i32 %6, 1
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = shl i32 %11, 16
  %15 = add i32 %14, 65536
  %16 = ashr exact i32 %15, 16
  %17 = icmp sgt i32 %6, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = add nsw i32 %16, -1
  br label %22

20:                                               ; preds = %13
  %21 = add nsw i32 %6, -1
  br label %22

22:                                               ; preds = %2, %18, %20
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ], [ 1, %2 ]
  tail call void @txt_move_toline(ptr noundef %3, i32 noundef %23, i8 noundef zeroext 0) #14
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %3) #14
  ret i32 4
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_def_property_translation_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @TEXT_OT_delete(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.100, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.101, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.102, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_delete_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.63, ptr noundef nonnull @delete_type_items, i32 noundef 0, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.103) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_delete_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %4 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.63) #14
  tail call void @text_drawcache_tag_update(ptr noundef %3, i32 noundef 0) #14
  %8 = tail call zeroext i8 @txt_has_sel(ptr noundef %4) #14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = icmp eq i32 %7, 3
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = icmp eq i32 %7, 2
  %14 = select i1 %13, i32 0, i32 %7
  br label %15

15:                                               ; preds = %10, %12, %2
  %16 = phi i32 [ %14, %12 ], [ %7, %2 ], [ 1, %10 ]
  switch i32 %16, label %29 [
    i32 3, label %17
    i32 1, label %22
    i32 2, label %23
    i32 0, label %28
  ]

17:                                               ; preds = %15
  %18 = tail call zeroext i8 @txt_cursor_is_line_start(ptr noundef %4) #14
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @txt_backspace_char(ptr noundef %4) #14
  br label %21

21:                                               ; preds = %20, %17
  tail call void @txt_backspace_word(ptr noundef %4) #14
  br label %29

22:                                               ; preds = %15
  tail call void @txt_backspace_char(ptr noundef %4) #14
  br label %29

23:                                               ; preds = %15
  %24 = tail call zeroext i8 @txt_cursor_is_line_end(ptr noundef %4) #14
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @txt_delete_char(ptr noundef %4) #14
  br label %27

27:                                               ; preds = %26, %23
  tail call void @txt_delete_word(ptr noundef %4) #14
  br label %29

28:                                               ; preds = %15
  tail call void @txt_delete_char(ptr noundef %4) #14
  br label %29

29:                                               ; preds = %15, %22, %28, %27, %21
  %30 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !79
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.TextLine, ptr %31, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !44
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %38(ptr noundef nonnull %35) #14
  store ptr null, ptr %34, align 8, !tbaa !44
  br label %39

39:                                               ; preds = %29, %33, %37
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %4) #14
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_overwrite_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.104, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.105, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.106, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_toggle_overwrite_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_space_edit_poll, ptr %5, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_toggle_overwrite_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 19
  %5 = load i16, ptr %4, align 8, !tbaa !105
  %6 = icmp eq i16 %5, 0
  %7 = zext i1 %6 to i16
  store i16 %7, ptr %4, align 8, !tbaa !105
  %8 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %9) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @TEXT_OT_scroll(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.107, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.108, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.77, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_scroll_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @text_scroll_invoke, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @text_scroll_modal, ptr %6, align 8, !tbaa !106
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @text_scroll_cancel, ptr %7, align 8, !tbaa !66
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_scroll_poll, ptr %8, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 84, ptr %9, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.109, i32 noundef 1, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, i32 noundef -100, i32 noundef 100) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_scroll_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.109) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %2
  %10 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 21), align 2, !tbaa !107
  %11 = sext i16 %10 to i32
  %12 = mul nsw i32 %7, %11
  %13 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !63
  %15 = add nsw i32 %12, %14
  store i32 %15, ptr %13, align 8, !tbaa !63
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %27, label %17

17:                                               ; preds = %9
  %18 = tail call i32 @text_get_total_lines(ptr noundef %3, ptr noundef %4) #14
  %19 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 8
  %20 = load i32, ptr %19, align 4, !tbaa !82
  %21 = sdiv i32 %20, -2
  %22 = add i32 %21, %18
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load i32, ptr %13, align 8, !tbaa !63
  %26 = icmp sgt i32 %25, %22
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %9
  %28 = phi i32 [ 0, %9 ], [ %22, %24 ]
  store i32 %28, ptr %13, align 8, !tbaa !63
  br label %29

29:                                               ; preds = %27, %17, %24
  %30 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  tail call void @ED_area_tag_redraw(ptr noundef %30) #14
  br label %31

31:                                               ; preds = %2, %29
  %32 = phi i32 [ 4, %29 ], [ 2, %2 ]
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_scroll_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.109) #14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @text_scroll_exec(ptr noundef %0, ptr noundef %1), !range !78
  br label %58

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %13 = tail call ptr %12(i64 noundef 28, ptr noundef nonnull @.str.200) #14
  %14 = getelementptr inbounds %struct.TextScroll, ptr %13, i64 0, i32 2
  store i32 1, ptr %14, align 4, !tbaa !108
  %15 = getelementptr inbounds %struct.TextScroll, ptr %13, i64 0, i32 4
  store i32 0, ptr %15, align 4, !tbaa !110
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %13, ptr %16, align 8, !tbaa !72
  %17 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 9
  %18 = load i16, ptr %17, align 8, !tbaa !111
  %19 = or i16 %18, 1
  store i16 %19, ptr %17, align 8, !tbaa !111
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !112
  %22 = icmp eq i16 %21, 14
  br i1 %22, label %23, label %56

23:                                               ; preds = %11
  tail call void @text_update_character_width(ptr noundef %4) #14
  %24 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !114
  store i32 %25, ptr %13, align 4, !tbaa !115
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !116
  %28 = getelementptr inbounds [2 x i32], ptr %13, i64 0, i64 1
  store i32 %27, ptr %28, align 4, !tbaa !115
  %29 = load i32, ptr %24, align 4, !tbaa !114
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %31 = load i32, ptr %30, align 8, !tbaa !117
  %32 = sub nsw i32 %29, %31
  %33 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 12
  %34 = load i8, ptr %33, align 2, !tbaa !118
  %35 = zext i8 %34 to i32
  %36 = mul nsw i32 %32, %35
  %37 = sdiv i32 %36, 4
  %38 = getelementptr inbounds %struct.TextScroll, ptr %13, i64 0, i32 1
  store i32 %37, ptr %38, align 4, !tbaa !115
  %39 = load i32, ptr %26, align 8, !tbaa !116
  %40 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %41 = load i32, ptr %40, align 4, !tbaa !119
  %42 = sub nsw i32 %39, %41
  %43 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 29
  %44 = load i16, ptr %43, align 2, !tbaa !120
  %45 = sext i16 %44 to i32
  %46 = mul nsw i32 %42, %45
  %47 = sdiv i32 %46, 4
  %48 = getelementptr inbounds %struct.TextScroll, ptr %13, i64 0, i32 1, i64 1
  store i32 %47, ptr %48, align 4, !tbaa !115
  store i32 0, ptr %14, align 4, !tbaa !108
  %49 = getelementptr inbounds %struct.TextScroll, ptr %13, i64 0, i32 3
  store i32 0, ptr %49, align 4, !tbaa !121
  tail call fastcc void @text_scroll_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %50 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %51 = getelementptr inbounds %struct.SpaceText, ptr %50, i64 0, i32 9
  %52 = load i16, ptr %51, align 8, !tbaa !111
  %53 = and i16 %52, -2
  store i16 %53, ptr %51, align 8, !tbaa !111
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %55 = load ptr, ptr %16, align 8, !tbaa !72
  tail call void %54(ptr noundef %55) #14
  br label %58

56:                                               ; preds = %11
  %57 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #14
  br label %58

58:                                               ; preds = %56, %23, %9
  %59 = phi i32 [ %10, %9 ], [ 4, %23 ], [ 1, %56 ]
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_scroll_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !112
  switch i16 %9, label %50 [
    i16 4, label %10
    i16 1, label %15
    i16 3, label %15
    i16 2, label %15
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.TextScroll, ptr %5, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !110
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %10
  tail call fastcc void @text_scroll_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %50

15:                                               ; preds = %3, %3, %3
  %16 = getelementptr inbounds %struct.TextScroll, ptr %5, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !110
  %18 = add i32 %17, -1
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %20, label %43

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.SpaceText, ptr %6, i64 0, i32 8
  %22 = load i32, ptr %21, align 4, !tbaa !82
  %23 = icmp eq i32 %17, 1
  %24 = sub nsw i32 0, %22
  %25 = select i1 %23, i32 %22, i32 %24
  %26 = getelementptr inbounds %struct.SpaceText, ptr %6, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !63
  %28 = add nsw i32 %27, %25
  store i32 %28, ptr %26, align 8, !tbaa !63
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %39, label %30

30:                                               ; preds = %20
  %31 = tail call i32 @text_get_total_lines(ptr noundef %6, ptr noundef %7) #14
  %32 = load i32, ptr %21, align 4, !tbaa !82
  %33 = sdiv i32 %32, -2
  %34 = add i32 %33, %31
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32, ptr %26, align 8, !tbaa !63
  %38 = icmp sgt i32 %37, %34
  br i1 %38, label %39, label %41

39:                                               ; preds = %36, %20
  %40 = phi i32 [ 0, %20 ], [ %34, %36 ]
  store i32 %40, ptr %26, align 8, !tbaa !63
  br label %41

41:                                               ; preds = %39, %30, %36
  %42 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  tail call void @ED_area_tag_redraw(ptr noundef %42) #14
  br label %43

43:                                               ; preds = %15, %41
  %44 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %45 = getelementptr inbounds %struct.SpaceText, ptr %44, i64 0, i32 9
  %46 = load i16, ptr %45, align 8, !tbaa !111
  %47 = and i16 %46, -2
  store i16 %47, ptr %45, align 8, !tbaa !111
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %49 = load ptr, ptr %4, align 8, !tbaa !72
  tail call void %48(ptr noundef %49) #14
  br label %50

50:                                               ; preds = %3, %14, %10, %43
  %51 = phi i32 [ 4, %43 ], [ 1, %10 ], [ 1, %14 ], [ 1, %3 ]
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal void @text_scroll_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !111
  %6 = and i16 %5, -2
  store i16 %6, ptr %4, align 8, !tbaa !111
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  tail call void %7(ptr noundef %9) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @text_scroll_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define dso_local void @TEXT_OT_scroll_bar(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.112, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.113, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.77, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @text_scroll_bar_invoke, ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @text_scroll_modal, ptr %5, align 8, !tbaa !106
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @text_scroll_cancel, ptr %6, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_region_scroll_poll, ptr %7, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 68, ptr %8, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.109, i32 noundef 1, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, i32 noundef -100, i32 noundef 100) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_scroll_bar_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %7, ptr noundef nonnull @.str.109) #14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @text_scroll_exec(ptr noundef %0, ptr noundef %1), !range !78
  br label %83

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !115
  %15 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 23
  %16 = load i32, ptr %15, align 8, !tbaa !122
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 23, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !123
  %21 = icmp slt i32 %14, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !115
  %25 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 23, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !124
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 23, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !125
  %31 = icmp sgt i32 %24, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28, %22
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !99
  %34 = sitofp i16 %33 to float
  %35 = fmul float %34, 0x3FB99999A0000000
  %36 = fptosi float %35 to i32
  %37 = icmp sgt i32 %24, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 6
  %40 = load i16, ptr %39, align 2, !tbaa !126
  %41 = sext i16 %40 to i32
  %42 = sub nsw i32 %41, %36
  %43 = icmp sge i32 %24, %42
  %44 = select i1 %27, i32 1, i32 2
  %45 = select i1 %43, i32 -1, i32 %44
  br label %46

46:                                               ; preds = %38, %28, %32, %18, %12
  %47 = phi i1 [ true, %32 ], [ true, %18 ], [ true, %12 ], [ false, %28 ], [ %43, %38 ]
  %48 = phi i32 [ -1, %32 ], [ -1, %18 ], [ -1, %12 ], [ 0, %28 ], [ %45, %38 ]
  br i1 %47, label %83, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %51 = tail call ptr %50(i64 noundef 28, ptr noundef nonnull @.str.200) #14
  %52 = getelementptr inbounds %struct.TextScroll, ptr %51, i64 0, i32 2
  store i32 1, ptr %52, align 4, !tbaa !108
  %53 = getelementptr inbounds %struct.TextScroll, ptr %51, i64 0, i32 3
  store i32 1, ptr %53, align 4, !tbaa !121
  %54 = getelementptr inbounds %struct.TextScroll, ptr %51, i64 0, i32 4
  store i32 %48, ptr %54, align 4, !tbaa !110
  %55 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %51, ptr %55, align 8, !tbaa !72
  %56 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 9
  %57 = load i16, ptr %56, align 8, !tbaa !111
  %58 = or i16 %57, 1
  store i16 %58, ptr %56, align 8, !tbaa !111
  %59 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %60 = load i16, ptr %59, align 8, !tbaa !112
  %61 = icmp eq i16 %60, 2
  br i1 %61, label %62, label %81

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !130
  %65 = load i32, ptr %15, align 4, !tbaa !131
  %66 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 23, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !132
  %68 = add nsw i32 %67, %65
  %69 = sdiv i32 %68, 2
  %70 = add nsw i32 %69, %64
  store i32 %70, ptr %51, align 4, !tbaa !115
  %71 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 3, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !133
  %73 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 23, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !134
  %75 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 23, i32 3
  %76 = load i32, ptr %75, align 4, !tbaa !135
  %77 = add nsw i32 %76, %74
  %78 = sdiv i32 %77, 2
  %79 = add nsw i32 %78, %72
  %80 = getelementptr inbounds [2 x i32], ptr %51, i64 0, i64 1
  store i32 %79, ptr %80, align 4, !tbaa !115
  store i32 0, ptr %52, align 4, !tbaa !108
  store i32 0, ptr %54, align 4, !tbaa !110
  tail call fastcc void @text_scroll_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %81

81:                                               ; preds = %62, %49
  %82 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #14
  br label %83

83:                                               ; preds = %46, %81, %10
  %84 = phi i32 [ %11, %10 ], [ 1, %81 ], [ 8, %46 ]
  ret i32 %84
}

; Function Attrs: nounwind uwtable
define internal i32 @text_region_scroll_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %5 = icmp eq ptr %2, null
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  %8 = icmp eq ptr %4, null
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !136
  %13 = icmp eq i16 %12, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi i32 [ 0, %1 ], [ %14, %10 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local void @TEXT_OT_selection_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.114, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.115, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.116, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @text_set_selection_invoke, ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @text_set_selection_modal, ptr %5, align 8, !tbaa !106
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @text_set_selection_cancel, ptr %6, align 8, !tbaa !66
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_region_edit_poll, ptr %7, align 8, !tbaa !56
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.117, i32 noundef 0, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_set_selection_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !115
  %7 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 23
  %8 = load i32, ptr %7, align 8, !tbaa !122
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %3
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %12 = tail call ptr %11(i64 noundef 16, ptr noundef nonnull @.str.201) #14
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %12, ptr %13, align 8, !tbaa !72
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !68
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.117) #14
  store i32 %16, ptr %12, align 4, !tbaa !137
  %17 = load i32, ptr %5, align 4, !tbaa !115
  %18 = trunc i32 %17 to i16
  %19 = getelementptr inbounds %struct.SetSelection, ptr %12, i64 0, i32 3
  store i16 %18, ptr %19, align 4, !tbaa !139
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %21 = load i32, ptr %20, align 4, !tbaa !115
  %22 = trunc i32 %21 to i16
  %23 = getelementptr inbounds %struct.SetSelection, ptr %12, i64 0, i32 3, i64 1
  store i16 %22, ptr %23, align 2, !tbaa !139
  %24 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !58
  %26 = getelementptr inbounds %struct.Text, ptr %25, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !103
  %28 = getelementptr inbounds %struct.Text, ptr %25, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !140
  %30 = tail call i32 @txt_get_span(ptr noundef %27, ptr noundef %29) #14
  %31 = getelementptr inbounds %struct.SetSelection, ptr %12, i64 0, i32 2
  store i32 %30, ptr %31, align 4, !tbaa !141
  %32 = load ptr, ptr %24, align 8, !tbaa !58
  %33 = getelementptr inbounds %struct.Text, ptr %32, i64 0, i32 8
  %34 = load i32, ptr %33, align 4, !tbaa !142
  %35 = getelementptr inbounds %struct.SetSelection, ptr %12, i64 0, i32 1
  store i32 %34, ptr %35, align 4, !tbaa !143
  %36 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #14
  tail call fastcc void @text_cursor_set_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %37

37:                                               ; preds = %3, %10
  %38 = phi i32 [ 1, %10 ], [ 8, %3 ]
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_set_selection_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !112
  switch i16 %5, label %8 [
    i16 1, label %6
    i16 2, label %6
    i16 3, label %6
    i16 4, label %7
  ]

6:                                                ; preds = %3, %3, %3
  tail call fastcc void @text_cursor_set_exit(ptr noundef %0, ptr noundef %1)
  br label %8

7:                                                ; preds = %3
  tail call fastcc void @text_cursor_set_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %8

8:                                                ; preds = %7, %3, %6
  %9 = phi i32 [ 4, %6 ], [ 1, %3 ], [ 1, %7 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal void @text_set_selection_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call fastcc void @text_cursor_set_exit(ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @text_region_edit_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %5 = icmp eq ptr %2, null
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  %8 = icmp eq ptr %4, null
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !136
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %14, %10, %1
  %20 = phi i32 [ 0, %1 ], [ 0, %10 ], [ %18, %14 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local void @TEXT_OT_cursor_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.120, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.121, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.122, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @text_cursor_set_invoke, ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_cursor_set_exec, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_region_edit_poll, ptr %6, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.123, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.77, i32 noundef -2147483648, i32 noundef 2147483647) #14
  %10 = load ptr, ptr %7, align 8, !tbaa !67
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.125, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.77, i32 noundef -2147483648, i32 noundef 2147483647) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_cursor_set_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !115
  %7 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 23
  %8 = load i32, ptr %7, align 8, !tbaa !122
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  tail call void @RNA_int_set(ptr noundef %12, ptr noundef nonnull @.str.123, i32 noundef %6) #14
  %13 = load ptr, ptr %11, align 8, !tbaa !68
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !115
  tail call void @RNA_int_set(ptr noundef %13, ptr noundef nonnull @.str.125, i32 noundef %15) #14
  %16 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %17 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %18 = load ptr, ptr %11, align 8, !tbaa !68
  %19 = tail call i32 @RNA_int_get(ptr noundef %18, ptr noundef nonnull @.str.123) #14
  %20 = load ptr, ptr %11, align 8, !tbaa !68
  %21 = tail call i32 @RNA_int_get(ptr noundef %20, ptr noundef nonnull @.str.125) #14
  tail call fastcc void @text_cursor_set_to_pos(ptr noundef %16, ptr noundef %17, i32 noundef %19, i32 noundef %21, i8 noundef zeroext 0)
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  %22 = getelementptr inbounds %struct.SpaceText, ptr %16, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %23) #14
  br label %24

24:                                               ; preds = %3, %10
  ret i32 8
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_cursor_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.123) #14
  %8 = load ptr, ptr %5, align 8, !tbaa !68
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.125) #14
  tail call fastcc void @text_cursor_set_to_pos(ptr noundef %3, ptr noundef %4, i32 noundef %7, i32 noundef %9, i8 noundef zeroext 0)
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  %10 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %11) #14
  ret i32 8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_line_number(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.127, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.128, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.129, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @text_line_number_invoke, ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_region_edit_poll, ptr %5, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_line_number_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %5 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  tail call void @text_update_character_width(ptr noundef %4) #14
  %7 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 15
  %8 = load i32, ptr %7, align 4, !tbaa !144
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %57, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !115
  %13 = icmp sgt i32 %12, 2
  br i1 %13, label %14, label %57

14:                                               ; preds = %10
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !99
  %16 = sitofp i16 %15 to float
  %17 = fmul float %16, 5.000000e-01
  %18 = fptosi float %17 to i32
  %19 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 12
  %20 = load i8, ptr %19, align 2, !tbaa !118
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 13
  %23 = load i8, ptr %22, align 1, !tbaa !145
  %24 = zext i8 %23 to i32
  %25 = mul nuw nsw i32 %24, %21
  %26 = add nsw i32 %25, %18
  %27 = icmp slt i32 %12, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !115
  %31 = icmp sgt i32 %30, 2
  br i1 %31, label %32, label %57

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 6
  %34 = load i16, ptr %33, align 2, !tbaa !126
  %35 = sext i16 %34 to i32
  %36 = add nsw i32 %35, -2
  %37 = icmp slt i32 %30, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 8
  %40 = load i8, ptr %39, align 2, !tbaa !146
  %41 = add i8 %40, -48
  %42 = icmp ult i8 %41, 10
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = tail call double @PIL_check_seconds_timer() #14
  %45 = load double, ptr @text_line_number_invoke.last_jump, align 8, !tbaa !147
  %46 = fadd double %44, -1.000000e+00
  %47 = fcmp olt double %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, ptr @text_line_number_invoke.jump_to, align 4, !tbaa !115
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i32, ptr @text_line_number_invoke.jump_to, align 4, !tbaa !115
  %51 = mul nsw i32 %50, 10
  store i32 %51, ptr @text_line_number_invoke.jump_to, align 4, !tbaa !115
  %52 = load i8, ptr %39, align 2, !tbaa !146
  %53 = zext i8 %52 to i32
  %54 = add i32 %51, -48
  %55 = add i32 %54, %53
  store i32 %55, ptr @text_line_number_invoke.jump_to, align 4, !tbaa !115
  %56 = add nsw i32 %55, -1
  tail call void @txt_move_toline(ptr noundef %5, i32 noundef %56, i8 noundef zeroext 0) #14
  store double %44, ptr @text_line_number_invoke.last_jump, align 8, !tbaa !147
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %5) #14
  br label %57

57:                                               ; preds = %38, %10, %14, %28, %32, %3, %49
  %58 = phi i32 [ 4, %49 ], [ 8, %3 ], [ 8, %32 ], [ 8, %28 ], [ 8, %14 ], [ 8, %10 ], [ 8, %38 ]
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define dso_local void @TEXT_OT_insert(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.130, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.131, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.132, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_insert_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @text_insert_invoke, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %6, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.133, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.134) #14
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_insert_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i64, align 8
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %5 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  store i64 0, ptr %3, align 8, !tbaa !148
  tail call void @text_drawcache_tag_update(ptr noundef %4, i32 noundef 0) #14
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = tail call ptr @RNA_string_get_alloc(ptr noundef %7, ptr noundef nonnull @.str.133, ptr noundef null, i32 noundef 0) #14
  %9 = icmp eq ptr %4, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 19
  %12 = load i16, ptr %11, align 8, !tbaa !105
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %10
  %15 = load i64, ptr %3, align 8, !tbaa !148
  %16 = getelementptr inbounds i8, ptr %8, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !91
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %42, label %19

19:                                               ; preds = %14, %19
  %20 = phi i8 [ %23, %19 ], [ 0, %14 ]
  %21 = call i32 @BLI_str_utf8_as_unicode_step(ptr noundef %8, ptr noundef nonnull %3) #14
  %22 = call zeroext i8 @txt_replace_char(ptr noundef %5, i32 noundef %21) #14
  %23 = or i8 %22, %20
  %24 = load i64, ptr %3, align 8, !tbaa !148
  %25 = getelementptr inbounds i8, ptr %8, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !91
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %42, label %19, !llvm.loop !150

28:                                               ; preds = %10, %2
  %29 = load i64, ptr %3, align 8, !tbaa !148
  %30 = getelementptr inbounds i8, ptr %8, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !91
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %28, %33
  %34 = phi i8 [ %37, %33 ], [ 0, %28 ]
  %35 = call i32 @BLI_str_utf8_as_unicode_step(ptr noundef %8, ptr noundef nonnull %3) #14
  %36 = call zeroext i8 @txt_add_char(ptr noundef %5, i32 noundef %35) #14
  %37 = or i8 %36, %34
  %38 = load i64, ptr %3, align 8, !tbaa !148
  %39 = getelementptr inbounds i8, ptr %8, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !91
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %33, !llvm.loop !151

42:                                               ; preds = %19, %33, %14, %28
  %43 = phi i8 [ 0, %28 ], [ 0, %14 ], [ %37, %33 ], [ %23, %19 ]
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %44(ptr noundef %8) #14
  %45 = icmp eq i8 %43, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.Text, ptr %5, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !79
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.TextLine, ptr %48, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !44
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %55(ptr noundef nonnull %52) #14
  store ptr null, ptr %51, align 8, !tbaa !44
  br label %56

56:                                               ; preds = %46, %50, %54
  call void @text_update_cursor_moved(ptr noundef %0) #14
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %5) #14
  br label %57

57:                                               ; preds = %42, %56
  %58 = phi i32 [ 4, %56 ], [ 2, %42 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_insert_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [7 x i8], align 1
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = tail call i32 @RNA_string_length(ptr noundef %6, ptr noundef nonnull @.str.133) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %11 = load i16, ptr %10, align 2, !tbaa !152
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 20
  %15 = load i16, ptr %14, align 2, !tbaa !153
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 7
  %19 = load i8, ptr %18, align 4, !tbaa !91
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %17, %13
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #14
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 7
  %23 = load i8, ptr %22, align 4, !tbaa !91
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %22) #14
  %27 = sext i32 %26 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %4, ptr nonnull align 4 %22, i64 %27, i1 false)
  br label %33

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 8
  %30 = load i8, ptr %29, align 2, !tbaa !146
  %31 = zext i8 %30 to i32
  %32 = call i64 @BLI_str_utf8_from_unicode(i32 noundef %31, ptr noundef nonnull %4) #14
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i64 [ %27, %25 ], [ %32, %28 ]
  %35 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 %34
  store i8 0, ptr %35, align 1, !tbaa !91
  %36 = load ptr, ptr %5, align 8, !tbaa !68
  call void @RNA_string_set(ptr noundef %36, ptr noundef nonnull @.str.133, ptr noundef nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #14
  br label %37

37:                                               ; preds = %33, %3
  %38 = call i32 @text_insert_exec(ptr noundef %0, ptr noundef %1), !range !78
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call ptr @CTX_wm_space_text(ptr noundef %0) #14
  br label %42

42:                                               ; preds = %40, %37, %17
  %43 = phi i32 [ 8, %17 ], [ %38, %37 ], [ %38, %40 ]
  ret i32 %43
}

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_find(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.135, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.136, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.137, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_find_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_space_edit_poll, ptr %5, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_find_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call fastcc i32 @text_find_and_replace(ptr noundef %0, ptr noundef %1, i16 noundef signext 0), !range !78
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_replace(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.138, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.139, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.140, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_replace_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_space_edit_poll, ptr %5, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_replace_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call fastcc i32 @text_find_and_replace(ptr noundef %0, ptr noundef %1, i16 noundef signext 1), !range !78
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_find_set_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.141, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.142, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.143, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_find_set_selected_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_space_edit_poll, ptr %5, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_find_set_selected_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %4 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %5 = tail call ptr @txt_sel_to_buf(ptr noundef %4) #14
  %6 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 26
  %7 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %5, i64 noundef 256) #14
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %8(ptr noundef %5) #14
  %9 = load i8, ptr %6, align 8, !tbaa !91
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call fastcc i32 @text_find_and_replace(ptr noundef %0, ptr noundef %1, i16 noundef signext 0), !range !78
  br label %13

13:                                               ; preds = %2, %11
  %14 = phi i32 [ %12, %11 ], [ 4, %2 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_replace_set_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.144, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.145, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.146, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_replace_set_selected_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_space_edit_poll, ptr %5, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_replace_set_selected_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %4 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %5 = tail call ptr @txt_sel_to_buf(ptr noundef %4) #14
  %6 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 27
  %7 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %5, i64 noundef 256) #14
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %8(ptr noundef %5) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @TEXT_OT_resolve_conflict(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.147, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.148, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.149, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_resolve_conflict_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @text_resolve_conflict_invoke, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_save_poll, ptr %6, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.150, ptr noundef nonnull @resolution_items, i32 noundef 0, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_resolve_conflict_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.150) #14
  switch i32 %6, label %25 [
    i32 1, label %7
    i32 2, label %9
    i32 3, label %13
    i32 0, label %24
  ]

7:                                                ; preds = %2
  %8 = tail call i32 @text_reload_exec(ptr noundef %0, ptr noundef %1), !range !78
  br label %25

9:                                                ; preds = %2
  %10 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !81
  tail call fastcc void @txt_write_file(ptr noundef %10, ptr noundef %12)
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %10) #14
  br label %25

13:                                               ; preds = %2
  %14 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %15 = getelementptr inbounds %struct.Text, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !85
  %17 = or i32 %16, 5
  store i32 %17, ptr %15, align 8, !tbaa !85
  %18 = getelementptr inbounds %struct.Text, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !77
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %13
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %22(ptr noundef nonnull %19) #14
  store ptr null, ptr %18, align 8, !tbaa !77
  br label %23

23:                                               ; preds = %13, %21
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %14) #14
  br label %25

24:                                               ; preds = %2
  tail call void @BKE_text_file_modified_ignore(ptr noundef %3) #14
  br label %25

25:                                               ; preds = %2, %24, %23, %9, %7
  %26 = phi i32 [ 4, %24 ], [ 4, %23 ], [ 4, %9 ], [ %8, %7 ], [ 2, %2 ]
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_resolve_conflict_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %5 = tail call i32 @BKE_text_file_modified_check(ptr noundef %4) #14
  switch i32 %5, label %32 [
    i32 1, label %6
    i32 2, label %24
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !85
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  br i1 %10, label %18, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.203, i32 noundef 0) #14
  %14 = tail call ptr @uiPupMenuLayout(ptr noundef %13) #14
  %15 = load ptr, ptr %11, align 8, !tbaa !154
  tail call void @uiItemEnumO_ptr(ptr noundef %14, ptr noundef %15, ptr noundef nonnull @.str.204, i32 noundef 0, ptr noundef nonnull @.str.150, i32 noundef 1) #14
  %16 = load ptr, ptr %11, align 8, !tbaa !154
  tail call void @uiItemEnumO_ptr(ptr noundef %14, ptr noundef %16, ptr noundef nonnull @.str.205, i32 noundef 0, ptr noundef nonnull @.str.150, i32 noundef 2) #14
  %17 = load ptr, ptr %11, align 8, !tbaa !154
  tail call void @uiItemEnumO_ptr(ptr noundef %14, ptr noundef %17, ptr noundef nonnull @.str.206, i32 noundef 0, ptr noundef nonnull @.str.150, i32 noundef 3) #14
  br label %30

18:                                               ; preds = %6
  %19 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.207, i32 noundef 0) #14
  %20 = tail call ptr @uiPupMenuLayout(ptr noundef %19) #14
  %21 = load ptr, ptr %11, align 8, !tbaa !154
  tail call void @uiItemEnumO_ptr(ptr noundef %20, ptr noundef %21, ptr noundef nonnull @.str.208, i32 noundef 0, ptr noundef nonnull @.str.150, i32 noundef 1) #14
  %22 = load ptr, ptr %11, align 8, !tbaa !154
  tail call void @uiItemEnumO_ptr(ptr noundef %20, ptr noundef %22, ptr noundef nonnull @.str.206, i32 noundef 0, ptr noundef nonnull @.str.150, i32 noundef 3) #14
  %23 = load ptr, ptr %11, align 8, !tbaa !154
  tail call void @uiItemEnumO_ptr(ptr noundef %20, ptr noundef %23, ptr noundef nonnull @.str.209, i32 noundef 0, ptr noundef nonnull @.str.150, i32 noundef 0) #14
  br label %30

24:                                               ; preds = %3
  %25 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.210, i32 noundef 0) #14
  %26 = tail call ptr @uiPupMenuLayout(ptr noundef %25) #14
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !154
  tail call void @uiItemEnumO_ptr(ptr noundef %26, ptr noundef %28, ptr noundef nonnull @.str.211, i32 noundef 0, ptr noundef nonnull @.str.150, i32 noundef 3) #14
  %29 = load ptr, ptr %27, align 8, !tbaa !154
  tail call void @uiItemEnumO_ptr(ptr noundef %26, ptr noundef %29, ptr noundef nonnull @.str.212, i32 noundef 0, ptr noundef nonnull @.str.150, i32 noundef 2) #14
  br label %30

30:                                               ; preds = %24, %18, %12
  %31 = phi ptr [ %13, %12 ], [ %19, %18 ], [ %25, %24 ]
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %31) #14
  br label %32

32:                                               ; preds = %30, %3
  ret i32 32
}

; Function Attrs: nounwind uwtable
define dso_local void @TEXT_OT_to_3d_object(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.153, ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.154, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.155, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_to_3d_object_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.156, i32 noundef 0, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.158) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @text_to_3d_object_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.156) #14
  %7 = trunc i32 %6 to i8
  tail call void @ED_text_to_object(ptr noundef %0, ptr noundef %3, i8 noundef zeroext %7) #14
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @ED_text_undo_step(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %2
  switch i32 %1, label %8 [
    i32 1, label %6
    i32 -1, label %7
  ]

6:                                                ; preds = %5
  tail call void @txt_do_undo(ptr noundef nonnull %3) #14
  br label %8

7:                                                ; preds = %5
  tail call void @txt_do_redo(ptr noundef nonnull %3) #14
  br label %8

8:                                                ; preds = %5, %7, %6
  %9 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %8, %19
  %13 = phi ptr [ %20, %19 ], [ %10, %8 ]
  %14 = getelementptr inbounds %struct.TextLine, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %18(ptr noundef nonnull %15) #14
  store ptr null, ptr %14, align 8, !tbaa !44
  br label %19

19:                                               ; preds = %17, %12
  %20 = load ptr, ptr %13, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %12, !llvm.loop !47

22:                                               ; preds = %19, %8
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  %23 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  tail call void @text_drawcache_tag_update(ptr noundef %23, i32 noundef 1) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef nonnull %3) #14
  br label %24

24:                                               ; preds = %2, %22
  ret void
}

declare void @txt_do_undo(ptr noundef) local_unnamed_addr #2

declare void @txt_do_redo(ptr noundef) local_unnamed_addr #2

declare void @text_update_cursor_moved(ptr noundef) local_unnamed_addr #2

declare void @text_drawcache_tag_update(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_text_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiIDContextProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_pointer_set(ptr noundef, ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) local_unnamed_addr #2

declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_text_load_ex(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BKE_text_reload(ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @txt_move_to(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @text_get_total_lines(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_text_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_libblock_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @txt_write_file(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #14
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %6, i64 noundef 1024) #14
  %8 = load ptr, ptr @G, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.Main, ptr %8, i64 0, i32 2
  %10 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %4, ptr noundef nonnull %9) #14
  %11 = call ptr @BLI_fopen(ptr noundef nonnull %4, ptr noundef nonnull @.str.162) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = tail call ptr @__errno_location() #16
  %15 = load i32, ptr %14, align 4, !tbaa !115
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = call ptr @strerror(i32 noundef %15) #14
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi ptr [ %18, %17 ], [ @.str.164, %13 ]
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.163, ptr noundef nonnull %4, ptr noundef %20) #14
  br label %59

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %21, %34
  %26 = phi ptr [ %35, %34 ], [ %23, %21 ]
  %27 = getelementptr inbounds %struct.TextLine, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !89
  %29 = call i32 @fputs(ptr noundef %28, ptr noundef nonnull %11)
  %30 = load ptr, ptr %26, align 8, !tbaa !155
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %11)
  br label %34

34:                                               ; preds = %25, %32
  %35 = load ptr, ptr %26, align 8, !tbaa !46
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %25, !llvm.loop !156

37:                                               ; preds = %34, %21
  %38 = call i32 @fclose(ptr noundef nonnull %11)
  %39 = call i32 @BLI_stat(ptr noundef nonnull %4, ptr noundef nonnull %3) #14
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 12
  %43 = load i64, ptr %42, align 8, !tbaa !157
  %44 = sitofp i64 %43 to double
  %45 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 13
  store double %44, ptr %45, align 8, !tbaa !160
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.165, ptr noundef nonnull %4) #14
  br label %55

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 13
  store double 0.000000e+00, ptr %47, align 8, !tbaa !160
  %48 = tail call ptr @__errno_location() #16
  %49 = load i32, ptr %48, align 4, !tbaa !115
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = call ptr @strerror(i32 noundef %49) #14
  br label %53

53:                                               ; preds = %46, %51
  %54 = phi ptr [ %52, %51 ], [ @.str.167, %46 ]
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.166, ptr noundef nonnull %4, ptr noundef %54) #14
  br label %55

55:                                               ; preds = %53, %41
  %56 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %57 = load i32, ptr %56, align 8, !tbaa !85
  %58 = and i32 %57, -2
  store i32 %58, ptr %56, align 8, !tbaa !85
  br label %59

59:                                               ; preds = %55, %19
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #14
  ret void
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

declare i32 @BLI_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #2

declare ptr @WM_clipboard_text_get(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @txt_insert_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @txt_duplicate_line(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @txt_copy_clipboard(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %134, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = icmp eq ptr %5, null
  br i1 %6, label %134, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !140
  %10 = icmp eq ptr %9, null
  br i1 %10, label %134, label %11

11:                                               ; preds = %7
  %12 = tail call zeroext i8 @txt_has_sel(ptr noundef nonnull %0) #14
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %134, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 8, !tbaa !79
  %16 = load ptr, ptr %8, align 8, !tbaa !140
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !80
  %21 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %22 = load i32, ptr %21, align 4, !tbaa !142
  %23 = tail call i32 @llvm.smin.i32(i32 %20, i32 %22)
  %24 = tail call i32 @llvm.smax.i32(i32 %20, i32 %22)
  br label %42

25:                                               ; preds = %14
  %26 = tail call i32 @txt_get_span(ptr noundef %15, ptr noundef %16) #14
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load ptr, ptr %8, align 8, !tbaa !140
  %30 = load ptr, ptr %4, align 8, !tbaa !79
  %31 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %32 = load i32, ptr %31, align 4, !tbaa !142
  %33 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !80
  br label %42

35:                                               ; preds = %25
  %36 = load ptr, ptr %4, align 8, !tbaa !79
  %37 = load ptr, ptr %8, align 8, !tbaa !140
  %38 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !80
  %40 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %41 = load i32, ptr %40, align 4, !tbaa !142
  br label %42

42:                                               ; preds = %35, %28, %18
  %43 = phi ptr [ %29, %28 ], [ %36, %35 ], [ %15, %18 ]
  %44 = phi ptr [ %30, %28 ], [ %37, %35 ], [ %15, %18 ]
  %45 = phi i32 [ %32, %28 ], [ %39, %35 ], [ %23, %18 ]
  %46 = phi i32 [ %34, %28 ], [ %41, %35 ], [ %24, %18 ]
  %47 = icmp eq ptr %43, %44
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %50 = sub i32 %46, %45
  %51 = add i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = tail call ptr %49(i64 noundef %52, ptr noundef nonnull @.str.169) #14
  %54 = getelementptr inbounds %struct.TextLine, ptr %43, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !89
  %56 = sext i32 %45 to i64
  %57 = getelementptr inbounds i8, ptr %55, i64 %56
  %58 = tail call ptr @BLI_strncpy(ptr noundef %53, ptr noundef %57, i64 noundef %52) #14
  br label %134

59:                                               ; preds = %42
  %60 = getelementptr inbounds %struct.TextLine, ptr %43, i64 0, i32 4
  %61 = load i32, ptr %60, align 8, !tbaa !90
  %62 = sub i32 %46, %45
  %63 = add i32 %62, 1
  %64 = add i32 %63, %61
  %65 = load ptr, ptr %43, align 8, !tbaa !155
  %66 = icmp ne ptr %65, null
  %67 = icmp ne ptr %65, %44
  %68 = and i1 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %59, %69
  %70 = phi ptr [ %76, %69 ], [ %65, %59 ]
  %71 = phi i32 [ %75, %69 ], [ %64, %59 ]
  %72 = getelementptr inbounds %struct.TextLine, ptr %70, i64 0, i32 4
  %73 = load i32, ptr %72, align 8, !tbaa !90
  %74 = add i32 %71, 1
  %75 = add i32 %74, %73
  %76 = load ptr, ptr %70, align 8, !tbaa !155
  %77 = icmp ne ptr %76, null
  %78 = icmp ne ptr %76, %44
  %79 = and i1 %77, %78
  br i1 %79, label %69, label %80, !llvm.loop !161

80:                                               ; preds = %69, %59
  %81 = phi i32 [ %64, %59 ], [ %75, %69 ]
  %82 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %83 = add nsw i32 %81, 1
  %84 = sext i32 %83 to i64
  %85 = tail call ptr %82(i64 noundef %84, ptr noundef nonnull @.str.170) #14
  %86 = getelementptr inbounds %struct.TextLine, ptr %43, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !89
  %88 = sext i32 %45 to i64
  %89 = getelementptr inbounds i8, ptr %87, i64 %88
  %90 = load i32, ptr %60, align 8, !tbaa !90
  %91 = sub nsw i32 %90, %45
  %92 = sext i32 %91 to i64
  %93 = tail call ptr @strncpy(ptr noundef %85, ptr noundef %89, i64 noundef %92) #14
  %94 = load i32, ptr %60, align 8, !tbaa !90
  %95 = sub nsw i32 %94, %45
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, ptr %85, i64 %96
  store i8 10, ptr %97, align 1, !tbaa !91
  %98 = add nsw i32 %95, 1
  %99 = load ptr, ptr %43, align 8, !tbaa !155
  %100 = icmp ne ptr %99, null
  %101 = icmp ne ptr %99, %44
  %102 = and i1 %100, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %80, %103
  %104 = phi ptr [ %119, %103 ], [ %99, %80 ]
  %105 = phi i32 [ %118, %103 ], [ %98, %80 ]
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, ptr %85, i64 %106
  %108 = getelementptr inbounds %struct.TextLine, ptr %104, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !89
  %110 = getelementptr inbounds %struct.TextLine, ptr %104, i64 0, i32 4
  %111 = load i32, ptr %110, align 8, !tbaa !90
  %112 = sext i32 %111 to i64
  %113 = tail call ptr @strncpy(ptr noundef %107, ptr noundef %109, i64 noundef %112) #14
  %114 = load i32, ptr %110, align 8, !tbaa !90
  %115 = add nsw i32 %114, %105
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, ptr %85, i64 %116
  store i8 10, ptr %117, align 1, !tbaa !91
  %118 = add nsw i32 %115, 1
  %119 = load ptr, ptr %104, align 8, !tbaa !155
  %120 = icmp ne ptr %119, null
  %121 = icmp ne ptr %119, %44
  %122 = and i1 %120, %121
  br i1 %122, label %103, label %123, !llvm.loop !162

123:                                              ; preds = %103, %80
  %124 = phi i32 [ %98, %80 ], [ %118, %103 ]
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, ptr %85, i64 %125
  %127 = getelementptr inbounds %struct.TextLine, ptr %44, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !89
  %129 = sext i32 %46 to i64
  %130 = tail call ptr @strncpy(ptr noundef %126, ptr noundef %128, i64 noundef %129) #14
  %131 = add nsw i32 %124, %46
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, ptr %85, i64 %132
  store i8 0, ptr %133, align 1, !tbaa !91
  br label %134

134:                                              ; preds = %1, %3, %7, %11, %48, %123
  %135 = phi ptr [ null, %1 ], [ null, %3 ], [ null, %7 ], [ null, %11 ], [ %53, %48 ], [ %85, %123 ]
  %136 = icmp eq ptr %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  tail call void @WM_clipboard_text_set(ptr noundef nonnull %135, i8 noundef zeroext 0) #14
  %138 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %138(ptr noundef nonnull %135) #14
  br label %139

139:                                              ; preds = %137, %134
  ret void
}

declare void @WM_clipboard_text_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @txt_has_sel(ptr noundef) local_unnamed_addr #2

declare i32 @txt_get_span(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

declare void @txt_delete_selected(ptr noundef) local_unnamed_addr #2

declare void @txt_order_cursors(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @txt_indent(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @txt_add_char(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @txt_unindent(ptr noundef) local_unnamed_addr #2

declare i32 @txt_setcurr_tab_spaces(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @txt_split_curline(ptr noundef) local_unnamed_addr #2

declare void @txt_comment(ptr noundef) local_unnamed_addr #2

declare void @txt_uncomment(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @flatten_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @flatten_string_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

declare void @txt_sel_all(ptr noundef) local_unnamed_addr #2

declare void @txt_sel_line(ptr noundef) local_unnamed_addr #2

declare void @txt_jump_left(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @txt_jump_right(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @txt_move_lines(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @text_move_cursor(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %9 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #14
  %10 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !136
  %15 = icmp eq i16 %14, 0
  %16 = select i1 %15, ptr %10, ptr null
  br label %17

17:                                               ; preds = %12, %3
  %18 = phi ptr [ %16, %12 ], [ null, %3 ]
  switch i32 %1, label %448 [
    i32 0, label %19
    i32 1, label %123
    i32 2, label %245
    i32 3, label %246
    i32 6, label %247
    i32 7, label %252
    i32 4, label %257
    i32 5, label %264
    i32 8, label %271
    i32 9, label %320
    i32 10, label %371
    i32 11, label %406
  ]

19:                                               ; preds = %17
  %20 = icmp eq i8 %2, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  tail call void @txt_sel_clear(ptr noundef %9) #14
  br label %22

22:                                               ; preds = %21, %19
  %23 = icmp eq ptr %8, null
  br i1 %23, label %122, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.SpaceText, ptr %8, i64 0, i32 24
  %26 = load i32, ptr %25, align 8, !tbaa !163
  %27 = icmp ne i32 %26, 0
  %28 = icmp ne ptr %18, null
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %122

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.SpaceText, ptr %8, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !58
  tail call void @text_update_character_width(ptr noundef %8) #14
  %33 = getelementptr inbounds %struct.Text, ptr %32, i64 0, i32 6
  %34 = getelementptr inbounds %struct.Text, ptr %32, i64 0, i32 8
  %35 = getelementptr inbounds %struct.Text, ptr %32, i64 0, i32 5
  %36 = getelementptr inbounds %struct.Text, ptr %32, i64 0, i32 7
  %37 = select i1 %20, ptr %36, ptr %34
  %38 = select i1 %20, ptr %35, ptr %33
  %39 = load i32, ptr %37, align 4, !tbaa !115
  %40 = tail call i32 @wrap_width(ptr noundef %8, ptr noundef nonnull %18) #14
  store i32 0, ptr %37, align 4, !tbaa !115
  %41 = getelementptr inbounds %struct.SpaceText, ptr %8, i64 0, i32 16
  br label %42

42:                                               ; preds = %30, %107
  %43 = phi i32 [ 1, %30 ], [ %111, %107 ]
  %44 = phi i32 [ 0, %30 ], [ %110, %107 ]
  %45 = phi i32 [ %40, %30 ], [ %112, %107 ]
  %46 = phi i32 [ 0, %30 ], [ %109, %107 ]
  %47 = phi i32 [ 0, %30 ], [ %119, %107 ]
  %48 = phi i32 [ 0, %30 ], [ %108, %107 ]
  %49 = load ptr, ptr %38, align 8, !tbaa !46
  %50 = getelementptr inbounds %struct.TextLine, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !89
  %52 = sext i32 %47 to i64
  %53 = getelementptr inbounds i8, ptr %51, i64 %52
  %54 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef %53) #14
  %55 = load ptr, ptr %38, align 8, !tbaa !46
  %56 = getelementptr inbounds %struct.TextLine, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !89
  %58 = getelementptr inbounds i8, ptr %57, i64 %52
  %59 = load i8, ptr %58, align 1, !tbaa !91
  %60 = icmp eq i8 %59, 9
  br i1 %60, label %61, label %65

61:                                               ; preds = %42
  %62 = load i32, ptr %41, align 8, !tbaa !86
  %63 = srem i32 %48, %62
  %64 = sub nsw i32 %62, %63
  br label %65

65:                                               ; preds = %61, %42
  %66 = phi i8 [ 32, %61 ], [ %59, %42 ]
  %67 = phi i32 [ %64, %61 ], [ 1, %42 ]
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %107, label %69

69:                                               ; preds = %65
  %70 = icmp slt i32 %47, %39
  %71 = add nsw i32 %47, 1
  %72 = icmp slt i32 %47, %39
  %73 = mul i32 %54, %67
  %74 = add i32 %48, %73
  br label %75

75:                                               ; preds = %69, %98
  %76 = phi i32 [ %67, %69 ], [ %82, %98 ]
  %77 = phi i32 [ %43, %69 ], [ %102, %98 ]
  %78 = phi i32 [ %44, %69 ], [ %101, %98 ]
  %79 = phi i32 [ %45, %69 ], [ %100, %98 ]
  %80 = phi i32 [ %46, %69 ], [ %99, %98 ]
  %81 = phi i32 [ %48, %69 ], [ %83, %98 ]
  %82 = add nsw i32 %76, -1
  %83 = add nsw i32 %81, %54
  %84 = sub nsw i32 %83, %80
  %85 = icmp sgt i32 %84, %40
  br i1 %85, label %86, label %94

86:                                               ; preds = %75
  %87 = tail call i32 @llvm.smin.i32(i32 %79, i32 %81)
  store i32 %78, ptr %37, align 4, !tbaa !115
  br i1 %72, label %90, label %88

88:                                               ; preds = %86
  %89 = icmp eq i8 %66, 0
  br i1 %89, label %104, label %107

90:                                               ; preds = %86
  %91 = icmp eq i32 %77, 0
  %92 = select i1 %91, i32 %78, i32 %47
  %93 = add nsw i32 %87, %40
  br label %98

94:                                               ; preds = %75
  switch i8 %66, label %98 [
    i8 45, label %95
    i8 32, label %95
    i8 0, label %95
  ]

95:                                               ; preds = %94, %94, %94
  br i1 %70, label %96, label %104

96:                                               ; preds = %95
  %97 = add nsw i32 %81, 1
  br label %98

98:                                               ; preds = %96, %94, %90
  %99 = phi i32 [ %87, %90 ], [ %80, %96 ], [ %80, %94 ]
  %100 = phi i32 [ %93, %90 ], [ %97, %96 ], [ %79, %94 ]
  %101 = phi i32 [ %92, %90 ], [ %71, %96 ], [ %78, %94 ]
  %102 = phi i32 [ 1, %90 ], [ 0, %96 ], [ %77, %94 ]
  %103 = icmp eq i32 %82, 0
  br i1 %103, label %107, label %75, !llvm.loop !164

104:                                              ; preds = %95, %88
  %105 = phi i32 [ %87, %88 ], [ %79, %95 ]
  %106 = tail call i32 @txt_utf8_column_to_offset(ptr noundef %57, i32 noundef %80) #14
  store i32 %106, ptr %37, align 4, !tbaa !115
  br label %107

107:                                              ; preds = %98, %104, %65, %88
  %108 = phi i32 [ %81, %88 ], [ %48, %65 ], [ %81, %104 ], [ %74, %98 ]
  %109 = phi i32 [ %80, %88 ], [ %46, %65 ], [ %80, %104 ], [ %99, %98 ]
  %110 = phi i32 [ %78, %88 ], [ %44, %65 ], [ %78, %104 ], [ %101, %98 ]
  %111 = phi i32 [ %77, %88 ], [ %43, %65 ], [ %77, %104 ], [ %102, %98 ]
  %112 = phi i32 [ %87, %88 ], [ %45, %65 ], [ %105, %104 ], [ %100, %98 ]
  %113 = phi i1 [ true, %88 ], [ false, %65 ], [ true, %104 ], [ false, %98 ]
  %114 = load ptr, ptr %38, align 8, !tbaa !46
  %115 = getelementptr inbounds %struct.TextLine, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !89
  %117 = getelementptr inbounds i8, ptr %116, i64 %52
  %118 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef %117) #14
  %119 = add nsw i32 %118, %47
  br i1 %113, label %120, label %42, !llvm.loop !165

120:                                              ; preds = %107
  br i1 %20, label %121, label %448

121:                                              ; preds = %120
  tail call void @txt_pop_sel(ptr noundef %32) #14
  br label %448

122:                                              ; preds = %24, %22
  tail call void @txt_move_bol(ptr noundef %9, i8 noundef zeroext %2) #14
  br label %448

123:                                              ; preds = %17
  %124 = icmp eq i8 %2, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %123
  tail call void @txt_sel_clear(ptr noundef %9) #14
  br label %126

126:                                              ; preds = %125, %123
  %127 = icmp eq ptr %8, null
  br i1 %127, label %244, label %128

128:                                              ; preds = %126
  %129 = getelementptr inbounds %struct.SpaceText, ptr %8, i64 0, i32 24
  %130 = load i32, ptr %129, align 8, !tbaa !163
  %131 = icmp ne i32 %130, 0
  %132 = icmp ne ptr %18, null
  %133 = select i1 %131, i1 %132, i1 false
  br i1 %133, label %134, label %244

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.SpaceText, ptr %8, i64 0, i32 6
  %136 = load ptr, ptr %135, align 8, !tbaa !58
  tail call void @text_update_character_width(ptr noundef %8) #14
  %137 = getelementptr inbounds %struct.Text, ptr %136, i64 0, i32 6
  %138 = getelementptr inbounds %struct.Text, ptr %136, i64 0, i32 8
  %139 = getelementptr inbounds %struct.Text, ptr %136, i64 0, i32 5
  %140 = getelementptr inbounds %struct.Text, ptr %136, i64 0, i32 7
  %141 = select i1 %124, ptr %140, ptr %138
  %142 = select i1 %124, ptr %139, ptr %137
  %143 = load i32, ptr %141, align 4, !tbaa !115
  %144 = tail call i32 @wrap_width(ptr noundef %8, ptr noundef nonnull %18) #14
  store i32 0, ptr %141, align 4, !tbaa !115
  %145 = getelementptr inbounds %struct.SpaceText, ptr %8, i64 0, i32 16
  br label %146

146:                                              ; preds = %134, %229
  %147 = phi i32 [ 1, %134 ], [ %232, %229 ]
  %148 = phi i32 [ 0, %134 ], [ %234, %229 ]
  %149 = phi i32 [ %144, %134 ], [ %233, %229 ]
  %150 = phi i32 [ 0, %134 ], [ %231, %229 ]
  %151 = phi i32 [ 0, %134 ], [ %241, %229 ]
  %152 = phi i32 [ 0, %134 ], [ %230, %229 ]
  %153 = load ptr, ptr %142, align 8, !tbaa !46
  %154 = getelementptr inbounds %struct.TextLine, ptr %153, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !89
  %156 = sext i32 %151 to i64
  %157 = getelementptr inbounds i8, ptr %155, i64 %156
  %158 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef %157) #14
  %159 = load ptr, ptr %142, align 8, !tbaa !46
  %160 = getelementptr inbounds %struct.TextLine, ptr %159, i64 0, i32 2
  %161 = load ptr, ptr %160, align 8, !tbaa !89
  %162 = getelementptr inbounds i8, ptr %161, i64 %156
  %163 = load i8, ptr %162, align 1, !tbaa !91
  %164 = icmp eq i8 %163, 9
  br i1 %164, label %165, label %169

165:                                              ; preds = %146
  %166 = load i32, ptr %145, align 8, !tbaa !86
  %167 = srem i32 %152, %166
  %168 = sub nsw i32 %166, %167
  br label %169

169:                                              ; preds = %165, %146
  %170 = phi i8 [ 32, %165 ], [ %163, %146 ]
  %171 = phi i32 [ %168, %165 ], [ 1, %146 ]
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %229, label %173

173:                                              ; preds = %169
  %174 = mul i32 %158, %171
  %175 = add i32 %152, %174
  br label %176

176:                                              ; preds = %173, %213
  %177 = phi i32 [ %183, %213 ], [ %171, %173 ]
  %178 = phi i32 [ %217, %213 ], [ %147, %173 ]
  %179 = phi i32 [ %216, %213 ], [ %148, %173 ]
  %180 = phi i32 [ %215, %213 ], [ %149, %173 ]
  %181 = phi i32 [ %214, %213 ], [ %150, %173 ]
  %182 = phi i32 [ %184, %213 ], [ %152, %173 ]
  %183 = add nsw i32 %177, -1
  %184 = add nsw i32 %182, %158
  %185 = sub nsw i32 %184, %181
  %186 = icmp sgt i32 %185, %144
  br i1 %186, label %187, label %210

187:                                              ; preds = %176
  %188 = tail call i32 @llvm.smin.i32(i32 %180, i32 %182)
  %189 = icmp eq i32 %178, 0
  br i1 %189, label %203, label %190

190:                                              ; preds = %187
  %191 = load ptr, ptr %142, align 8, !tbaa !46
  %192 = getelementptr inbounds %struct.TextLine, ptr %191, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !89
  %194 = getelementptr inbounds i8, ptr %193, i64 %156
  %195 = tail call ptr @BLI_str_prev_char_utf8(ptr noundef %194) #14
  %196 = load ptr, ptr %142, align 8, !tbaa !46
  %197 = getelementptr inbounds %struct.TextLine, ptr %196, i64 0, i32 2
  %198 = load ptr, ptr %197, align 8, !tbaa !89
  %199 = ptrtoint ptr %195 to i64
  %200 = ptrtoint ptr %198 to i64
  %201 = sub i64 %199, %200
  %202 = trunc i64 %201 to i32
  br label %203

203:                                              ; preds = %190, %187
  %204 = phi i32 [ %202, %190 ], [ %179, %187 ]
  %205 = icmp slt i32 %204, %143
  br i1 %205, label %208, label %206

206:                                              ; preds = %203
  %207 = icmp eq i8 %170, 0
  br i1 %207, label %219, label %225

208:                                              ; preds = %203
  %209 = add nsw i32 %188, %144
  br label %213

210:                                              ; preds = %176
  switch i8 %170, label %213 [
    i8 0, label %219
    i8 45, label %211
    i8 32, label %211
  ]

211:                                              ; preds = %210, %210
  %212 = add nsw i32 %182, 1
  br label %213

213:                                              ; preds = %211, %210, %208
  %214 = phi i32 [ %188, %208 ], [ %181, %211 ], [ %181, %210 ]
  %215 = phi i32 [ %209, %208 ], [ %212, %211 ], [ %180, %210 ]
  %216 = phi i32 [ %204, %208 ], [ %151, %211 ], [ %179, %210 ]
  %217 = phi i32 [ 1, %208 ], [ 0, %211 ], [ %178, %210 ]
  %218 = icmp eq i32 %183, 0
  br i1 %218, label %229, label %176, !llvm.loop !166

219:                                              ; preds = %210, %206
  %220 = phi i32 [ %188, %206 ], [ %180, %210 ]
  %221 = phi i32 [ %204, %206 ], [ %179, %210 ]
  %222 = load ptr, ptr %142, align 8, !tbaa !46
  %223 = getelementptr inbounds %struct.TextLine, ptr %222, i64 0, i32 4
  %224 = load i32, ptr %223, align 8, !tbaa !90
  br label %225

225:                                              ; preds = %219, %206
  %226 = phi i32 [ %204, %206 ], [ %224, %219 ]
  %227 = phi i32 [ %188, %206 ], [ %220, %219 ]
  %228 = phi i32 [ %204, %206 ], [ %221, %219 ]
  store i32 %226, ptr %141, align 4, !tbaa !115
  br label %229

229:                                              ; preds = %213, %225, %169
  %230 = phi i32 [ %152, %169 ], [ %182, %225 ], [ %175, %213 ]
  %231 = phi i32 [ %150, %169 ], [ %181, %225 ], [ %214, %213 ]
  %232 = phi i32 [ %147, %169 ], [ %178, %225 ], [ %217, %213 ]
  %233 = phi i32 [ %149, %169 ], [ %227, %225 ], [ %215, %213 ]
  %234 = phi i32 [ %148, %169 ], [ %228, %225 ], [ %216, %213 ]
  %235 = phi i1 [ false, %169 ], [ true, %225 ], [ false, %213 ]
  %236 = load ptr, ptr %142, align 8, !tbaa !46
  %237 = getelementptr inbounds %struct.TextLine, ptr %236, i64 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !89
  %239 = getelementptr inbounds i8, ptr %238, i64 %156
  %240 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef %239) #14
  %241 = add nsw i32 %240, %151
  br i1 %235, label %242, label %146, !llvm.loop !167

242:                                              ; preds = %229
  br i1 %124, label %243, label %448

243:                                              ; preds = %242
  tail call void @txt_pop_sel(ptr noundef %136) #14
  br label %448

244:                                              ; preds = %128, %126
  tail call void @txt_move_eol(ptr noundef %9, i8 noundef zeroext %2) #14
  br label %448

245:                                              ; preds = %17
  tail call void @txt_move_bof(ptr noundef %9, i8 noundef zeroext %2) #14
  br label %448

246:                                              ; preds = %17
  tail call void @txt_move_eof(ptr noundef %9, i8 noundef zeroext %2) #14
  br label %448

247:                                              ; preds = %17
  %248 = tail call zeroext i8 @txt_cursor_is_line_start(ptr noundef %9) #14
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %247
  tail call void @txt_move_left(ptr noundef %9, i8 noundef zeroext %2) #14
  br label %251

251:                                              ; preds = %250, %247
  tail call void @txt_jump_left(ptr noundef %9, i8 noundef zeroext %2, i8 noundef zeroext 1) #14
  br label %448

252:                                              ; preds = %17
  %253 = tail call zeroext i8 @txt_cursor_is_line_end(ptr noundef %9) #14
  %254 = icmp eq i8 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %252
  tail call void @txt_move_right(ptr noundef %9, i8 noundef zeroext %2) #14
  br label %256

256:                                              ; preds = %255, %252
  tail call void @txt_jump_right(ptr noundef %9, i8 noundef zeroext %2, i8 noundef zeroext 1) #14
  br label %448

257:                                              ; preds = %17
  %258 = tail call zeroext i8 @txt_has_sel(ptr noundef %9) #14
  %259 = icmp eq i8 %258, 0
  %260 = icmp ne i8 %2, 0
  %261 = or i1 %260, %259
  br i1 %261, label %263, label %262

262:                                              ; preds = %257
  tail call void @txt_order_cursors(ptr noundef %9, i8 noundef zeroext 0) #14
  tail call void @txt_pop_sel(ptr noundef %9) #14
  br label %448

263:                                              ; preds = %257
  tail call void @txt_move_left(ptr noundef %9, i8 noundef zeroext %2) #14
  br label %448

264:                                              ; preds = %17
  %265 = tail call zeroext i8 @txt_has_sel(ptr noundef %9) #14
  %266 = icmp eq i8 %265, 0
  %267 = icmp ne i8 %2, 0
  %268 = or i1 %267, %266
  br i1 %268, label %270, label %269

269:                                              ; preds = %264
  tail call void @txt_order_cursors(ptr noundef %9, i8 noundef zeroext 1) #14
  tail call void @txt_pop_sel(ptr noundef %9) #14
  br label %448

270:                                              ; preds = %264
  tail call void @txt_move_right(ptr noundef %9, i8 noundef zeroext %2) #14
  br label %448

271:                                              ; preds = %17
  %272 = icmp eq ptr %8, null
  br i1 %272, label %319, label %273

273:                                              ; preds = %271
  %274 = getelementptr inbounds %struct.SpaceText, ptr %8, i64 0, i32 24
  %275 = load i32, ptr %274, align 8, !tbaa !163
  %276 = icmp ne i32 %275, 0
  %277 = icmp ne ptr %18, null
  %278 = select i1 %276, i1 %277, i1 false
  br i1 %278, label %279, label %319

279:                                              ; preds = %273
  %280 = getelementptr inbounds %struct.SpaceText, ptr %8, i64 0, i32 6
  %281 = load ptr, ptr %280, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  tail call void @text_update_character_width(ptr noundef %8) #14
  %282 = icmp eq i8 %2, 0
  %283 = getelementptr inbounds %struct.Text, ptr %281, i64 0, i32 6
  %284 = getelementptr inbounds %struct.Text, ptr %281, i64 0, i32 8
  %285 = getelementptr inbounds %struct.Text, ptr %281, i64 0, i32 5
  %286 = getelementptr inbounds %struct.Text, ptr %281, i64 0, i32 7
  %287 = select i1 %282, ptr %286, ptr %284
  %288 = select i1 %282, ptr %285, ptr %283
  %289 = load ptr, ptr %288, align 8, !tbaa !46
  %290 = load i32, ptr %287, align 4, !tbaa !115
  call void @wrap_offset_in_line(ptr noundef %8, ptr noundef nonnull %18, ptr noundef %289, i32 noundef %290, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %291 = load ptr, ptr %288, align 8, !tbaa !46
  %292 = getelementptr inbounds %struct.TextLine, ptr %291, i64 0, i32 2
  %293 = load ptr, ptr %292, align 8, !tbaa !89
  %294 = load i32, ptr %287, align 4, !tbaa !115
  %295 = call i32 @text_get_char_pos(ptr noundef %8, ptr noundef %293, i32 noundef %294) #14
  %296 = load i32, ptr %7, align 4, !tbaa !115
  %297 = add nsw i32 %296, %295
  %298 = load i32, ptr %6, align 4, !tbaa !115
  %299 = icmp eq i32 %298, 0
  %300 = load ptr, ptr %288, align 8, !tbaa !46
  br i1 %299, label %301, label %310

301:                                              ; preds = %279
  %302 = getelementptr inbounds %struct.TextLine, ptr %300, i64 0, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !88
  %304 = icmp eq ptr %303, null
  br i1 %304, label %315, label %305

305:                                              ; preds = %301
  store ptr %303, ptr %288, align 8, !tbaa !46
  %306 = getelementptr inbounds %struct.TextLine, ptr %303, i64 0, i32 2
  %307 = load ptr, ptr %306, align 8, !tbaa !89
  %308 = call i32 @text_get_visible_lines(ptr noundef %8, ptr noundef nonnull %18, ptr noundef %307) #14
  %309 = load ptr, ptr %288, align 8, !tbaa !46
  br label %310

310:                                              ; preds = %279, %305
  %311 = phi i32 [ %308, %305 ], [ %298, %279 ]
  %312 = phi ptr [ %309, %305 ], [ %300, %279 ]
  %313 = add nsw i32 %311, -1
  %314 = call fastcc i32 @text_get_cursor_rel(ptr noundef %8, ptr noundef nonnull %18, ptr noundef %312, i32 noundef %313, i32 noundef %297)
  br label %315

315:                                              ; preds = %310, %301
  %316 = phi i32 [ 0, %301 ], [ %314, %310 ]
  store i32 %316, ptr %287, align 4, !tbaa !115
  br i1 %282, label %317, label %318

317:                                              ; preds = %315
  call void @txt_pop_sel(ptr noundef %281) #14
  br label %318

318:                                              ; preds = %315, %317
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %448

319:                                              ; preds = %273, %271
  tail call void @txt_move_up(ptr noundef %9, i8 noundef zeroext %2) #14
  br label %448

320:                                              ; preds = %17
  %321 = icmp eq ptr %8, null
  br i1 %321, label %370, label %322

322:                                              ; preds = %320
  %323 = getelementptr inbounds %struct.SpaceText, ptr %8, i64 0, i32 24
  %324 = load i32, ptr %323, align 8, !tbaa !163
  %325 = icmp ne i32 %324, 0
  %326 = icmp ne ptr %18, null
  %327 = select i1 %325, i1 %326, i1 false
  br i1 %327, label %328, label %370

328:                                              ; preds = %322
  %329 = getelementptr inbounds %struct.SpaceText, ptr %8, i64 0, i32 6
  %330 = load ptr, ptr %329, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  tail call void @text_update_character_width(ptr noundef %8) #14
  %331 = icmp eq i8 %2, 0
  %332 = getelementptr inbounds %struct.Text, ptr %330, i64 0, i32 6
  %333 = getelementptr inbounds %struct.Text, ptr %330, i64 0, i32 8
  %334 = getelementptr inbounds %struct.Text, ptr %330, i64 0, i32 5
  %335 = getelementptr inbounds %struct.Text, ptr %330, i64 0, i32 7
  %336 = select i1 %331, ptr %335, ptr %333
  %337 = select i1 %331, ptr %334, ptr %332
  %338 = load ptr, ptr %337, align 8, !tbaa !46
  %339 = load i32, ptr %336, align 4, !tbaa !115
  call void @wrap_offset_in_line(ptr noundef %8, ptr noundef nonnull %18, ptr noundef %338, i32 noundef %339, ptr noundef nonnull %4, ptr noundef nonnull %5) #14
  %340 = load ptr, ptr %337, align 8, !tbaa !46
  %341 = getelementptr inbounds %struct.TextLine, ptr %340, i64 0, i32 2
  %342 = load ptr, ptr %341, align 8, !tbaa !89
  %343 = load i32, ptr %336, align 4, !tbaa !115
  %344 = call i32 @text_get_char_pos(ptr noundef %8, ptr noundef %342, i32 noundef %343) #14
  %345 = load i32, ptr %5, align 4, !tbaa !115
  %346 = add nsw i32 %345, %344
  %347 = load ptr, ptr %337, align 8, !tbaa !46
  %348 = getelementptr inbounds %struct.TextLine, ptr %347, i64 0, i32 2
  %349 = load ptr, ptr %348, align 8, !tbaa !89
  %350 = call i32 @text_get_visible_lines(ptr noundef %8, ptr noundef nonnull %18, ptr noundef %349) #14
  %351 = load i32, ptr %4, align 4, !tbaa !115
  %352 = add nsw i32 %350, -1
  %353 = icmp slt i32 %351, %352
  %354 = load ptr, ptr %337, align 8, !tbaa !46
  br i1 %353, label %355, label %358

355:                                              ; preds = %328
  %356 = add nsw i32 %351, 1
  %357 = call fastcc i32 @text_get_cursor_rel(ptr noundef %8, ptr noundef nonnull %18, ptr noundef %354, i32 noundef %356, i32 noundef %346)
  br label %366

358:                                              ; preds = %328
  %359 = load ptr, ptr %354, align 8, !tbaa !155
  %360 = icmp eq ptr %359, null
  br i1 %360, label %363, label %361

361:                                              ; preds = %358
  store ptr %359, ptr %337, align 8, !tbaa !46
  %362 = call fastcc i32 @text_get_cursor_rel(ptr noundef %8, ptr noundef nonnull %18, ptr noundef nonnull %359, i32 noundef 0, i32 noundef %346)
  br label %366

363:                                              ; preds = %358
  %364 = getelementptr inbounds %struct.TextLine, ptr %354, i64 0, i32 4
  %365 = load i32, ptr %364, align 8, !tbaa !90
  br label %366

366:                                              ; preds = %363, %361, %355
  %367 = phi i32 [ %365, %363 ], [ %362, %361 ], [ %357, %355 ]
  store i32 %367, ptr %336, align 4, !tbaa !115
  br i1 %331, label %368, label %369

368:                                              ; preds = %366
  call void @txt_pop_sel(ptr noundef %330) #14
  br label %369

369:                                              ; preds = %366, %368
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  br label %448

370:                                              ; preds = %322, %320
  tail call void @txt_move_down(ptr noundef %9, i8 noundef zeroext %2) #14
  br label %448

371:                                              ; preds = %17
  %372 = icmp eq ptr %8, null
  br i1 %372, label %379, label %373

373:                                              ; preds = %371
  %374 = getelementptr inbounds %struct.SpaceText, ptr %8, i64 0, i32 6
  %375 = load ptr, ptr %374, align 8, !tbaa !58
  %376 = getelementptr inbounds %struct.SpaceText, ptr %8, i64 0, i32 8
  %377 = load i32, ptr %376, align 4, !tbaa !82
  %378 = sub nsw i32 0, %377
  tail call fastcc void @cursor_skip(ptr noundef nonnull %8, ptr noundef %18, ptr noundef %375, i32 noundef %378, i8 noundef zeroext %2)
  br label %448

379:                                              ; preds = %371
  %380 = icmp eq i8 %2, 0
  %381 = getelementptr inbounds %struct.Text, ptr %9, i64 0, i32 6
  %382 = getelementptr inbounds %struct.Text, ptr %9, i64 0, i32 8
  %383 = getelementptr inbounds %struct.Text, ptr %9, i64 0, i32 5
  %384 = getelementptr inbounds %struct.Text, ptr %9, i64 0, i32 7
  %385 = select i1 %380, ptr %383, ptr %381
  %386 = select i1 %380, ptr %384, ptr %382
  %387 = load ptr, ptr %385, align 8, !tbaa !46
  br label %388

388:                                              ; preds = %394, %379
  %389 = phi ptr [ %387, %379 ], [ %392, %394 ]
  %390 = phi i32 [ -10, %379 ], [ %395, %394 ]
  %391 = getelementptr inbounds %struct.TextLine, ptr %389, i64 0, i32 1
  %392 = load ptr, ptr %391, align 8, !tbaa !88
  %393 = icmp eq ptr %392, null
  br i1 %393, label %397, label %394

394:                                              ; preds = %388
  store ptr %392, ptr %385, align 8, !tbaa !46
  %395 = add nsw i32 %390, 1
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %388, !llvm.loop !168

397:                                              ; preds = %394, %388
  %398 = load i32, ptr %386, align 4, !tbaa !115
  %399 = load ptr, ptr %385, align 8, !tbaa !46
  %400 = getelementptr inbounds %struct.TextLine, ptr %399, i64 0, i32 4
  %401 = load i32, ptr %400, align 8, !tbaa !90
  %402 = icmp sgt i32 %398, %401
  br i1 %402, label %403, label %404

403:                                              ; preds = %397
  store i32 %401, ptr %386, align 4, !tbaa !115
  br label %404

404:                                              ; preds = %403, %397
  br i1 %380, label %405, label %448

405:                                              ; preds = %404
  tail call void @txt_pop_sel(ptr noundef %9) #14
  br label %448

406:                                              ; preds = %17
  %407 = icmp eq ptr %8, null
  br i1 %407, label %413, label %408

408:                                              ; preds = %406
  %409 = getelementptr inbounds %struct.SpaceText, ptr %8, i64 0, i32 6
  %410 = load ptr, ptr %409, align 8, !tbaa !58
  %411 = getelementptr inbounds %struct.SpaceText, ptr %8, i64 0, i32 8
  %412 = load i32, ptr %411, align 4, !tbaa !82
  tail call fastcc void @cursor_skip(ptr noundef nonnull %8, ptr noundef %18, ptr noundef %410, i32 noundef %412, i8 noundef zeroext %2)
  br label %448

413:                                              ; preds = %406
  %414 = icmp eq i8 %2, 0
  %415 = getelementptr inbounds %struct.Text, ptr %9, i64 0, i32 6
  %416 = getelementptr inbounds %struct.Text, ptr %9, i64 0, i32 8
  %417 = getelementptr inbounds %struct.Text, ptr %9, i64 0, i32 5
  %418 = getelementptr inbounds %struct.Text, ptr %9, i64 0, i32 7
  %419 = select i1 %414, ptr %417, ptr %415
  %420 = select i1 %414, ptr %418, ptr %416
  %421 = load ptr, ptr %419, align 8, !tbaa !46
  br label %422

422:                                              ; preds = %427, %413
  %423 = phi ptr [ %421, %413 ], [ %425, %427 ]
  %424 = phi i32 [ 10, %413 ], [ %428, %427 ]
  %425 = load ptr, ptr %423, align 8, !tbaa !155
  %426 = icmp eq ptr %425, null
  br i1 %426, label %430, label %427

427:                                              ; preds = %422
  store ptr %425, ptr %419, align 8, !tbaa !46
  %428 = add nsw i32 %424, -1
  %429 = icmp ugt i32 %424, 1
  br i1 %429, label %422, label %430, !llvm.loop !169

430:                                              ; preds = %427, %422
  %431 = phi i32 [ %424, %422 ], [ 0, %427 ]
  %432 = icmp slt i32 %431, 0
  br i1 %432, label %433, label %439

433:                                              ; preds = %430
  %434 = load ptr, ptr %419, align 8, !tbaa !46
  %435 = getelementptr inbounds %struct.TextLine, ptr %434, i64 0, i32 1
  %436 = load ptr, ptr %435, align 8, !tbaa !88
  %437 = icmp eq ptr %436, null
  br i1 %437, label %439, label %438

438:                                              ; preds = %433
  store ptr %436, ptr %419, align 8, !tbaa !46
  br label %439

439:                                              ; preds = %433, %438, %430
  %440 = load i32, ptr %420, align 4, !tbaa !115
  %441 = load ptr, ptr %419, align 8, !tbaa !46
  %442 = getelementptr inbounds %struct.TextLine, ptr %441, i64 0, i32 4
  %443 = load i32, ptr %442, align 8, !tbaa !90
  %444 = icmp sgt i32 %440, %443
  br i1 %444, label %445, label %446

445:                                              ; preds = %439
  store i32 %443, ptr %420, align 4, !tbaa !115
  br label %446

446:                                              ; preds = %445, %439
  br i1 %414, label %447, label %448

447:                                              ; preds = %446
  tail call void @txt_pop_sel(ptr noundef %9) #14
  br label %448

448:                                              ; preds = %447, %446, %405, %404, %243, %242, %121, %120, %408, %373, %369, %370, %318, %319, %269, %270, %262, %263, %244, %122, %17, %256, %251, %246, %245
  call void @text_update_cursor_moved(ptr noundef %0) #14
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %9) #14
  ret void
}

declare void @txt_sel_clear(ptr noundef) local_unnamed_addr #2

declare void @txt_move_bol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @txt_move_eol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @txt_move_bof(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @txt_move_eof(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @txt_cursor_is_line_start(ptr noundef) local_unnamed_addr #2

declare void @txt_move_left(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @txt_cursor_is_line_end(ptr noundef) local_unnamed_addr #2

declare void @txt_move_right(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @txt_pop_sel(ptr noundef) local_unnamed_addr #2

declare void @txt_move_up(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @txt_move_down(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @cursor_skip(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = icmp eq i8 %4, 0
  %9 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 6
  %10 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 8
  %11 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 5
  %12 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 7
  %13 = select i1 %8, ptr %11, ptr %9
  %14 = select i1 %8, ptr %12, ptr %10
  %15 = icmp ne ptr %0, null
  %16 = icmp ne ptr %1, null
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %110

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 24
  %20 = load i32, ptr %19, align 8, !tbaa !163
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %110, label %22

22:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  %23 = load ptr, ptr %13, align 8, !tbaa !46
  %24 = load i32, ptr %14, align 4, !tbaa !115
  call void @wrap_offset_in_line(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %23, i32 noundef %24, ptr noundef nonnull %6, ptr noundef nonnull %7) #14
  %25 = load ptr, ptr %13, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct.TextLine, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !89
  %28 = load i32, ptr %14, align 4, !tbaa !115
  %29 = call i32 @text_get_char_pos(ptr noundef nonnull %0, ptr noundef %27, i32 noundef %28) #14
  %30 = load i32, ptr %7, align 4, !tbaa !115
  %31 = add nsw i32 %30, %29
  %32 = icmp sgt i32 %3, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %22
  %34 = load ptr, ptr %13, align 8, !tbaa !46
  %35 = getelementptr inbounds %struct.TextLine, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !89
  %37 = call i32 @text_get_visible_lines(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %36) #14
  %38 = sub i32 %3, %37
  %39 = load i32, ptr %6, align 4, !tbaa !115
  %40 = add nsw i32 %38, %39
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %42, label %55

42:                                               ; preds = %33
  %43 = load ptr, ptr %13, align 8, !tbaa !46
  %44 = load ptr, ptr %43, align 8, !tbaa !155
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = add nsw i32 %37, -1
  %48 = icmp slt i32 %39, %47
  br i1 %48, label %104, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.TextLine, ptr %43, i64 0, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !90
  store i32 %51, ptr %14, align 4, !tbaa !115
  br label %104

52:                                               ; preds = %42
  %53 = sub i32 %3, %37
  %54 = add i32 %53, %39
  br label %69

55:                                               ; preds = %33
  %56 = add nsw i32 %39, %3
  br label %104

57:                                               ; preds = %22
  %58 = load i32, ptr %6, align 4, !tbaa !115
  %59 = add nsw i32 %58, %3
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %61, label %104

61:                                               ; preds = %57
  %62 = load ptr, ptr %13, align 8, !tbaa !46
  %63 = getelementptr inbounds %struct.TextLine, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !88
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = icmp eq i32 %58, 0
  br i1 %67, label %68, label %104

68:                                               ; preds = %66
  store i32 0, ptr %14, align 4, !tbaa !115
  br label %104

69:                                               ; preds = %61, %52
  %70 = phi i32 [ %54, %52 ], [ %59, %61 ]
  %71 = phi ptr [ %43, %52 ], [ %63, %61 ]
  %72 = load ptr, ptr %71, align 8, !tbaa !46
  store ptr %72, ptr %13, align 8, !tbaa !46
  %73 = icmp eq ptr %72, null
  br i1 %73, label %104, label %74

74:                                               ; preds = %69
  %75 = icmp slt i32 %3, 0
  br label %76

76:                                               ; preds = %74, %99
  %77 = phi ptr [ %72, %74 ], [ %102, %99 ]
  %78 = phi i32 [ %70, %74 ], [ %100, %99 ]
  %79 = getelementptr inbounds %struct.TextLine, ptr %77, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !89
  %81 = call i32 @text_get_visible_lines(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %80) #14
  br i1 %75, label %82, label %90

82:                                               ; preds = %76
  %83 = add nsw i32 %81, %78
  %84 = icmp sgt i32 %83, -1
  br i1 %84, label %104, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr %13, align 8, !tbaa !46
  %87 = getelementptr inbounds %struct.TextLine, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !88
  %89 = icmp eq ptr %88, null
  br i1 %89, label %104, label %99

90:                                               ; preds = %76
  %91 = sub nsw i32 %78, %81
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %13, align 8, !tbaa !46
  %95 = load ptr, ptr %94, align 8, !tbaa !155
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = add nsw i32 %81, -1
  br label %104

99:                                               ; preds = %93, %85
  %100 = phi i32 [ %83, %85 ], [ %91, %93 ]
  %101 = phi ptr [ %87, %85 ], [ %94, %93 ]
  %102 = load ptr, ptr %101, align 8, !tbaa !46
  store ptr %102, ptr %13, align 8, !tbaa !46
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %76, !llvm.loop !170

104:                                              ; preds = %90, %99, %82, %85, %69, %57, %66, %46, %49, %55, %68, %97
  %105 = phi i32 [ %3, %49 ], [ %98, %97 ], [ %56, %55 ], [ %3, %68 ], [ %47, %46 ], [ 0, %66 ], [ %59, %57 ], [ %70, %69 ], [ 0, %85 ], [ %83, %82 ], [ %100, %99 ], [ %78, %90 ]
  %106 = phi i1 [ true, %49 ], [ false, %97 ], [ false, %55 ], [ true, %68 ], [ false, %46 ], [ false, %66 ], [ false, %57 ], [ false, %69 ], [ false, %85 ], [ false, %82 ], [ false, %99 ], [ false, %90 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br i1 %106, label %136, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %13, align 8, !tbaa !46
  %109 = call fastcc i32 @text_get_cursor_rel(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %108, i32 noundef %105, i32 noundef %31)
  store i32 %109, ptr %14, align 4, !tbaa !115
  br label %136

110:                                              ; preds = %18, %5
  %111 = icmp sgt i32 %3, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %110
  %113 = load ptr, ptr %13, align 8, !tbaa !46
  br label %114

114:                                              ; preds = %112, %119
  %115 = phi ptr [ %113, %112 ], [ %117, %119 ]
  %116 = phi i32 [ %3, %112 ], [ %120, %119 ]
  %117 = load ptr, ptr %115, align 8, !tbaa !155
  %118 = icmp eq ptr %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  store ptr %117, ptr %13, align 8, !tbaa !46
  %120 = add nsw i32 %116, -1
  %121 = icmp sgt i32 %116, 1
  br i1 %121, label %114, label %122, !llvm.loop !169

122:                                              ; preds = %114, %119, %110
  %123 = phi i32 [ %3, %110 ], [ %116, %114 ], [ 0, %119 ]
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %122
  %126 = load ptr, ptr %13, align 8, !tbaa !46
  br label %127

127:                                              ; preds = %125, %133
  %128 = phi ptr [ %126, %125 ], [ %131, %133 ]
  %129 = phi i32 [ %123, %125 ], [ %134, %133 ]
  %130 = getelementptr inbounds %struct.TextLine, ptr %128, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !88
  %132 = icmp eq ptr %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %127
  store ptr %131, ptr %13, align 8, !tbaa !46
  %134 = add nsw i32 %129, 1
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %127, !llvm.loop !168

136:                                              ; preds = %133, %127, %122, %104, %107
  %137 = load i32, ptr %14, align 4, !tbaa !115
  %138 = load ptr, ptr %13, align 8, !tbaa !46
  %139 = getelementptr inbounds %struct.TextLine, ptr %138, i64 0, i32 4
  %140 = load i32, ptr %139, align 8, !tbaa !90
  %141 = icmp sgt i32 %137, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  store i32 %140, ptr %14, align 4, !tbaa !115
  br label %143

143:                                              ; preds = %142, %136
  br i1 %8, label %144, label %145

144:                                              ; preds = %143
  call void @txt_pop_sel(ptr noundef %2) #14
  br label %145

145:                                              ; preds = %144, %143
  ret void
}

declare void @text_update_character_width(ptr noundef) local_unnamed_addr #2

declare i32 @wrap_width(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BLI_str_utf8_char_width_safe(ptr noundef) local_unnamed_addr #2

declare i32 @txt_utf8_column_to_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BLI_str_utf8_size_safe(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_str_prev_char_utf8(ptr noundef) local_unnamed_addr #2

declare void @wrap_offset_in_line(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @text_get_char_pos(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @text_get_cursor_rel(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = tail call i32 @wrap_width(ptr noundef %0, ptr noundef %1) #14
  %7 = getelementptr inbounds %struct.TextLine, ptr %2, i64 0, i32 2
  %8 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  %9 = getelementptr inbounds %struct.TextLine, ptr %2, i64 0, i32 4
  br label %10

10:                                               ; preds = %5, %111
  %11 = phi i32 [ %3, %5 ], [ %121, %111 ]
  %12 = phi i32 [ 0, %5 ], [ %120, %111 ]
  %13 = phi i32 [ 0, %5 ], [ %119, %111 ]
  %14 = phi i32 [ 0, %5 ], [ %118, %111 ]
  %15 = phi i32 [ 0, %5 ], [ %116, %111 ]
  %16 = phi i32 [ 1, %5 ], [ %115, %111 ]
  %17 = phi i32 [ 0, %5 ], [ %112, %111 ]
  %18 = phi i32 [ %6, %5 ], [ %114, %111 ]
  %19 = phi i32 [ 0, %5 ], [ %113, %111 ]
  %20 = phi i32 [ 0, %5 ], [ %123, %111 ]
  %21 = load ptr, ptr %7, align 8, !tbaa !89
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8, ptr %21, i64 %22
  %24 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef %23) #14
  %25 = load ptr, ptr %7, align 8, !tbaa !89
  %26 = getelementptr inbounds i8, ptr %25, i64 %22
  %27 = load i8, ptr %26, align 1, !tbaa !91
  %28 = icmp eq i8 %27, 9
  br i1 %28, label %29, label %33

29:                                               ; preds = %10
  %30 = load i32, ptr %8, align 8, !tbaa !86
  %31 = srem i32 %17, %30
  %32 = sub nsw i32 %30, %31
  br label %33

33:                                               ; preds = %10, %29
  %34 = phi i8 [ 32, %29 ], [ %27, %10 ]
  %35 = phi i32 [ %32, %29 ], [ 1, %10 ]
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %111, label %37

37:                                               ; preds = %33
  %38 = mul i32 %24, %35
  %39 = add i32 %17, %38
  br label %40

40:                                               ; preds = %37, %104
  %41 = phi i32 [ %51, %104 ], [ %35, %37 ]
  %42 = phi i32 [ %109, %104 ], [ %11, %37 ]
  %43 = phi i32 [ %71, %104 ], [ %12, %37 ]
  %44 = phi i32 [ %70, %104 ], [ %13, %37 ]
  %45 = phi i32 [ %108, %104 ], [ %14, %37 ]
  %46 = phi i32 [ %69, %104 ], [ %15, %37 ]
  %47 = phi i32 [ %107, %104 ], [ %16, %37 ]
  %48 = phi i32 [ %72, %104 ], [ %17, %37 ]
  %49 = phi i32 [ %106, %104 ], [ %18, %37 ]
  %50 = phi i32 [ %105, %104 ], [ %19, %37 ]
  %51 = add nsw i32 %41, -1
  %52 = icmp eq i32 %42, 0
  %53 = sub nsw i32 %48, %50
  %54 = icmp sle i32 %53, %4
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %60

56:                                               ; preds = %40
  %57 = sub i32 %24, %50
  %58 = add i32 %57, %48
  %59 = icmp sgt i32 %58, %4
  br i1 %59, label %68, label %60

60:                                               ; preds = %56, %40
  %61 = sub nsw i32 %48, %49
  %62 = icmp sgt i32 %61, %4
  br i1 %62, label %68, label %63

63:                                               ; preds = %60
  %64 = sub i32 %24, %49
  %65 = add i32 %64, %48
  %66 = icmp sgt i32 %65, %4
  %67 = select i1 %66, i32 %20, i32 %46
  br label %68

68:                                               ; preds = %63, %56, %60
  %69 = phi i32 [ %46, %60 ], [ %46, %56 ], [ %67, %63 ]
  %70 = phi i32 [ %44, %60 ], [ 1, %56 ], [ %44, %63 ]
  %71 = phi i32 [ %43, %60 ], [ %20, %56 ], [ %43, %63 ]
  %72 = add nsw i32 %48, %24
  %73 = sub nsw i32 %72, %50
  %74 = icmp sgt i32 %73, %6
  br i1 %74, label %75, label %92

75:                                               ; preds = %68
  %76 = tail call i32 @llvm.smin.i32(i32 %49, i32 %48)
  %77 = icmp eq i32 %70, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = icmp sle i32 %71, %45
  %80 = icmp ne i32 %47, 0
  %81 = select i1 %79, i1 true, i1 %80
  %82 = select i1 %81, i32 %71, i32 %45
  br label %111

83:                                               ; preds = %75
  %84 = icmp eq i32 %47, 0
  %85 = select i1 %84, i32 %45, i32 %20
  %86 = add nsw i32 %76, %6
  %87 = add nsw i32 %42, -1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %83
  %90 = sub nsw i32 %72, %76
  %91 = icmp sgt i32 %90, %4
  br i1 %91, label %111, label %104

92:                                               ; preds = %68
  switch i8 %34, label %104 [
    i8 0, label %93
    i8 45, label %97
    i8 32, label %97
  ]

93:                                               ; preds = %92
  %94 = icmp eq i32 %70, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %93
  %96 = load i32, ptr %9, align 8, !tbaa !90
  br label %111

97:                                               ; preds = %92, %92
  %98 = icmp eq i32 %70, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %97
  %100 = icmp sgt i32 %73, %4
  %101 = and i1 %100, %52
  br i1 %101, label %111, label %102

102:                                              ; preds = %99
  %103 = add nsw i32 %48, 1
  br label %104

104:                                              ; preds = %92, %102, %83, %89
  %105 = phi i32 [ %76, %89 ], [ %76, %83 ], [ %50, %102 ], [ %50, %92 ]
  %106 = phi i32 [ %86, %89 ], [ %86, %83 ], [ %103, %102 ], [ %49, %92 ]
  %107 = phi i32 [ 1, %89 ], [ 1, %83 ], [ 0, %102 ], [ %47, %92 ]
  %108 = phi i32 [ %85, %89 ], [ %85, %83 ], [ %20, %102 ], [ %45, %92 ]
  %109 = phi i32 [ 0, %89 ], [ %87, %83 ], [ %42, %102 ], [ %42, %92 ]
  %110 = icmp eq i32 %51, 0
  br i1 %110, label %111, label %40, !llvm.loop !171

111:                                              ; preds = %104, %89, %97, %99, %33, %93, %95, %78
  %112 = phi i32 [ %48, %78 ], [ %48, %95 ], [ %48, %93 ], [ %17, %33 ], [ %48, %99 ], [ %48, %97 ], [ %48, %89 ], [ %39, %104 ]
  %113 = phi i32 [ %50, %78 ], [ %50, %95 ], [ %50, %93 ], [ %19, %33 ], [ %50, %99 ], [ %50, %97 ], [ %76, %89 ], [ %105, %104 ]
  %114 = phi i32 [ %76, %78 ], [ %49, %95 ], [ %49, %93 ], [ %18, %33 ], [ %49, %99 ], [ %49, %97 ], [ %86, %89 ], [ %106, %104 ]
  %115 = phi i32 [ %47, %78 ], [ %47, %95 ], [ %47, %93 ], [ %16, %33 ], [ %47, %99 ], [ %47, %97 ], [ 1, %89 ], [ %107, %104 ]
  %116 = phi i32 [ %69, %78 ], [ %69, %95 ], [ %69, %93 ], [ %15, %33 ], [ %69, %99 ], [ %69, %97 ], [ %69, %89 ], [ %69, %104 ]
  %117 = phi i1 [ true, %78 ], [ true, %95 ], [ true, %93 ], [ false, %33 ], [ true, %99 ], [ true, %97 ], [ true, %89 ], [ false, %104 ]
  %118 = phi i32 [ %45, %78 ], [ %45, %95 ], [ %45, %93 ], [ %14, %33 ], [ %45, %99 ], [ %45, %97 ], [ %85, %89 ], [ %108, %104 ]
  %119 = phi i32 [ 1, %78 ], [ %70, %95 ], [ %70, %93 ], [ %13, %33 ], [ 0, %99 ], [ 1, %97 ], [ 0, %89 ], [ %70, %104 ]
  %120 = phi i32 [ %82, %78 ], [ %96, %95 ], [ %71, %93 ], [ %12, %33 ], [ %69, %99 ], [ %71, %97 ], [ %69, %89 ], [ %71, %104 ]
  %121 = phi i32 [ %42, %78 ], [ %42, %95 ], [ %42, %93 ], [ %11, %33 ], [ 0, %99 ], [ %42, %97 ], [ 0, %89 ], [ %109, %104 ]
  %122 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %26) #14
  %123 = add nsw i32 %122, %20
  br i1 %117, label %124, label %10, !llvm.loop !172

124:                                              ; preds = %111
  ret i32 %120
}

declare i32 @text_get_visible_lines(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WM_operator_props_dialog_popup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @txt_move_toline(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @txt_backspace_char(ptr noundef) local_unnamed_addr #2

declare void @txt_backspace_word(ptr noundef) local_unnamed_addr #2

declare void @txt_delete_char(ptr noundef) local_unnamed_addr #2

declare void @txt_delete_word(ptr noundef) local_unnamed_addr #2

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @text_scroll_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !114
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !116
  tail call void @text_update_character_width(ptr noundef %4) #14
  %12 = getelementptr inbounds %struct.TextScroll, ptr %7, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !108
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %3
  store i32 %9, ptr %7, align 4, !tbaa !115
  %16 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  store i32 %11, ptr %16, align 4, !tbaa !115
  store i32 0, ptr %12, align 4, !tbaa !108
  br label %17

17:                                               ; preds = %15, %3
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %19 = load i16, ptr %18, align 8, !tbaa !112
  %20 = icmp eq i16 %19, 14
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i32, ptr %7, align 4, !tbaa !115
  %23 = sub nsw i32 %9, %22
  %24 = getelementptr inbounds %struct.TextScroll, ptr %7, i64 0, i32 1
  store i32 %23, ptr %24, align 4, !tbaa !115
  %25 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  %26 = load i32, ptr %25, align 4, !tbaa !115
  %27 = sub nsw i32 %11, %26
  %28 = getelementptr inbounds %struct.TextScroll, ptr %7, i64 0, i32 1, i64 1
  store i32 %27, ptr %28, align 4, !tbaa !115
  br label %29

29:                                               ; preds = %21, %17
  %30 = getelementptr inbounds %struct.TextScroll, ptr %7, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !121
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.TextScroll, ptr %7, i64 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !115
  %36 = sub nsw i32 0, %35
  %37 = sitofp i32 %36 to float
  %38 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 12
  %39 = load i8, ptr %38, align 2, !tbaa !118
  %40 = uitofp i8 %39 to float
  %41 = fdiv float %37, %40
  %42 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 32
  %43 = load float, ptr %42, align 8, !tbaa !64
  %44 = fadd float %43, %41
  store float %44, ptr %42, align 8, !tbaa !64
  %45 = getelementptr inbounds %struct.TextScroll, ptr %7, i64 0, i32 1, i64 1
  %46 = load i32, ptr %45, align 4, !tbaa !115
  %47 = sitofp i32 %46 to float
  %48 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 29
  %49 = load i16, ptr %48, align 2, !tbaa !120
  %50 = sext i16 %49 to i32
  %51 = sitofp i16 %49 to float
  %52 = fmul float %51, 0x3FD3333340000000
  %53 = fptosi float %52 to i32
  %54 = add nsw i32 %53, %50
  %55 = sitofp i32 %54 to float
  %56 = fdiv float %47, %55
  %57 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 32, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !64
  %59 = fadd float %58, %56
  store float %59, ptr %57, align 4, !tbaa !64
  br label %70

60:                                               ; preds = %29
  %61 = getelementptr inbounds %struct.TextScroll, ptr %7, i64 0, i32 1, i64 1
  %62 = load i32, ptr %61, align 4, !tbaa !115
  %63 = sub nsw i32 0, %62
  %64 = sitofp i32 %63 to float
  %65 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 21
  %66 = load float, ptr %65, align 4, !tbaa !173
  %67 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 32, i64 1
  %68 = load float, ptr %67, align 4, !tbaa !64
  %69 = tail call float @llvm.fmuladd.f32(float %64, float %66, float %68)
  store float %69, ptr %67, align 4, !tbaa !64
  br label %70

70:                                               ; preds = %60, %33
  %71 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 32
  %72 = load float, ptr %71, align 8, !tbaa !64
  %73 = fptosi float %72 to i32
  %74 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 32, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !64
  %76 = fptosi float %75 to i32
  %77 = sitofp i32 %73 to float
  %78 = fsub float %72, %77
  store float %78, ptr %71, align 8, !tbaa !64
  %79 = sitofp i32 %76 to float
  %80 = fsub float %75, %79
  store float %80, ptr %74, align 4, !tbaa !64
  %81 = icmp ne i32 %73, 0
  %82 = icmp ne i32 %76, 0
  %83 = select i1 %81, i1 true, i1 %82
  br i1 %83, label %84, label %113

84:                                               ; preds = %70
  %85 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 7
  %86 = load i32, ptr %85, align 8, !tbaa !63
  %87 = add nsw i32 %86, %76
  store i32 %87, ptr %85, align 8, !tbaa !63
  %88 = icmp slt i32 %87, 1
  br i1 %88, label %99, label %89

89:                                               ; preds = %84
  %90 = tail call i32 @text_get_total_lines(ptr noundef %4, ptr noundef %5) #14
  %91 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 8
  %92 = load i32, ptr %91, align 4, !tbaa !82
  %93 = sdiv i32 %92, -2
  %94 = add i32 %93, %90
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load i32, ptr %85, align 8, !tbaa !63
  %98 = icmp sgt i32 %97, %94
  br i1 %98, label %99, label %101

99:                                               ; preds = %96, %84
  %100 = phi i32 [ 0, %84 ], [ %94, %96 ]
  store i32 %100, ptr %85, align 8, !tbaa !63
  br label %101

101:                                              ; preds = %99, %89, %96
  %102 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 24
  %103 = load i32, ptr %102, align 8, !tbaa !163
  %104 = icmp eq i32 %103, 0
  %105 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 14
  br i1 %104, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, ptr %105, align 8, !tbaa !62
  %108 = add nsw i32 %107, %73
  %109 = tail call i32 @llvm.smax.i32(i32 %108, i32 0)
  br label %110

110:                                              ; preds = %101, %106
  %111 = phi i32 [ %109, %106 ], [ 0, %101 ]
  store i32 %111, ptr %105, align 8
  %112 = tail call ptr @CTX_wm_area(ptr noundef %0) #14
  tail call void @ED_area_tag_redraw(ptr noundef %112) #14
  br label %113

113:                                              ; preds = %70, %110
  store i32 %9, ptr %7, align 4, !tbaa !115
  %114 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  store i32 %11, ptr %114, align 4, !tbaa !115
  ret void
}

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: nounwind uwtable
define internal fastcc void @text_cursor_set_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #14
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !115
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 6
  %14 = load i16, ptr %13, align 2, !tbaa !126
  %15 = sext i16 %14 to i32
  %16 = icmp sgt i32 %10, %15
  br i1 %16, label %17, label %57

17:                                               ; preds = %12, %3
  %18 = getelementptr inbounds %struct.SetSelection, ptr %7, i64 0, i32 3, i64 1
  %19 = load i16, ptr %18, align 2, !tbaa !139
  %20 = sext i16 %19 to i32
  %21 = sub nsw i32 %20, %10
  %22 = sitofp i32 %21 to float
  %23 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 21
  %24 = load float, ptr %23, align 4, !tbaa !173
  %25 = fmul float %24, %22
  %26 = fptosi float %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !63
  %31 = add nsw i32 %30, %26
  store i32 %31, ptr %29, align 8, !tbaa !63
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = tail call i32 @text_get_total_lines(ptr noundef %4, ptr noundef %5) #14
  %35 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 8
  %36 = load i32, ptr %35, align 4, !tbaa !82
  %37 = sdiv i32 %36, -2
  %38 = add i32 %37, %34
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load i32, ptr %29, align 8, !tbaa !63
  %42 = icmp sgt i32 %41, %38
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %28
  %44 = phi i32 [ 0, %28 ], [ %38, %40 ]
  store i32 %44, ptr %29, align 8, !tbaa !63
  br label %45

45:                                               ; preds = %43, %40, %33, %17
  %46 = load i32, ptr %8, align 4, !tbaa !115
  %47 = load i32, ptr %9, align 4, !tbaa !115
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 6
  %51 = load i16, ptr %50, align 2, !tbaa !126
  %52 = sext i16 %51 to i32
  br label %53

53:                                               ; preds = %45, %49
  %54 = phi i32 [ %52, %49 ], [ 0, %45 ]
  tail call fastcc void @text_cursor_set_to_pos(ptr noundef %4, ptr noundef %5, i32 noundef %46, i32 noundef %54, i8 noundef zeroext 1)
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  %55 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !58
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %56) #14
  br label %100

57:                                               ; preds = %12
  %58 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 24
  %59 = load i32, ptr %58, align 8, !tbaa !163
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %57
  %62 = load i32, ptr %8, align 4, !tbaa !115
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 5
  %66 = load i16, ptr %65, align 8, !tbaa !174
  %67 = sext i16 %66 to i32
  %68 = icmp sgt i32 %62, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %64, %61
  %70 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 5
  %71 = load i16, ptr %70, align 8, !tbaa !174
  %72 = sext i16 %71 to i32
  %73 = icmp sgt i32 %62, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 14
  %76 = load i32, ptr %75, align 8, !tbaa !62
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr %75, align 8, !tbaa !62
  br label %85

78:                                               ; preds = %69
  br i1 %63, label %79, label %85

79:                                               ; preds = %78
  %80 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 14
  %81 = load i32, ptr %80, align 8, !tbaa !62
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = add nsw i32 %81, -1
  store i32 %84, ptr %80, align 8, !tbaa !62
  br label %85

85:                                               ; preds = %78, %79, %83, %74
  %86 = load i32, ptr %8, align 4, !tbaa !115
  %87 = load i32, ptr %9, align 4, !tbaa !115
  tail call fastcc void @text_cursor_set_to_pos(ptr noundef %4, ptr noundef %5, i32 noundef %86, i32 noundef %87, i8 noundef zeroext 1)
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  %88 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !58
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %89) #14
  br label %100

90:                                               ; preds = %64, %57
  %91 = load i32, ptr %8, align 4, !tbaa !115
  tail call fastcc void @text_cursor_set_to_pos(ptr noundef %4, ptr noundef %5, i32 noundef %91, i32 noundef %10, i8 noundef zeroext 1)
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  %92 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  %93 = load ptr, ptr %92, align 8, !tbaa !58
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %93) #14
  %94 = load i32, ptr %8, align 4, !tbaa !115
  %95 = trunc i32 %94 to i16
  %96 = getelementptr inbounds %struct.SetSelection, ptr %7, i64 0, i32 3
  store i16 %95, ptr %96, align 4, !tbaa !139
  %97 = load i32, ptr %9, align 4, !tbaa !115
  %98 = trunc i32 %97 to i16
  %99 = getelementptr inbounds %struct.SetSelection, ptr %7, i64 0, i32 3, i64 1
  store i16 %98, ptr %99, align 2, !tbaa !139
  br label %100

100:                                              ; preds = %85, %90, %53
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @text_cursor_set_to_pos(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  tail call void @text_update_character_width(ptr noundef %0) #14
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %9 = load i16, ptr %8, align 2, !tbaa !126
  %10 = sext i16 %9 to i32
  %11 = sub i32 %10, %3
  %12 = add i32 %11, -2
  %13 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 29
  %14 = load i16, ptr %13, align 2, !tbaa !120
  %15 = sext i16 %14 to i32
  %16 = sitofp i16 %14 to float
  %17 = fmul float %16, 0x3FD3333340000000
  %18 = fptosi float %17 to i32
  %19 = add nsw i32 %18, %15
  %20 = sdiv i32 %12, %19
  %21 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 15
  %22 = load i32, ptr %21, align 4, !tbaa !144
  %23 = icmp eq i32 %22, 0
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !99
  %25 = sitofp i16 %24 to float
  %26 = fmul float %25, 5.000000e-01
  %27 = fptosi float %26 to i32
  br i1 %23, label %37, label %28

28:                                               ; preds = %5
  %29 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %30 = load i8, ptr %29, align 2, !tbaa !118
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %33 = load i8, ptr %32, align 1, !tbaa !145
  %34 = zext i8 %33 to i32
  %35 = mul nuw nsw i32 %34, %31
  %36 = add nsw i32 %35, %27
  br label %37

37:                                               ; preds = %5, %28
  %38 = phi i32 [ %36, %28 ], [ %27, %5 ]
  %39 = sub nsw i32 %2, %38
  %40 = tail call i32 @llvm.smax.i32(i32 %39, i32 0)
  %41 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %42 = load i8, ptr %41, align 2, !tbaa !118
  %43 = zext i8 %42 to i32
  %44 = lshr i32 %43, 1
  %45 = add nuw nsw i32 %44, %40
  %46 = udiv i32 %45, %43
  %47 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  %48 = load i32, ptr %47, align 8, !tbaa !62
  %49 = add nsw i32 %48, %46
  %50 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 24
  %51 = load i32, ptr %50, align 8, !tbaa !163
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %256, label %53

53:                                               ; preds = %37
  %54 = load ptr, ptr %6, align 8, !tbaa !58
  %55 = tail call i32 @wrap_width(ptr noundef %0, ptr noundef %1) #14
  %56 = load ptr, ptr %6, align 8, !tbaa !58
  %57 = getelementptr inbounds %struct.Text, ptr %56, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !103
  %59 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 7
  %60 = load i32, ptr %59, align 8, !tbaa !63
  br label %61

61:                                               ; preds = %78, %53
  %62 = phi i32 [ %20, %53 ], [ %79, %78 ]
  %63 = phi i32 [ %60, %53 ], [ %80, %78 ]
  %64 = phi ptr [ %58, %53 ], [ %81, %78 ]
  %65 = icmp sgt i32 %63, 0
  %66 = icmp ne ptr %64, null
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %68, label %82

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.TextLine, ptr %64, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !89
  %71 = tail call i32 @text_get_visible_lines(ptr noundef %0, ptr noundef %1, ptr noundef %70) #14
  %72 = sub nsw i32 %63, %71
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  %75 = add nsw i32 %63, %62
  br label %78

76:                                               ; preds = %68
  %77 = load ptr, ptr %64, align 8, !tbaa !155
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %62, %76 ], [ %75, %74 ]
  %80 = phi i32 [ %72, %76 ], [ %63, %74 ]
  %81 = phi ptr [ %77, %76 ], [ %64, %74 ]
  br i1 %73, label %61, label %82

82:                                               ; preds = %78, %61
  %83 = phi i32 [ %79, %78 ], [ %62, %61 ]
  %84 = phi ptr [ %81, %78 ], [ %64, %61 ]
  %85 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  br label %86

86:                                               ; preds = %237, %82
  %87 = phi i32 [ %83, %82 ], [ %238, %237 ]
  %88 = phi i32 [ 1, %82 ], [ %220, %237 ]
  %89 = phi i32 [ 0, %82 ], [ %208, %237 ]
  %90 = phi ptr [ %84, %82 ], [ %239, %237 ]
  %91 = phi i32 [ -1, %82 ], [ %240, %237 ]
  %92 = icmp ne i32 %88, 0
  %93 = icmp ne ptr %90, null
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %95, label %242

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.TextLine, ptr %90, i64 0, i32 2
  %97 = getelementptr inbounds %struct.TextLine, ptr %90, i64 0, i32 4
  br label %98

98:                                               ; preds = %95, %216
  %99 = phi i32 [ %91, %95 ], [ %214, %216 ]
  %100 = phi i32 [ 1, %95 ], [ %213, %216 ]
  %101 = phi i32 [ 0, %95 ], [ %212, %216 ]
  %102 = phi i32 [ 0, %95 ], [ %211, %216 ]
  %103 = phi i32 [ 0, %95 ], [ %218, %216 ]
  %104 = phi i32 [ %55, %95 ], [ %210, %216 ]
  %105 = phi i32 [ 0, %95 ], [ %209, %216 ]
  %106 = phi i32 [ 0, %95 ], [ %204, %216 ]
  %107 = phi i32 [ %89, %95 ], [ %208, %216 ]
  %108 = phi i32 [ %87, %95 ], [ %205, %216 ]
  %109 = load ptr, ptr %96, align 8, !tbaa !89
  %110 = sext i32 %103 to i64
  %111 = getelementptr inbounds i8, ptr %109, i64 %110
  %112 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef %111) #14
  %113 = load ptr, ptr %96, align 8, !tbaa !89
  %114 = getelementptr inbounds i8, ptr %113, i64 %110
  %115 = load i8, ptr %114, align 1, !tbaa !91
  %116 = icmp eq i8 %115, 9
  br i1 %116, label %117, label %121

117:                                              ; preds = %98
  %118 = load i32, ptr %85, align 8, !tbaa !86
  %119 = srem i32 %106, %118
  %120 = sub nsw i32 %118, %119
  br label %121

121:                                              ; preds = %117, %98
  %122 = phi i8 [ 32, %117 ], [ %115, %98 ]
  %123 = phi i32 [ %120, %117 ], [ 1, %98 ]
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %203, label %125

125:                                              ; preds = %121
  %126 = mul i32 %112, %123
  %127 = add i32 %106, %126
  br label %128

128:                                              ; preds = %125, %196
  %129 = phi i32 [ %139, %196 ], [ %123, %125 ]
  %130 = phi i32 [ %161, %196 ], [ %99, %125 ]
  %131 = phi i32 [ %201, %196 ], [ %100, %125 ]
  %132 = phi i32 [ %200, %196 ], [ %101, %125 ]
  %133 = phi i32 [ %160, %196 ], [ %102, %125 ]
  %134 = phi i32 [ %199, %196 ], [ %104, %125 ]
  %135 = phi i32 [ %198, %196 ], [ %105, %125 ]
  %136 = phi i32 [ %162, %196 ], [ %106, %125 ]
  %137 = phi i32 [ %159, %196 ], [ %107, %125 ]
  %138 = phi i32 [ %197, %196 ], [ %108, %125 ]
  %139 = add nsw i32 %129, -1
  %140 = icmp slt i32 %138, 0
  br i1 %140, label %203, label %141

141:                                              ; preds = %128
  %142 = icmp ne i32 %138, 0
  %143 = sub nsw i32 %136, %135
  %144 = icmp sgt i32 %143, %49
  %145 = select i1 %142, i1 true, i1 %144
  br i1 %145, label %150, label %146

146:                                              ; preds = %141
  %147 = add nsw i32 %136, %112
  %148 = sub i32 %147, %135
  %149 = icmp sgt i32 %148, %49
  br i1 %149, label %158, label %150

150:                                              ; preds = %146, %141
  %151 = sub nsw i32 %136, %134
  %152 = icmp sgt i32 %151, %49
  br i1 %152, label %158, label %153

153:                                              ; preds = %150
  %154 = add nsw i32 %136, %112
  %155 = sub i32 %154, %134
  %156 = icmp sgt i32 %155, %49
  %157 = select i1 %156, i32 %103, i32 %133
  br label %158

158:                                              ; preds = %153, %150, %146
  %159 = phi i32 [ %137, %150 ], [ 1, %146 ], [ %137, %153 ]
  %160 = phi i32 [ %133, %150 ], [ %103, %146 ], [ %157, %153 ]
  %161 = phi i32 [ %130, %150 ], [ %103, %146 ], [ %130, %153 ]
  %162 = add nsw i32 %136, %112
  %163 = sub nsw i32 %162, %135
  %164 = icmp sgt i32 %163, %55
  br i1 %164, label %165, label %187

165:                                              ; preds = %158
  %166 = tail call i32 @llvm.smin.i32(i32 %134, i32 %136)
  %167 = icmp eq i32 %159, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %165
  %169 = icmp sgt i32 %161, %132
  %170 = icmp eq i32 %131, 0
  %171 = select i1 %169, i1 %170, i1 false
  %172 = icmp ne i8 %122, 0
  %173 = and i1 %172, %171
  %174 = select i1 %173, i32 %132, i32 %161
  br label %203

175:                                              ; preds = %165
  %176 = icmp eq i32 %131, 0
  %177 = select i1 %176, i32 %132, i32 %103
  %178 = add nsw i32 %166, %55
  %179 = load i32, ptr %97, align 8, !tbaa !90
  %180 = icmp slt i32 %103, %179
  %181 = sext i1 %180 to i32
  %182 = add nsw i32 %138, %181
  %183 = icmp eq i32 %182, 0
  %184 = sub nsw i32 %162, %166
  %185 = icmp sgt i32 %184, %49
  %186 = select i1 %183, i1 %185, i1 false
  br i1 %186, label %203, label %196

187:                                              ; preds = %158
  switch i8 %122, label %196 [
    i8 45, label %188
    i8 32, label %188
    i8 0, label %188
  ]

188:                                              ; preds = %187, %187, %187
  %189 = icmp eq i32 %159, 0
  br i1 %189, label %190, label %203

190:                                              ; preds = %188
  %191 = icmp eq i32 %138, 0
  %192 = icmp sgt i32 %163, %49
  %193 = and i1 %191, %192
  br i1 %193, label %203, label %194

194:                                              ; preds = %190
  %195 = add nsw i32 %136, 1
  br label %196

196:                                              ; preds = %194, %187, %175
  %197 = phi i32 [ %182, %175 ], [ %138, %187 ], [ %138, %194 ]
  %198 = phi i32 [ %166, %175 ], [ %135, %187 ], [ %135, %194 ]
  %199 = phi i32 [ %178, %175 ], [ %134, %187 ], [ %195, %194 ]
  %200 = phi i32 [ %177, %175 ], [ %132, %187 ], [ %103, %194 ]
  %201 = phi i32 [ 1, %175 ], [ %131, %187 ], [ 0, %194 ]
  %202 = icmp eq i32 %139, 0
  br i1 %202, label %203, label %128, !llvm.loop !175

203:                                              ; preds = %196, %128, %175, %188, %190, %121, %168
  %204 = phi i32 [ %136, %168 ], [ %106, %121 ], [ %136, %190 ], [ %136, %188 ], [ %136, %175 ], [ %136, %128 ], [ %127, %196 ]
  %205 = phi i32 [ %138, %168 ], [ %108, %121 ], [ %138, %190 ], [ %138, %188 ], [ %182, %175 ], [ %138, %128 ], [ %197, %196 ]
  %206 = phi i1 [ true, %168 ], [ false, %121 ], [ true, %190 ], [ true, %188 ], [ true, %175 ], [ true, %128 ], [ false, %196 ]
  %207 = phi i32 [ 0, %168 ], [ 1, %121 ], [ 0, %190 ], [ 0, %188 ], [ 0, %175 ], [ 0, %128 ], [ 1, %196 ]
  %208 = phi i32 [ 1, %168 ], [ %107, %121 ], [ 0, %190 ], [ 1, %188 ], [ 0, %175 ], [ %137, %128 ], [ %159, %196 ]
  %209 = phi i32 [ %135, %168 ], [ %105, %121 ], [ %135, %190 ], [ %135, %188 ], [ %166, %175 ], [ %135, %128 ], [ %198, %196 ]
  %210 = phi i32 [ %166, %168 ], [ %104, %121 ], [ %134, %190 ], [ %134, %188 ], [ %178, %175 ], [ %134, %128 ], [ %199, %196 ]
  %211 = phi i32 [ %160, %168 ], [ %102, %121 ], [ %160, %190 ], [ %160, %188 ], [ %160, %175 ], [ %133, %128 ], [ %160, %196 ]
  %212 = phi i32 [ %132, %168 ], [ %101, %121 ], [ %132, %190 ], [ %132, %188 ], [ %177, %175 ], [ %132, %128 ], [ %200, %196 ]
  %213 = phi i32 [ %131, %168 ], [ %100, %121 ], [ %131, %190 ], [ %131, %188 ], [ 1, %175 ], [ %131, %128 ], [ %201, %196 ]
  %214 = phi i32 [ %174, %168 ], [ %99, %121 ], [ %160, %190 ], [ %161, %188 ], [ %160, %175 ], [ %132, %128 ], [ %161, %196 ]
  %215 = icmp eq i8 %122, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %203
  %217 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %114) #14
  %218 = add nsw i32 %217, %103
  br i1 %206, label %219, label %98, !llvm.loop !176

219:                                              ; preds = %203, %216
  %220 = phi i32 [ 0, %216 ], [ %207, %203 ]
  %221 = icmp eq i32 %220, 0
  %222 = icmp ne i32 %208, 0
  %223 = select i1 %221, i1 true, i1 %222
  br i1 %223, label %237, label %224

224:                                              ; preds = %219
  %225 = load ptr, ptr %90, align 8, !tbaa !155
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.TextLine, ptr %90, i64 0, i32 4
  %229 = load i32, ptr %228, align 8, !tbaa !90
  br label %237

230:                                              ; preds = %224
  %231 = icmp eq i32 %205, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %230
  %233 = getelementptr inbounds %struct.TextLine, ptr %90, i64 0, i32 4
  %234 = load i32, ptr %233, align 8, !tbaa !90
  br label %237

235:                                              ; preds = %230
  %236 = add nsw i32 %205, -1
  br label %237

237:                                              ; preds = %235, %232, %227, %219
  %238 = phi i32 [ %205, %219 ], [ %205, %227 ], [ %205, %232 ], [ %236, %235 ]
  %239 = phi ptr [ %90, %219 ], [ %90, %227 ], [ %90, %232 ], [ %225, %235 ]
  %240 = phi i32 [ %214, %219 ], [ %229, %227 ], [ %234, %232 ], [ %214, %235 ]
  %241 = phi i1 [ false, %219 ], [ false, %227 ], [ false, %232 ], [ true, %235 ]
  br i1 %241, label %86, label %242

242:                                              ; preds = %237, %86
  %243 = phi ptr [ %239, %237 ], [ %90, %86 ]
  %244 = phi i32 [ %240, %237 ], [ %91, %86 ]
  %245 = icmp ne ptr %243, null
  %246 = icmp ne i32 %244, -1
  %247 = select i1 %245, i1 %246, i1 false
  br i1 %247, label %248, label %353

248:                                              ; preds = %242
  %249 = icmp eq i8 %4, 0
  br i1 %249, label %253, label %250

250:                                              ; preds = %248
  %251 = getelementptr inbounds %struct.Text, ptr %54, i64 0, i32 6
  store ptr %243, ptr %251, align 8, !tbaa !140
  %252 = getelementptr inbounds %struct.Text, ptr %54, i64 0, i32 8
  store i32 %244, ptr %252, align 4, !tbaa !142
  br label %353

253:                                              ; preds = %248
  %254 = getelementptr inbounds %struct.Text, ptr %54, i64 0, i32 5
  store ptr %243, ptr %254, align 8, !tbaa !79
  %255 = getelementptr inbounds %struct.Text, ptr %54, i64 0, i32 7
  store i32 %244, ptr %255, align 8, !tbaa !80
  br label %353

256:                                              ; preds = %37
  %257 = icmp eq i8 %4, 0
  %258 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 6
  %259 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 8
  %260 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 5
  %261 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 7
  %262 = select i1 %257, ptr %260, ptr %258
  %263 = select i1 %257, ptr %261, ptr %259
  %264 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 4
  %265 = load ptr, ptr %264, align 8, !tbaa !103
  %266 = load ptr, ptr %262, align 8, !tbaa !46
  %267 = tail call i32 @txt_get_span(ptr noundef %265, ptr noundef %266) #14
  %268 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 7
  %269 = load i32, ptr %268, align 8, !tbaa !63
  %270 = sub i32 %269, %267
  %271 = add i32 %270, %20
  %272 = icmp sgt i32 %271, 0
  br i1 %272, label %273, label %285

273:                                              ; preds = %256
  %274 = load ptr, ptr %262, align 8, !tbaa !46
  br label %275

275:                                              ; preds = %273, %282
  %276 = phi i32 [ %271, %273 ], [ %278, %282 ]
  %277 = phi ptr [ %274, %273 ], [ %283, %282 ]
  %278 = add nsw i32 %276, -1
  %279 = load ptr, ptr %277, align 8, !tbaa !155
  %280 = icmp eq ptr %279, null
  br i1 %280, label %282, label %281

281:                                              ; preds = %275
  store ptr %279, ptr %262, align 8, !tbaa !46
  br label %282

282:                                              ; preds = %281, %275
  %283 = phi ptr [ %279, %281 ], [ %277, %275 ]
  %284 = icmp eq i32 %278, 0
  br i1 %284, label %300, label %275, !llvm.loop !177

285:                                              ; preds = %256
  %286 = icmp slt i32 %271, 0
  br i1 %286, label %287, label %300

287:                                              ; preds = %285
  %288 = load ptr, ptr %262, align 8, !tbaa !46
  br label %289

289:                                              ; preds = %287, %297
  %290 = phi i32 [ %271, %287 ], [ %292, %297 ]
  %291 = phi ptr [ %288, %287 ], [ %298, %297 ]
  %292 = add nsw i32 %290, 1
  %293 = getelementptr inbounds %struct.TextLine, ptr %291, i64 0, i32 1
  %294 = load ptr, ptr %293, align 8, !tbaa !88
  %295 = icmp eq ptr %294, null
  br i1 %295, label %297, label %296

296:                                              ; preds = %289
  store ptr %294, ptr %262, align 8, !tbaa !46
  br label %297

297:                                              ; preds = %296, %289
  %298 = phi ptr [ %294, %296 ], [ %291, %289 ]
  %299 = icmp eq i32 %292, 0
  br i1 %299, label %300, label %289, !llvm.loop !178

300:                                              ; preds = %297, %282, %285
  %301 = load ptr, ptr %262, align 8, !tbaa !46
  %302 = getelementptr inbounds %struct.TextLine, ptr %301, i64 0, i32 2
  %303 = load ptr, ptr %302, align 8, !tbaa !89
  %304 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  br label %305

305:                                              ; preds = %317, %300
  %306 = phi i32 [ 0, %300 ], [ %321, %317 ]
  %307 = phi i32 [ 0, %300 ], [ %319, %317 ]
  %308 = sext i32 %306 to i64
  %309 = getelementptr inbounds i8, ptr %303, i64 %308
  %310 = load i8, ptr %309, align 1, !tbaa !91
  switch i8 %310, label %315 [
    i8 0, label %322
    i8 9, label %311
  ]

311:                                              ; preds = %305
  %312 = load i32, ptr %304, align 8, !tbaa !86
  %313 = srem i32 %307, %312
  %314 = sub nsw i32 %312, %313
  br label %317

315:                                              ; preds = %305
  %316 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %309) #14
  br label %317

317:                                              ; preds = %315, %311
  %318 = phi i32 [ %314, %311 ], [ %316, %315 ]
  %319 = add nsw i32 %318, %307
  %320 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %309) #14
  %321 = add nsw i32 %320, %306
  br label %305, !llvm.loop !179

322:                                              ; preds = %305
  %323 = icmp slt i32 %49, %307
  %324 = load ptr, ptr %262, align 8, !tbaa !46
  br i1 %323, label %325, label %348

325:                                              ; preds = %322
  %326 = getelementptr inbounds %struct.TextLine, ptr %324, i64 0, i32 2
  %327 = load ptr, ptr %326, align 8, !tbaa !89
  %328 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  br label %329

329:                                              ; preds = %345, %325
  %330 = phi i32 [ 0, %325 ], [ %343, %345 ]
  %331 = phi i32 [ 0, %325 ], [ %347, %345 ]
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8, ptr %327, i64 %332
  %334 = load i8, ptr %333, align 1, !tbaa !91
  switch i8 %334, label %339 [
    i8 0, label %351
    i8 9, label %335
  ]

335:                                              ; preds = %329
  %336 = load i32, ptr %328, align 8, !tbaa !86
  %337 = srem i32 %330, %336
  %338 = sub nsw i32 %336, %337
  br label %341

339:                                              ; preds = %329
  %340 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %333) #14
  br label %341

341:                                              ; preds = %339, %335
  %342 = phi i32 [ %338, %335 ], [ %340, %339 ]
  %343 = add nsw i32 %342, %330
  %344 = icmp sgt i32 %343, %49
  br i1 %344, label %351, label %345

345:                                              ; preds = %341
  %346 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %333) #14
  %347 = add nsw i32 %346, %331
  br label %329, !llvm.loop !180

348:                                              ; preds = %322
  %349 = getelementptr inbounds %struct.TextLine, ptr %324, i64 0, i32 4
  %350 = load i32, ptr %349, align 8, !tbaa !90
  br label %351

351:                                              ; preds = %341, %329, %348
  %352 = phi i32 [ %350, %348 ], [ %331, %329 ], [ %331, %341 ]
  store i32 %352, ptr %263, align 4, !tbaa !115
  br label %353

353:                                              ; preds = %253, %250, %242, %351
  %354 = icmp eq i8 %4, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %353
  tail call void @txt_pop_sel(ptr noundef %7) #14
  br label %356

356:                                              ; preds = %355, %353
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @text_cursor_set_exit(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = tail call zeroext i8 @txt_has_sel(ptr noundef %5) #14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @txt_sel_to_buf(ptr noundef %5) #14
  tail call void @WM_clipboard_text_set(ptr noundef %11, i8 noundef zeroext 1) #14
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %12(ptr noundef %11) #14
  br label %13

13:                                               ; preds = %10, %2
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  %14 = load ptr, ptr %4, align 8, !tbaa !58
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %14) #14
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %15(ptr noundef %7) #14
  ret void
}

declare ptr @txt_sel_to_buf(ptr noundef) local_unnamed_addr #2

declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @PIL_check_seconds_timer() local_unnamed_addr #2

declare ptr @RNA_string_get_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BLI_str_utf8_as_unicode_step(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @txt_replace_char(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RNA_string_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

declare i64 @BLI_str_utf8_from_unicode(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @text_find_and_replace(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) unnamed_addr #0 {
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #14
  %5 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  %6 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 26
  %9 = load i8, ptr %8, align 8, !tbaa !91
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %73, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 9
  %13 = load i16, ptr %12, align 8, !tbaa !111
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  %17 = and i32 %14, 65503
  %18 = select i1 %16, i32 %14, i32 %17
  %19 = icmp eq i16 %2, 0
  br i1 %19, label %51, label %20

20:                                               ; preds = %11
  %21 = tail call zeroext i8 @txt_has_sel(ptr noundef %7) #14
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %51, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @txt_sel_to_buf(ptr noundef %7) #14
  %25 = and i32 %18, 256
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %24) #15
  br label %31

29:                                               ; preds = %23
  %30 = tail call i32 @BLI_strcasecmp(ptr noundef nonnull %8, ptr noundef %24) #14
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 27
  tail call void @txt_insert_buf(ptr noundef %7, ptr noundef nonnull %35) #14
  %36 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !79
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.TextLine, ptr %37, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !44
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %44(ptr noundef nonnull %41) #14
  %45 = load ptr, ptr %36, align 8, !tbaa !79
  %46 = getelementptr inbounds %struct.TextLine, ptr %45, i64 0, i32 3
  store ptr null, ptr %46, align 8, !tbaa !44
  br label %47

47:                                               ; preds = %43, %39, %34
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %7) #14
  %48 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #14
  tail call void @text_drawcache_tag_update(ptr noundef %48, i32 noundef 1) #14
  br label %49

49:                                               ; preds = %47, %31
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %50(ptr noundef %24) #14
  br label %51

51:                                               ; preds = %49, %20, %11
  %52 = phi i1 [ %33, %49 ], [ true, %20 ], [ true, %11 ]
  %53 = and i32 %18, 32
  %54 = and i32 %18, 256
  %55 = tail call i32 @txt_find_string(ptr noundef %7, ptr noundef nonnull %8, i32 noundef %53, i32 noundef %54) #14
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %7) #14
  br label %73

58:                                               ; preds = %51
  %59 = and i32 %18, 64
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %7, align 8, !tbaa !84
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 29
  %66 = load ptr, ptr %65, align 8, !tbaa !181
  br label %67

67:                                               ; preds = %61, %64
  %68 = phi ptr [ %66, %64 ], [ %62, %61 ]
  store ptr %68, ptr %6, align 8, !tbaa !58
  tail call void @txt_move_toline(ptr noundef %68, i32 noundef 0, i8 noundef zeroext 0) #14
  tail call void @text_update_cursor_moved(ptr noundef %0) #14
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %68) #14
  br label %73

69:                                               ; preds = %58
  br i1 %52, label %70, label %73

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %72 = load ptr, ptr %71, align 8, !tbaa !81
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %72, i32 noundef 32, ptr noundef nonnull @.str.202, ptr noundef nonnull %8) #14
  br label %73

73:                                               ; preds = %57, %69, %70, %67, %3
  %74 = phi i32 [ 2, %3 ], [ 4, %67 ], [ 4, %70 ], [ 4, %69 ], [ 4, %57 ]
  ret i32 %74
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

declare i32 @BLI_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @txt_find_string(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_text_file_modified_ignore(ptr noundef) local_unnamed_addr #2

declare i32 @BKE_text_file_modified_check(ptr noundef) local_unnamed_addr #2

declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

declare void @uiItemEnumO_ptr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_text_to_object(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind willreturn memory(none) }

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
!34 = !{!35, !37, i64 24}
!35 = !{!"Text", !36, i64 0, !37, i64 120, !41, i64 128, !41, i64 132, !42, i64 136, !37, i64 152, !37, i64 160, !41, i64 168, !41, i64 172, !37, i64 176, !41, i64 184, !41, i64 188, !37, i64 192, !43, i64 200}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!"double", !38, i64 0}
!44 = !{!45, !37, i64 24}
!45 = !{!"TextLine", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !41, i64 32, !41, i64 36}
!46 = !{!37, !37, i64 0}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!51, !37, i64 0}
!51 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !42, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !52, i64 152, !40, i64 184}
!52 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!53 = !{!51, !37, i64 8}
!54 = !{!51, !37, i64 24}
!55 = !{!51, !37, i64 32}
!56 = !{!51, !37, i64 72}
!57 = !{!51, !40, i64 184}
!58 = !{!59, !37, i64 56}
!59 = !{!"SpaceText", !37, i64 0, !37, i64 8, !42, i64 16, !41, i64 32, !60, i64 36, !38, i64 40, !37, i64 56, !41, i64 64, !41, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !38, i64 78, !38, i64 79, !41, i64 80, !41, i64 84, !41, i64 88, !40, i64 92, !40, i64 94, !40, i64 96, !40, i64 98, !60, i64 100, !61, i64 104, !61, i64 120, !41, i64 136, !41, i64 140, !38, i64 144, !38, i64 400, !40, i64 656, !40, i64 658, !38, i64 660, !37, i64 664, !38, i64 672}
!60 = !{!"float", !38, i64 0}
!61 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!62 = !{!59, !41, i64 80}
!63 = !{!59, !41, i64 64}
!64 = !{!60, !60, i64 0}
!65 = !{!51, !37, i64 48}
!66 = !{!51, !37, i64 56}
!67 = !{!51, !37, i64 88}
!68 = !{!69, !37, i64 112}
!69 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !42, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!70 = !{!71, !37, i64 0}
!71 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !42, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!72 = !{!69, !37, i64 96}
!73 = !{!74, !37, i64 24}
!74 = !{!"PropertyPointerRNA", !75, i64 0, !37, i64 24}
!75 = !{!"PointerRNA", !76, i64 0, !37, i64 8, !37, i64 16}
!76 = !{!"", !37, i64 0}
!77 = !{!35, !37, i64 120}
!78 = !{i32 2, i32 5}
!79 = !{!35, !37, i64 152}
!80 = !{!35, !41, i64 168}
!81 = !{!69, !37, i64 120}
!82 = !{!59, !41, i64 68}
!83 = !{!35, !37, i64 8}
!84 = !{!35, !37, i64 0}
!85 = !{!35, !41, i64 128}
!86 = !{!59, !41, i64 88}
!87 = distinct !{!87, !48, !49}
!88 = !{!45, !37, i64 8}
!89 = !{!45, !37, i64 16}
!90 = !{!45, !41, i64 32}
!91 = !{!38, !38, i64 0}
!92 = distinct !{!92, !48, !49}
!93 = distinct !{!93, !48, !49}
!94 = distinct !{!94, !48, !49}
!95 = distinct !{!95, !48, !49}
!96 = distinct !{!96, !48, !49}
!97 = distinct !{!97, !48, !49}
!98 = distinct !{!98, !48, !49}
!99 = !{!100, !40, i64 8948}
!100 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 20, !38, i64 788, !38, i64 1556, !38, i64 2580, !38, i64 3348, !38, i64 4116, !38, i64 4884, !38, i64 5652, !38, i64 6420, !38, i64 7444, !41, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !40, i64 8496, !40, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !42, i64 8536, !42, i64 8552, !42, i64 8568, !42, i64 8584, !42, i64 8600, !42, i64 8616, !42, i64 8632, !38, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !38, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !41, i64 8912, !41, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !38, i64 8940, !38, i64 8941, !38, i64 8942, !38, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !60, i64 8956, !60, i64 8960, !41, i64 8964, !40, i64 8968, !40, i64 8970, !60, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !101, i64 8984, !38, i64 9760, !38, i64 9772, !40, i64 9788, !38, i64 9790, !38, i64 9791, !38, i64 9792, !38, i64 9872, !41, i64 10896, !41, i64 10900, !60, i64 10904, !60, i64 10908, !41, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !102, i64 10928}
!101 = !{!"ColorBand", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8}
!102 = !{!"WalkNavigation", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !40, i64 24, !38, i64 26}
!103 = !{!35, !37, i64 136}
!104 = !{!35, !37, i64 144}
!105 = !{!59, !40, i64 96}
!106 = !{!51, !37, i64 64}
!107 = !{!100, !40, i64 8482}
!108 = !{!109, !41, i64 16}
!109 = !{!"TextScroll", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24}
!110 = !{!109, !41, i64 24}
!111 = !{!59, !40, i64 72}
!112 = !{!113, !40, i64 16}
!113 = !{!"wmEvent", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 36, !38, i64 42, !38, i64 43, !40, i64 44, !40, i64 46, !41, i64 48, !41, i64 52, !43, i64 56, !41, i64 64, !41, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !37, i64 88, !37, i64 96, !40, i64 104, !40, i64 106, !41, i64 108, !37, i64 112}
!114 = !{!113, !41, i64 20}
!115 = !{!41, !41, i64 0}
!116 = !{!113, !41, i64 24}
!117 = !{!113, !41, i64 48}
!118 = !{!59, !38, i64 78}
!119 = !{!113, !41, i64 52}
!120 = !{!59, !40, i64 658}
!121 = !{!109, !41, i64 20}
!122 = !{!59, !41, i64 120}
!123 = !{!59, !41, i64 124}
!124 = !{!59, !41, i64 128}
!125 = !{!59, !41, i64 132}
!126 = !{!127, !40, i64 210}
!127 = !{!"ARegion", !37, i64 0, !37, i64 8, !128, i64 16, !61, i64 176, !61, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !60, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !37, i64 240, !42, i64 248, !42, i64 264, !42, i64 280, !42, i64 296, !42, i64 312, !42, i64 328, !42, i64 344, !37, i64 360, !37, i64 368, !37, i64 376}
!128 = !{!"View2D", !129, i64 0, !129, i64 16, !61, i64 32, !61, i64 48, !61, i64 64, !38, i64 80, !38, i64 88, !60, i64 96, !60, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !37, i64 128, !41, i64 136, !41, i64 140, !37, i64 144, !37, i64 152}
!129 = !{!"rctf", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12}
!130 = !{!127, !41, i64 176}
!131 = !{!61, !41, i64 0}
!132 = !{!61, !41, i64 4}
!133 = !{!127, !41, i64 184}
!134 = !{!61, !41, i64 8}
!135 = !{!61, !41, i64 12}
!136 = !{!127, !40, i64 214}
!137 = !{!138, !41, i64 0}
!138 = !{!"SetSelection", !41, i64 0, !41, i64 4, !41, i64 8, !38, i64 12}
!139 = !{!40, !40, i64 0}
!140 = !{!35, !37, i64 160}
!141 = !{!138, !41, i64 8}
!142 = !{!35, !41, i64 172}
!143 = !{!138, !41, i64 4}
!144 = !{!59, !41, i64 84}
!145 = !{!59, !38, i64 79}
!146 = !{!113, !38, i64 42}
!147 = !{!43, !43, i64 0}
!148 = !{!149, !149, i64 0}
!149 = !{!"long", !38, i64 0}
!150 = distinct !{!150, !48, !49}
!151 = distinct !{!151, !48, !49}
!152 = !{!113, !40, i64 74}
!153 = !{!113, !40, i64 78}
!154 = !{!69, !37, i64 88}
!155 = !{!45, !37, i64 0}
!156 = distinct !{!156, !48, !49}
!157 = !{!158, !149, i64 88}
!158 = !{!"stat", !149, i64 0, !149, i64 8, !149, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !149, i64 40, !149, i64 48, !149, i64 56, !149, i64 64, !159, i64 72, !159, i64 88, !159, i64 104, !38, i64 120}
!159 = !{!"timespec", !149, i64 0, !149, i64 8}
!160 = !{!35, !43, i64 200}
!161 = distinct !{!161, !48, !49}
!162 = distinct !{!162, !48, !49}
!163 = !{!59, !41, i64 136}
!164 = distinct !{!164, !48, !49}
!165 = distinct !{!165, !48, !49}
!166 = distinct !{!166, !48, !49}
!167 = distinct !{!167, !48, !49}
!168 = distinct !{!168, !48, !49}
!169 = distinct !{!169, !48, !49}
!170 = distinct !{!170, !48, !49}
!171 = distinct !{!171, !48, !49}
!172 = distinct !{!172, !48, !49}
!173 = !{!59, !60, i64 100}
!174 = !{!127, !40, i64 208}
!175 = distinct !{!175, !48, !49}
!176 = distinct !{!176, !48, !49}
!177 = distinct !{!177, !48, !49}
!178 = distinct !{!178, !48, !49}
!179 = distinct !{!179, !48, !49}
!180 = distinct !{!180, !48, !49}
!181 = !{!182, !37, i64 1376}
!182 = !{!"Main", !37, i64 0, !37, i64 8, !38, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !149, i64 1048, !38, i64 1056, !40, i64 1072, !37, i64 1080, !42, i64 1088, !42, i64 1104, !42, i64 1120, !42, i64 1136, !42, i64 1152, !42, i64 1168, !42, i64 1184, !42, i64 1200, !42, i64 1216, !42, i64 1232, !42, i64 1248, !42, i64 1264, !42, i64 1280, !42, i64 1296, !42, i64 1312, !42, i64 1328, !42, i64 1344, !42, i64 1360, !42, i64 1376, !42, i64 1392, !42, i64 1408, !42, i64 1424, !42, i64 1440, !42, i64 1456, !42, i64 1472, !42, i64 1488, !42, i64 1504, !42, i64 1520, !42, i64 1536, !42, i64 1552, !42, i64 1568, !42, i64 1584, !42, i64 1600, !42, i64 1616, !38, i64 1632, !37, i64 1888, !37, i64 1896}
