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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @text_space_edit_poll(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
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

; Function Attrs: optsize
declare ptr @CTX_wm_space_text(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_text(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void %8(ptr noundef nonnull %5) #15
  store ptr null, ptr %4, align 8, !tbaa !44
  br label %9

9:                                                ; preds = %1, %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @text_update_edited(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @text_update_line_edited(ptr noundef nonnull %6) #16
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !47

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_new(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_new_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_new_poll, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_new_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !57 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  %6 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %7 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %8 = tail call ptr @BKE_text_add(ptr noundef %7, ptr noundef nonnull @.str.99) #15
  call void @uiIDContextProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %5) #15
  %9 = load ptr, ptr %5, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  call void @RNA_id_pointer_create(ptr noundef %8, ptr noundef nonnull %4) #15
  %12 = load ptr, ptr %5, align 8, !tbaa !46
  call void @RNA_property_pointer_set(ptr noundef nonnull %3, ptr noundef %12, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %4) #15
  %13 = load ptr, ptr %5, align 8, !tbaa !46
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %13) #15
  br label %21

14:                                               ; preds = %2
  %15 = icmp eq ptr %6, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.SpaceText, ptr %6, i64 0, i32 6
  store ptr %8, ptr %17, align 8, !tbaa !58
  %18 = getelementptr inbounds %struct.SpaceText, ptr %6, i64 0, i32 14
  store i32 0, ptr %18, align 8, !tbaa !62
  %19 = getelementptr inbounds %struct.SpaceText, ptr %6, i64 0, i32 7
  store i32 0, ptr %19, align 8, !tbaa !63
  %20 = getelementptr inbounds %struct.SpaceText, ptr %6, i64 0, i32 32
  store <2 x float> zeroinitializer, ptr %20, align 8, !tbaa !64
  call void @text_drawcache_tag_update(ptr noundef nonnull %6, i32 noundef 1) #15
  br label %21

21:                                               ; preds = %14, %16, %11
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326595, ptr noundef %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @text_new_poll(ptr nocapture readnone %0) #4 !PGOFuncName !65 {
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TEXT_OT_open(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_open_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @text_open_invoke, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @text_open_cancel, ptr %6, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_new_poll, ptr %7, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %8, align 8, !tbaa !56
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2624, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 8, i16 noundef signext 0) #15
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !68
  %11 = tail call ptr @RNA_def_boolean(ptr noundef %10, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_open_exec(ptr noundef %0, ptr nocapture noundef %1) #0 !PGOFuncName !69 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %6 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #17
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.6) #15
  %10 = trunc i32 %9 to i8
  %11 = load ptr, ptr %7, align 8, !tbaa !70
  call void @RNA_string_get(ptr noundef %11, ptr noundef nonnull @.str.159, ptr noundef nonnull %4) #15
  %12 = load ptr, ptr @G, align 8, !tbaa !72
  %13 = getelementptr inbounds %struct.Main, ptr %12, i64 0, i32 2
  %14 = call ptr @BKE_text_load_ex(ptr noundef %6, ptr noundef nonnull %4, ptr noundef nonnull %13, i8 noundef zeroext %10) #15
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !74
  %18 = icmp eq ptr %17, null
  br i1 %15, label %19, label %22

19:                                               ; preds = %2
  br i1 %18, label %43, label %20

20:                                               ; preds = %19
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %21(ptr noundef nonnull %17) #15
  br label %43

22:                                               ; preds = %2
  br i1 %18, label %23, label %25

23:                                               ; preds = %22
  call fastcc void @text_open_init(ptr noundef %0, ptr noundef nonnull %1) #16
  %24 = load ptr, ptr %16, align 8, !tbaa !74
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi ptr [ %24, %23 ], [ %17, %22 ]
  %27 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !75
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  call void @RNA_id_pointer_create(ptr noundef nonnull %14, ptr noundef nonnull %3) #15
  %31 = load ptr, ptr %27, align 8, !tbaa !75
  call void @RNA_property_pointer_set(ptr noundef nonnull %26, ptr noundef %31, ptr noundef nonnull byval(%struct.PointerRNA) align 8 %3) #15
  %32 = load ptr, ptr %27, align 8, !tbaa !75
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %26, ptr noundef %32) #15
  br label %40

33:                                               ; preds = %25
  %34 = icmp eq ptr %5, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 6
  store ptr %14, ptr %36, align 8, !tbaa !58
  %37 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 14
  store i32 0, ptr %37, align 8, !tbaa !62
  %38 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 7
  store i32 0, ptr %38, align 8, !tbaa !63
  %39 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 32
  store <2 x float> zeroinitializer, ptr %39, align 8, !tbaa !64
  br label %40

40:                                               ; preds = %33, %35, %30
  call void @text_drawcache_tag_update(ptr noundef %5, i32 noundef 1) #15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326595, ptr noundef nonnull %14) #15
  %41 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %42 = load ptr, ptr %16, align 8, !tbaa !74
  call void %41(ptr noundef %42) #15
  br label %43

43:                                               ; preds = %19, %20, %40
  %44 = phi i32 [ 4, %40 ], [ 2, %20 ], [ 2, %19 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_open_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !79 {
  %4 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %6, %3
  %11 = load ptr, ptr @G, align 8, !tbaa !72
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 2
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi ptr [ %12, %10 ], [ %8, %6 ]
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !70
  %17 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %16, ptr noundef nonnull @.str.159) #15
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = tail call i32 @text_open_exec(ptr noundef %0, ptr noundef nonnull %1) #16, !range !81
  br label %23

21:                                               ; preds = %13
  tail call fastcc void @text_open_init(ptr noundef %0, ptr noundef nonnull %1) #16
  %22 = load ptr, ptr %15, align 8, !tbaa !70
  tail call void @RNA_string_set(ptr noundef %22, ptr noundef nonnull @.str.159, ptr noundef nonnull %14) #15
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef nonnull %1) #15
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ 1, %21 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @text_open_cancel(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !82 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  tail call void %3(ptr noundef %5) #15
  ret void
}

; Function Attrs: optsize
declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_reload(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_reload_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %6, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_reload_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !83 {
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %4 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 4
  %9 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !84
  %11 = tail call i32 @BLI_findindex(ptr noundef nonnull %8, ptr noundef %10) #15
  %12 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !85
  %14 = tail call i32 @BKE_text_reload(ptr noundef %4) #15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  tail call void @BKE_report(ptr noundef %18, i32 noundef 32, ptr noundef nonnull @.str.161) #15
  br label %21

19:                                               ; preds = %2
  tail call void @text_update_edited(ptr noundef nonnull %4) #16
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  %20 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  tail call void @text_drawcache_tag_update(ptr noundef %20, i32 noundef 1) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef nonnull %4) #15
  store i32 %7, ptr %6, align 8, !tbaa !63
  tail call fastcc void @txt_screen_clamp(ptr noundef nonnull %3, ptr noundef %5) #16
  tail call void @txt_move_to(ptr noundef nonnull %4, i32 noundef %11, i32 noundef %13, i8 noundef zeroext 0) #15
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ 4, %19 ], [ 2, %16 ]
  ret i32 %22
}

; Function Attrs: optsize
declare i32 @WM_operator_confirm(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @text_edit_poll(ptr noundef %0) #0 !PGOFuncName !87 {
  %2 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_unlink(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_unlink_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @WM_operator_confirm, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_unlink_poll, ptr %6, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %7, align 8, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_unlink_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !88 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %5 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %6 = icmp eq ptr %4, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ID, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  store ptr %9, ptr %12, align 8, !tbaa !58
  br label %18

13:                                               ; preds = %7
  %14 = load ptr, ptr %5, align 8, !tbaa !90
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  store ptr %14, ptr %17, align 8, !tbaa !58
  br label %18

18:                                               ; preds = %16, %11
  %19 = phi ptr [ %12, %11 ], [ %17, %16 ]
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  %20 = load ptr, ptr %19, align 8, !tbaa !58
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %20) #15
  br label %21

21:                                               ; preds = %18, %13, %2
  tail call void @BKE_text_unlink(ptr noundef %3, ptr noundef %5) #15
  tail call void @BKE_libblock_free(ptr noundef %3, ptr noundef %5) #15
  tail call void @text_drawcache_tag_update(ptr noundef %4, i32 noundef 1) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326596, ptr noundef null) #15
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @text_unlink_poll(ptr noundef %0) #0 !PGOFuncName !91 {
  %2 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_make_internal(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.17, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_make_internal_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_make_internal_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !92 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !93
  %6 = or i32 %5, 5
  store i32 %6, ptr %4, align 8, !tbaa !93
  %7 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %11(ptr noundef nonnull %8) #15
  store ptr null, ptr %7, align 8, !tbaa !80
  br label %12

12:                                               ; preds = %10, %2
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef nonnull %3) #15
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_save(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_save_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_save_poll, ptr %5, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_save_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !94 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  tail call fastcc void @txt_write_file(ptr noundef %3, ptr noundef %5) #16
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %3) #15
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @text_save_poll(ptr noundef %0) #0 !PGOFuncName !95 {
  %2 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %3 = tail call i32 @text_edit_poll(ptr noundef %0) #16, !range !96
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Text, ptr %2, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !93
  %12 = lshr i32 %11, 2
  %13 = and i32 %12, 1
  %14 = xor i32 %13, 1
  br label %15

15:                                               ; preds = %5, %9, %1
  %16 = phi i32 [ 0, %1 ], [ 0, %5 ], [ %14, %9 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TEXT_OT_save_as(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_save_as_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @text_save_as_invoke, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %6, align 8, !tbaa !55
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 2624, i16 noundef signext 9, i16 noundef signext 1, i16 noundef signext 8, i16 noundef signext 0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_save_as_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !97 {
  %3 = alloca [1024 x i8], align 16
  %4 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  call void @RNA_string_get(ptr noundef %8, ptr noundef nonnull @.str.159, ptr noundef nonnull %3) #15
  %9 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %13(ptr noundef nonnull %10) #15
  br label %14

14:                                               ; preds = %12, %6
  %15 = call ptr @BLI_strdup(ptr noundef nonnull %3) #15
  store ptr %15, ptr %9, align 8, !tbaa !80
  %16 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !93
  %18 = and i32 %17, -5
  store i32 %18, ptr %16, align 8, !tbaa !93
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !86
  call fastcc void @txt_write_file(ptr noundef nonnull %4, ptr noundef %20) #16
  call void @text_update_cursor_moved(ptr noundef %0) #15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef nonnull %4) #15
  br label %21

21:                                               ; preds = %2, %14
  %22 = phi i32 [ 4, %14 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #17
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_save_as_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !98 {
  %4 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.159) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @text_save_as_exec(ptr noundef %0, ptr noundef nonnull %1) #16, !range !81
  br label %28

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !80
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !93
  %18 = and i32 %17, 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  br label %25

22:                                               ; preds = %15
  %23 = load ptr, ptr @G, align 8, !tbaa !72
  %24 = getelementptr inbounds %struct.Main, ptr %23, i64 0, i32 2
  br label %25

25:                                               ; preds = %11, %20, %22
  %26 = phi ptr [ %21, %20 ], [ %24, %22 ], [ %13, %11 ]
  %27 = load ptr, ptr %5, align 8, !tbaa !70
  tail call void @RNA_string_set(ptr noundef %27, ptr noundef nonnull @.str.159, ptr noundef nonnull %26) #15
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef nonnull %1) #15
  br label %28

28:                                               ; preds = %25, %9
  %29 = phi i32 [ %10, %9 ], [ 1, %25 ]
  ret i32 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_run_script(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.24, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_run_script_poll, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_run_script_exec, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @text_run_script_poll(ptr noundef %0) #0 !PGOFuncName !99 {
  %2 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_run_script_exec(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !100 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  tail call void @BKE_report(ptr noundef %4, i32 noundef 32, ptr noundef nonnull @.str.168) #15
  ret i32 2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_refresh_pyconstraints(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_refresh_pyconstraints_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @text_refresh_pyconstraints_exec(ptr nocapture readnone %0, ptr nocapture readnone %1) #4 !PGOFuncName !101 {
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TEXT_OT_paste(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.30, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.32, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_paste_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_paste_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !102 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.33) #15
  %7 = trunc i32 %6 to i8
  %8 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %9 = call ptr @WM_clipboard_text_get(i8 noundef zeroext %7, ptr noundef nonnull %3) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = call ptr @CTX_wm_space_text(ptr noundef %0) #15
  call void @text_drawcache_tag_update(ptr noundef %12, i32 noundef 0) #15
  call void @txt_insert_buf(ptr noundef %8, ptr noundef nonnull %9) #15
  call void @text_update_edited(ptr noundef %8) #16
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %13(ptr noundef nonnull %9) #15
  call void @text_update_cursor_moved(ptr noundef %0) #15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %8) #15
  %14 = call ptr @CTX_wm_space_text(ptr noundef %0) #15
  br label %15

15:                                               ; preds = %11, %2
  %16 = phi i32 [ 2, %2 ], [ 4, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_duplicate_line(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.38, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_duplicate_line_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_duplicate_line_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !103 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  tail call void @txt_duplicate_line(ptr noundef %3) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %3) #15
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.40, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.41, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_copy_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_copy_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !104 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  tail call fastcc void @txt_copy_clipboard(ptr noundef %3) #16
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_cut(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.44, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_cut_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_cut_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !105 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  tail call void @text_drawcache_tag_update(ptr noundef %4, i32 noundef 0) #15
  tail call fastcc void @txt_copy_clipboard(ptr noundef %3) #16
  tail call void @txt_delete_selected(ptr noundef %3) #15
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %3) #15
  %5 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_indent(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.45, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.46, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.47, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_indent_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_indent_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !106 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  tail call void @text_drawcache_tag_update(ptr noundef %4, i32 noundef 0) #15
  %5 = tail call zeroext i8 @txt_has_sel(ptr noundef %3) #15
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @txt_order_cursors(ptr noundef %3, i8 noundef zeroext 0) #15
  tail call void @txt_indent(ptr noundef %3) #15
  br label %10

8:                                                ; preds = %2
  %9 = tail call zeroext i8 @txt_add_char(ptr noundef %3, i32 noundef 9) #15
  br label %10

10:                                               ; preds = %8, %7
  tail call void @text_update_edited(ptr noundef %3) #16
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %3) #15
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_unindent(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.48, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.49, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.50, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_unindent_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_unindent_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !107 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  tail call void @text_drawcache_tag_update(ptr noundef %4, i32 noundef 0) #15
  tail call void @txt_order_cursors(ptr noundef %3, i8 noundef zeroext 0) #15
  tail call void @txt_unindent(ptr noundef %3) #15
  tail call void @text_update_edited(ptr noundef %3) #16
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %3) #15
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_line_break(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.51, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.52, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.53, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_line_break_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_line_break_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !108 {
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %4 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !93
  %7 = and i32 %6, 1024
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 16
  %11 = load i32, ptr %10, align 8, !tbaa !109
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi i32 [ %11, %9 ], [ 1, %2 ]
  tail call void @text_drawcache_tag_update(ptr noundef %3, i32 noundef 0) #15
  %14 = tail call i32 @txt_setcurr_tab_spaces(ptr noundef nonnull %4, i32 noundef %13) #15
  tail call void @txt_split_curline(ptr noundef nonnull %4) #15
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12, %16
  %17 = phi i32 [ %23, %16 ], [ 0, %12 ]
  %18 = load i32, ptr %5, align 8, !tbaa !93
  %19 = and i32 %18, 1024
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 9, i32 32
  %22 = tail call zeroext i8 @txt_add_char(ptr noundef nonnull %4, i32 noundef %21) #15
  %23 = add nuw nsw i32 %17, 1
  %24 = icmp eq i32 %23, %14
  br i1 %24, label %25, label %16, !llvm.loop !110

25:                                               ; preds = %16, %12
  %26 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !84
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.TextLine, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !111
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  tail call void @text_update_line_edited(ptr noundef nonnull %31) #16
  %34 = load ptr, ptr %26, align 8, !tbaa !84
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi ptr [ %34, %33 ], [ %27, %29 ]
  tail call void @text_update_line_edited(ptr noundef %36) #16
  br label %37

37:                                               ; preds = %35, %25
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef nonnull %4) #15
  ret i32 2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_comment(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.54, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.55, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.56, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_comment_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_comment_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !112 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %4 = tail call zeroext i8 @txt_has_sel(ptr noundef %3) #15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  tail call void @text_drawcache_tag_update(ptr noundef %7, i32 noundef 0) #15
  tail call void @txt_order_cursors(ptr noundef %3, i8 noundef zeroext 0) #15
  tail call void @txt_comment(ptr noundef %3) #15
  tail call void @text_update_edited(ptr noundef %3) #16
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %3) #15
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ 4, %6 ], [ 2, %2 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_uncomment(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.57, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.58, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.59, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_uncomment_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_uncomment_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !113 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %4 = tail call zeroext i8 @txt_has_sel(ptr noundef %3) #15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  tail call void @text_drawcache_tag_update(ptr noundef %7, i32 noundef 0) #15
  tail call void @txt_order_cursors(ptr noundef %3, i8 noundef zeroext 0) #15
  tail call void @txt_uncomment(ptr noundef %3) #15
  tail call void @text_update_edited(ptr noundef %3) #16
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %3) #15
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ 4, %6 ], [ 2, %2 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TEXT_OT_convert_whitespace(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.60, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.61, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.62, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_convert_whitespace_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.63, ptr noundef nonnull @whitespace_type_items, i32 noundef 0, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_convert_whitespace_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !114 {
  %3 = alloca %struct.FlattenString, align 8
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %5 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 1304, ptr nonnull %3) #17
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = tail call i32 @RNA_enum_get(ptr noundef %7, ptr noundef nonnull @.str.63) #15
  %9 = getelementptr inbounds %struct.Text, ptr %5, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %68, label %12

12:                                               ; preds = %2, %63
  %13 = phi ptr [ %66, %63 ], [ %10, %2 ]
  %14 = getelementptr inbounds %struct.TextLine, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !115
  %16 = getelementptr inbounds %struct.TextLine, ptr %13, i64 0, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !116
  %18 = call i32 @flatten_string(ptr noundef %4, ptr noundef nonnull %3, ptr noundef %15) #15
  %19 = add nsw i32 %18, 1
  call void @flatten_string_free(ptr noundef nonnull %3) #15
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %21 = sext i32 %19 to i64
  %22 = call ptr %20(i64 noundef %21, ptr noundef nonnull @.str.171) #15
  %23 = sext i32 %17 to i64
  %24 = icmp eq i32 %17, 0
  br i1 %24, label %50, label %25

25:                                               ; preds = %12, %46
  %26 = phi i64 [ %48, %46 ], [ 0, %12 ]
  %27 = phi i64 [ %47, %46 ], [ 0, %12 ]
  %28 = getelementptr inbounds i8, ptr %15, i64 %26
  %29 = load i8, ptr %28, align 1, !tbaa !117
  %30 = icmp eq i8 %29, 9
  %31 = getelementptr i8, ptr %22, i64 %27
  br i1 %30, label %32, label %44

32:                                               ; preds = %25
  store i8 0, ptr %31, align 1, !tbaa !117
  %33 = call i32 @flatten_string(ptr noundef %4, ptr noundef nonnull %3, ptr noundef %22) #15
  call void @flatten_string_free(ptr noundef nonnull %3) #15
  store i8 9, ptr %31, align 1, !tbaa !117
  %34 = getelementptr i8, ptr %31, i64 1
  store i8 0, ptr %34, align 1, !tbaa !117
  %35 = call i32 @flatten_string(ptr noundef %4, ptr noundef nonnull %3, ptr noundef %22) #15
  call void @flatten_string_free(ptr noundef nonnull %3) #15
  %36 = icmp sgt i32 %35, %33
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = xor i32 %33, -1
  %39 = add i32 %35, %38
  %40 = zext i32 %39 to i64
  %41 = add nuw nsw i64 %40, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %31, i8 32, i64 %41, i1 false), !tbaa !117
  %42 = add i64 %27, 1
  %43 = add i64 %42, %40
  br label %46

44:                                               ; preds = %25
  store i8 %29, ptr %31, align 1, !tbaa !117
  %45 = add i64 %27, 1
  br label %46

46:                                               ; preds = %37, %32, %44
  %47 = phi i64 [ %45, %44 ], [ %27, %32 ], [ %43, %37 ]
  %48 = add nuw i64 %26, 1
  %49 = icmp eq i64 %48, %23
  br i1 %49, label %50, label %25, !llvm.loop !118

50:                                               ; preds = %46, %12
  %51 = phi i64 [ 0, %12 ], [ %47, %46 ]
  %52 = getelementptr inbounds i8, ptr %22, i64 %51
  store i8 0, ptr %52, align 1, !tbaa !117
  %53 = load ptr, ptr %14, align 8, !tbaa !115
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %56(ptr noundef nonnull %53) #15
  br label %57

57:                                               ; preds = %55, %50
  %58 = getelementptr inbounds %struct.TextLine, ptr %13, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !44
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %62(ptr noundef nonnull %59) #15
  br label %63

63:                                               ; preds = %61, %57
  store ptr %22, ptr %14, align 8, !tbaa !115
  %64 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22) #18
  %65 = trunc i64 %64 to i32
  store i32 %65, ptr %16, align 8, !tbaa !116
  store ptr null, ptr %58, align 8, !tbaa !44
  %66 = load ptr, ptr %13, align 8, !tbaa !46
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %12, !llvm.loop !119

68:                                               ; preds = %63, %2
  %69 = icmp eq i32 %8, 1
  br i1 %69, label %70, label %183

70:                                               ; preds = %68
  %71 = load ptr, ptr %9, align 8, !tbaa !46
  %72 = icmp eq ptr %71, null
  br i1 %72, label %183, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 16
  br label %75

75:                                               ; preds = %73, %180
  %76 = phi ptr [ %71, %73 ], [ %181, %180 ]
  %77 = getelementptr inbounds %struct.TextLine, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !115
  %79 = getelementptr inbounds %struct.TextLine, ptr %76, i64 0, i32 4
  %80 = load i32, ptr %79, align 8, !tbaa !116
  %81 = sext i32 %80 to i64
  %82 = icmp eq i32 %80, 0
  br i1 %82, label %180, label %83

83:                                               ; preds = %75
  %84 = load i32, ptr %74, align 8, !tbaa !109
  %85 = sext i32 %84 to i64
  %86 = icmp eq i32 %84, 0
  %87 = add nsw i32 %84, -1
  br label %88

88:                                               ; preds = %83, %105
  %89 = phi i64 [ 0, %83 ], [ %113, %105 ]
  %90 = phi i32 [ 0, %83 ], [ %109, %105 ]
  br i1 %86, label %105, label %91

91:                                               ; preds = %88, %101
  %92 = phi i64 [ %103, %101 ], [ 0, %88 ]
  %93 = phi i32 [ %102, %101 ], [ 0, %88 ]
  %94 = add i64 %92, %89
  %95 = icmp ugt i64 %94, %81
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds i8, ptr %78, i64 %94
  %98 = load i8, ptr %97, align 1, !tbaa !117
  %99 = icmp eq i8 %98, 32
  %100 = select i1 %99, i32 %93, i32 1
  br label %101

101:                                              ; preds = %96, %91
  %102 = phi i32 [ %93, %91 ], [ %100, %96 ]
  %103 = add nuw i64 %92, 1
  %104 = icmp eq i64 %103, %85
  br i1 %104, label %105, label %91, !llvm.loop !120

105:                                              ; preds = %101, %88
  %106 = phi i32 [ 0, %88 ], [ %102, %101 ]
  %107 = icmp eq i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = add nuw nsw i32 %90, %108
  %110 = select i1 %107, i32 %87, i32 0
  %111 = sext i32 %110 to i64
  %112 = add i64 %89, 1
  %113 = add i64 %112, %111
  %114 = icmp ult i64 %113, %81
  br i1 %114, label %88, label %115, !llvm.loop !121

115:                                              ; preds = %105
  %116 = icmp eq i32 %109, 0
  br i1 %116, label %180, label %117

117:                                              ; preds = %115
  %118 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %119 = load i32, ptr %74, align 8, !tbaa !109
  %120 = sub i32 1, %119
  %121 = mul i32 %120, %109
  %122 = add i32 %80, 1
  %123 = add i32 %122, %121
  %124 = sext i32 %123 to i64
  %125 = call ptr %118(i64 noundef %124, ptr noundef nonnull @.str.171) #15
  br i1 %82, label %163, label %126

126:                                              ; preds = %117, %158
  %127 = phi i64 [ %160, %158 ], [ 0, %117 ]
  %128 = phi i64 [ %161, %158 ], [ 0, %117 ]
  %129 = load i32, ptr %74, align 8, !tbaa !109
  %130 = sext i32 %129 to i64
  %131 = icmp eq i32 %129, 0
  br i1 %131, label %148, label %132

132:                                              ; preds = %126, %142
  %133 = phi i64 [ %144, %142 ], [ 0, %126 ]
  %134 = phi i32 [ %143, %142 ], [ 0, %126 ]
  %135 = add i64 %133, %128
  %136 = icmp ugt i64 %135, %81
  br i1 %136, label %142, label %137

137:                                              ; preds = %132
  %138 = getelementptr inbounds i8, ptr %78, i64 %135
  %139 = load i8, ptr %138, align 1, !tbaa !117
  %140 = icmp eq i8 %139, 32
  %141 = select i1 %140, i32 %134, i32 1
  br label %142

142:                                              ; preds = %137, %132
  %143 = phi i32 [ %134, %132 ], [ %141, %137 ]
  %144 = add nuw i64 %133, 1
  %145 = icmp eq i64 %144, %130
  br i1 %145, label %146, label %132, !llvm.loop !122

146:                                              ; preds = %142
  %147 = icmp eq i32 %143, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %126, %146
  %149 = getelementptr inbounds i8, ptr %125, i64 %127
  store i8 9, ptr %149, align 1, !tbaa !117
  %150 = load i32, ptr %74, align 8, !tbaa !109
  %151 = add nsw i32 %150, -1
  %152 = sext i32 %151 to i64
  %153 = add i64 %128, %152
  br label %158

154:                                              ; preds = %146
  %155 = getelementptr inbounds i8, ptr %78, i64 %128
  %156 = load i8, ptr %155, align 1, !tbaa !117
  %157 = getelementptr inbounds i8, ptr %125, i64 %127
  store i8 %156, ptr %157, align 1, !tbaa !117
  br label %158

158:                                              ; preds = %148, %154
  %159 = phi i64 [ %128, %154 ], [ %153, %148 ]
  %160 = add nuw i64 %127, 1
  %161 = add i64 %159, 1
  %162 = icmp ult i64 %161, %81
  br i1 %162, label %126, label %163, !llvm.loop !123

163:                                              ; preds = %158, %117
  %164 = phi i64 [ 0, %117 ], [ %160, %158 ]
  %165 = and i64 %164, 4294967295
  %166 = getelementptr inbounds i8, ptr %125, i64 %165
  store i8 0, ptr %166, align 1, !tbaa !117
  %167 = load ptr, ptr %77, align 8, !tbaa !115
  %168 = icmp eq ptr %167, null
  br i1 %168, label %171, label %169

169:                                              ; preds = %163
  %170 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %170(ptr noundef nonnull %167) #15
  br label %171

171:                                              ; preds = %169, %163
  %172 = getelementptr inbounds %struct.TextLine, ptr %76, i64 0, i32 3
  %173 = load ptr, ptr %172, align 8, !tbaa !44
  %174 = icmp eq ptr %173, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %171
  %176 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %176(ptr noundef nonnull %173) #15
  br label %177

177:                                              ; preds = %175, %171
  store ptr %125, ptr %77, align 8, !tbaa !115
  %178 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %125) #18
  %179 = trunc i64 %178 to i32
  store i32 %179, ptr %79, align 8, !tbaa !116
  store ptr null, ptr %172, align 8, !tbaa !44
  br label %180

180:                                              ; preds = %75, %177, %115
  %181 = load ptr, ptr %76, align 8, !tbaa !46
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %75, !llvm.loop !124

183:                                              ; preds = %180, %70, %68
  call void @text_update_edited(ptr noundef %5) #16
  call void @text_update_cursor_moved(ptr noundef %0) #15
  call void @text_drawcache_tag_update(ptr noundef %4, i32 noundef 1) #15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %5) #15
  call void @llvm.lifetime.end.p0(i64 1304, ptr nonnull %3) #17
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_select_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.66, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.67, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.68, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_select_all_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_select_all_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !125 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  tail call void @txt_sel_all(ptr noundef %3) #15
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %3) #15
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_select_line(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.69, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.70, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.71, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_select_line_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_select_line_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !126 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  tail call void @txt_sel_line(ptr noundef %3) #15
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %3) #15
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_select_word(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.72, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.73, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.74, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_select_word_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_select_word_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !127 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  tail call void @txt_jump_left(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  tail call void @txt_jump_right(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %3) #15
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TEXT_OT_move_lines(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.80, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.81, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.82, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @move_lines_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.83, ptr noundef nonnull @TEXT_OT_move_lines.direction_items, i32 noundef 1, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.77) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @move_lines_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !128 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.83) #15
  tail call void @txt_move_lines(ptr noundef %3, i32 noundef %6) #15
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %3) #15
  %7 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TEXT_OT_move(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.85, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.86, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.87, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_move_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.63, ptr noundef nonnull @move_type_items, i32 noundef 0, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.88) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !129 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.63) #15
  tail call fastcc void @text_move_cursor(ptr noundef %0, i32 noundef %5, i8 noundef zeroext 0) #16
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TEXT_OT_move_select(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.89, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.90, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.91, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_move_select_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_space_edit_poll, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.63, ptr noundef nonnull @move_type_items, i32 noundef 0, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.92) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_move_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !130 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = tail call i32 @RNA_enum_get(ptr noundef %4, ptr noundef nonnull @.str.63) #15
  tail call fastcc void @text_move_cursor(ptr noundef %0, i32 noundef %5, i8 noundef zeroext 1) #16
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TEXT_OT_jump(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.93, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.94, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.95, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @text_jump_invoke, ptr %4, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_jump_exec, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %6, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.96, i32 noundef 1, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.98, i32 noundef 1, i32 noundef 10000) #15
  tail call void @RNA_def_property_translation_context(ptr noundef %9, ptr noundef nonnull @.str.99) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @text_jump_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !131 {
  %4 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !132
  %5 = sext i16 %4 to i32
  %6 = mul nsw i32 %5, 10
  %7 = mul nsw i32 %5, 5
  %8 = tail call i32 @WM_operator_props_dialog_popup(ptr noundef %0, ptr noundef %1, i32 noundef %6, i32 noundef %7) #15
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_jump_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !136 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = tail call i32 @RNA_int_get(ptr noundef %5, ptr noundef nonnull @.str.96) #15
  %7 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !137
  %9 = getelementptr inbounds %struct.Text, ptr %3, i64 0, i32 4, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !138
  %11 = tail call i32 @txt_get_span(ptr noundef %8, ptr noundef %10) #15
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
  tail call void @txt_move_toline(ptr noundef nonnull %3, i32 noundef %23, i8 noundef zeroext 0) #15
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef nonnull %3) #15
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_translation_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TEXT_OT_delete(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.100, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.101, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.102, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_delete_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.63, ptr noundef nonnull @delete_type_items, i32 noundef 0, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.103) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_delete_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !139 {
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %4 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.63) #15
  tail call void @text_drawcache_tag_update(ptr noundef %3, i32 noundef 0) #15
  %8 = tail call zeroext i8 @txt_has_sel(ptr noundef %4) #15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  switch i32 %7, label %24 [
    i32 3, label %17
    i32 2, label %23
    i32 1, label %17
    i32 0, label %23
  ]

11:                                               ; preds = %2
  switch i32 %7, label %24 [
    i32 3, label %12
    i32 1, label %17
    i32 2, label %18
    i32 0, label %23
  ]

12:                                               ; preds = %11
  %13 = tail call zeroext i8 @txt_cursor_is_line_start(ptr noundef %4) #15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @txt_backspace_char(ptr noundef %4) #15
  br label %16

16:                                               ; preds = %15, %12
  tail call void @txt_backspace_word(ptr noundef %4) #15
  br label %24

17:                                               ; preds = %10, %10, %11
  tail call void @txt_backspace_char(ptr noundef %4) #15
  br label %24

18:                                               ; preds = %11
  %19 = tail call zeroext i8 @txt_cursor_is_line_end(ptr noundef %4) #15
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @txt_delete_char(ptr noundef %4) #15
  br label %22

22:                                               ; preds = %21, %18
  tail call void @txt_delete_word(ptr noundef %4) #15
  br label %24

23:                                               ; preds = %10, %10, %11
  tail call void @txt_delete_char(ptr noundef %4) #15
  br label %24

24:                                               ; preds = %10, %11, %17, %23, %22, %16
  %25 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !84
  tail call void @text_update_line_edited(ptr noundef %26) #16
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %4) #15
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_overwrite_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.104, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.105, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.106, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_toggle_overwrite_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_space_edit_poll, ptr %5, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_toggle_overwrite_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !140 {
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 19
  %5 = load i16, ptr %4, align 8, !tbaa !141
  %6 = icmp eq i16 %5, 0
  %7 = zext i1 %6 to i16
  store i16 %7, ptr %4, align 8, !tbaa !141
  %8 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %9) #15
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TEXT_OT_scroll(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.107, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.108, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.77, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_scroll_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @text_scroll_invoke, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @text_scroll_modal, ptr %6, align 8, !tbaa !142
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @text_scroll_cancel, ptr %7, align 8, !tbaa !67
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_scroll_poll, ptr %8, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 84, ptr %9, align 8, !tbaa !56
  %10 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = tail call ptr @RNA_def_int(ptr noundef %11, ptr noundef nonnull @.str.109, i32 noundef 1, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, i32 noundef -100, i32 noundef 100) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_scroll_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !143 {
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.109) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 21), align 2, !tbaa !144
  %11 = sext i16 %10 to i32
  %12 = mul nsw i32 %7, %11
  tail call fastcc void @txt_screen_skip(ptr noundef %3, ptr noundef %4, i32 noundef %12) #16
  %13 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  tail call void @ED_area_tag_redraw(ptr noundef %13) #15
  br label %14

14:                                               ; preds = %2, %9
  %15 = phi i32 [ 4, %9 ], [ 2, %2 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_scroll_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !145 {
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %6, ptr noundef nonnull @.str.109) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @text_scroll_exec(ptr noundef %0, ptr noundef nonnull %1) #16, !range !81
  br label %52

11:                                               ; preds = %3
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %13 = tail call ptr %12(i64 noundef 28, ptr noundef nonnull @.str.200) #15
  %14 = getelementptr inbounds %struct.TextScroll, ptr %13, i64 0, i32 2
  store i32 1, ptr %14, align 4, !tbaa !146
  %15 = getelementptr inbounds %struct.TextScroll, ptr %13, i64 0, i32 4
  store i32 0, ptr %15, align 4, !tbaa !148
  %16 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %13, ptr %16, align 8, !tbaa !74
  %17 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 9
  %18 = load i16, ptr %17, align 8, !tbaa !149
  %19 = or i16 %18, 1
  store i16 %19, ptr %17, align 8, !tbaa !149
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !150
  %22 = icmp eq i16 %21, 14
  br i1 %22, label %23, label %50

23:                                               ; preds = %11
  tail call void @text_update_character_width(ptr noundef nonnull %4) #15
  %24 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !152
  store i32 %25, ptr %13, align 4, !tbaa !153
  %26 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !154
  %28 = getelementptr inbounds [2 x i32], ptr %13, i64 0, i64 1
  store i32 %27, ptr %28, align 4, !tbaa !153
  %29 = load i32, ptr %24, align 4, !tbaa !152
  %30 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 12
  %31 = load i32, ptr %30, align 8, !tbaa !155
  %32 = sub nsw i32 %29, %31
  %33 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 12
  %34 = load i8, ptr %33, align 2, !tbaa !156
  %35 = zext i8 %34 to i32
  %36 = mul nsw i32 %32, %35
  %37 = sdiv i32 %36, 4
  %38 = getelementptr inbounds %struct.TextScroll, ptr %13, i64 0, i32 1
  store i32 %37, ptr %38, align 4, !tbaa !153
  %39 = load i32, ptr %26, align 8, !tbaa !154
  %40 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 13
  %41 = load i32, ptr %40, align 4, !tbaa !157
  %42 = sub nsw i32 %39, %41
  %43 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 29
  %44 = load i16, ptr %43, align 2, !tbaa !158
  %45 = sext i16 %44 to i32
  %46 = mul nsw i32 %42, %45
  %47 = sdiv i32 %46, 4
  %48 = getelementptr inbounds %struct.TextScroll, ptr %13, i64 0, i32 1, i64 1
  store i32 %47, ptr %48, align 4, !tbaa !153
  store i32 0, ptr %14, align 4, !tbaa !146
  %49 = getelementptr inbounds %struct.TextScroll, ptr %13, i64 0, i32 3
  store i32 0, ptr %49, align 4, !tbaa !159
  tail call fastcc void @text_scroll_apply(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #16
  tail call fastcc void @scroll_exit(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %52

50:                                               ; preds = %11
  %51 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #15
  br label %52

52:                                               ; preds = %50, %23, %9
  %53 = phi i32 [ %10, %9 ], [ 4, %23 ], [ 1, %50 ]
  ret i32 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_scroll_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !160 {
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %7 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %9 = load i16, ptr %8, align 8, !tbaa !150
  switch i16 %9, label %28 [
    i16 4, label %10
    i16 1, label %15
    i16 3, label %15
    i16 2, label %15
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.TextScroll, ptr %5, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !148
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  tail call fastcc void @text_scroll_apply(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #16
  br label %28

15:                                               ; preds = %3, %3, %3
  %16 = getelementptr inbounds %struct.TextScroll, ptr %5, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !148
  %18 = add i32 %17, -1
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.SpaceText, ptr %6, i64 0, i32 8
  %22 = load i32, ptr %21, align 4, !tbaa !161
  %23 = icmp eq i32 %17, 1
  %24 = sub nsw i32 0, %22
  %25 = select i1 %23, i32 %22, i32 %24
  tail call fastcc void @txt_screen_skip(ptr noundef %6, ptr noundef %7, i32 noundef %25) #16
  %26 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  tail call void @ED_area_tag_redraw(ptr noundef %26) #15
  br label %27

27:                                               ; preds = %15, %20
  tail call fastcc void @scroll_exit(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %28

28:                                               ; preds = %3, %14, %10, %27
  %29 = phi i32 [ 4, %27 ], [ 1, %10 ], [ 1, %14 ], [ 1, %3 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @text_scroll_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !162 {
  tail call fastcc void @scroll_exit(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @text_scroll_poll(ptr noundef %0) #0 !PGOFuncName !163 {
  %2 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %3 = icmp ne ptr %2, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TEXT_OT_scroll_bar(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.112, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.113, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.77, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @text_scroll_bar_invoke, ptr %4, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @text_scroll_modal, ptr %5, align 8, !tbaa !142
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @text_scroll_cancel, ptr %6, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_region_scroll_poll, ptr %7, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 68, ptr %8, align 8, !tbaa !56
  %9 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !68
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.109, i32 noundef 1, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, i32 noundef -100, i32 noundef 100) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_scroll_bar_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !164 {
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %7, ptr noundef nonnull @.str.109) #15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @text_scroll_exec(ptr noundef %0, ptr noundef nonnull %1) #16, !range !81
  br label %72

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !153
  %15 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 23
  %16 = load i32, ptr %15, align 8, !tbaa !165
  %17 = icmp sgt i32 %14, %16
  br i1 %17, label %18, label %72

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 23, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !166
  %21 = icmp slt i32 %14, %20
  br i1 %21, label %22, label %72

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !153
  %25 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 23, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !167
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 23, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !168
  %31 = icmp sgt i32 %24, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28, %22
  %33 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !132
  %34 = sitofp i16 %33 to float
  %35 = fmul float %34, 0x3FB99999A0000000
  %36 = fptosi float %35 to i32
  %37 = icmp sgt i32 %24, %36
  br i1 %37, label %38, label %72

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 6
  %40 = load i16, ptr %39, align 2, !tbaa !169
  %41 = sext i16 %40 to i32
  %42 = sub nsw i32 %41, %36
  %43 = icmp slt i32 %24, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %38
  %45 = select i1 %27, i32 1, i32 2
  br label %46

46:                                               ; preds = %28, %44
  %47 = phi i32 [ 0, %28 ], [ %45, %44 ]
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %49 = tail call ptr %48(i64 noundef 28, ptr noundef nonnull @.str.200) #15
  %50 = getelementptr inbounds %struct.TextScroll, ptr %49, i64 0, i32 2
  store i32 1, ptr %50, align 4, !tbaa !146
  %51 = getelementptr inbounds %struct.TextScroll, ptr %49, i64 0, i32 3
  store i32 1, ptr %51, align 4, !tbaa !159
  %52 = getelementptr inbounds %struct.TextScroll, ptr %49, i64 0, i32 4
  store i32 %47, ptr %52, align 4, !tbaa !148
  %53 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %49, ptr %53, align 8, !tbaa !74
  %54 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 9
  %55 = load i16, ptr %54, align 8, !tbaa !149
  %56 = or i16 %55, 1
  store i16 %56, ptr %54, align 8, !tbaa !149
  %57 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %58 = load i16, ptr %57, align 8, !tbaa !150
  %59 = icmp eq i16 %58, 2
  br i1 %59, label %60, label %70

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 3
  %62 = load i32, ptr %61, align 8, !tbaa !173
  %63 = tail call fastcc i32 @BLI_rcti_cent_x(ptr noundef nonnull %15) #16, !range !174
  %64 = add nsw i32 %63, %62
  store i32 %64, ptr %49, align 4, !tbaa !153
  %65 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 3, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !175
  %67 = tail call fastcc i32 @BLI_rcti_cent_y(ptr noundef nonnull %15) #16, !range !174
  %68 = add nsw i32 %67, %66
  %69 = getelementptr inbounds [2 x i32], ptr %49, i64 0, i64 1
  store i32 %68, ptr %69, align 4, !tbaa !153
  store i32 0, ptr %50, align 4, !tbaa !146
  store i32 0, ptr %52, align 4, !tbaa !148
  tail call fastcc void @text_scroll_apply(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #16
  br label %70

70:                                               ; preds = %60, %46
  %71 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef nonnull %1) #15
  br label %72

72:                                               ; preds = %12, %18, %32, %38, %70, %10
  %73 = phi i32 [ %11, %10 ], [ 1, %70 ], [ 8, %38 ], [ 8, %32 ], [ 8, %18 ], [ 8, %12 ]
  ret i32 %73
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @text_region_scroll_poll(ptr noundef %0) #0 !PGOFuncName !176 {
  %2 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %5 = icmp eq ptr %2, null
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  %8 = icmp eq ptr %4, null
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !177
  %13 = icmp eq i16 %12, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi i32 [ 0, %1 ], [ %14, %10 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TEXT_OT_selection_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.114, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.115, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.116, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @text_set_selection_invoke, ptr %4, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @text_set_selection_modal, ptr %5, align 8, !tbaa !142
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @text_set_selection_cancel, ptr %6, align 8, !tbaa !67
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_region_edit_poll, ptr %7, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.117, i32 noundef 0, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_set_selection_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !178 {
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !153
  %7 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 23
  %8 = load i32, ptr %7, align 8, !tbaa !165
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %3
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %12 = tail call ptr %11(i64 noundef 16, ptr noundef nonnull @.str.201) #15
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %12, ptr %13, align 8, !tbaa !74
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = tail call i32 @RNA_boolean_get(ptr noundef %15, ptr noundef nonnull @.str.117) #15
  store i32 %16, ptr %12, align 4, !tbaa !179
  %17 = getelementptr inbounds %struct.SetSelection, ptr %12, i64 0, i32 3
  %18 = load <2 x i32>, ptr %5, align 4, !tbaa !153
  %19 = trunc <2 x i32> %18 to <2 x i16>
  store <2 x i16> %19, ptr %17, align 4, !tbaa !181
  %20 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = getelementptr inbounds %struct.Text, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !137
  %24 = getelementptr inbounds %struct.Text, ptr %21, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !182
  %26 = tail call i32 @txt_get_span(ptr noundef %23, ptr noundef %25) #15
  %27 = getelementptr inbounds %struct.SetSelection, ptr %12, i64 0, i32 2
  store i32 %26, ptr %27, align 4, !tbaa !183
  %28 = load ptr, ptr %20, align 8, !tbaa !58
  %29 = getelementptr inbounds %struct.Text, ptr %28, i64 0, i32 8
  %30 = load i32, ptr %29, align 4, !tbaa !184
  %31 = getelementptr inbounds %struct.SetSelection, ptr %12, i64 0, i32 1
  store i32 %30, ptr %31, align 4, !tbaa !185
  %32 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #15
  tail call fastcc void @text_cursor_set_apply(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #16
  br label %33

33:                                               ; preds = %3, %10
  %34 = phi i32 [ 1, %10 ], [ 8, %3 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_set_selection_modal(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !186 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !150
  switch i16 %5, label %8 [
    i16 1, label %6
    i16 2, label %6
    i16 3, label %6
    i16 4, label %7
  ]

6:                                                ; preds = %3, %3, %3
  tail call fastcc void @text_cursor_set_exit(ptr noundef %0, ptr noundef %1) #16
  br label %8

7:                                                ; preds = %3
  tail call fastcc void @text_cursor_set_apply(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #16
  br label %8

8:                                                ; preds = %7, %3, %6
  %9 = phi i32 [ 4, %6 ], [ 1, %3 ], [ 1, %7 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @text_set_selection_cancel(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !187 {
  tail call fastcc void @text_cursor_set_exit(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @text_region_edit_poll(ptr noundef %0) #0 !PGOFuncName !188 {
  %2 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %5 = icmp eq ptr %2, null
  %6 = icmp eq ptr %3, null
  %7 = select i1 %5, i1 true, i1 %6
  %8 = icmp eq ptr %4, null
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 8
  %12 = load i16, ptr %11, align 2, !tbaa !177
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TEXT_OT_cursor_set(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.120, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.121, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.122, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @text_cursor_set_invoke, ptr %4, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_cursor_set_exec, ptr %5, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_region_edit_poll, ptr %6, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.123, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.77, i32 noundef -2147483648, i32 noundef 2147483647) #15
  %10 = load ptr, ptr %7, align 8, !tbaa !68
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.125, i32 noundef 0, i32 noundef -2147483648, i32 noundef 2147483647, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.77, i32 noundef -2147483648, i32 noundef 2147483647) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_cursor_set_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !189 {
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !153
  %7 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 23
  %8 = load i32, ptr %7, align 8, !tbaa !165
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  tail call void @RNA_int_set(ptr noundef %12, ptr noundef nonnull @.str.123, i32 noundef %6) #15
  %13 = load ptr, ptr %11, align 8, !tbaa !70
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !153
  tail call void @RNA_int_set(ptr noundef %13, ptr noundef nonnull @.str.125, i32 noundef %15) #15
  %16 = tail call i32 @text_cursor_set_exec(ptr noundef %0, ptr noundef %1) #16
  br label %17

17:                                               ; preds = %3, %10
  ret i32 8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_cursor_set_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !190 {
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.123) #15
  %8 = load ptr, ptr %5, align 8, !tbaa !70
  %9 = tail call i32 @RNA_int_get(ptr noundef %8, ptr noundef nonnull @.str.125) #15
  tail call fastcc void @text_cursor_set_to_pos(ptr noundef %3, ptr noundef %4, i32 noundef %7, i32 noundef %9, i8 noundef zeroext 0) #16
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  %10 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %11) #15
  ret i32 8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_line_number(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.127, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.128, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.129, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @text_line_number_invoke, ptr %4, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_region_edit_poll, ptr %5, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_line_number_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !191 {
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %5 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  tail call void @text_update_character_width(ptr noundef %4) #15
  %7 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 15
  %8 = load i32, ptr %7, align 4, !tbaa !192
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %56, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !153
  %13 = icmp sgt i32 %12, 2
  br i1 %13, label %14, label %56

14:                                               ; preds = %10
  %15 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !132
  %16 = sitofp i16 %15 to float
  %17 = fmul float %16, 5.000000e-01
  %18 = fptosi float %17 to i32
  %19 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 12
  %20 = load i8, ptr %19, align 2, !tbaa !156
  %21 = zext i8 %20 to i32
  %22 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 13
  %23 = load i8, ptr %22, align 1, !tbaa !193
  %24 = zext i8 %23 to i32
  %25 = mul nuw nsw i32 %24, %21
  %26 = add nsw i32 %25, %18
  %27 = icmp slt i32 %12, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %30 = load i32, ptr %29, align 4, !tbaa !153
  %31 = icmp sgt i32 %30, 2
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 6
  %34 = load i16, ptr %33, align 2, !tbaa !169
  %35 = sext i16 %34 to i32
  %36 = add nsw i32 %35, -2
  %37 = icmp slt i32 %30, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 8
  %40 = load i8, ptr %39, align 2, !tbaa !194
  %41 = add i8 %40, -48
  %42 = icmp ult i8 %41, 10
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = tail call double @PIL_check_seconds_timer() #15
  %45 = load double, ptr @text_line_number_invoke.last_jump, align 8, !tbaa !195
  %46 = fadd double %44, -1.000000e+00
  %47 = fcmp olt double %45, %46
  %48 = load i32, ptr @text_line_number_invoke.jump_to, align 4
  %49 = mul nsw i32 %48, 10
  %50 = add i32 %49, -48
  %51 = load i8, ptr %39, align 2, !tbaa !194
  %52 = zext i8 %51 to i32
  %53 = select i1 %47, i32 -48, i32 %50
  %54 = add i32 %53, %52
  store i32 %54, ptr @text_line_number_invoke.jump_to, align 4, !tbaa !153
  %55 = add nsw i32 %54, -1
  tail call void @txt_move_toline(ptr noundef %5, i32 noundef %55, i8 noundef zeroext 0) #15
  store double %44, ptr @text_line_number_invoke.last_jump, align 8, !tbaa !195
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %5) #15
  br label %56

56:                                               ; preds = %38, %10, %14, %28, %32, %3, %43
  %57 = phi i32 [ 4, %43 ], [ 8, %3 ], [ 8, %32 ], [ 8, %28 ], [ 8, %14 ], [ 8, %10 ], [ 8, %38 ]
  ret i32 %57
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TEXT_OT_insert(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.130, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.131, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.132, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_insert_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @text_insert_invoke, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %6, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.133, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.134) #15
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_insert_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !196 {
  %3 = alloca i64, align 8
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %5 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store i64 0, ptr %3, align 8, !tbaa !197
  tail call void @text_drawcache_tag_update(ptr noundef %4, i32 noundef 0) #15
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  %8 = tail call ptr @RNA_string_get_alloc(ptr noundef %7, ptr noundef nonnull @.str.133, ptr noundef null, i32 noundef 0) #15
  %9 = icmp eq ptr %4, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 19
  %12 = load i16, ptr %11, align 8, !tbaa !141
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = load i8, ptr %8, align 1, !tbaa !117
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %14, %17
  %18 = phi i8 [ %21, %17 ], [ 0, %14 ]
  %19 = call i32 @BLI_str_utf8_as_unicode_step(ptr noundef nonnull %8, ptr noundef nonnull %3) #15
  %20 = call zeroext i8 @txt_replace_char(ptr noundef %5, i32 noundef %19) #15
  %21 = or i8 %20, %18
  %22 = load i64, ptr %3, align 8, !tbaa !197
  %23 = getelementptr inbounds i8, ptr %8, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !117
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %40, label %17, !llvm.loop !199

26:                                               ; preds = %10, %2
  %27 = load i8, ptr %8, align 1, !tbaa !117
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %26, %29
  %30 = phi i8 [ %33, %29 ], [ 0, %26 ]
  %31 = call i32 @BLI_str_utf8_as_unicode_step(ptr noundef nonnull %8, ptr noundef nonnull %3) #15
  %32 = call zeroext i8 @txt_add_char(ptr noundef %5, i32 noundef %31) #15
  %33 = or i8 %32, %30
  %34 = load i64, ptr %3, align 8, !tbaa !197
  %35 = getelementptr inbounds i8, ptr %8, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !117
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %29, !llvm.loop !200

38:                                               ; preds = %26, %14
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %39(ptr noundef nonnull %8) #15
  br label %47

40:                                               ; preds = %17, %29
  %41 = phi i8 [ %33, %29 ], [ %21, %17 ]
  %42 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  call void %42(ptr noundef nonnull %8) #15
  %43 = icmp eq i8 %41, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.Text, ptr %5, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !84
  call void @text_update_line_edited(ptr noundef %46) #16
  call void @text_update_cursor_moved(ptr noundef %0) #15
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef %5) #15
  br label %47

47:                                               ; preds = %38, %40, %44
  %48 = phi i32 [ 4, %44 ], [ 2, %40 ], [ 2, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret i32 %48
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_insert_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !201 {
  %4 = alloca [7 x i8], align 1
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = tail call i32 @RNA_string_length(ptr noundef %6, ptr noundef nonnull @.str.133) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %11 = load i16, ptr %10, align 2, !tbaa !202
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 20
  %15 = load i16, ptr %14, align 2, !tbaa !203
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 7
  %19 = load i8, ptr %18, align 4, !tbaa !117
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #17
  br label %26

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 7
  %24 = load i8, ptr %23, align 4, !tbaa !117
  %25 = icmp eq i8 %24, 0
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #17
  br i1 %25, label %30, label %26

26:                                               ; preds = %21, %22
  %27 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 7
  %28 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %27) #15
  %29 = sext i32 %28 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %4, ptr nonnull align 4 %27, i64 %29, i1 false)
  br label %35

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 8
  %32 = load i8, ptr %31, align 2, !tbaa !194
  %33 = zext i8 %32 to i32
  %34 = call i64 @BLI_str_utf8_from_unicode(i32 noundef %33, ptr noundef nonnull %4) #15
  br label %35

35:                                               ; preds = %30, %26
  %36 = phi i64 [ %29, %26 ], [ %34, %30 ]
  %37 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 %36
  store i8 0, ptr %37, align 1, !tbaa !117
  %38 = load ptr, ptr %5, align 8, !tbaa !70
  call void @RNA_string_set(ptr noundef %38, ptr noundef nonnull @.str.133, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #17
  br label %39

39:                                               ; preds = %35, %3
  %40 = call i32 @text_insert_exec(ptr noundef %0, ptr noundef nonnull %1) #16, !range !81
  %41 = icmp eq i32 %40, 4
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call ptr @CTX_wm_space_text(ptr noundef %0) #15
  br label %44

44:                                               ; preds = %42, %39, %17
  %45 = phi i32 [ 8, %17 ], [ %40, %39 ], [ 4, %42 ]
  ret i32 %45
}

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_find(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.135, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.136, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.137, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_find_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_space_edit_poll, ptr %5, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_find_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !204 {
  %3 = tail call fastcc i32 @text_find_and_replace(ptr noundef %0, ptr noundef %1, i16 noundef signext 0) #16, !range !81
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_replace(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.138, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.139, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.140, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_replace_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_space_edit_poll, ptr %5, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_replace_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !205 {
  %3 = tail call fastcc i32 @text_find_and_replace(ptr noundef %0, ptr noundef %1, i16 noundef signext 1) #16, !range !81
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_find_set_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.141, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.142, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.143, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_find_set_selected_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_space_edit_poll, ptr %5, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_find_set_selected_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !206 {
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %4 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %5 = tail call ptr @txt_sel_to_buf(ptr noundef %4) #15
  %6 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 26
  %7 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %5, i64 noundef 256) #15
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %8(ptr noundef %5) #15
  %9 = load i8, ptr %6, align 8, !tbaa !117
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call fastcc i32 @text_find_and_replace(ptr noundef %0, ptr noundef %1, i16 noundef signext 0) #16, !range !81
  br label %13

13:                                               ; preds = %2, %11
  %14 = phi i32 [ %12, %11 ], [ 4, %2 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @TEXT_OT_replace_set_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.144, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.145, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.146, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_replace_set_selected_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_space_edit_poll, ptr %5, align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_replace_set_selected_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !207 {
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %4 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %5 = tail call ptr @txt_sel_to_buf(ptr noundef %4) #15
  %6 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 27
  %7 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %5, i64 noundef 256) #15
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %8(ptr noundef %5) #15
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TEXT_OT_resolve_conflict(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.147, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.148, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.149, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_resolve_conflict_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @text_resolve_conflict_invoke, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_save_poll, ptr %6, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.150, ptr noundef nonnull @resolution_items, i32 noundef 0, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.152) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_resolve_conflict_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !208 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.150) #15
  switch i32 %6, label %14 [
    i32 1, label %7
    i32 2, label %9
    i32 3, label %11
    i32 0, label %13
  ]

7:                                                ; preds = %2
  %8 = tail call i32 @text_reload_exec(ptr noundef %0, ptr noundef nonnull %1) #16, !range !81
  br label %14

9:                                                ; preds = %2
  %10 = tail call i32 @text_save_exec(ptr noundef %0, ptr noundef nonnull %1) #16
  br label %14

11:                                               ; preds = %2
  %12 = tail call i32 @text_make_internal_exec(ptr noundef %0, ptr nonnull poison) #16
  br label %14

13:                                               ; preds = %2
  tail call void @BKE_text_file_modified_ignore(ptr noundef %3) #15
  br label %14

14:                                               ; preds = %2, %13, %11, %9, %7
  %15 = phi i32 [ 4, %13 ], [ 4, %11 ], [ 4, %9 ], [ %8, %7 ], [ 2, %2 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_resolve_conflict_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !209 {
  %4 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %5 = tail call i32 @BKE_text_file_modified_check(ptr noundef %4) #15
  switch i32 %5, label %32 [
    i32 1, label %6
    i32 2, label %24
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.Text, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !93
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  br i1 %10, label %18, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.203, i32 noundef 0) #15
  %14 = tail call ptr @uiPupMenuLayout(ptr noundef %13) #15
  %15 = load ptr, ptr %11, align 8, !tbaa !210
  tail call void @uiItemEnumO_ptr(ptr noundef %14, ptr noundef %15, ptr noundef nonnull @.str.204, i32 noundef 0, ptr noundef nonnull @.str.150, i32 noundef 1) #15
  %16 = load ptr, ptr %11, align 8, !tbaa !210
  tail call void @uiItemEnumO_ptr(ptr noundef %14, ptr noundef %16, ptr noundef nonnull @.str.205, i32 noundef 0, ptr noundef nonnull @.str.150, i32 noundef 2) #15
  %17 = load ptr, ptr %11, align 8, !tbaa !210
  tail call void @uiItemEnumO_ptr(ptr noundef %14, ptr noundef %17, ptr noundef nonnull @.str.206, i32 noundef 0, ptr noundef nonnull @.str.150, i32 noundef 3) #15
  br label %30

18:                                               ; preds = %6
  %19 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.207, i32 noundef 0) #15
  %20 = tail call ptr @uiPupMenuLayout(ptr noundef %19) #15
  %21 = load ptr, ptr %11, align 8, !tbaa !210
  tail call void @uiItemEnumO_ptr(ptr noundef %20, ptr noundef %21, ptr noundef nonnull @.str.208, i32 noundef 0, ptr noundef nonnull @.str.150, i32 noundef 1) #15
  %22 = load ptr, ptr %11, align 8, !tbaa !210
  tail call void @uiItemEnumO_ptr(ptr noundef %20, ptr noundef %22, ptr noundef nonnull @.str.206, i32 noundef 0, ptr noundef nonnull @.str.150, i32 noundef 3) #15
  %23 = load ptr, ptr %11, align 8, !tbaa !210
  tail call void @uiItemEnumO_ptr(ptr noundef %20, ptr noundef %23, ptr noundef nonnull @.str.209, i32 noundef 0, ptr noundef nonnull @.str.150, i32 noundef 0) #15
  br label %30

24:                                               ; preds = %3
  %25 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.210, i32 noundef 0) #15
  %26 = tail call ptr @uiPupMenuLayout(ptr noundef %25) #15
  %27 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !210
  tail call void @uiItemEnumO_ptr(ptr noundef %26, ptr noundef %28, ptr noundef nonnull @.str.211, i32 noundef 0, ptr noundef nonnull @.str.150, i32 noundef 3) #15
  %29 = load ptr, ptr %27, align 8, !tbaa !210
  tail call void @uiItemEnumO_ptr(ptr noundef %26, ptr noundef %29, ptr noundef nonnull @.str.212, i32 noundef 0, ptr noundef nonnull @.str.150, i32 noundef 2) #15
  br label %30

30:                                               ; preds = %24, %18, %12
  %31 = phi ptr [ %13, %12 ], [ %19, %18 ], [ %25, %24 ]
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %31) #15
  br label %32

32:                                               ; preds = %30, %3
  ret i32 32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @TEXT_OT_to_3d_object(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.153, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.154, ptr %2, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.155, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @text_to_3d_object_exec, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @text_edit_poll, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.156, i32 noundef 0, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.158) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @text_to_3d_object_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !211 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = tail call i32 @RNA_boolean_get(ptr noundef %5, ptr noundef nonnull @.str.156) #15
  %7 = trunc i32 %6 to i8
  tail call void @ED_text_to_object(ptr noundef %0, ptr noundef %3, i8 noundef zeroext %7) #15
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_text_undo_step(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  switch i32 %1, label %8 [
    i32 1, label %6
    i32 -1, label %7
  ]

6:                                                ; preds = %5
  tail call void @txt_do_undo(ptr noundef nonnull %3) #15
  br label %8

7:                                                ; preds = %5
  tail call void @txt_do_redo(ptr noundef nonnull %3) #15
  br label %8

8:                                                ; preds = %5, %7, %6
  tail call void @text_update_edited(ptr noundef nonnull %3) #16
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  %9 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  tail call void @text_drawcache_tag_update(ptr noundef %9, i32 noundef 1) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef nonnull %3) #15
  br label %10

10:                                               ; preds = %2, %8
  ret void
}

; Function Attrs: optsize
declare void @txt_do_undo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_do_redo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @text_update_cursor_moved(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @text_drawcache_tag_update(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_text_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiIDContextProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_pointer_set(ptr noundef, ptr noundef, ptr noundef byval(%struct.PointerRNA) align 8) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_text_load_ex(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @text_open_init(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !PGOFuncName !212 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %4 = tail call ptr %3(i64 noundef 32, ptr noundef nonnull @.str.160) #15
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %4, ptr %5, align 8, !tbaa !74
  %6 = getelementptr inbounds %struct.PropertyPointerRNA, ptr %4, i64 0, i32 1
  tail call void @uiIDContextProperty(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %6) #15
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_text_reload(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @txt_screen_clamp(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !213 {
  %3 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !63
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @text_get_total_lines(ptr noundef nonnull %0, ptr noundef %1) #15
  %8 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 4, !tbaa !161
  %10 = sdiv i32 %9, -2
  %11 = add i32 %10, %7
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %6
  %14 = load i32, ptr %3, align 8, !tbaa !63
  %15 = icmp sgt i32 %14, %11
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %2
  %17 = phi i32 [ 0, %2 ], [ %11, %13 ]
  store i32 %17, ptr %3, align 8, !tbaa !63
  br label %18

18:                                               ; preds = %16, %6, %13
  ret void
}

; Function Attrs: optsize
declare void @txt_move_to(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @text_get_total_lines(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_text_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_libblock_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @txt_write_file(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !214 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %6, i64 noundef 1024) #15
  %8 = load ptr, ptr @G, align 8, !tbaa !72
  %9 = getelementptr inbounds %struct.Main, ptr %8, i64 0, i32 2
  %10 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %4, ptr noundef nonnull %9) #15
  %11 = call ptr @BLI_fopen(ptr noundef nonnull %4, ptr noundef nonnull @.str.162) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = tail call ptr @__errno_location() #19
  %15 = load i32, ptr %14, align 4, !tbaa !153
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = call ptr @strerror(i32 noundef %15) #15
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi ptr [ %18, %17 ], [ @.str.164, %13 ]
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 32, ptr noundef nonnull @.str.163, ptr noundef nonnull %4, ptr noundef %20) #15
  br label %58

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %21, %32
  %26 = phi ptr [ %34, %32 ], [ %23, %21 ]
  %27 = getelementptr inbounds %struct.TextLine, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !115
  %29 = call i32 @fputs(ptr noundef %28, ptr noundef nonnull %11) #16
  %30 = load ptr, ptr %26, align 8, !tbaa !46
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %11) #16
  %34 = load ptr, ptr %26, align 8, !tbaa !46
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %25, !llvm.loop !215

36:                                               ; preds = %25, %32, %21
  %37 = call i32 @fclose(ptr noundef nonnull %11) #16
  %38 = call i32 @BLI_stat(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 12
  %42 = load i64, ptr %41, align 8, !tbaa !216
  %43 = sitofp i64 %42 to double
  %44 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 13
  store double %43, ptr %44, align 8, !tbaa !219
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.165, ptr noundef nonnull %4) #15
  br label %54

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 13
  store double 0.000000e+00, ptr %46, align 8, !tbaa !219
  %47 = tail call ptr @__errno_location() #19
  %48 = load i32, ptr %47, align 4, !tbaa !153
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = call ptr @strerror(i32 noundef %48) #15
  br label %52

52:                                               ; preds = %45, %50
  %53 = phi ptr [ %51, %50 ], [ @.str.167, %45 ]
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %1, i32 noundef 16, ptr noundef nonnull @.str.166, ptr noundef nonnull %4, ptr noundef %53) #15
  br label %54

54:                                               ; preds = %52, %40
  %55 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 2
  %56 = load i32, ptr %55, align 8, !tbaa !93
  %57 = and i32 %56, -2
  store i32 %57, ptr %55, align 8, !tbaa !93
  br label %58

58:                                               ; preds = %54, %19
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #17
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @BLI_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_clipboard_text_get(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_insert_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_duplicate_line(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @txt_copy_clipboard(ptr noundef %0) unnamed_addr #0 !PGOFuncName !220 {
  %2 = tail call fastcc ptr @txt_copy_selected(ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  tail call void @WM_clipboard_text_set(ptr noundef nonnull %2, i8 noundef zeroext 0) #15
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %5(ptr noundef nonnull %2) #15
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @txt_copy_selected(ptr noundef %0) unnamed_addr #0 !PGOFuncName !221 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %133, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = icmp eq ptr %5, null
  br i1 %6, label %133, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !182
  %10 = icmp eq ptr %9, null
  br i1 %10, label %133, label %11

11:                                               ; preds = %7
  %12 = tail call zeroext i8 @txt_has_sel(ptr noundef nonnull %0) #15
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %133, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 8, !tbaa !84
  %16 = load ptr, ptr %8, align 8, !tbaa !182
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !85
  %21 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %22 = load i32, ptr %21, align 4, !tbaa !184
  %23 = tail call i32 @llvm.smin.i32(i32 %20, i32 %22)
  %24 = tail call i32 @llvm.smax.i32(i32 %20, i32 %22)
  br label %44

25:                                               ; preds = %14
  %26 = tail call i32 @txt_get_span(ptr noundef %15, ptr noundef %16) #15
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  %30 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  br label %34

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 7
  %33 = getelementptr inbounds %struct.Text, ptr %0, i64 0, i32 8
  br label %34

34:                                               ; preds = %28, %31
  %35 = phi ptr [ %8, %28 ], [ %4, %31 ]
  %36 = phi ptr [ %4, %28 ], [ %8, %31 ]
  %37 = phi ptr [ %29, %28 ], [ %32, %31 ]
  %38 = phi ptr [ %30, %28 ], [ %33, %31 ]
  %39 = load i32, ptr %38, align 4, !tbaa !153
  %40 = load i32, ptr %37, align 4, !tbaa !153
  %41 = load ptr, ptr %36, align 8, !tbaa !46
  %42 = load ptr, ptr %35, align 8, !tbaa !46
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %44, label %58

44:                                               ; preds = %18, %34
  %45 = phi i32 [ %24, %18 ], [ %39, %34 ]
  %46 = phi i32 [ %23, %18 ], [ %40, %34 ]
  %47 = phi ptr [ %15, %18 ], [ %41, %34 ]
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %49 = add i32 %45, 1
  %50 = sub i32 %49, %46
  %51 = sext i32 %50 to i64
  %52 = tail call ptr %48(i64 noundef %51, ptr noundef nonnull @.str.169) #15
  %53 = getelementptr inbounds %struct.TextLine, ptr %47, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !115
  %55 = sext i32 %46 to i64
  %56 = getelementptr inbounds i8, ptr %54, i64 %55
  %57 = tail call ptr @BLI_strncpy(ptr noundef %52, ptr noundef %56, i64 noundef %51) #15
  br label %133

58:                                               ; preds = %34
  %59 = getelementptr inbounds %struct.TextLine, ptr %42, i64 0, i32 4
  %60 = load i32, ptr %59, align 8, !tbaa !116
  %61 = add i32 %39, 1
  %62 = sub i32 %61, %40
  %63 = add i32 %62, %60
  %64 = load ptr, ptr %42, align 8, !tbaa !222
  %65 = icmp ne ptr %64, null
  %66 = icmp ne ptr %64, %41
  %67 = and i1 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %58, %68
  %69 = phi ptr [ %75, %68 ], [ %64, %58 ]
  %70 = phi i32 [ %74, %68 ], [ %63, %58 ]
  %71 = getelementptr inbounds %struct.TextLine, ptr %69, i64 0, i32 4
  %72 = load i32, ptr %71, align 8, !tbaa !116
  %73 = add i32 %70, 1
  %74 = add i32 %73, %72
  %75 = load ptr, ptr %69, align 8, !tbaa !222
  %76 = icmp ne ptr %75, null
  %77 = icmp ne ptr %75, %41
  %78 = and i1 %76, %77
  br i1 %78, label %68, label %79, !llvm.loop !223

79:                                               ; preds = %68, %58
  %80 = phi i32 [ %63, %58 ], [ %74, %68 ]
  %81 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %82 = add nsw i32 %80, 1
  %83 = sext i32 %82 to i64
  %84 = tail call ptr %81(i64 noundef %83, ptr noundef nonnull @.str.170) #15
  %85 = getelementptr inbounds %struct.TextLine, ptr %42, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !115
  %87 = sext i32 %40 to i64
  %88 = getelementptr inbounds i8, ptr %86, i64 %87
  %89 = load i32, ptr %59, align 8, !tbaa !116
  %90 = sub nsw i32 %89, %40
  %91 = sext i32 %90 to i64
  %92 = tail call ptr @strncpy(ptr noundef %84, ptr noundef %88, i64 noundef %91) #15
  %93 = load i32, ptr %59, align 8, !tbaa !116
  %94 = sub nsw i32 %93, %40
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, ptr %84, i64 %95
  store i8 10, ptr %96, align 1, !tbaa !117
  %97 = add nsw i32 %94, 1
  %98 = load ptr, ptr %42, align 8, !tbaa !222
  %99 = icmp ne ptr %98, null
  %100 = icmp ne ptr %98, %41
  %101 = and i1 %99, %100
  br i1 %101, label %102, label %122

102:                                              ; preds = %79, %102
  %103 = phi ptr [ %118, %102 ], [ %98, %79 ]
  %104 = phi i32 [ %117, %102 ], [ %97, %79 ]
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, ptr %84, i64 %105
  %107 = getelementptr inbounds %struct.TextLine, ptr %103, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !115
  %109 = getelementptr inbounds %struct.TextLine, ptr %103, i64 0, i32 4
  %110 = load i32, ptr %109, align 8, !tbaa !116
  %111 = sext i32 %110 to i64
  %112 = tail call ptr @strncpy(ptr noundef %106, ptr noundef %108, i64 noundef %111) #15
  %113 = load i32, ptr %109, align 8, !tbaa !116
  %114 = add nsw i32 %113, %104
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, ptr %84, i64 %115
  store i8 10, ptr %116, align 1, !tbaa !117
  %117 = add nsw i32 %114, 1
  %118 = load ptr, ptr %103, align 8, !tbaa !222
  %119 = icmp ne ptr %118, null
  %120 = icmp ne ptr %118, %41
  %121 = and i1 %119, %120
  br i1 %121, label %102, label %122, !llvm.loop !224

122:                                              ; preds = %102, %79
  %123 = phi i32 [ %97, %79 ], [ %117, %102 ]
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, ptr %84, i64 %124
  %126 = getelementptr inbounds %struct.TextLine, ptr %41, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !115
  %128 = sext i32 %39 to i64
  %129 = tail call ptr @strncpy(ptr noundef %125, ptr noundef %127, i64 noundef %128) #15
  %130 = add nsw i32 %123, %39
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, ptr %84, i64 %131
  store i8 0, ptr %132, align 1, !tbaa !117
  br label %133

133:                                              ; preds = %44, %122, %11, %7, %3, %1
  %134 = phi ptr [ null, %1 ], [ null, %3 ], [ null, %7 ], [ null, %11 ], [ %52, %44 ], [ %84, %122 ]
  ret ptr %134
}

; Function Attrs: optsize
declare void @WM_clipboard_text_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @txt_has_sel(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @txt_get_span(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @txt_delete_selected(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_order_cursors(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_indent(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @txt_add_char(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_unindent(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @txt_setcurr_tab_spaces(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_split_curline(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_comment(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_uncomment(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @flatten_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @flatten_string_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @txt_sel_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_sel_line(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_jump_left(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_jump_right(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_move_lines(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @text_move_cursor(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !225 {
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %5 = tail call ptr @CTX_data_edit_text(ptr noundef %0) #15
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 8
  %10 = load i16, ptr %9, align 2, !tbaa !177
  %11 = icmp eq i16 %10, 0
  %12 = select i1 %11, ptr %6, ptr null
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi ptr [ %12, %8 ], [ null, %3 ]
  switch i32 %1, label %104 [
    i32 0, label %15
    i32 1, label %28
    i32 2, label %41
    i32 3, label %42
    i32 6, label %43
    i32 7, label %48
    i32 4, label %53
    i32 5, label %60
    i32 8, label %67
    i32 9, label %77
    i32 10, label %87
    i32 11, label %96
  ]

15:                                               ; preds = %13
  %16 = icmp eq i8 %2, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @txt_sel_clear(ptr noundef %5) #15
  br label %18

18:                                               ; preds = %17, %15
  %19 = icmp eq ptr %4, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 24
  %22 = load i32, ptr %21, align 8, !tbaa !226
  %23 = icmp ne i32 %22, 0
  %24 = icmp ne ptr %14, null
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  tail call fastcc void @txt_wrap_move_bol(ptr noundef nonnull %4, ptr noundef nonnull %14, i8 noundef zeroext %2) #16
  br label %104

27:                                               ; preds = %20, %18
  tail call void @txt_move_bol(ptr noundef %5, i8 noundef zeroext %2) #15
  br label %104

28:                                               ; preds = %13
  %29 = icmp eq i8 %2, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  tail call void @txt_sel_clear(ptr noundef %5) #15
  br label %31

31:                                               ; preds = %30, %28
  %32 = icmp eq ptr %4, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 24
  %35 = load i32, ptr %34, align 8, !tbaa !226
  %36 = icmp ne i32 %35, 0
  %37 = icmp ne ptr %14, null
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  tail call fastcc void @txt_wrap_move_eol(ptr noundef nonnull %4, ptr noundef nonnull %14, i8 noundef zeroext %2) #16
  br label %104

40:                                               ; preds = %33, %31
  tail call void @txt_move_eol(ptr noundef %5, i8 noundef zeroext %2) #15
  br label %104

41:                                               ; preds = %13
  tail call void @txt_move_bof(ptr noundef %5, i8 noundef zeroext %2) #15
  br label %104

42:                                               ; preds = %13
  tail call void @txt_move_eof(ptr noundef %5, i8 noundef zeroext %2) #15
  br label %104

43:                                               ; preds = %13
  %44 = tail call zeroext i8 @txt_cursor_is_line_start(ptr noundef %5) #15
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @txt_move_left(ptr noundef %5, i8 noundef zeroext %2) #15
  br label %47

47:                                               ; preds = %46, %43
  tail call void @txt_jump_left(ptr noundef %5, i8 noundef zeroext %2, i8 noundef zeroext 1) #15
  br label %104

48:                                               ; preds = %13
  %49 = tail call zeroext i8 @txt_cursor_is_line_end(ptr noundef %5) #15
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call void @txt_move_right(ptr noundef %5, i8 noundef zeroext %2) #15
  br label %52

52:                                               ; preds = %51, %48
  tail call void @txt_jump_right(ptr noundef %5, i8 noundef zeroext %2, i8 noundef zeroext 1) #15
  br label %104

53:                                               ; preds = %13
  %54 = tail call zeroext i8 @txt_has_sel(ptr noundef %5) #15
  %55 = icmp eq i8 %54, 0
  %56 = icmp ne i8 %2, 0
  %57 = or i1 %56, %55
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  tail call void @txt_order_cursors(ptr noundef %5, i8 noundef zeroext 0) #15
  tail call void @txt_pop_sel(ptr noundef %5) #15
  br label %104

59:                                               ; preds = %53
  tail call void @txt_move_left(ptr noundef %5, i8 noundef zeroext %2) #15
  br label %104

60:                                               ; preds = %13
  %61 = tail call zeroext i8 @txt_has_sel(ptr noundef %5) #15
  %62 = icmp eq i8 %61, 0
  %63 = icmp ne i8 %2, 0
  %64 = or i1 %63, %62
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  tail call void @txt_order_cursors(ptr noundef %5, i8 noundef zeroext 1) #15
  tail call void @txt_pop_sel(ptr noundef %5) #15
  br label %104

66:                                               ; preds = %60
  tail call void @txt_move_right(ptr noundef %5, i8 noundef zeroext %2) #15
  br label %104

67:                                               ; preds = %13
  %68 = icmp eq ptr %4, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 24
  %71 = load i32, ptr %70, align 8, !tbaa !226
  %72 = icmp ne i32 %71, 0
  %73 = icmp ne ptr %14, null
  %74 = select i1 %72, i1 %73, i1 false
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  tail call fastcc void @txt_wrap_move_up(ptr noundef nonnull %4, ptr noundef nonnull %14, i8 noundef zeroext %2) #16
  br label %104

76:                                               ; preds = %69, %67
  tail call void @txt_move_up(ptr noundef %5, i8 noundef zeroext %2) #15
  br label %104

77:                                               ; preds = %13
  %78 = icmp eq ptr %4, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 24
  %81 = load i32, ptr %80, align 8, !tbaa !226
  %82 = icmp ne i32 %81, 0
  %83 = icmp ne ptr %14, null
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  tail call fastcc void @txt_wrap_move_down(ptr noundef nonnull %4, ptr noundef nonnull %14, i8 noundef zeroext %2) #16
  br label %104

86:                                               ; preds = %79, %77
  tail call void @txt_move_down(ptr noundef %5, i8 noundef zeroext %2) #15
  br label %104

87:                                               ; preds = %13
  %88 = icmp eq ptr %4, null
  br i1 %88, label %95, label %89

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !58
  %92 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 8
  %93 = load i32, ptr %92, align 4, !tbaa !161
  %94 = sub nsw i32 0, %93
  tail call fastcc void @cursor_skip(ptr noundef nonnull %4, ptr noundef %14, ptr noundef %91, i32 noundef %94, i8 noundef zeroext %2) #16
  br label %104

95:                                               ; preds = %87
  tail call fastcc void @cursor_skip(ptr noundef null, ptr noundef null, ptr noundef %5, i32 noundef -10, i8 noundef zeroext %2) #16
  br label %104

96:                                               ; preds = %13
  %97 = icmp eq ptr %4, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  %100 = load ptr, ptr %99, align 8, !tbaa !58
  %101 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 8
  %102 = load i32, ptr %101, align 4, !tbaa !161
  tail call fastcc void @cursor_skip(ptr noundef nonnull %4, ptr noundef %14, ptr noundef %100, i32 noundef %102, i8 noundef zeroext %2) #16
  br label %104

103:                                              ; preds = %96
  tail call fastcc void @cursor_skip(ptr noundef null, ptr noundef null, ptr noundef %5, i32 noundef 10, i8 noundef zeroext %2) #16
  br label %104

104:                                              ; preds = %98, %103, %89, %95, %85, %86, %75, %76, %65, %66, %58, %59, %39, %40, %26, %27, %13, %52, %47, %42, %41
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %5) #15
  ret void
}

; Function Attrs: optsize
declare void @txt_sel_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @txt_wrap_move_bol(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !227 {
  %4 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  tail call void @text_update_character_width(ptr noundef %0) #15
  %6 = icmp eq i8 %2, 0
  %7 = getelementptr inbounds %struct.Text, ptr %5, i64 0, i32 6
  %8 = getelementptr inbounds %struct.Text, ptr %5, i64 0, i32 8
  %9 = getelementptr inbounds %struct.Text, ptr %5, i64 0, i32 5
  %10 = getelementptr inbounds %struct.Text, ptr %5, i64 0, i32 7
  %11 = select i1 %6, ptr %10, ptr %8
  %12 = select i1 %6, ptr %9, ptr %7
  %13 = load i32, ptr %11, align 4, !tbaa !153
  %14 = tail call i32 @wrap_width(ptr noundef %0, ptr noundef %1) #15
  store i32 0, ptr %11, align 4, !tbaa !153
  %15 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  br label %16

16:                                               ; preds = %3, %79
  %17 = phi i32 [ 1, %3 ], [ %83, %79 ]
  %18 = phi i32 [ 0, %3 ], [ %82, %79 ]
  %19 = phi i32 [ %14, %3 ], [ %84, %79 ]
  %20 = phi i32 [ 0, %3 ], [ %81, %79 ]
  %21 = phi i32 [ 0, %3 ], [ %91, %79 ]
  %22 = phi i32 [ 0, %3 ], [ %80, %79 ]
  %23 = load ptr, ptr %12, align 8, !tbaa !46
  %24 = getelementptr inbounds %struct.TextLine, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !115
  %26 = sext i32 %21 to i64
  %27 = getelementptr inbounds i8, ptr %25, i64 %26
  %28 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef %27) #15
  %29 = load ptr, ptr %12, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.TextLine, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !115
  %32 = getelementptr inbounds i8, ptr %31, i64 %26
  %33 = load i8, ptr %32, align 1, !tbaa !117
  %34 = icmp eq i8 %33, 9
  br i1 %34, label %35, label %40

35:                                               ; preds = %16
  %36 = load i32, ptr %15, align 8, !tbaa !109
  %37 = srem i32 %22, %36
  %38 = sub nsw i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %79, label %40

40:                                               ; preds = %16, %35
  %41 = phi i32 [ %38, %35 ], [ 1, %16 ]
  %42 = phi i8 [ 32, %35 ], [ %33, %16 ]
  %43 = icmp slt i32 %21, %13
  %44 = add nsw i32 %21, 1
  %45 = mul i32 %28, %41
  %46 = add i32 %22, %45
  br label %47

47:                                               ; preds = %40, %70
  %48 = phi i32 [ %41, %40 ], [ %54, %70 ]
  %49 = phi i32 [ %17, %40 ], [ %74, %70 ]
  %50 = phi i32 [ %18, %40 ], [ %73, %70 ]
  %51 = phi i32 [ %19, %40 ], [ %72, %70 ]
  %52 = phi i32 [ %20, %40 ], [ %71, %70 ]
  %53 = phi i32 [ %22, %40 ], [ %55, %70 ]
  %54 = add nsw i32 %48, -1
  %55 = add nsw i32 %53, %28
  %56 = sub nsw i32 %55, %52
  %57 = icmp sgt i32 %56, %14
  br i1 %57, label %58, label %66

58:                                               ; preds = %47
  %59 = tail call i32 @llvm.smin.i32(i32 %51, i32 %53)
  store i32 %50, ptr %11, align 4, !tbaa !153
  br i1 %43, label %62, label %60

60:                                               ; preds = %58
  %61 = icmp eq i8 %42, 0
  br i1 %61, label %76, label %79

62:                                               ; preds = %58
  %63 = icmp eq i32 %49, 0
  %64 = select i1 %63, i32 %50, i32 %21
  %65 = add nsw i32 %59, %14
  br label %70

66:                                               ; preds = %47
  switch i8 %42, label %70 [
    i8 45, label %67
    i8 32, label %67
    i8 0, label %67
  ]

67:                                               ; preds = %66, %66, %66
  br i1 %43, label %68, label %76

68:                                               ; preds = %67
  %69 = add nsw i32 %53, 1
  br label %70

70:                                               ; preds = %66, %68, %62
  %71 = phi i32 [ %59, %62 ], [ %52, %68 ], [ %52, %66 ]
  %72 = phi i32 [ %65, %62 ], [ %69, %68 ], [ %51, %66 ]
  %73 = phi i32 [ %64, %62 ], [ %44, %68 ], [ %50, %66 ]
  %74 = phi i32 [ 1, %62 ], [ 0, %68 ], [ %49, %66 ]
  %75 = icmp eq i32 %54, 0
  br i1 %75, label %79, label %47, !llvm.loop !228

76:                                               ; preds = %67, %60
  %77 = phi i32 [ %59, %60 ], [ %51, %67 ]
  %78 = tail call i32 @txt_utf8_column_to_offset(ptr noundef %31, i32 noundef %52) #15
  store i32 %78, ptr %11, align 4, !tbaa !153
  br label %79

79:                                               ; preds = %70, %76, %35, %60
  %80 = phi i32 [ %53, %60 ], [ %22, %35 ], [ %53, %76 ], [ %46, %70 ]
  %81 = phi i32 [ %52, %60 ], [ %20, %35 ], [ %52, %76 ], [ %71, %70 ]
  %82 = phi i32 [ %50, %60 ], [ %18, %35 ], [ %50, %76 ], [ %73, %70 ]
  %83 = phi i32 [ %49, %60 ], [ %17, %35 ], [ %49, %76 ], [ %74, %70 ]
  %84 = phi i32 [ %59, %60 ], [ %19, %35 ], [ %77, %76 ], [ %72, %70 ]
  %85 = phi i1 [ true, %60 ], [ false, %35 ], [ true, %76 ], [ false, %70 ]
  %86 = load ptr, ptr %12, align 8, !tbaa !46
  %87 = getelementptr inbounds %struct.TextLine, ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !115
  %89 = getelementptr inbounds i8, ptr %88, i64 %26
  %90 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef %89) #15
  %91 = add nsw i32 %90, %21
  br i1 %85, label %92, label %16, !llvm.loop !229

92:                                               ; preds = %79
  br i1 %6, label %93, label %94

93:                                               ; preds = %92
  tail call void @txt_pop_sel(ptr noundef %5) #15
  br label %94

94:                                               ; preds = %93, %92
  ret void
}

; Function Attrs: optsize
declare void @txt_move_bol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @txt_wrap_move_eol(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !230 {
  %4 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  tail call void @text_update_character_width(ptr noundef %0) #15
  %6 = icmp eq i8 %2, 0
  %7 = getelementptr inbounds %struct.Text, ptr %5, i64 0, i32 6
  %8 = getelementptr inbounds %struct.Text, ptr %5, i64 0, i32 8
  %9 = getelementptr inbounds %struct.Text, ptr %5, i64 0, i32 5
  %10 = getelementptr inbounds %struct.Text, ptr %5, i64 0, i32 7
  %11 = select i1 %6, ptr %10, ptr %8
  %12 = select i1 %6, ptr %9, ptr %7
  %13 = load i32, ptr %11, align 4, !tbaa !153
  %14 = tail call i32 @wrap_width(ptr noundef %0, ptr noundef %1) #15
  store i32 0, ptr %11, align 4, !tbaa !153
  %15 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  br label %16

16:                                               ; preds = %90, %3
  %17 = phi i32 [ 1, %3 ], [ %94, %90 ]
  %18 = phi i32 [ 0, %3 ], [ %96, %90 ]
  %19 = phi i32 [ %14, %3 ], [ %95, %90 ]
  %20 = phi i32 [ 0, %3 ], [ %93, %90 ]
  %21 = phi i32 [ 0, %3 ], [ %101, %90 ]
  %22 = phi i32 [ 0, %3 ], [ %92, %90 ]
  %23 = load ptr, ptr %12, align 8, !tbaa !46
  %24 = getelementptr inbounds %struct.TextLine, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !115
  %26 = sext i32 %21 to i64
  %27 = getelementptr inbounds i8, ptr %25, i64 %26
  %28 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef %27) #15
  %29 = load ptr, ptr %12, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.TextLine, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !115
  %32 = getelementptr inbounds i8, ptr %31, i64 %26
  %33 = load i8, ptr %32, align 1, !tbaa !117
  %34 = icmp eq i8 %33, 9
  br i1 %34, label %35, label %40

35:                                               ; preds = %16
  %36 = load i32, ptr %15, align 8, !tbaa !109
  %37 = srem i32 %22, %36
  %38 = sub nsw i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %90, label %40

40:                                               ; preds = %16, %35
  %41 = phi i32 [ %38, %35 ], [ 1, %16 ]
  %42 = phi i8 [ 32, %35 ], [ %33, %16 ]
  %43 = mul i32 %28, %41
  %44 = add i32 %22, %43
  br label %45

45:                                               ; preds = %40, %83
  %46 = phi ptr [ %84, %83 ], [ %29, %40 ]
  %47 = phi i32 [ %53, %83 ], [ %41, %40 ]
  %48 = phi i32 [ %88, %83 ], [ %17, %40 ]
  %49 = phi i32 [ %87, %83 ], [ %18, %40 ]
  %50 = phi i32 [ %86, %83 ], [ %19, %40 ]
  %51 = phi i32 [ %85, %83 ], [ %20, %40 ]
  %52 = phi i32 [ %54, %83 ], [ %22, %40 ]
  %53 = add nsw i32 %47, -1
  %54 = add nsw i32 %52, %28
  %55 = sub nsw i32 %54, %51
  %56 = icmp sgt i32 %55, %14
  br i1 %56, label %57, label %80

57:                                               ; preds = %45
  %58 = tail call i32 @llvm.smin.i32(i32 %50, i32 %52)
  %59 = icmp eq i32 %48, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.TextLine, ptr %46, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !115
  %63 = getelementptr inbounds i8, ptr %62, i64 %26
  %64 = tail call ptr @BLI_str_prev_char_utf8(ptr noundef %63) #15
  %65 = load ptr, ptr %12, align 8, !tbaa !46
  %66 = getelementptr inbounds %struct.TextLine, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !115
  %68 = ptrtoint ptr %64 to i64
  %69 = ptrtoint ptr %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  br label %72

72:                                               ; preds = %60, %57
  %73 = phi ptr [ %65, %60 ], [ %46, %57 ]
  %74 = phi i32 [ %71, %60 ], [ %49, %57 ]
  %75 = icmp slt i32 %74, %13
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = icmp eq i8 %42, 0
  br i1 %77, label %102, label %106

78:                                               ; preds = %72
  %79 = add nsw i32 %58, %14
  br label %83

80:                                               ; preds = %45
  switch i8 %42, label %83 [
    i8 0, label %102
    i8 45, label %81
    i8 32, label %81
  ]

81:                                               ; preds = %80, %80
  %82 = add nsw i32 %52, 1
  br label %83

83:                                               ; preds = %80, %81, %78
  %84 = phi ptr [ %73, %78 ], [ %46, %81 ], [ %46, %80 ]
  %85 = phi i32 [ %58, %78 ], [ %51, %81 ], [ %51, %80 ]
  %86 = phi i32 [ %79, %78 ], [ %82, %81 ], [ %50, %80 ]
  %87 = phi i32 [ %74, %78 ], [ %21, %81 ], [ %49, %80 ]
  %88 = phi i32 [ 1, %78 ], [ 0, %81 ], [ %48, %80 ]
  %89 = icmp eq i32 %53, 0
  br i1 %89, label %90, label %45, !llvm.loop !231

90:                                               ; preds = %83, %35
  %91 = phi ptr [ %29, %35 ], [ %84, %83 ]
  %92 = phi i32 [ %22, %35 ], [ %44, %83 ]
  %93 = phi i32 [ %20, %35 ], [ %85, %83 ]
  %94 = phi i32 [ %17, %35 ], [ %88, %83 ]
  %95 = phi i32 [ %19, %35 ], [ %86, %83 ]
  %96 = phi i32 [ %18, %35 ], [ %87, %83 ]
  %97 = getelementptr inbounds %struct.TextLine, ptr %91, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !115
  %99 = getelementptr inbounds i8, ptr %98, i64 %26
  %100 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef %99) #15
  %101 = add nsw i32 %100, %21
  br label %16, !llvm.loop !232

102:                                              ; preds = %80, %76
  %103 = phi ptr [ %73, %76 ], [ %46, %80 ]
  %104 = getelementptr inbounds %struct.TextLine, ptr %103, i64 0, i32 4
  %105 = load i32, ptr %104, align 8, !tbaa !116
  br label %106

106:                                              ; preds = %102, %76
  %107 = phi i32 [ %74, %76 ], [ %105, %102 ]
  %108 = phi ptr [ %73, %76 ], [ %103, %102 ]
  store i32 %107, ptr %11, align 4, !tbaa !153
  %109 = getelementptr inbounds %struct.TextLine, ptr %108, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !115
  %111 = getelementptr inbounds i8, ptr %110, i64 %26
  %112 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef %111) #15
  br i1 %6, label %113, label %114

113:                                              ; preds = %106
  tail call void @txt_pop_sel(ptr noundef %5) #15
  br label %114

114:                                              ; preds = %113, %106
  ret void
}

; Function Attrs: optsize
declare void @txt_move_eol(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_move_bof(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_move_eof(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @txt_cursor_is_line_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_move_left(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @txt_cursor_is_line_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_move_right(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_pop_sel(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @txt_wrap_move_up(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !233 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  tail call void @text_update_character_width(ptr noundef %0) #15
  %8 = icmp eq i8 %2, 0
  %9 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 6
  %10 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 8
  %11 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 5
  %12 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 7
  %13 = select i1 %8, ptr %12, ptr %10
  %14 = select i1 %8, ptr %11, ptr %9
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = load i32, ptr %13, align 4, !tbaa !153
  call void @wrap_offset_in_line(ptr noundef %0, ptr noundef %1, ptr noundef %15, i32 noundef %16, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %17 = load ptr, ptr %14, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.TextLine, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !115
  %20 = load i32, ptr %13, align 4, !tbaa !153
  %21 = call i32 @text_get_char_pos(ptr noundef %0, ptr noundef %19, i32 noundef %20) #15
  %22 = load i32, ptr %5, align 4, !tbaa !153
  %23 = add nsw i32 %22, %21
  %24 = load i32, ptr %4, align 4, !tbaa !153
  %25 = icmp eq i32 %24, 0
  %26 = load ptr, ptr %14, align 8, !tbaa !46
  br i1 %25, label %27, label %36

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.TextLine, ptr %26, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !111
  %30 = icmp eq ptr %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  store ptr %29, ptr %14, align 8, !tbaa !46
  %32 = getelementptr inbounds %struct.TextLine, ptr %29, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !115
  %34 = call i32 @text_get_visible_lines(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %33) #15
  %35 = load ptr, ptr %14, align 8, !tbaa !46
  br label %36

36:                                               ; preds = %3, %31
  %37 = phi i32 [ %34, %31 ], [ %24, %3 ]
  %38 = phi ptr [ %35, %31 ], [ %26, %3 ]
  %39 = add nsw i32 %37, -1
  %40 = call fastcc i32 @text_get_cursor_rel(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %38, i32 noundef %39, i32 noundef %23) #16
  br label %41

41:                                               ; preds = %36, %27
  %42 = phi i32 [ 0, %27 ], [ %40, %36 ]
  store i32 %42, ptr %13, align 4, !tbaa !153
  br i1 %8, label %43, label %44

43:                                               ; preds = %41
  call void @txt_pop_sel(ptr noundef %7) #15
  br label %44

44:                                               ; preds = %43, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

; Function Attrs: optsize
declare void @txt_move_up(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @txt_wrap_move_down(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !234 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  tail call void @text_update_character_width(ptr noundef %0) #15
  %8 = icmp eq i8 %2, 0
  %9 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 6
  %10 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 8
  %11 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 5
  %12 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 7
  %13 = select i1 %8, ptr %12, ptr %10
  %14 = select i1 %8, ptr %11, ptr %9
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = load i32, ptr %13, align 4, !tbaa !153
  call void @wrap_offset_in_line(ptr noundef %0, ptr noundef %1, ptr noundef %15, i32 noundef %16, ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %17 = load ptr, ptr %14, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.TextLine, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !115
  %20 = load i32, ptr %13, align 4, !tbaa !153
  %21 = call i32 @text_get_char_pos(ptr noundef %0, ptr noundef %19, i32 noundef %20) #15
  %22 = load i32, ptr %5, align 4, !tbaa !153
  %23 = add nsw i32 %22, %21
  %24 = load ptr, ptr %14, align 8, !tbaa !46
  %25 = getelementptr inbounds %struct.TextLine, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !115
  %27 = call i32 @text_get_visible_lines(ptr noundef %0, ptr noundef %1, ptr noundef %26) #15
  %28 = load i32, ptr %4, align 4, !tbaa !153
  %29 = add nsw i32 %27, -1
  %30 = icmp slt i32 %28, %29
  %31 = load ptr, ptr %14, align 8, !tbaa !46
  br i1 %30, label %32, label %35

32:                                               ; preds = %3
  %33 = add nsw i32 %28, 1
  %34 = call fastcc i32 @text_get_cursor_rel(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %31, i32 noundef %33, i32 noundef %23) #16
  br label %43

35:                                               ; preds = %3
  %36 = load ptr, ptr %31, align 8, !tbaa !222
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  store ptr %36, ptr %14, align 8, !tbaa !46
  %39 = call fastcc i32 @text_get_cursor_rel(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %36, i32 noundef 0, i32 noundef %23) #16
  br label %43

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.TextLine, ptr %31, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !116
  br label %43

43:                                               ; preds = %38, %40, %32
  %44 = phi i32 [ %39, %38 ], [ %42, %40 ], [ %34, %32 ]
  store i32 %44, ptr %13, align 4, !tbaa !153
  br i1 %8, label %45, label %46

45:                                               ; preds = %43
  call void @txt_pop_sel(ptr noundef %7) #15
  br label %46

46:                                               ; preds = %45, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

; Function Attrs: optsize
declare void @txt_move_down(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cursor_skip(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !235 {
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
  br i1 %17, label %18, label %32

18:                                               ; preds = %5
  %19 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 24
  %20 = load i32, ptr %19, align 8, !tbaa !226
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  %23 = call fastcc i32 @cursor_skip_find_line(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %3, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %6, ptr noundef nonnull %7) #16, !range !96
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %13, align 8, !tbaa !46
  %27 = load i32, ptr %6, align 4, !tbaa !153
  %28 = load i32, ptr %7, align 4, !tbaa !153
  %29 = tail call fastcc i32 @text_get_cursor_rel(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %26, i32 noundef %27, i32 noundef %28) #16
  store i32 %29, ptr %14, align 4, !tbaa !153
  br label %30

30:                                               ; preds = %25, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  %31 = load ptr, ptr %13, align 8, !tbaa !46
  br label %54

32:                                               ; preds = %18, %5
  %33 = icmp sgt i32 %3, 0
  %34 = load ptr, ptr %13, align 8, !tbaa !46
  br i1 %33, label %35, label %43

35:                                               ; preds = %32, %40
  %36 = phi ptr [ %38, %40 ], [ %34, %32 ]
  %37 = phi i32 [ %41, %40 ], [ %3, %32 ]
  %38 = load ptr, ptr %36, align 8, !tbaa !222
  %39 = icmp eq ptr %38, null
  br i1 %39, label %54, label %40

40:                                               ; preds = %35
  store ptr %38, ptr %13, align 8, !tbaa !46
  %41 = add nsw i32 %37, -1
  %42 = icmp sgt i32 %37, 1
  br i1 %42, label %35, label %54, !llvm.loop !236

43:                                               ; preds = %32
  %44 = icmp slt i32 %3, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %43, %51
  %46 = phi ptr [ %49, %51 ], [ %34, %43 ]
  %47 = phi i32 [ %52, %51 ], [ %3, %43 ]
  %48 = getelementptr inbounds %struct.TextLine, ptr %46, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !111
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  store ptr %49, ptr %13, align 8, !tbaa !46
  %52 = add nsw i32 %47, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %45, !llvm.loop !237

54:                                               ; preds = %51, %45, %40, %35, %43, %30
  %55 = phi ptr [ %34, %43 ], [ %31, %30 ], [ %36, %35 ], [ %38, %40 ], [ %49, %51 ], [ %46, %45 ]
  %56 = load i32, ptr %14, align 4, !tbaa !153
  %57 = getelementptr inbounds %struct.TextLine, ptr %55, i64 0, i32 4
  %58 = load i32, ptr %57, align 8, !tbaa !116
  %59 = icmp sgt i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 %58, ptr %14, align 4, !tbaa !153
  br label %61

61:                                               ; preds = %60, %54
  br i1 %8, label %62, label %63

62:                                               ; preds = %61
  tail call void @txt_pop_sel(ptr noundef %2) #15
  br label %63

63:                                               ; preds = %62, %61
  ret void
}

; Function Attrs: optsize
declare void @text_update_character_width(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @wrap_width(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_str_utf8_char_width_safe(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @txt_utf8_column_to_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_str_utf8_size_safe(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_str_prev_char_utf8(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @wrap_offset_in_line(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @text_get_char_pos(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @text_get_cursor_rel(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !238 {
  %6 = tail call i32 @wrap_width(ptr noundef %0, ptr noundef %1) #15
  %7 = getelementptr inbounds %struct.TextLine, ptr %2, i64 0, i32 2
  %8 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  %9 = getelementptr inbounds %struct.TextLine, ptr %2, i64 0, i32 4
  br label %10

10:                                               ; preds = %118, %5
  %11 = phi i32 [ %3, %5 ], [ %127, %118 ]
  %12 = phi i32 [ 0, %5 ], [ %126, %118 ]
  %13 = phi i32 [ 0, %5 ], [ %125, %118 ]
  %14 = phi i32 [ 0, %5 ], [ %124, %118 ]
  %15 = phi i32 [ 0, %5 ], [ %123, %118 ]
  %16 = phi i32 [ 1, %5 ], [ %122, %118 ]
  %17 = phi i32 [ 0, %5 ], [ %119, %118 ]
  %18 = phi i32 [ %6, %5 ], [ %121, %118 ]
  %19 = phi i32 [ 0, %5 ], [ %120, %118 ]
  %20 = phi i32 [ 0, %5 ], [ %129, %118 ]
  %21 = load ptr, ptr %7, align 8, !tbaa !115
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i8, ptr %21, i64 %22
  %24 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef %23) #15
  %25 = load ptr, ptr %7, align 8, !tbaa !115
  %26 = getelementptr inbounds i8, ptr %25, i64 %22
  %27 = load i8, ptr %26, align 1, !tbaa !117
  %28 = icmp eq i8 %27, 9
  br i1 %28, label %29, label %34

29:                                               ; preds = %10
  %30 = load i32, ptr %8, align 8, !tbaa !109
  %31 = srem i32 %17, %30
  %32 = sub nsw i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %118, label %34

34:                                               ; preds = %10, %29
  %35 = phi i32 [ %32, %29 ], [ 1, %10 ]
  %36 = phi i8 [ 32, %29 ], [ %27, %10 ]
  br label %37

37:                                               ; preds = %34, %107
  %38 = phi i32 [ %48, %107 ], [ %35, %34 ]
  %39 = phi i32 [ %116, %107 ], [ %11, %34 ]
  %40 = phi i32 [ %109, %107 ], [ %12, %34 ]
  %41 = phi i32 [ %110, %107 ], [ %13, %34 ]
  %42 = phi i32 [ %115, %107 ], [ %14, %34 ]
  %43 = phi i32 [ %111, %107 ], [ %15, %34 ]
  %44 = phi i32 [ %114, %107 ], [ %16, %34 ]
  %45 = phi i32 [ %108, %107 ], [ %17, %34 ]
  %46 = phi i32 [ %113, %107 ], [ %18, %34 ]
  %47 = phi i32 [ %112, %107 ], [ %19, %34 ]
  %48 = add nsw i32 %38, -1
  %49 = icmp eq i32 %39, 0
  %50 = sub nsw i32 %45, %47
  %51 = icmp sle i32 %50, %4
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %57

53:                                               ; preds = %37
  %54 = sub i32 %24, %47
  %55 = add i32 %54, %45
  %56 = icmp sgt i32 %55, %4
  br i1 %56, label %68, label %57

57:                                               ; preds = %53, %37
  %58 = sub nsw i32 %45, %46
  %59 = icmp sgt i32 %58, %4
  %60 = sub i32 %24, %46
  %61 = add i32 %60, %45
  %62 = icmp sgt i32 %61, %4
  %63 = select i1 %62, i32 %20, i32 %43
  %64 = select i1 %59, i32 %43, i32 %63
  %65 = add nsw i32 %45, %24
  %66 = sub nsw i32 %65, %47
  %67 = icmp sgt i32 %66, %6
  br i1 %67, label %72, label %90

68:                                               ; preds = %53
  %69 = add nsw i32 %45, %24
  %70 = sub nsw i32 %69, %47
  %71 = icmp sgt i32 %70, %6
  br i1 %71, label %75, label %90

72:                                               ; preds = %57
  %73 = tail call i32 @llvm.smin.i32(i32 %46, i32 %45)
  %74 = icmp eq i32 %41, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %68, %72
  %76 = phi i32 [ %40, %72 ], [ %20, %68 ]
  %77 = icmp sle i32 %76, %42
  %78 = icmp ne i32 %44, 0
  %79 = select i1 %77, i1 true, i1 %78
  %80 = select i1 %79, i32 %76, i32 %42
  br label %130

81:                                               ; preds = %72
  %82 = icmp eq i32 %44, 0
  %83 = select i1 %82, i32 %42, i32 %20
  %84 = add nsw i32 %73, %6
  %85 = add nsw i32 %39, -1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %81
  %88 = sub nsw i32 %65, %73
  %89 = icmp sgt i32 %88, %4
  br i1 %89, label %130, label %107

90:                                               ; preds = %68, %57
  %91 = phi i32 [ %70, %68 ], [ %66, %57 ]
  %92 = phi i32 [ %69, %68 ], [ %65, %57 ]
  %93 = phi i32 [ %20, %68 ], [ %40, %57 ]
  %94 = phi i32 [ 1, %68 ], [ %41, %57 ]
  %95 = phi i32 [ %43, %68 ], [ %64, %57 ]
  switch i8 %36, label %107 [
    i8 0, label %96
    i8 45, label %100
    i8 32, label %100
  ]

96:                                               ; preds = %90
  %97 = icmp eq i32 %94, 0
  br i1 %97, label %98, label %130

98:                                               ; preds = %96
  %99 = load i32, ptr %9, align 8, !tbaa !116
  br label %130

100:                                              ; preds = %90, %90
  %101 = icmp eq i32 %94, 0
  br i1 %101, label %102, label %130

102:                                              ; preds = %100
  %103 = icmp sgt i32 %91, %4
  %104 = and i1 %49, %103
  br i1 %104, label %130, label %105

105:                                              ; preds = %102
  %106 = add nsw i32 %45, 1
  br label %107

107:                                              ; preds = %90, %105, %81, %87
  %108 = phi i32 [ %65, %87 ], [ %65, %81 ], [ %92, %105 ], [ %92, %90 ]
  %109 = phi i32 [ %40, %87 ], [ %40, %81 ], [ %93, %105 ], [ %93, %90 ]
  %110 = phi i32 [ 0, %87 ], [ 0, %81 ], [ 0, %105 ], [ %94, %90 ]
  %111 = phi i32 [ %64, %87 ], [ %64, %81 ], [ %95, %105 ], [ %95, %90 ]
  %112 = phi i32 [ %73, %87 ], [ %73, %81 ], [ %47, %105 ], [ %47, %90 ]
  %113 = phi i32 [ %84, %87 ], [ %84, %81 ], [ %106, %105 ], [ %46, %90 ]
  %114 = phi i32 [ 1, %87 ], [ 1, %81 ], [ 0, %105 ], [ %44, %90 ]
  %115 = phi i32 [ %83, %87 ], [ %83, %81 ], [ %20, %105 ], [ %42, %90 ]
  %116 = phi i32 [ 0, %87 ], [ %85, %81 ], [ %39, %105 ], [ %39, %90 ]
  %117 = icmp eq i32 %48, 0
  br i1 %117, label %118, label %37, !llvm.loop !239

118:                                              ; preds = %107, %29
  %119 = phi i32 [ %17, %29 ], [ %108, %107 ]
  %120 = phi i32 [ %19, %29 ], [ %112, %107 ]
  %121 = phi i32 [ %18, %29 ], [ %113, %107 ]
  %122 = phi i32 [ %16, %29 ], [ %114, %107 ]
  %123 = phi i32 [ %15, %29 ], [ %111, %107 ]
  %124 = phi i32 [ %14, %29 ], [ %115, %107 ]
  %125 = phi i32 [ %13, %29 ], [ %110, %107 ]
  %126 = phi i32 [ %12, %29 ], [ %109, %107 ]
  %127 = phi i32 [ %11, %29 ], [ %116, %107 ]
  %128 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %26) #15
  %129 = add nsw i32 %128, %20
  br label %10, !llvm.loop !240

130:                                              ; preds = %102, %100, %87, %75, %98, %96
  %131 = phi i32 [ %93, %96 ], [ %99, %98 ], [ %80, %75 ], [ %95, %102 ], [ %93, %100 ], [ %64, %87 ]
  %132 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %26) #15
  ret i32 %131
}

; Function Attrs: optsize
declare i32 @text_get_visible_lines(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @cursor_skip_find_line(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 !PGOFuncName !241 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #17
  %10 = load ptr, ptr %3, align 8, !tbaa !46
  %11 = load i32, ptr %4, align 4, !tbaa !153
  call void @wrap_offset_in_line(ptr noundef %0, ptr noundef %1, ptr noundef %10, i32 noundef %11, ptr noundef nonnull %8, ptr noundef nonnull %9) #15
  %12 = load ptr, ptr %3, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.TextLine, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !115
  %15 = load i32, ptr %4, align 4, !tbaa !153
  %16 = call i32 @text_get_char_pos(ptr noundef %0, ptr noundef %14, i32 noundef %15) #15
  %17 = load i32, ptr %9, align 4, !tbaa !153
  %18 = add nsw i32 %17, %16
  store i32 %18, ptr %6, align 4, !tbaa !153
  store i32 %2, ptr %5, align 4, !tbaa !153
  %19 = icmp sgt i32 %2, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %7
  %21 = load ptr, ptr %3, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.TextLine, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !115
  %24 = call i32 @text_get_visible_lines(ptr noundef %0, ptr noundef %1, ptr noundef %23) #15
  %25 = load i32, ptr %5, align 4, !tbaa !153
  %26 = sub i32 %25, %24
  %27 = load i32, ptr %8, align 4, !tbaa !153
  %28 = add i32 %26, %27
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %41

30:                                               ; preds = %20
  %31 = load ptr, ptr %3, align 8, !tbaa !46
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %57

34:                                               ; preds = %30
  %35 = add nsw i32 %24, -1
  %36 = icmp slt i32 %27, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 %35, ptr %5, align 4, !tbaa !153
  br label %89

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.TextLine, ptr %31, i64 0, i32 4
  %40 = load i32, ptr %39, align 8, !tbaa !116
  store i32 %40, ptr %4, align 4, !tbaa !153
  br label %89

41:                                               ; preds = %20
  %42 = add nsw i32 %27, %25
  store i32 %42, ptr %5, align 4, !tbaa !153
  br label %89

43:                                               ; preds = %7
  %44 = load i32, ptr %8, align 4, !tbaa !153
  %45 = add nsw i32 %44, %2
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load ptr, ptr %3, align 8, !tbaa !46
  %49 = getelementptr inbounds %struct.TextLine, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = icmp eq i32 %44, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %52
  store i32 0, ptr %5, align 4, !tbaa !153
  br label %89

55:                                               ; preds = %52
  store i32 0, ptr %4, align 4, !tbaa !153
  br label %89

56:                                               ; preds = %43
  store i32 %45, ptr %5, align 4, !tbaa !153
  br label %89

57:                                               ; preds = %47, %30
  %58 = phi ptr [ %50, %47 ], [ %32, %30 ]
  %59 = phi i32 [ %45, %47 ], [ %28, %30 ]
  store i32 %59, ptr %5, align 4, !tbaa !153
  store ptr %58, ptr %3, align 8, !tbaa !46
  %60 = icmp slt i32 %2, 0
  br label %61

61:                                               ; preds = %86, %57
  %62 = phi ptr [ %58, %57 ], [ %87, %86 ]
  %63 = getelementptr inbounds %struct.TextLine, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !115
  %65 = call i32 @text_get_visible_lines(ptr noundef %0, ptr noundef %1, ptr noundef %64) #15
  %66 = load i32, ptr %5, align 4, !tbaa !153
  br i1 %60, label %67, label %77

67:                                               ; preds = %61
  %68 = add nsw i32 %66, %65
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 %68, ptr %5, align 4, !tbaa !153
  br label %89

71:                                               ; preds = %67
  %72 = load ptr, ptr %3, align 8, !tbaa !46
  %73 = getelementptr inbounds %struct.TextLine, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !46
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  store i32 0, ptr %5, align 4, !tbaa !153
  br label %89

77:                                               ; preds = %61
  %78 = sub nsw i32 %66, %65
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %3, align 8, !tbaa !46
  %82 = load ptr, ptr %81, align 8, !tbaa !46
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = add nsw i32 %65, -1
  store i32 %85, ptr %5, align 4, !tbaa !153
  br label %89

86:                                               ; preds = %80, %71
  %87 = phi ptr [ %74, %71 ], [ %82, %80 ]
  %88 = phi i32 [ %68, %71 ], [ %78, %80 ]
  store i32 %88, ptr %5, align 4, !tbaa !153
  store ptr %87, ptr %3, align 8, !tbaa !46
  br label %61

89:                                               ; preds = %77, %70, %76, %84, %56, %55, %54, %41, %38, %37
  %90 = phi i32 [ 1, %37 ], [ 0, %38 ], [ 1, %41 ], [ 1, %54 ], [ 0, %55 ], [ 1, %56 ], [ 1, %84 ], [ 1, %76 ], [ 1, %70 ], [ 1, %77 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  ret i32 %90
}

; Function Attrs: optsize
declare i32 @WM_operator_props_dialog_popup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_move_toline(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_backspace_char(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_backspace_word(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_delete_char(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @txt_delete_word(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @txt_screen_skip(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !242 {
  %4 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !63
  %6 = add nsw i32 %5, %2
  store i32 %6, ptr %4, align 8, !tbaa !63
  tail call fastcc void @txt_screen_clamp(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @text_scroll_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !243 {
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %9 = load <2 x i32>, ptr %8, align 4, !tbaa !153
  tail call void @text_update_character_width(ptr noundef %4) #15
  %10 = getelementptr inbounds %struct.TextScroll, ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !146
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store <2 x i32> %9, ptr %7, align 4, !tbaa !153
  store i32 0, ptr %10, align 4, !tbaa !146
  br label %14

14:                                               ; preds = %13, %3
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !150
  %17 = icmp eq i16 %16, 14
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.TextScroll, ptr %7, i64 0, i32 1
  %20 = load <2 x i32>, ptr %7, align 4, !tbaa !153
  %21 = sub nsw <2 x i32> %9, %20
  store <2 x i32> %21, ptr %19, align 4, !tbaa !153
  br label %22

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %struct.TextScroll, ptr %7, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !159
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.TextScroll, ptr %7, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !153
  %29 = sub nsw i32 0, %28
  %30 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 12
  %31 = load i8, ptr %30, align 2, !tbaa !156
  %32 = uitofp i8 %31 to float
  %33 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 32
  %34 = getelementptr inbounds %struct.TextScroll, ptr %7, i64 0, i32 1, i64 1
  %35 = load i32, ptr %34, align 4, !tbaa !153
  %36 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 29
  %37 = load i16, ptr %36, align 2, !tbaa !158
  %38 = sext i16 %37 to i32
  %39 = sitofp i16 %37 to float
  %40 = fmul float %39, 0x3FD3333340000000
  %41 = fptosi float %40 to i32
  %42 = add nsw i32 %41, %38
  %43 = sitofp i32 %42 to float
  %44 = insertelement <2 x i32> poison, i32 %29, i64 0
  %45 = insertelement <2 x i32> %44, i32 %35, i64 1
  %46 = sitofp <2 x i32> %45 to <2 x float>
  %47 = insertelement <2 x float> poison, float %32, i64 0
  %48 = insertelement <2 x float> %47, float %43, i64 1
  %49 = fdiv <2 x float> %46, %48
  %50 = load <2 x float>, ptr %33, align 8, !tbaa !64
  %51 = fadd <2 x float> %50, %49
  br label %66

52:                                               ; preds = %22
  %53 = getelementptr inbounds %struct.TextScroll, ptr %7, i64 0, i32 1, i64 1
  %54 = load i32, ptr %53, align 4, !tbaa !153
  %55 = sub nsw i32 0, %54
  %56 = sitofp i32 %55 to float
  %57 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 21
  %58 = load float, ptr %57, align 4, !tbaa !244
  %59 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 32, i64 1
  %60 = load float, ptr %59, align 4, !tbaa !64
  %61 = tail call float @llvm.fmuladd.f32(float %56, float %58, float %60)
  %62 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 32
  %63 = load float, ptr %62, align 8, !tbaa !64
  %64 = insertelement <2 x float> poison, float %63, i64 0
  %65 = insertelement <2 x float> %64, float %61, i64 1
  br label %66

66:                                               ; preds = %52, %26
  %67 = phi <2 x float> [ %65, %52 ], [ %51, %26 ]
  %68 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 32
  %69 = fptosi <2 x float> %67 to <2 x i32>
  %70 = sitofp <2 x i32> %69 to <2 x float>
  %71 = fsub <2 x float> %67, %70
  store <2 x float> %71, ptr %68, align 8, !tbaa !64
  %72 = icmp ne <2 x i32> %69, zeroinitializer
  %73 = extractelement <2 x i1> %72, i64 0
  %74 = extractelement <2 x i1> %72, i64 1
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %66
  %77 = extractelement <2 x i32> %69, i64 1
  tail call fastcc void @txt_screen_skip(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %77) #16
  %78 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 24
  %79 = load i32, ptr %78, align 8, !tbaa !226
  %80 = icmp eq i32 %79, 0
  %81 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 14
  br i1 %80, label %82, label %87

82:                                               ; preds = %76
  %83 = load i32, ptr %81, align 8, !tbaa !62
  %84 = extractelement <2 x i32> %69, i64 0
  %85 = add nsw i32 %83, %84
  %86 = tail call i32 @llvm.smax.i32(i32 %85, i32 0)
  br label %87

87:                                               ; preds = %76, %82
  %88 = phi i32 [ %86, %82 ], [ 0, %76 ]
  store i32 %88, ptr %81, align 8
  %89 = tail call ptr @CTX_wm_area(ptr noundef %0) #15
  tail call void @ED_area_tag_redraw(ptr noundef %89) #15
  br label %90

90:                                               ; preds = %66, %87
  %91 = extractelement <2 x i32> %9, i64 0
  store i32 %91, ptr %7, align 4, !tbaa !153
  %92 = getelementptr inbounds [2 x i32], ptr %7, i64 0, i64 1
  %93 = extractelement <2 x i32> %9, i64 1
  store i32 %93, ptr %92, align 4, !tbaa !153
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scroll_exit(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !245 {
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !149
  %6 = and i16 %5, -2
  store i16 %6, ptr %4, align 8, !tbaa !149
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  tail call void %7(ptr noundef %9) #15
  ret void
}

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_cent_x(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !246 {
  %2 = load i32, ptr %0, align 4, !tbaa !247
  %3 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !248
  %5 = add nsw i32 %4, %2
  %6 = sdiv i32 %5, 2
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @BLI_rcti_cent_y(ptr nocapture noundef readonly %0) unnamed_addr #11 !PGOFuncName !249 {
  %2 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !250
  %4 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !251
  %6 = add nsw i32 %5, %3
  %7 = sdiv i32 %6, 2
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @text_cursor_set_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !252 {
  %4 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !153
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 6
  %14 = load i16, ptr %13, align 2, !tbaa !169
  %15 = sext i16 %14 to i32
  %16 = icmp sgt i32 %10, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %12, %3
  %18 = getelementptr inbounds %struct.SetSelection, ptr %7, i64 0, i32 3, i64 1
  %19 = load i16, ptr %18, align 2, !tbaa !181
  %20 = sext i16 %19 to i32
  %21 = sub nsw i32 %20, %10
  %22 = sitofp i32 %21 to float
  %23 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 21
  %24 = load float, ptr %23, align 4, !tbaa !244
  %25 = fmul float %24, %22
  %26 = fptosi float %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %17
  tail call fastcc void @txt_screen_skip(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %26) #16
  %29 = load i32, ptr %9, align 4, !tbaa !153
  br label %30

30:                                               ; preds = %28, %17
  %31 = phi i32 [ %29, %28 ], [ %10, %17 ]
  %32 = load i32, ptr %8, align 4, !tbaa !153
  %33 = icmp slt i32 %31, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 6
  %36 = load i16, ptr %35, align 2, !tbaa !169
  %37 = sext i16 %36 to i32
  br label %38

38:                                               ; preds = %30, %34
  %39 = phi i32 [ %37, %34 ], [ 0, %30 ]
  tail call fastcc void @text_cursor_set_to_pos(ptr noundef nonnull %4, ptr noundef %5, i32 noundef %32, i32 noundef %39, i8 noundef zeroext 1) #16
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  %40 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !58
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %41) #15
  br label %76

42:                                               ; preds = %12
  %43 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 24
  %44 = load i32, ptr %43, align 8, !tbaa !226
  %45 = icmp eq i32 %44, 0
  %46 = load i32, ptr %8, align 4, !tbaa !153
  br i1 %45, label %47, label %70

47:                                               ; preds = %42
  %48 = icmp slt i32 %46, 0
  %49 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 5
  %50 = load i16, ptr %49, align 8, !tbaa !253
  %51 = sext i16 %50 to i32
  %52 = icmp sgt i32 %46, %51
  br i1 %48, label %54, label %53

53:                                               ; preds = %47
  br i1 %52, label %55, label %70

54:                                               ; preds = %47
  br i1 %52, label %55, label %59

55:                                               ; preds = %53, %54
  %56 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 14
  %57 = load i32, ptr %56, align 8, !tbaa !62
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %56, align 8, !tbaa !62
  br label %65

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 14
  %61 = load i32, ptr %60, align 8, !tbaa !62
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = add nsw i32 %61, -1
  store i32 %64, ptr %60, align 8, !tbaa !62
  br label %65

65:                                               ; preds = %59, %63, %55
  %66 = load i32, ptr %8, align 4, !tbaa !153
  %67 = load i32, ptr %9, align 4, !tbaa !153
  tail call fastcc void @text_cursor_set_to_pos(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %66, i32 noundef %67, i8 noundef zeroext 1) #16
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  %68 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !58
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %69) #15
  br label %76

70:                                               ; preds = %53, %42
  tail call fastcc void @text_cursor_set_to_pos(ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %46, i32 noundef %10, i8 noundef zeroext 1) #16
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  %71 = getelementptr inbounds %struct.SpaceText, ptr %4, i64 0, i32 6
  %72 = load ptr, ptr %71, align 8, !tbaa !58
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %72) #15
  %73 = getelementptr inbounds %struct.SetSelection, ptr %7, i64 0, i32 3
  %74 = load <2 x i32>, ptr %8, align 4, !tbaa !153
  %75 = trunc <2 x i32> %74 to <2 x i16>
  store <2 x i16> %75, ptr %73, align 4, !tbaa !181
  br label %76

76:                                               ; preds = %65, %70, %38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @text_cursor_set_to_pos(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !254 {
  %6 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  tail call void @text_update_character_width(ptr noundef %0) #15
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %9 = load i16, ptr %8, align 2, !tbaa !169
  %10 = sext i16 %9 to i32
  %11 = sub i32 %10, %3
  %12 = add i32 %11, -2
  %13 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 29
  %14 = load i16, ptr %13, align 2, !tbaa !158
  %15 = sext i16 %14 to i32
  %16 = sitofp i16 %14 to float
  %17 = fmul float %16, 0x3FD3333340000000
  %18 = fptosi float %17 to i32
  %19 = add nsw i32 %18, %15
  %20 = sdiv i32 %12, %19
  %21 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 15
  %22 = load i32, ptr %21, align 4, !tbaa !192
  %23 = icmp eq i32 %22, 0
  %24 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !132
  %25 = sitofp i16 %24 to float
  %26 = fmul float %25, 5.000000e-01
  %27 = fptosi float %26 to i32
  br i1 %23, label %37, label %28

28:                                               ; preds = %5
  %29 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %30 = load i8, ptr %29, align 2, !tbaa !156
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 13
  %33 = load i8, ptr %32, align 1, !tbaa !193
  %34 = zext i8 %33 to i32
  %35 = mul nuw nsw i32 %34, %31
  %36 = add nsw i32 %35, %27
  br label %37

37:                                               ; preds = %5, %28
  %38 = phi i32 [ %36, %28 ], [ %27, %5 ]
  %39 = sub nsw i32 %2, %38
  %40 = tail call i32 @llvm.smax.i32(i32 %39, i32 0)
  %41 = tail call fastcc i32 @text_pixel_x_to_column(ptr noundef nonnull %0, i32 noundef %40) #16
  %42 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 14
  %43 = load i32, ptr %42, align 8, !tbaa !62
  %44 = add nsw i32 %43, %41
  %45 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 24
  %46 = load i32, ptr %45, align 8, !tbaa !226
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  tail call fastcc void @text_cursor_set_to_pos_wrapped(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %44, i32 noundef %20, i8 noundef zeroext %4) #16
  br label %108

49:                                               ; preds = %37
  %50 = icmp eq i8 %4, 0
  %51 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 6
  %52 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 8
  %53 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 5
  %54 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 7
  %55 = select i1 %50, ptr %53, ptr %51
  %56 = select i1 %50, ptr %54, ptr %52
  %57 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !137
  %59 = load ptr, ptr %55, align 8, !tbaa !46
  %60 = tail call i32 @txt_get_span(ptr noundef %58, ptr noundef %59) #15
  %61 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 7
  %62 = load i32, ptr %61, align 8, !tbaa !63
  %63 = sub i32 %62, %60
  %64 = add i32 %63, %20
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %49
  %67 = load ptr, ptr %55, align 8, !tbaa !46
  br label %68

68:                                               ; preds = %66, %75
  %69 = phi i32 [ %64, %66 ], [ %71, %75 ]
  %70 = phi ptr [ %67, %66 ], [ %76, %75 ]
  %71 = add nsw i32 %69, -1
  %72 = load ptr, ptr %70, align 8, !tbaa !222
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  store ptr %72, ptr %55, align 8, !tbaa !46
  br label %75

75:                                               ; preds = %74, %68
  %76 = phi ptr [ %72, %74 ], [ %70, %68 ]
  %77 = icmp eq i32 %71, 0
  br i1 %77, label %92, label %68, !llvm.loop !255

78:                                               ; preds = %49
  %79 = icmp slt i32 %64, 0
  %80 = load ptr, ptr %55, align 8, !tbaa !46
  br i1 %79, label %81, label %92

81:                                               ; preds = %78, %89
  %82 = phi i32 [ %84, %89 ], [ %64, %78 ]
  %83 = phi ptr [ %90, %89 ], [ %80, %78 ]
  %84 = add nsw i32 %82, 1
  %85 = getelementptr inbounds %struct.TextLine, ptr %83, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !111
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  store ptr %86, ptr %55, align 8, !tbaa !46
  br label %89

89:                                               ; preds = %88, %81
  %90 = phi ptr [ %86, %88 ], [ %83, %81 ]
  %91 = icmp eq i32 %84, 0
  br i1 %91, label %92, label %81, !llvm.loop !256

92:                                               ; preds = %89, %75, %78
  %93 = phi ptr [ %80, %78 ], [ %76, %75 ], [ %90, %89 ]
  %94 = getelementptr inbounds %struct.TextLine, ptr %93, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !115
  %96 = tail call fastcc i32 @flatten_width(ptr noundef %0, ptr noundef %95) #16
  %97 = icmp slt i32 %44, %96
  %98 = load ptr, ptr %55, align 8, !tbaa !46
  br i1 %97, label %99, label %103

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.TextLine, ptr %98, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !115
  %102 = tail call fastcc i32 @flatten_column_to_offset(ptr noundef %0, ptr noundef %101, i32 noundef %44) #16
  br label %106

103:                                              ; preds = %92
  %104 = getelementptr inbounds %struct.TextLine, ptr %98, i64 0, i32 4
  %105 = load i32, ptr %104, align 8, !tbaa !116
  br label %106

106:                                              ; preds = %103, %99
  %107 = phi i32 [ %105, %103 ], [ %102, %99 ]
  store i32 %107, ptr %56, align 4, !tbaa !153
  br label %108

108:                                              ; preds = %106, %48
  %109 = icmp eq i8 %4, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %108
  tail call void @txt_pop_sel(ptr noundef %7) #15
  br label %111

111:                                              ; preds = %110, %108
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @text_pixel_x_to_column(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !PGOFuncName !257 {
  %3 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 12
  %4 = load i8, ptr %3, align 2, !tbaa !156
  %5 = zext i8 %4 to i32
  %6 = lshr i32 %5, 1
  %7 = add nsw i32 %6, %1
  %8 = sdiv i32 %7, %5
  ret i32 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @text_cursor_set_to_pos_wrapped(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !PGOFuncName !258 {
  %6 = alloca i32, align 4
  store i32 %3, ptr %6, align 4, !tbaa !153
  %7 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = tail call i32 @wrap_width(ptr noundef %0, ptr noundef %1) #15
  %10 = call fastcc ptr @get_first_visible_line(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #16
  %11 = icmp eq ptr %10, null
  br i1 %11, label %172, label %12

12:                                               ; preds = %5
  %13 = load i32, ptr %6, align 4, !tbaa !153
  %14 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  br label %15

15:                                               ; preds = %164, %12
  %16 = phi i32 [ -1, %12 ], [ %156, %164 ]
  %17 = phi ptr [ %10, %12 ], [ %165, %164 ]
  %18 = phi i32 [ %13, %12 ], [ %169, %164 ]
  %19 = getelementptr inbounds %struct.TextLine, ptr %17, i64 0, i32 2
  %20 = getelementptr inbounds %struct.TextLine, ptr %17, i64 0, i32 4
  br label %21

21:                                               ; preds = %158, %15
  %22 = phi i32 [ %156, %158 ], [ %16, %15 ]
  %23 = phi i32 [ %155, %158 ], [ 1, %15 ]
  %24 = phi i32 [ %154, %158 ], [ 0, %15 ]
  %25 = phi i32 [ %153, %158 ], [ 0, %15 ]
  %26 = phi i32 [ %160, %158 ], [ 0, %15 ]
  %27 = phi i32 [ %152, %158 ], [ %9, %15 ]
  %28 = phi i32 [ %151, %158 ], [ 0, %15 ]
  %29 = phi i32 [ %148, %158 ], [ 0, %15 ]
  %30 = phi i32 [ %150, %158 ], [ 0, %15 ]
  %31 = phi i32 [ %147, %158 ], [ %18, %15 ]
  %32 = load ptr, ptr %19, align 8, !tbaa !115
  %33 = sext i32 %26 to i64
  %34 = getelementptr inbounds i8, ptr %32, i64 %33
  %35 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef %34) #15
  %36 = load ptr, ptr %19, align 8, !tbaa !115
  %37 = getelementptr inbounds i8, ptr %36, i64 %33
  %38 = load i8, ptr %37, align 1, !tbaa !117
  %39 = icmp eq i8 %38, 9
  br i1 %39, label %40, label %59

40:                                               ; preds = %21, %48
  %41 = phi ptr [ %56, %48 ], [ %37, %21 ]
  %42 = phi i32 [ %54, %48 ], [ %35, %21 ]
  %43 = phi i32 [ %50, %48 ], [ %26, %21 ]
  %44 = load i32, ptr %14, align 8, !tbaa !109
  %45 = srem i32 %29, %44
  %46 = sub nsw i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %40
  %49 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %41) #15
  %50 = add nsw i32 %49, %43
  %51 = load ptr, ptr %19, align 8, !tbaa !115
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, ptr %51, i64 %52
  %54 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef %53) #15
  %55 = load ptr, ptr %19, align 8, !tbaa !115
  %56 = getelementptr inbounds i8, ptr %55, i64 %52
  %57 = load i8, ptr %56, align 1, !tbaa !117
  %58 = icmp eq i8 %57, 9
  br i1 %58, label %40, label %59, !llvm.loop !259

59:                                               ; preds = %40, %48, %21
  %60 = phi i32 [ %26, %21 ], [ %43, %40 ], [ %50, %48 ]
  %61 = phi i32 [ %35, %21 ], [ %42, %40 ], [ %54, %48 ]
  %62 = phi ptr [ %37, %21 ], [ %41, %40 ], [ %56, %48 ]
  %63 = phi i32 [ 1, %21 ], [ %46, %40 ], [ 1, %48 ]
  %64 = phi i8 [ %38, %21 ], [ 32, %40 ], [ %57, %48 ]
  br label %65

65:                                               ; preds = %59, %136
  %66 = phi i32 [ %76, %136 ], [ %63, %59 ]
  %67 = phi i32 [ %138, %136 ], [ %22, %59 ]
  %68 = phi i32 [ %144, %136 ], [ %23, %59 ]
  %69 = phi i32 [ %143, %136 ], [ %24, %59 ]
  %70 = phi i32 [ %139, %136 ], [ %25, %59 ]
  %71 = phi i32 [ %142, %136 ], [ %27, %59 ]
  %72 = phi i32 [ %141, %136 ], [ %28, %59 ]
  %73 = phi i32 [ %83, %136 ], [ %29, %59 ]
  %74 = phi i32 [ %140, %136 ], [ %30, %59 ]
  %75 = phi i32 [ %137, %136 ], [ %31, %59 ]
  %76 = add nsw i32 %66, -1
  %77 = icmp slt i32 %75, 0
  br i1 %77, label %146, label %78

78:                                               ; preds = %65
  %79 = icmp eq i32 %75, 0
  %80 = sub nsw i32 %73, %72
  %81 = icmp sle i32 %80, %2
  %82 = select i1 %79, i1 %81, i1 false
  %83 = add nsw i32 %73, %61
  %84 = sub i32 %83, %72
  %85 = icmp sgt i32 %84, %2
  %86 = select i1 %82, i1 %85, i1 false
  br i1 %86, label %95, label %87

87:                                               ; preds = %78
  %88 = sub nsw i32 %73, %71
  %89 = icmp sgt i32 %88, %2
  %90 = sub i32 %83, %71
  %91 = icmp sgt i32 %90, %2
  %92 = select i1 %91, i32 %60, i32 %70
  %93 = select i1 %89, i32 %70, i32 %92
  %94 = icmp sgt i32 %84, %9
  br i1 %94, label %99, label %124

95:                                               ; preds = %78
  %96 = icmp sgt i32 %84, %9
  br i1 %96, label %97, label %124

97:                                               ; preds = %95
  %98 = tail call i32 @llvm.smin.i32(i32 %71, i32 %73)
  br label %102

99:                                               ; preds = %87
  %100 = tail call i32 @llvm.smin.i32(i32 %71, i32 %73)
  %101 = icmp eq i32 %74, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %99, %97
  %103 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %104 = phi i32 [ %60, %97 ], [ %93, %99 ]
  %105 = phi i32 [ %60, %97 ], [ %67, %99 ]
  %106 = icmp sgt i32 %105, %69
  %107 = icmp eq i32 %68, 0
  %108 = select i1 %106, i1 %107, i1 false
  %109 = icmp ne i8 %64, 0
  %110 = and i1 %109, %108
  %111 = select i1 %110, i32 %69, i32 %105
  br label %146

112:                                              ; preds = %99
  %113 = icmp eq i32 %68, 0
  %114 = select i1 %113, i32 %69, i32 %60
  %115 = add nsw i32 %100, %9
  %116 = load i32, ptr %20, align 8, !tbaa !116
  %117 = icmp slt i32 %60, %116
  %118 = sext i1 %117 to i32
  %119 = add nsw i32 %75, %118
  %120 = icmp eq i32 %119, 0
  %121 = sub nsw i32 %83, %100
  %122 = icmp sgt i32 %121, %2
  %123 = select i1 %120, i1 %122, i1 false
  br i1 %123, label %146, label %136

124:                                              ; preds = %95, %87
  %125 = phi i32 [ %60, %95 ], [ %67, %87 ]
  %126 = phi i32 [ %60, %95 ], [ %93, %87 ]
  %127 = phi i32 [ 1, %95 ], [ %74, %87 ]
  switch i8 %64, label %136 [
    i8 45, label %128
    i8 32, label %128
    i8 0, label %128
  ]

128:                                              ; preds = %124, %124, %124
  %129 = icmp eq i32 %127, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %128
  %131 = icmp eq i32 %75, 0
  %132 = icmp sgt i32 %84, %2
  %133 = and i1 %131, %132
  br i1 %133, label %146, label %134

134:                                              ; preds = %130
  %135 = add nsw i32 %73, 1
  br label %136

136:                                              ; preds = %124, %134, %112
  %137 = phi i32 [ %119, %112 ], [ %75, %134 ], [ %75, %124 ]
  %138 = phi i32 [ %67, %112 ], [ %125, %134 ], [ %125, %124 ]
  %139 = phi i32 [ %93, %112 ], [ %126, %134 ], [ %126, %124 ]
  %140 = phi i32 [ 0, %112 ], [ 0, %134 ], [ %127, %124 ]
  %141 = phi i32 [ %100, %112 ], [ %72, %134 ], [ %72, %124 ]
  %142 = phi i32 [ %115, %112 ], [ %135, %134 ], [ %71, %124 ]
  %143 = phi i32 [ %114, %112 ], [ %60, %134 ], [ %69, %124 ]
  %144 = phi i32 [ 1, %112 ], [ 0, %134 ], [ %68, %124 ]
  %145 = icmp eq i32 %76, 0
  br i1 %145, label %146, label %65, !llvm.loop !260

146:                                              ; preds = %136, %65, %112, %128, %130, %102
  %147 = phi i32 [ %75, %102 ], [ %137, %136 ], [ %75, %65 ], [ 0, %112 ], [ %75, %128 ], [ 0, %130 ]
  %148 = phi i32 [ %73, %102 ], [ %83, %136 ], [ %73, %65 ], [ %73, %112 ], [ %73, %128 ], [ %73, %130 ]
  %149 = phi i1 [ true, %102 ], [ false, %136 ], [ true, %65 ], [ true, %112 ], [ true, %128 ], [ true, %130 ]
  %150 = phi i32 [ 1, %102 ], [ %140, %136 ], [ %74, %65 ], [ 0, %112 ], [ 1, %128 ], [ 0, %130 ]
  %151 = phi i32 [ %72, %102 ], [ %141, %136 ], [ %72, %65 ], [ %100, %112 ], [ %72, %128 ], [ %72, %130 ]
  %152 = phi i32 [ %103, %102 ], [ %142, %136 ], [ %71, %65 ], [ %115, %112 ], [ %71, %128 ], [ %71, %130 ]
  %153 = phi i32 [ %104, %102 ], [ %139, %136 ], [ %70, %65 ], [ %93, %112 ], [ %126, %128 ], [ %126, %130 ]
  %154 = phi i32 [ %69, %102 ], [ %143, %136 ], [ %69, %65 ], [ %114, %112 ], [ %69, %128 ], [ %69, %130 ]
  %155 = phi i32 [ %68, %102 ], [ %144, %136 ], [ %68, %65 ], [ 1, %112 ], [ %68, %128 ], [ %68, %130 ]
  %156 = phi i32 [ %111, %102 ], [ %138, %136 ], [ %69, %65 ], [ %93, %112 ], [ %125, %128 ], [ %126, %130 ]
  %157 = icmp eq i8 %64, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %146
  %159 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %62) #15
  %160 = add nsw i32 %159, %60
  br i1 %149, label %172, label %21, !llvm.loop !259

161:                                              ; preds = %146
  %162 = icmp ne i32 %150, 0
  %163 = select i1 %149, i1 true, i1 %162
  br i1 %163, label %172, label %164

164:                                              ; preds = %161
  %165 = load ptr, ptr %17, align 8, !tbaa !222
  %166 = icmp eq ptr %165, null
  %167 = icmp eq i32 %147, 0
  %168 = or i1 %166, %167
  %169 = add nsw i32 %147, -1
  br i1 %168, label %170, label %15

170:                                              ; preds = %164
  %171 = load i32, ptr %20, align 8, !tbaa !116
  br label %172

172:                                              ; preds = %161, %158, %170, %5
  %173 = phi ptr [ null, %5 ], [ %17, %170 ], [ %17, %158 ], [ %17, %161 ]
  %174 = phi i32 [ -1, %5 ], [ %171, %170 ], [ %156, %158 ], [ %156, %161 ]
  %175 = icmp ne ptr %173, null
  %176 = icmp ne i32 %174, -1
  %177 = select i1 %175, i1 %176, i1 false
  br i1 %177, label %178, label %186

178:                                              ; preds = %172
  %179 = icmp eq i8 %4, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %178
  %181 = getelementptr inbounds %struct.Text, ptr %8, i64 0, i32 6
  store ptr %173, ptr %181, align 8, !tbaa !182
  %182 = getelementptr inbounds %struct.Text, ptr %8, i64 0, i32 8
  store i32 %174, ptr %182, align 4, !tbaa !184
  br label %186

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.Text, ptr %8, i64 0, i32 5
  store ptr %173, ptr %184, align 8, !tbaa !84
  %185 = getelementptr inbounds %struct.Text, ptr %8, i64 0, i32 7
  store i32 %174, ptr %185, align 8, !tbaa !85
  br label %186

186:                                              ; preds = %180, %183, %172
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @flatten_width(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !261 {
  %3 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  br label %4

4:                                                ; preds = %16, %2
  %5 = phi i32 [ 0, %2 ], [ %20, %16 ]
  %6 = phi i32 [ 0, %2 ], [ %18, %16 ]
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds i8, ptr %1, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !117
  switch i8 %9, label %14 [
    i8 0, label %21
    i8 9, label %10
  ]

10:                                               ; preds = %4
  %11 = load i32, ptr %3, align 8, !tbaa !109
  %12 = srem i32 %6, %11
  %13 = sub nsw i32 %11, %12
  br label %16

14:                                               ; preds = %4
  %15 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %8) #15
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi i32 [ %13, %10 ], [ %15, %14 ]
  %18 = add nsw i32 %17, %6
  %19 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %8) #15
  %20 = add nsw i32 %19, %5
  br label %4, !llvm.loop !262

21:                                               ; preds = %4
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @flatten_column_to_offset(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !263 {
  %4 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 16
  br label %5

5:                                                ; preds = %21, %3
  %6 = phi i32 [ 0, %3 ], [ %19, %21 ]
  %7 = phi i32 [ 0, %3 ], [ %23, %21 ]
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !117
  switch i8 %10, label %15 [
    i8 0, label %24
    i8 9, label %11
  ]

11:                                               ; preds = %5
  %12 = load i32, ptr %4, align 8, !tbaa !109
  %13 = srem i32 %6, %12
  %14 = sub nsw i32 %12, %13
  br label %17

15:                                               ; preds = %5
  %16 = tail call i32 @BLI_str_utf8_char_width_safe(ptr noundef nonnull %9) #15
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ %14, %11 ], [ %16, %15 ]
  %19 = add nsw i32 %18, %6
  %20 = icmp sgt i32 %19, %2
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %9) #15
  %23 = add nsw i32 %22, %7
  br label %5, !llvm.loop !264

24:                                               ; preds = %5, %17
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_first_visible_line(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !265 {
  %4 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.Text, ptr %5, i64 0, i32 4
  %7 = getelementptr inbounds %struct.SpaceText, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !63
  br label %9

9:                                                ; preds = %16, %3
  %10 = phi i32 [ %8, %3 ], [ %20, %16 ]
  %11 = phi ptr [ %6, %3 ], [ %12, %16 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp sgt i32 %10, 0
  %14 = icmp ne ptr %12, null
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.TextLine, ptr %12, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !115
  %19 = tail call i32 @text_get_visible_lines(ptr noundef %0, ptr noundef %1, ptr noundef %18) #15
  %20 = sub nsw i32 %10, %19
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %9

22:                                               ; preds = %16
  %23 = load i32, ptr %2, align 4, !tbaa !153
  %24 = add nsw i32 %23, %10
  store i32 %24, ptr %2, align 4, !tbaa !153
  br label %25

25:                                               ; preds = %9, %22
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @text_cursor_set_exit(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !266 {
  %3 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.SpaceText, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = tail call zeroext i8 @txt_has_sel(ptr noundef %5) #15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @txt_sel_to_buf(ptr noundef %5) #15
  tail call void @WM_clipboard_text_set(ptr noundef %11, i8 noundef zeroext 1) #15
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %12(ptr noundef %11) #15
  br label %13

13:                                               ; preds = %10, %2
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  %14 = load ptr, ptr %4, align 8, !tbaa !58
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %14) #15
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %15(ptr noundef %7) #15
  ret void
}

; Function Attrs: optsize
declare ptr @txt_sel_to_buf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @PIL_check_seconds_timer() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_string_get_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_str_utf8_as_unicode_step(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @txt_replace_char(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_string_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: optsize
declare i64 @BLI_str_utf8_from_unicode(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @text_find_and_replace(ptr noundef %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) unnamed_addr #0 !PGOFuncName !267 {
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #15
  %5 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  %6 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 26
  %9 = load i8, ptr %8, align 8, !tbaa !117
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %73, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 9
  %13 = load i16, ptr %12, align 8, !tbaa !149
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 64
  %16 = icmp eq i32 %15, 0
  %17 = and i32 %14, 65503
  %18 = select i1 %16, i32 %14, i32 %17
  %19 = icmp eq i16 %2, 0
  br i1 %19, label %51, label %20

20:                                               ; preds = %11
  %21 = tail call zeroext i8 @txt_has_sel(ptr noundef %7) #15
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %51, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @txt_sel_to_buf(ptr noundef %7) #15
  %25 = and i32 %18, 256
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %24) #18
  br label %31

29:                                               ; preds = %23
  %30 = tail call i32 @BLI_strcasecmp(ptr noundef nonnull %8, ptr noundef %24) #15
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.SpaceText, ptr %5, i64 0, i32 27
  tail call void @txt_insert_buf(ptr noundef %7, ptr noundef nonnull %35) #15
  %36 = getelementptr inbounds %struct.Text, ptr %7, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !84
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.TextLine, ptr %37, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !44
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %44(ptr noundef nonnull %41) #15
  %45 = load ptr, ptr %36, align 8, !tbaa !84
  %46 = getelementptr inbounds %struct.TextLine, ptr %45, i64 0, i32 3
  store ptr null, ptr %46, align 8, !tbaa !44
  br label %47

47:                                               ; preds = %43, %39, %34
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 201326593, ptr noundef nonnull %7) #15
  %48 = tail call ptr @CTX_wm_space_text(ptr noundef %0) #15
  tail call void @text_drawcache_tag_update(ptr noundef %48, i32 noundef 1) #15
  br label %49

49:                                               ; preds = %47, %31
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %50(ptr noundef %24) #15
  br label %51

51:                                               ; preds = %49, %20, %11
  %52 = phi i1 [ %33, %49 ], [ true, %20 ], [ true, %11 ]
  %53 = and i32 %18, 32
  %54 = and i32 %18, 256
  %55 = tail call i32 @txt_find_string(ptr noundef %7, ptr noundef nonnull %8, i32 noundef %53, i32 noundef %54) #15
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %7) #15
  br label %73

58:                                               ; preds = %51
  %59 = and i32 %18, 64
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %7, align 8, !tbaa !90
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 29
  %66 = load ptr, ptr %65, align 8, !tbaa !268
  br label %67

67:                                               ; preds = %61, %64
  %68 = phi ptr [ %66, %64 ], [ %62, %61 ]
  store ptr %68, ptr %6, align 8, !tbaa !58
  tail call void @txt_move_toline(ptr noundef %68, i32 noundef 0, i8 noundef zeroext 0) #15
  tail call void @text_update_cursor_moved(ptr noundef %0) #15
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 204603392, ptr noundef %68) #15
  br label %73

69:                                               ; preds = %58
  br i1 %52, label %70, label %73

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %72 = load ptr, ptr %71, align 8, !tbaa !86
  tail call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %72, i32 noundef 32, ptr noundef nonnull @.str.202, ptr noundef nonnull %8) #15
  br label %73

73:                                               ; preds = %57, %69, %70, %67, %3
  %74 = phi i32 [ 2, %3 ], [ 4, %67 ], [ 4, %70 ], [ 4, %69 ], [ 4, %57 ]
  ret i32 %74
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @BLI_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @txt_find_string(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_text_file_modified_ignore(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BKE_text_file_modified_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemEnumO_ptr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_text_to_object(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind }
attributes #18 = { nounwind optsize willreturn memory(read) }
attributes #19 = { nounwind optsize willreturn memory(none) }

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
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!50, !37, i64 0}
!50 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !42, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !51, i64 152, !40, i64 184}
!51 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!52 = !{!50, !37, i64 8}
!53 = !{!50, !37, i64 24}
!54 = !{!50, !37, i64 32}
!55 = !{!50, !37, i64 72}
!56 = !{!50, !40, i64 184}
!57 = !{!"text_ops.c:text_new_exec"}
!58 = !{!59, !37, i64 56}
!59 = !{!"SpaceText", !37, i64 0, !37, i64 8, !42, i64 16, !41, i64 32, !60, i64 36, !38, i64 40, !37, i64 56, !41, i64 64, !41, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !38, i64 78, !38, i64 79, !41, i64 80, !41, i64 84, !41, i64 88, !40, i64 92, !40, i64 94, !40, i64 96, !40, i64 98, !60, i64 100, !61, i64 104, !61, i64 120, !41, i64 136, !41, i64 140, !38, i64 144, !38, i64 400, !40, i64 656, !40, i64 658, !38, i64 660, !37, i64 664, !38, i64 672}
!60 = !{!"float", !38, i64 0}
!61 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!62 = !{!59, !41, i64 80}
!63 = !{!59, !41, i64 64}
!64 = !{!60, !60, i64 0}
!65 = !{!"text_ops.c:text_new_poll"}
!66 = !{!50, !37, i64 48}
!67 = !{!50, !37, i64 56}
!68 = !{!50, !37, i64 88}
!69 = !{!"text_ops.c:text_open_exec"}
!70 = !{!71, !37, i64 112}
!71 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !42, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}
!72 = !{!73, !37, i64 0}
!73 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !42, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!74 = !{!71, !37, i64 96}
!75 = !{!76, !37, i64 24}
!76 = !{!"PropertyPointerRNA", !77, i64 0, !37, i64 24}
!77 = !{!"PointerRNA", !78, i64 0, !37, i64 8, !37, i64 16}
!78 = !{!"", !37, i64 0}
!79 = !{!"text_ops.c:text_open_invoke"}
!80 = !{!35, !37, i64 120}
!81 = !{i32 2, i32 5}
!82 = !{!"text_ops.c:text_open_cancel"}
!83 = !{!"text_ops.c:text_reload_exec"}
!84 = !{!35, !37, i64 152}
!85 = !{!35, !41, i64 168}
!86 = !{!71, !37, i64 120}
!87 = !{!"text_ops.c:text_edit_poll"}
!88 = !{!"text_ops.c:text_unlink_exec"}
!89 = !{!35, !37, i64 8}
!90 = !{!35, !37, i64 0}
!91 = !{!"text_ops.c:text_unlink_poll"}
!92 = !{!"text_ops.c:text_make_internal_exec"}
!93 = !{!35, !41, i64 128}
!94 = !{!"text_ops.c:text_save_exec"}
!95 = !{!"text_ops.c:text_save_poll"}
!96 = !{i32 0, i32 2}
!97 = !{!"text_ops.c:text_save_as_exec"}
!98 = !{!"text_ops.c:text_save_as_invoke"}
!99 = !{!"text_ops.c:text_run_script_poll"}
!100 = !{!"text_ops.c:text_run_script_exec"}
!101 = !{!"text_ops.c:text_refresh_pyconstraints_exec"}
!102 = !{!"text_ops.c:text_paste_exec"}
!103 = !{!"text_ops.c:text_duplicate_line_exec"}
!104 = !{!"text_ops.c:text_copy_exec"}
!105 = !{!"text_ops.c:text_cut_exec"}
!106 = !{!"text_ops.c:text_indent_exec"}
!107 = !{!"text_ops.c:text_unindent_exec"}
!108 = !{!"text_ops.c:text_line_break_exec"}
!109 = !{!59, !41, i64 88}
!110 = distinct !{!110, !48}
!111 = !{!45, !37, i64 8}
!112 = !{!"text_ops.c:text_comment_exec"}
!113 = !{!"text_ops.c:text_uncomment_exec"}
!114 = !{!"text_ops.c:text_convert_whitespace_exec"}
!115 = !{!45, !37, i64 16}
!116 = !{!45, !41, i64 32}
!117 = !{!38, !38, i64 0}
!118 = distinct !{!118, !48}
!119 = distinct !{!119, !48}
!120 = distinct !{!120, !48}
!121 = distinct !{!121, !48}
!122 = distinct !{!122, !48}
!123 = distinct !{!123, !48}
!124 = distinct !{!124, !48}
!125 = !{!"text_ops.c:text_select_all_exec"}
!126 = !{!"text_ops.c:text_select_line_exec"}
!127 = !{!"text_ops.c:text_select_word_exec"}
!128 = !{!"text_ops.c:move_lines_exec"}
!129 = !{!"text_ops.c:text_move_exec"}
!130 = !{!"text_ops.c:text_move_select_exec"}
!131 = !{!"text_ops.c:text_jump_invoke"}
!132 = !{!133, !40, i64 8948}
!133 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 20, !38, i64 788, !38, i64 1556, !38, i64 2580, !38, i64 3348, !38, i64 4116, !38, i64 4884, !38, i64 5652, !38, i64 6420, !38, i64 7444, !41, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !40, i64 8496, !40, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !42, i64 8536, !42, i64 8552, !42, i64 8568, !42, i64 8584, !42, i64 8600, !42, i64 8616, !42, i64 8632, !38, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !38, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !41, i64 8912, !41, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !38, i64 8940, !38, i64 8941, !38, i64 8942, !38, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !60, i64 8956, !60, i64 8960, !41, i64 8964, !40, i64 8968, !40, i64 8970, !60, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !134, i64 8984, !38, i64 9760, !38, i64 9772, !40, i64 9788, !38, i64 9790, !38, i64 9791, !38, i64 9792, !38, i64 9872, !41, i64 10896, !41, i64 10900, !60, i64 10904, !60, i64 10908, !41, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !135, i64 10928}
!134 = !{!"ColorBand", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8}
!135 = !{!"WalkNavigation", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !40, i64 24, !38, i64 26}
!136 = !{!"text_ops.c:text_jump_exec"}
!137 = !{!35, !37, i64 136}
!138 = !{!35, !37, i64 144}
!139 = !{!"text_ops.c:text_delete_exec"}
!140 = !{!"text_ops.c:text_toggle_overwrite_exec"}
!141 = !{!59, !40, i64 96}
!142 = !{!50, !37, i64 64}
!143 = !{!"text_ops.c:text_scroll_exec"}
!144 = !{!133, !40, i64 8482}
!145 = !{!"text_ops.c:text_scroll_invoke"}
!146 = !{!147, !41, i64 16}
!147 = !{!"TextScroll", !38, i64 0, !38, i64 8, !41, i64 16, !41, i64 20, !41, i64 24}
!148 = !{!147, !41, i64 24}
!149 = !{!59, !40, i64 72}
!150 = !{!151, !40, i64 16}
!151 = !{!"wmEvent", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 36, !38, i64 42, !38, i64 43, !40, i64 44, !40, i64 46, !41, i64 48, !41, i64 52, !43, i64 56, !41, i64 64, !41, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !37, i64 88, !37, i64 96, !40, i64 104, !40, i64 106, !41, i64 108, !37, i64 112}
!152 = !{!151, !41, i64 20}
!153 = !{!41, !41, i64 0}
!154 = !{!151, !41, i64 24}
!155 = !{!151, !41, i64 48}
!156 = !{!59, !38, i64 78}
!157 = !{!151, !41, i64 52}
!158 = !{!59, !40, i64 658}
!159 = !{!147, !41, i64 20}
!160 = !{!"text_ops.c:text_scroll_modal"}
!161 = !{!59, !41, i64 68}
!162 = !{!"text_ops.c:text_scroll_cancel"}
!163 = !{!"text_ops.c:text_scroll_poll"}
!164 = !{!"text_ops.c:text_scroll_bar_invoke"}
!165 = !{!59, !41, i64 120}
!166 = !{!59, !41, i64 124}
!167 = !{!59, !41, i64 128}
!168 = !{!59, !41, i64 132}
!169 = !{!170, !40, i64 210}
!170 = !{!"ARegion", !37, i64 0, !37, i64 8, !171, i64 16, !61, i64 176, !61, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !60, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !37, i64 240, !42, i64 248, !42, i64 264, !42, i64 280, !42, i64 296, !42, i64 312, !42, i64 328, !42, i64 344, !37, i64 360, !37, i64 368, !37, i64 376}
!171 = !{!"View2D", !172, i64 0, !172, i64 16, !61, i64 32, !61, i64 48, !61, i64 64, !38, i64 80, !38, i64 88, !60, i64 96, !60, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !37, i64 128, !41, i64 136, !41, i64 140, !37, i64 144, !37, i64 152}
!172 = !{!"rctf", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12}
!173 = !{!170, !41, i64 176}
!174 = !{i32 -1073741824, i32 1073741824}
!175 = !{!170, !41, i64 184}
!176 = !{!"text_ops.c:text_region_scroll_poll"}
!177 = !{!170, !40, i64 214}
!178 = !{!"text_ops.c:text_set_selection_invoke"}
!179 = !{!180, !41, i64 0}
!180 = !{!"SetSelection", !41, i64 0, !41, i64 4, !41, i64 8, !38, i64 12}
!181 = !{!40, !40, i64 0}
!182 = !{!35, !37, i64 160}
!183 = !{!180, !41, i64 8}
!184 = !{!35, !41, i64 172}
!185 = !{!180, !41, i64 4}
!186 = !{!"text_ops.c:text_set_selection_modal"}
!187 = !{!"text_ops.c:text_set_selection_cancel"}
!188 = !{!"text_ops.c:text_region_edit_poll"}
!189 = !{!"text_ops.c:text_cursor_set_invoke"}
!190 = !{!"text_ops.c:text_cursor_set_exec"}
!191 = !{!"text_ops.c:text_line_number_invoke"}
!192 = !{!59, !41, i64 84}
!193 = !{!59, !38, i64 79}
!194 = !{!151, !38, i64 42}
!195 = !{!43, !43, i64 0}
!196 = !{!"text_ops.c:text_insert_exec"}
!197 = !{!198, !198, i64 0}
!198 = !{!"long", !38, i64 0}
!199 = distinct !{!199, !48}
!200 = distinct !{!200, !48}
!201 = !{!"text_ops.c:text_insert_invoke"}
!202 = !{!151, !40, i64 74}
!203 = !{!151, !40, i64 78}
!204 = !{!"text_ops.c:text_find_exec"}
!205 = !{!"text_ops.c:text_replace_exec"}
!206 = !{!"text_ops.c:text_find_set_selected_exec"}
!207 = !{!"text_ops.c:text_replace_set_selected_exec"}
!208 = !{!"text_ops.c:text_resolve_conflict_exec"}
!209 = !{!"text_ops.c:text_resolve_conflict_invoke"}
!210 = !{!71, !37, i64 88}
!211 = !{!"text_ops.c:text_to_3d_object_exec"}
!212 = !{!"text_ops.c:text_open_init"}
!213 = !{!"text_ops.c:txt_screen_clamp"}
!214 = !{!"text_ops.c:txt_write_file"}
!215 = distinct !{!215, !48}
!216 = !{!217, !198, i64 88}
!217 = !{!"stat", !198, i64 0, !198, i64 8, !198, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !198, i64 40, !198, i64 48, !198, i64 56, !198, i64 64, !218, i64 72, !218, i64 88, !218, i64 104, !38, i64 120}
!218 = !{!"timespec", !198, i64 0, !198, i64 8}
!219 = !{!35, !43, i64 200}
!220 = !{!"text_ops.c:txt_copy_clipboard"}
!221 = !{!"text_ops.c:txt_copy_selected"}
!222 = !{!45, !37, i64 0}
!223 = distinct !{!223, !48}
!224 = distinct !{!224, !48}
!225 = !{!"text_ops.c:text_move_cursor"}
!226 = !{!59, !41, i64 136}
!227 = !{!"text_ops.c:txt_wrap_move_bol"}
!228 = distinct !{!228, !48}
!229 = distinct !{!229, !48}
!230 = !{!"text_ops.c:txt_wrap_move_eol"}
!231 = distinct !{!231, !48}
!232 = distinct !{!232, !48}
!233 = !{!"text_ops.c:txt_wrap_move_up"}
!234 = !{!"text_ops.c:txt_wrap_move_down"}
!235 = !{!"text_ops.c:cursor_skip"}
!236 = distinct !{!236, !48}
!237 = distinct !{!237, !48}
!238 = !{!"text_ops.c:text_get_cursor_rel"}
!239 = distinct !{!239, !48}
!240 = distinct !{!240, !48}
!241 = !{!"text_ops.c:cursor_skip_find_line"}
!242 = !{!"text_ops.c:txt_screen_skip"}
!243 = !{!"text_ops.c:text_scroll_apply"}
!244 = !{!59, !60, i64 100}
!245 = !{!"text_ops.c:scroll_exit"}
!246 = !{!"text_ops.c:BLI_rcti_cent_x"}
!247 = !{!61, !41, i64 0}
!248 = !{!61, !41, i64 4}
!249 = !{!"text_ops.c:BLI_rcti_cent_y"}
!250 = !{!61, !41, i64 8}
!251 = !{!61, !41, i64 12}
!252 = !{!"text_ops.c:text_cursor_set_apply"}
!253 = !{!170, !40, i64 208}
!254 = !{!"text_ops.c:text_cursor_set_to_pos"}
!255 = distinct !{!255, !48}
!256 = distinct !{!256, !48}
!257 = !{!"text_ops.c:text_pixel_x_to_column"}
!258 = !{!"text_ops.c:text_cursor_set_to_pos_wrapped"}
!259 = distinct !{!259, !48}
!260 = distinct !{!260, !48}
!261 = !{!"text_ops.c:flatten_width"}
!262 = distinct !{!262, !48}
!263 = !{!"text_ops.c:flatten_column_to_offset"}
!264 = distinct !{!264, !48}
!265 = !{!"text_ops.c:get_first_visible_line"}
!266 = !{!"text_ops.c:text_cursor_set_exit"}
!267 = !{!"text_ops.c:text_find_and_replace"}
!268 = !{!269, !37, i64 1376}
!269 = !{!"Main", !37, i64 0, !37, i64 8, !38, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !198, i64 1048, !38, i64 1056, !40, i64 1072, !37, i64 1080, !42, i64 1088, !42, i64 1104, !42, i64 1120, !42, i64 1136, !42, i64 1152, !42, i64 1168, !42, i64 1184, !42, i64 1200, !42, i64 1216, !42, i64 1232, !42, i64 1248, !42, i64 1264, !42, i64 1280, !42, i64 1296, !42, i64 1312, !42, i64 1328, !42, i64 1344, !42, i64 1360, !42, i64 1376, !42, i64 1392, !42, i64 1408, !42, i64 1424, !42, i64 1440, !42, i64 1456, !42, i64 1472, !42, i64 1488, !42, i64 1504, !42, i64 1520, !42, i64 1536, !42, i64 1552, !42, i64 1568, !42, i64 1584, !42, i64 1600, !42, i64 1616, !38, i64 1632, !37, i64 1888, !37, i64 1896}
