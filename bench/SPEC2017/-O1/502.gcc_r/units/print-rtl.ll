; ModuleID = 'print-rtl.c'
source_filename = "print-rtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.cselib_val_struct = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.reg_attrs = type { ptr, i64 }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@print_rtx_head = dso_local local_unnamed_addr global ptr @.str, align 8
@flag_dump_unnumbered = dso_local local_unnamed_addr global i32 0, align 4
@flag_dump_unnumbered_links = dso_local local_unnamed_addr global i32 0, align 4
@flag_simple = dso_local local_unnamed_addr global i32 0, align 4
@dump_flags = external local_unnamed_addr global i32, align 4
@sawclose = internal unnamed_addr global i1 false, align 4
@indent = internal unnamed_addr global i32 0, align 4
@outfile = internal unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@debug_rtx_count = dso_local local_unnamed_addr global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"insn uid %d not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(nil)\0A\00", align 1
@dump_for_graph = dso_local local_unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"\0A%s%*s\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"(??? bad code %d\0A%s%*s)\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"(%s\00", align 1
@rtx_name = external local_unnamed_addr constant [139 x ptr], align 16
@.str.8 = private unnamed_addr constant [3 x i8] c"/s\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"/v\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"/u\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"/f\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"/j\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"/c\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"/i\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@reg_note_name = external local_unnamed_addr constant [0 x ptr], align 8
@mode_name = external local_unnamed_addr constant [87 x ptr], align 16
@.str.16 = private unnamed_addr constant [28 x i8] c" <debug string placeholder>\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c" [uninit]\00", align 1
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@.str.18 = private unnamed_addr constant [6 x i8] c" \\\22\\\22\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c" \22\22\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c" (\\\22%s\\\22)\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c" (\22%s\22)\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c" [%d]\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c" [flags 0x%x]\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c" #\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c" [bb %d]\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"\0A%s%*s -> %d\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c" %u:%u\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c" @\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c" D#%i\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c" [0x%lx]\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c" %s:%i\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c" %d %s\00", align 1
@reg_names = external local_unnamed_addr global [53 x ptr], align 16
@.str.39 = private unnamed_addr constant [26 x i8] c" %d virtual-incoming-args\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c" %d virtual-stack-vars\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c" %d virtual-stack-dynamic\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c" %d virtual-outgoing-args\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c" %d virtual-cfa\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c" %d virtual-reg-%d\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"orig:%i\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"+%ld\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c" ]\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c" {%s}\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@note_insn_name = external local_unnamed_addr constant [13 x ptr], align 16
@.str.50 = private unnamed_addr constant [13 x i8] c" [# deleted]\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c" [%d deleted]\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c" 0\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c" {null}\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c" {\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c" Unknown\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c" %i\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"print-rtl.c\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@final_insns_dump_p = external local_unnamed_addr global i8, align 1
@.str.60 = private unnamed_addr constant [6 x i8] c" [%ld\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@.str.61 = private unnamed_addr constant [6 x i8] c" S%ld\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c" A%u\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c" AS%u\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c" [%d uses]\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c" [entry]\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c" [global entry]\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c" [weak entry]\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #13
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #13
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #13
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #13
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #13
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #13
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @print_mem_expr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = tail call i32 @fputc(i32 noundef 32, ptr noundef %0)
  %4 = load i32, ptr @dump_flags, align 4, !tbaa !50
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %1, i32 noundef %4) #13
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @print_inline_rtx(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = load i1, ptr @sawclose, align 4
  %5 = load i32, ptr @indent, align 4, !tbaa !50
  store i1 false, ptr @sawclose, align 4
  store i32 %2, ptr @indent, align 4, !tbaa !50
  store ptr %0, ptr @outfile, align 8, !tbaa !35
  tail call fastcc void @print_rtx(ptr noundef %1)
  store i1 %4, ptr @sawclose, align 4
  store i32 %5, ptr @indent, align 4, !tbaa !50
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @print_rtx(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = alloca [60 x i8], align 16
  %3 = load i1, ptr @sawclose, align 4
  br i1 %3, label %4, label %16

4:                                                ; preds = %1
  %5 = load i32, ptr @flag_simple, align 4, !tbaa !50
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr @outfile, align 8, !tbaa !35
  br i1 %6, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @fputc(i32 noundef 32, ptr noundef %7)
  br label %15

10:                                               ; preds = %4
  %11 = load ptr, ptr @print_rtx_head, align 8, !tbaa !35
  %12 = load i32, ptr @indent, align 4, !tbaa !50
  %13 = shl nsw i32 %12, 1
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef %11, i32 noundef %13, ptr noundef nonnull @.str)
  br label %15

15:                                               ; preds = %10, %8
  store i1 false, ptr @sawclose, align 4
  br label %16

16:                                               ; preds = %15, %1
  %17 = icmp eq ptr %0, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = load ptr, ptr @outfile, align 8, !tbaa !35
  %20 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 5, i64 1, ptr %19)
  br label %842

21:                                               ; preds = %16
  %22 = load i32, ptr %0, align 8
  %23 = and i32 %22, 65535
  %24 = icmp ugt i32 %23, 139
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load ptr, ptr @outfile, align 8, !tbaa !35
  %27 = load ptr, ptr @print_rtx_head, align 8, !tbaa !35
  %28 = load i32, ptr @indent, align 4, !tbaa !50
  %29 = shl nsw i32 %28, 1
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.6, i32 noundef %23, ptr noundef %27, i32 noundef %29, ptr noundef nonnull @.str)
  br label %842

31:                                               ; preds = %21
  %32 = add nsw i32 %23, -7
  %33 = icmp ult i32 %32, 4
  %34 = load i32, ptr @dump_for_graph, align 4, !tbaa !50
  %35 = icmp ne i32 %34, 0
  %36 = icmp ult i32 %32, 7
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, ptr @indent, align 4, !tbaa !50
  br label %157

39:                                               ; preds = %31
  %40 = load i32, ptr @flag_simple, align 4, !tbaa !50
  %41 = icmp ne i32 %40, 0
  %42 = icmp eq i32 %23, 30
  %43 = and i1 %42, %41
  %44 = load ptr, ptr @outfile, align 8, !tbaa !35
  br i1 %43, label %45, label %47

45:                                               ; preds = %39
  %46 = tail call i32 @fputc(i32 noundef 40, ptr noundef %44)
  br label %52

47:                                               ; preds = %39
  %48 = zext nneg i32 %23 to i64
  %49 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !35
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.7, ptr noundef %50)
  br label %52

52:                                               ; preds = %47, %45
  %53 = load i32, ptr @flag_simple, align 4, !tbaa !50
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %157

55:                                               ; preds = %52
  %56 = load i32, ptr %0, align 8
  %57 = and i32 %56, 268435456
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr @outfile, align 8, !tbaa !35
  %61 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %60)
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i32, ptr %0, align 8
  %64 = and i32 %63, 134217728
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr @outfile, align 8, !tbaa !35
  %68 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %67)
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i32, ptr %0, align 8
  %71 = and i32 %70, 67108864
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr @outfile, align 8, !tbaa !35
  %75 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 2, i64 1, ptr %74)
  br label %76

76:                                               ; preds = %73, %69
  %77 = load i32, ptr %0, align 8
  %78 = and i32 %77, 1073741824
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr @outfile, align 8, !tbaa !35
  %82 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %81)
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i32, ptr %0, align 8
  %85 = and i32 %84, 16777216
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr @outfile, align 8, !tbaa !35
  %89 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 2, i64 1, ptr %88)
  br label %90

90:                                               ; preds = %87, %83
  %91 = load i32, ptr %0, align 8
  %92 = and i32 %91, 33554432
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr @outfile, align 8, !tbaa !35
  %96 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 2, i64 1, ptr %95)
  br label %97

97:                                               ; preds = %94, %90
  %98 = load i32, ptr %0, align 8
  %99 = icmp sgt i32 %98, -1
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load ptr, ptr @outfile, align 8, !tbaa !35
  %102 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 2, i64 1, ptr %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32, ptr %0, align 8
  %105 = and i32 %104, 65535
  %106 = add nsw i32 %105, -3
  %107 = icmp ult i32 %106, 2
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = lshr i32 %104, 16
  %110 = and i32 %109, 255
  %111 = icmp ult i32 %110, 31
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = zext nneg i32 %110 to i64
  %114 = getelementptr inbounds [0 x ptr], ptr @reg_note_name, i64 0, i64 %113
  br label %122

115:                                              ; preds = %103, %108
  %116 = lshr i32 %104, 16
  %117 = and i32 %116, 255
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %115
  %120 = zext nneg i32 %117 to i64
  %121 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %120
  br label %122

122:                                              ; preds = %112, %119
  %123 = phi ptr [ %121, %119 ], [ %114, %112 ]
  %124 = load ptr, ptr @outfile, align 8, !tbaa !35
  %125 = load ptr, ptr %123, align 8, !tbaa !35
  %126 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef nonnull @.str.15, ptr noundef %125)
  br label %127

127:                                              ; preds = %122, %115
  %128 = load i32, ptr %0, align 8
  %129 = and i32 %128, 65535
  %130 = icmp eq i32 %129, 138
  br i1 %130, label %131, label %157

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !46
  %134 = load i64, ptr %133, align 8
  %135 = and i64 %134, 65535
  %136 = icmp eq i64 %135, 28
  %137 = load ptr, ptr @outfile, align 8, !tbaa !35
  br i1 %136, label %138, label %140

138:                                              ; preds = %131
  %139 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 27, i64 1, ptr %137)
  br label %143

140:                                              ; preds = %131
  %141 = tail call i32 @fputc(i32 noundef 32, ptr noundef %137)
  %142 = load i32, ptr @dump_flags, align 4, !tbaa !50
  tail call void @print_generic_expr(ptr noundef %137, ptr noundef nonnull %133, i32 noundef %142) #13
  br label %143

143:                                              ; preds = %140, %138
  %144 = load ptr, ptr @outfile, align 8, !tbaa !35
  %145 = tail call i32 @fputc(i32 noundef 32, ptr noundef %144)
  %146 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %147 = load ptr, ptr %146, align 8, !tbaa !46
  tail call fastcc void @print_rtx(ptr noundef %147)
  %148 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %149 = load i32, ptr %148, align 8, !tbaa !46
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %154

151:                                              ; preds = %143
  %152 = load ptr, ptr @outfile, align 8, !tbaa !35
  %153 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 9, i64 1, ptr %152)
  br label %154

154:                                              ; preds = %151, %143
  store i1 true, ptr @sawclose, align 4
  %155 = load i8, ptr getelementptr inbounds ([139 x i8], ptr @rtx_length, i64 0, i64 138), align 2, !tbaa !46
  %156 = zext i8 %155 to i32
  br label %157

157:                                              ; preds = %52, %154, %127, %38
  %158 = phi i32 [ 3, %38 ], [ 0, %52 ], [ %156, %154 ], [ 0, %127 ]
  %159 = load i32, ptr %0, align 8
  %160 = and i32 %159, 65535
  %161 = icmp eq i32 %160, 32
  br i1 %161, label %162, label %176

162:                                              ; preds = %157
  %163 = lshr i32 %159, 16
  %164 = and i32 %163, 255
  %165 = zext nneg i32 %164 to i64
  %166 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !46
  %168 = add i8 %167, -8
  %169 = icmp ult i8 %168, 10
  br i1 %169, label %170, label %176

170:                                              ; preds = %162
  %171 = zext nneg i8 %168 to i16
  %172 = lshr i16 523, %171
  %173 = and i16 %172, 1
  %174 = icmp eq i16 %173, 0
  %175 = select i1 %174, i32 %158, i32 5
  br label %176

176:                                              ; preds = %170, %162, %157
  %177 = phi i32 [ %158, %157 ], [ %158, %162 ], [ %175, %170 ]
  %178 = load i32, ptr %0, align 8
  %179 = and i32 %178, 65535
  %180 = zext nneg i32 %179 to i64
  %181 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %180
  %182 = load i8, ptr %181, align 1, !tbaa !46
  %183 = zext i8 %182 to i32
  %184 = icmp slt i32 %177, %183
  br i1 %184, label %185, label %684

185:                                              ; preds = %176
  %186 = zext nneg i32 %160 to i64
  %187 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %186
  %188 = load ptr, ptr %187, align 8, !tbaa !35
  %189 = zext nneg i32 %177 to i64
  %190 = getelementptr inbounds i8, ptr %188, i64 %189
  %191 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %192 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %193 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %194 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %195 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %196 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %197 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %198 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %199 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %200 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %201 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  br label %202

202:                                              ; preds = %185, %675
  %203 = phi i64 [ %189, %185 ], [ %676, %675 ]
  %204 = phi i32 [ %179, %185 ], [ %678, %675 ]
  %205 = phi i32 [ %178, %185 ], [ %677, %675 ]
  %206 = phi ptr [ %190, %185 ], [ %207, %675 ]
  %207 = getelementptr inbounds i8, ptr %206, i64 1
  %208 = load i8, ptr %206, align 1, !tbaa !46
  switch i8 %208, label %674 [
    i8 84, label %209
    i8 83, label %209
    i8 115, label %209
    i8 48, label %226
    i8 101, label %354
    i8 69, label %367
    i8 86, label %367
    i8 119, label %418
    i8 105, label %435
    i8 110, label %587
    i8 117, label %595
    i8 98, label %649
    i8 116, label %658
    i8 42, label %662
    i8 66, label %665
  ]

209:                                              ; preds = %202, %202, %202
  %210 = getelementptr inbounds [1 x %union.rtunion_def], ptr %201, i64 0, i64 %203
  %211 = load ptr, ptr %210, align 8, !tbaa !46
  %212 = icmp eq ptr %211, null
  %213 = load i32, ptr @dump_for_graph, align 4, !tbaa !50
  %214 = icmp eq i32 %213, 0
  br i1 %212, label %215, label %219

215:                                              ; preds = %209
  %216 = select i1 %214, ptr @.str.19, ptr @.str.18
  %217 = load ptr, ptr @outfile, align 8, !tbaa !35
  %218 = tail call i32 @fputs(ptr noundef nonnull %216, ptr noundef %217)
  br label %225

219:                                              ; preds = %209
  %220 = load ptr, ptr @outfile, align 8, !tbaa !35
  br i1 %214, label %223, label %221

221:                                              ; preds = %219
  %222 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %220, ptr noundef nonnull @.str.20, ptr noundef nonnull %211)
  br label %225

223:                                              ; preds = %219
  %224 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %220, ptr noundef nonnull @.str.21, ptr noundef nonnull %211)
  br label %225

225:                                              ; preds = %221, %223, %215
  store i1 true, ptr @sawclose, align 4
  br label %675

226:                                              ; preds = %202
  %227 = icmp eq i64 %203, 1
  %228 = icmp eq i32 %204, 37
  %229 = and i1 %227, %228
  br i1 %229, label %230, label %237

230:                                              ; preds = %226
  %231 = load i32, ptr %199, align 8, !tbaa !46
  %232 = load i32, ptr %200, align 8, !tbaa !46
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %675, label %234

234:                                              ; preds = %230
  %235 = load ptr, ptr @outfile, align 8, !tbaa !35
  %236 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %235, ptr noundef nonnull @.str.22, i32 noundef %232)
  br label %675

237:                                              ; preds = %226
  %238 = icmp eq i32 %204, 45
  %239 = and i1 %227, %238
  br i1 %239, label %240, label %247

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %242 = load i32, ptr %241, align 8, !tbaa !46
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %675, label %244

244:                                              ; preds = %240
  %245 = load ptr, ptr @outfile, align 8, !tbaa !35
  %246 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %245, ptr noundef nonnull @.str.23, i32 noundef %242)
  br label %675

247:                                              ; preds = %237
  %248 = trunc i64 %203 to i32
  switch i32 %248, label %675 [
    i32 2, label %249
    i32 4, label %264
    i32 8, label %318
    i32 0, label %334
  ]

249:                                              ; preds = %247
  br i1 %238, label %250, label %262

250:                                              ; preds = %249
  %251 = and i32 %205, 67108864
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %250
  %254 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %255 = load ptr, ptr %254, align 8, !tbaa !46
  br label %256

256:                                              ; preds = %250, %253
  %257 = phi ptr [ %255, %253 ], [ null, %250 ]
  %258 = icmp eq ptr %257, null
  br i1 %258, label %675, label %259

259:                                              ; preds = %256
  %260 = load ptr, ptr @outfile, align 8, !tbaa !35
  %261 = load i32, ptr @dump_flags, align 4, !tbaa !50
  tail call void @print_node_brief(ptr noundef %260, ptr noundef nonnull @.str, ptr noundef nonnull %257, i32 noundef %261) #13
  br label %675

262:                                              ; preds = %249
  %263 = trunc i64 %203 to i32
  switch i32 %263, label %675 [
    i32 4, label %264
    i32 8, label %318
    i32 0, label %334
  ]

264:                                              ; preds = %262, %247
  %265 = icmp eq i32 %204, 13
  br i1 %265, label %266, label %316

266:                                              ; preds = %264
  %267 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %268 = load i32, ptr %267, align 8, !tbaa !46
  switch i32 %268, label %675 [
    i32 7, label %269
    i32 8, label %269
    i32 2, label %280
    i32 3, label %280
    i32 10, label %284
    i32 1, label %293
    i32 11, label %302
    i32 9, label %311
  ]

269:                                              ; preds = %266, %266
  %270 = load i32, ptr @flag_dump_unnumbered, align 4, !tbaa !50
  %271 = icmp eq i32 %270, 0
  %272 = load ptr, ptr @outfile, align 8, !tbaa !35
  br i1 %271, label %275, label %273

273:                                              ; preds = %269
  %274 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 2, i64 1, ptr %272)
  br label %279

275:                                              ; preds = %269
  %276 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %277 = load i32, ptr %276, align 8, !tbaa !46
  %278 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %272, ptr noundef nonnull @.str.25, i32 noundef %277)
  br label %279

279:                                              ; preds = %275, %273
  store i1 true, ptr @sawclose, align 4
  br label %675

280:                                              ; preds = %266, %266
  %281 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %282 = load ptr, ptr @outfile, align 8, !tbaa !35
  %283 = load ptr, ptr %281, align 8, !tbaa !46
  tail call void @dump_addr(ptr noundef %282, ptr noundef nonnull @.str.26, ptr noundef %283) #13
  store i1 true, ptr @sawclose, align 4
  br label %675

284:                                              ; preds = %266
  %285 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %286 = load ptr, ptr %285, align 8, !tbaa !46
  %287 = icmp eq ptr %286, null
  br i1 %287, label %675, label %288

288:                                              ; preds = %284
  %289 = load ptr, ptr @outfile, align 8, !tbaa !35
  %290 = getelementptr inbounds %struct.basic_block_def, ptr %286, i64 0, i32 9
  %291 = load i32, ptr %290, align 8, !tbaa !54
  %292 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %289, ptr noundef nonnull @.str.27, i32 noundef %291)
  br label %675

293:                                              ; preds = %266
  %294 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %295 = load ptr, ptr %294, align 8, !tbaa !46
  %296 = icmp eq ptr %295, null
  %297 = load ptr, ptr @outfile, align 8, !tbaa !35
  br i1 %296, label %300, label %298

298:                                              ; preds = %293
  %299 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %297, ptr noundef nonnull @.str.21, ptr noundef nonnull %295)
  br label %675

300:                                              ; preds = %293
  %301 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 3, i64 1, ptr %297)
  br label %675

302:                                              ; preds = %266
  %303 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %304 = load ptr, ptr %303, align 8, !tbaa !46
  %305 = icmp eq ptr %304, null
  br i1 %305, label %675, label %306

306:                                              ; preds = %302
  %307 = load ptr, ptr @outfile, align 8, !tbaa !35
  %308 = getelementptr inbounds %struct.basic_block_def, ptr %304, i64 0, i32 9
  %309 = load i32, ptr %308, align 8, !tbaa !54
  %310 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %307, ptr noundef nonnull @.str.27, i32 noundef %309)
  br label %675

311:                                              ; preds = %266
  %312 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %313 = load ptr, ptr @outfile, align 8, !tbaa !35
  %314 = tail call i32 @fputc(i32 noundef 32, ptr noundef %313)
  %315 = load ptr, ptr %312, align 8, !tbaa !46
  tail call fastcc void @print_rtx(ptr noundef %315)
  br label %675

316:                                              ; preds = %264
  %317 = trunc i64 %203 to i32
  switch i32 %317, label %675 [
    i32 8, label %318
    i32 0, label %334
  ]

318:                                              ; preds = %316, %262, %247
  %319 = icmp eq i32 %204, 9
  br i1 %319, label %320, label %332

320:                                              ; preds = %318
  %321 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %322 = load ptr, ptr %321, align 8, !tbaa !46
  %323 = icmp eq ptr %322, null
  br i1 %323, label %332, label %324

324:                                              ; preds = %320
  %325 = load ptr, ptr @outfile, align 8, !tbaa !35
  %326 = load ptr, ptr @print_rtx_head, align 8, !tbaa !35
  %327 = load i32, ptr @indent, align 4, !tbaa !50
  %328 = shl nsw i32 %327, 1
  %329 = getelementptr inbounds %struct.rtx_def, ptr %322, i64 0, i32 1
  %330 = load i32, ptr %329, align 8, !tbaa !46
  %331 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %325, ptr noundef nonnull @.str.28, ptr noundef %326, i32 noundef %328, ptr noundef nonnull @.str, i32 noundef %330)
  br label %675

332:                                              ; preds = %320, %318
  %333 = icmp eq i64 %203, 0
  br i1 %333, label %334, label %675

334:                                              ; preds = %332, %316, %262, %247
  %335 = trunc i32 %205 to i16
  switch i16 %335, label %675 [
    i16 1, label %336
    i16 2, label %346
  ]

336:                                              ; preds = %334
  %337 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %338 = load ptr, ptr %337, align 8, !tbaa !46
  %339 = load ptr, ptr @outfile, align 8, !tbaa !35
  %340 = getelementptr inbounds %struct.cselib_val_struct, ptr %338, i64 0, i32 1
  %341 = load i32, ptr %340, align 4, !tbaa !56
  %342 = load i32, ptr %338, align 8, !tbaa !58
  %343 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %339, ptr noundef nonnull @.str.29, i32 noundef %341, i32 noundef %342)
  %344 = load ptr, ptr @outfile, align 8, !tbaa !35
  tail call void @dump_addr(ptr noundef %344, ptr noundef nonnull @.str.30, ptr noundef nonnull %0) #13
  %345 = load ptr, ptr @outfile, align 8, !tbaa !35
  tail call void @dump_addr(ptr noundef %345, ptr noundef nonnull @.str.31, ptr noundef nonnull %338) #13
  br label %675

346:                                              ; preds = %334
  %347 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %348 = load ptr, ptr @outfile, align 8, !tbaa !35
  %349 = load ptr, ptr %347, align 8, !tbaa !46
  %350 = getelementptr inbounds %struct.tree_decl_minimal, ptr %349, i64 0, i32 2
  %351 = load i32, ptr %350, align 4, !tbaa !46
  %352 = sub i32 0, %351
  %353 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %348, ptr noundef nonnull @.str.32, i32 noundef %352)
  br label %675

354:                                              ; preds = %202, %643
  %355 = load i32, ptr @indent, align 4, !tbaa !50
  %356 = add nsw i32 %355, 2
  store i32 %356, ptr @indent, align 4, !tbaa !50
  %357 = load i1, ptr @sawclose, align 4
  br i1 %357, label %361, label %358

358:                                              ; preds = %354
  %359 = load ptr, ptr @outfile, align 8, !tbaa !35
  %360 = tail call i32 @fputc(i32 32, ptr %359)
  br label %361

361:                                              ; preds = %358, %354
  %362 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %363 = getelementptr inbounds [1 x %union.rtunion_def], ptr %362, i64 0, i64 %203
  %364 = load ptr, ptr %363, align 8, !tbaa !46
  tail call fastcc void @print_rtx(ptr noundef %364)
  %365 = load i32, ptr @indent, align 4, !tbaa !50
  %366 = add nsw i32 %365, -2
  store i32 %366, ptr @indent, align 4, !tbaa !50
  br label %675

367:                                              ; preds = %202, %202
  %368 = load i32, ptr @indent, align 4, !tbaa !50
  %369 = add nsw i32 %368, 2
  store i32 %369, ptr @indent, align 4, !tbaa !50
  %370 = load i1, ptr @sawclose, align 4
  br i1 %370, label %371, label %376

371:                                              ; preds = %367
  %372 = load ptr, ptr @outfile, align 8, !tbaa !35
  %373 = load ptr, ptr @print_rtx_head, align 8, !tbaa !35
  %374 = shl nsw i32 %369, 1
  %375 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %372, ptr noundef nonnull @.str.4, ptr noundef %373, i32 noundef %374, ptr noundef nonnull @.str)
  store i1 false, ptr @sawclose, align 4
  br label %376

376:                                              ; preds = %371, %367
  %377 = load ptr, ptr @outfile, align 8, !tbaa !35
  %378 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 2, i64 1, ptr %377)
  %379 = getelementptr inbounds [1 x %union.rtunion_def], ptr %198, i64 0, i64 %203
  %380 = load ptr, ptr %379, align 8, !tbaa !46
  %381 = icmp eq ptr %380, null
  br i1 %381, label %405, label %382

382:                                              ; preds = %376
  %383 = load i32, ptr @indent, align 4, !tbaa !50
  %384 = add nsw i32 %383, 2
  store i32 %384, ptr @indent, align 4, !tbaa !50
  %385 = load i32, ptr %380, align 8, !tbaa !59
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %388, label %387

387:                                              ; preds = %382
  store i1 true, ptr @sawclose, align 4
  br label %388

388:                                              ; preds = %387, %382
  %389 = load ptr, ptr %379, align 8, !tbaa !46
  %390 = load i32, ptr %389, align 8, !tbaa !59
  %391 = icmp sgt i32 %390, 0
  br i1 %391, label %392, label %402

392:                                              ; preds = %388, %392
  %393 = phi i64 [ %397, %392 ], [ 0, %388 ]
  %394 = phi ptr [ %398, %392 ], [ %389, %388 ]
  %395 = getelementptr inbounds %struct.rtvec_def, ptr %394, i64 0, i32 1, i64 %393
  %396 = load ptr, ptr %395, align 8, !tbaa !35
  tail call fastcc void @print_rtx(ptr noundef %396)
  %397 = add nuw nsw i64 %393, 1
  %398 = load ptr, ptr %379, align 8, !tbaa !46
  %399 = load i32, ptr %398, align 8, !tbaa !59
  %400 = sext i32 %399 to i64
  %401 = icmp slt i64 %397, %400
  br i1 %401, label %392, label %402, !llvm.loop !61

402:                                              ; preds = %392, %388
  %403 = load i32, ptr @indent, align 4, !tbaa !50
  %404 = add nsw i32 %403, -2
  store i32 %404, ptr @indent, align 4, !tbaa !50
  br label %405

405:                                              ; preds = %402, %376
  %406 = load i1, ptr @sawclose, align 4
  br i1 %406, label %407, label %413

407:                                              ; preds = %405
  %408 = load ptr, ptr @outfile, align 8, !tbaa !35
  %409 = load ptr, ptr @print_rtx_head, align 8, !tbaa !35
  %410 = load i32, ptr @indent, align 4, !tbaa !50
  %411 = shl nsw i32 %410, 1
  %412 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %408, ptr noundef nonnull @.str.4, ptr noundef %409, i32 noundef %411, ptr noundef nonnull @.str)
  br label %413

413:                                              ; preds = %407, %405
  %414 = load ptr, ptr @outfile, align 8, !tbaa !35
  %415 = tail call i32 @fputc(i32 93, ptr %414)
  store i1 true, ptr @sawclose, align 4
  %416 = load i32, ptr @indent, align 4, !tbaa !50
  %417 = add nsw i32 %416, -2
  store i32 %417, ptr @indent, align 4, !tbaa !50
  br label %675

418:                                              ; preds = %202
  %419 = load i32, ptr @flag_simple, align 4, !tbaa !50
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %424

421:                                              ; preds = %418
  %422 = load ptr, ptr @outfile, align 8, !tbaa !35
  %423 = tail call i32 @fputc(i32 32, ptr %422)
  br label %424

424:                                              ; preds = %421, %418
  %425 = load ptr, ptr @outfile, align 8, !tbaa !35
  %426 = getelementptr inbounds [1 x i64], ptr %197, i64 0, i64 %203
  %427 = load i64, ptr %426, align 8, !tbaa !46
  %428 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %425, ptr noundef nonnull @.str.35, i64 noundef %427)
  %429 = load i32, ptr @flag_simple, align 4, !tbaa !50
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %675

431:                                              ; preds = %424
  %432 = load ptr, ptr @outfile, align 8, !tbaa !35
  %433 = load i64, ptr %426, align 8, !tbaa !46
  %434 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %432, ptr noundef nonnull @.str.36, i64 noundef %433)
  br label %675

435:                                              ; preds = %202
  %436 = icmp eq i64 %203, 4
  %437 = add nsw i32 %204, -7
  %438 = icmp ult i32 %437, 4
  %439 = and i1 %436, %438
  br i1 %439, label %440, label %451

440:                                              ; preds = %435
  %441 = load i32, ptr %196, align 8, !tbaa !46
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %675, label %443

443:                                              ; preds = %440
  %444 = tail call ptr @insn_file(ptr noundef nonnull %0) #13
  %445 = icmp eq ptr %444, null
  br i1 %445, label %675, label %446

446:                                              ; preds = %443
  %447 = load ptr, ptr @outfile, align 8, !tbaa !35
  %448 = tail call ptr @insn_file(ptr noundef nonnull %0) #13
  %449 = tail call i32 @insn_line(ptr noundef nonnull %0) #13
  %450 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %447, ptr noundef nonnull @.str.37, ptr noundef %448, i32 noundef %449)
  br label %675

451:                                              ; preds = %435
  %452 = icmp eq i64 %203, 6
  %453 = icmp eq i32 %204, 17
  %454 = and i1 %452, %453
  br i1 %454, label %455, label %463

455:                                              ; preds = %451
  %456 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %457 = load ptr, ptr @outfile, align 8, !tbaa !35
  %458 = load i32, ptr %456, align 8, !tbaa !46
  %459 = tail call ptr @locator_file(i32 noundef %458) #13
  %460 = load i32, ptr %456, align 8, !tbaa !46
  %461 = tail call i32 @locator_line(i32 noundef %460) #13
  %462 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %457, ptr noundef nonnull @.str.37, ptr noundef %459, i32 noundef %461)
  br label %675

463:                                              ; preds = %451
  %464 = icmp eq i64 %203, 1
  %465 = icmp eq i32 %204, 16
  %466 = and i1 %464, %465
  br i1 %466, label %467, label %475

467:                                              ; preds = %463
  %468 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %469 = load ptr, ptr @outfile, align 8, !tbaa !35
  %470 = load i32, ptr %468, align 8, !tbaa !46
  %471 = tail call ptr @locator_file(i32 noundef %470) #13
  %472 = load i32, ptr %468, align 8, !tbaa !46
  %473 = tail call i32 @locator_line(i32 noundef %472) #13
  %474 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %469, ptr noundef nonnull @.str.37, ptr noundef %471, i32 noundef %473)
  br label %675

475:                                              ; preds = %463
  %476 = icmp eq i32 %204, 13
  %477 = and i1 %452, %476
  br i1 %477, label %478, label %487

478:                                              ; preds = %475
  %479 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %480 = load i32, ptr %479, align 8, !tbaa !46
  %481 = icmp eq i32 %480, 1
  br i1 %481, label %482, label %675

482:                                              ; preds = %478
  %483 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %484 = load ptr, ptr @outfile, align 8, !tbaa !35
  %485 = load i32, ptr %483, align 8, !tbaa !46
  %486 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %484, ptr noundef nonnull @.str.25, i32 noundef %485)
  br label %675

487:                                              ; preds = %475
  %488 = shl nuw nsw i64 %203, 3
  %489 = add nuw nsw i64 %488, 8
  %490 = getelementptr inbounds i8, ptr %0, i64 %489
  %491 = load i32, ptr %490, align 8, !tbaa !46
  %492 = icmp eq i32 %204, 37
  %493 = icmp slt i32 %491, 53
  %494 = select i1 %492, i1 %493, i1 false
  br i1 %494, label %495, label %503

495:                                              ; preds = %487
  %496 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %497 = load ptr, ptr @outfile, align 8, !tbaa !35
  %498 = load i32, ptr %496, align 8, !tbaa !46
  %499 = zext i32 %498 to i64
  %500 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %499
  %501 = load ptr, ptr %500, align 8, !tbaa !35
  %502 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %497, ptr noundef nonnull @.str.38, i32 noundef %498, ptr noundef %501)
  br label %532

503:                                              ; preds = %487
  %504 = icmp slt i32 %491, 58
  %505 = select i1 %492, i1 %504, i1 false
  br i1 %505, label %506, label %521

506:                                              ; preds = %503
  %507 = load ptr, ptr @outfile, align 8, !tbaa !35
  switch i32 %491, label %518 [
    i32 53, label %508
    i32 54, label %510
    i32 55, label %512
    i32 56, label %514
    i32 57, label %516
  ]

508:                                              ; preds = %506
  %509 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %507, ptr noundef nonnull @.str.39, i32 noundef 53)
  br label %532

510:                                              ; preds = %506
  %511 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %507, ptr noundef nonnull @.str.40, i32 noundef 54)
  br label %532

512:                                              ; preds = %506
  %513 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %507, ptr noundef nonnull @.str.41, i32 noundef 55)
  br label %532

514:                                              ; preds = %506
  %515 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %507, ptr noundef nonnull @.str.42, i32 noundef 56)
  br label %532

516:                                              ; preds = %506
  %517 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %507, ptr noundef nonnull @.str.43, i32 noundef 57)
  br label %532

518:                                              ; preds = %506
  %519 = add nsw i32 %491, -53
  %520 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %507, ptr noundef nonnull @.str.44, i32 noundef %491, i32 noundef %519)
  br label %532

521:                                              ; preds = %503
  %522 = load i32, ptr @flag_dump_unnumbered, align 4, !tbaa !50
  %523 = icmp ne i32 %522, 0
  %524 = icmp eq i32 %204, 13
  %525 = or i1 %33, %524
  %526 = and i1 %525, %523
  %527 = load ptr, ptr @outfile, align 8, !tbaa !35
  br i1 %526, label %528, label %530

528:                                              ; preds = %521
  %529 = tail call i32 @fputc(i32 noundef 35, ptr noundef %527)
  br label %532

530:                                              ; preds = %521
  %531 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %527, ptr noundef nonnull @.str.25, i32 noundef %491)
  br label %532

532:                                              ; preds = %510, %514, %518, %516, %512, %508, %530, %528, %495
  %533 = load i32, ptr %0, align 8
  %534 = and i32 %533, 65535
  %535 = icmp eq i32 %534, 37
  br i1 %535, label %536, label %574

536:                                              ; preds = %532
  %537 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %538 = load ptr, ptr %537, align 8, !tbaa !46
  %539 = icmp eq ptr %538, null
  br i1 %539, label %574, label %540

540:                                              ; preds = %536
  %541 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %542 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %543 = load ptr, ptr @outfile, align 8, !tbaa !35
  %544 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 2, i64 1, ptr %543)
  %545 = load i32, ptr %541, align 8, !tbaa !46
  %546 = load i32, ptr %542, align 8, !tbaa !46
  %547 = icmp eq i32 %545, %546
  br i1 %547, label %551, label %548

548:                                              ; preds = %540
  %549 = load ptr, ptr @outfile, align 8, !tbaa !35
  %550 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %549, ptr noundef nonnull @.str.45, i32 noundef %545)
  br label %551

551:                                              ; preds = %548, %540
  %552 = load ptr, ptr %537, align 8, !tbaa !46
  %553 = icmp eq ptr %552, null
  br i1 %553, label %561, label %554

554:                                              ; preds = %551
  %555 = load ptr, ptr %552, align 8, !tbaa !62
  %556 = icmp eq ptr %555, null
  br i1 %556, label %561, label %557

557:                                              ; preds = %554
  %558 = load ptr, ptr @outfile, align 8, !tbaa !35
  %559 = tail call i32 @fputc(i32 noundef 32, ptr noundef %558)
  %560 = load i32, ptr @dump_flags, align 4, !tbaa !50
  tail call void @print_generic_expr(ptr noundef %558, ptr noundef nonnull %555, i32 noundef %560) #13
  br label %561

561:                                              ; preds = %551, %557, %554
  %562 = load ptr, ptr %537, align 8, !tbaa !46
  %563 = icmp eq ptr %562, null
  br i1 %563, label %571, label %564

564:                                              ; preds = %561
  %565 = getelementptr inbounds %struct.reg_attrs, ptr %562, i64 0, i32 1
  %566 = load i64, ptr %565, align 8, !tbaa !64
  %567 = icmp eq i64 %566, 0
  br i1 %567, label %571, label %568

568:                                              ; preds = %564
  %569 = load ptr, ptr @outfile, align 8, !tbaa !35
  %570 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %569, ptr noundef nonnull @.str.46, i64 noundef %566)
  br label %571

571:                                              ; preds = %561, %568, %564
  %572 = load ptr, ptr @outfile, align 8, !tbaa !35
  %573 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 2, i64 1, ptr %572)
  br label %574

574:                                              ; preds = %571, %536, %532
  %575 = icmp eq i64 %489, 56
  %576 = and i1 %33, %575
  br i1 %576, label %577, label %586

577:                                              ; preds = %574
  %578 = load i32, ptr %490, align 8, !tbaa !46
  %579 = icmp sgt i32 %578, -1
  br i1 %579, label %580, label %586

580:                                              ; preds = %577
  %581 = tail call ptr @get_insn_name(i32 noundef %578) #13
  %582 = icmp eq ptr %581, null
  br i1 %582, label %586, label %583

583:                                              ; preds = %580
  %584 = load ptr, ptr @outfile, align 8, !tbaa !35
  %585 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %584, ptr noundef nonnull @.str.48, ptr noundef nonnull %581)
  br label %586

586:                                              ; preds = %583, %580, %577, %574
  store i1 false, ptr @sawclose, align 4
  br label %675

587:                                              ; preds = %202
  %588 = load ptr, ptr @outfile, align 8, !tbaa !35
  %589 = getelementptr inbounds [1 x %union.rtunion_def], ptr %195, i64 0, i64 %203
  %590 = load i32, ptr %589, align 8, !tbaa !46
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds [13 x ptr], ptr @note_insn_name, i64 0, i64 %591
  %593 = load ptr, ptr %592, align 8, !tbaa !35
  %594 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %588, ptr noundef nonnull @.str.49, ptr noundef %593)
  store i1 false, ptr @sawclose, align 4
  br label %675

595:                                              ; preds = %202
  %596 = getelementptr inbounds [1 x %union.rtunion_def], ptr %194, i64 0, i64 %203
  %597 = load ptr, ptr %596, align 8, !tbaa !46
  %598 = icmp eq ptr %597, null
  br i1 %598, label %645, label %599

599:                                              ; preds = %595
  %600 = load i32, ptr %597, align 8
  %601 = and i32 %600, 65535
  %602 = icmp eq i32 %204, 44
  br i1 %602, label %603, label %622

603:                                              ; preds = %599
  %604 = trunc i32 %600 to i16
  switch i16 %604, label %643 [
    i16 13, label %605
    i16 12, label %622
  ]

605:                                              ; preds = %603
  %606 = getelementptr inbounds %struct.rtx_def, ptr %597, i64 0, i32 1
  %607 = getelementptr inbounds %struct.rtx_def, ptr %597, i64 1
  %608 = load i32, ptr %607, align 8, !tbaa !46
  %609 = icmp eq i32 %608, 1
  br i1 %609, label %610, label %620

610:                                              ; preds = %605
  %611 = load i32, ptr @flag_dump_unnumbered, align 4, !tbaa !50
  %612 = icmp eq i32 %611, 0
  %613 = load ptr, ptr @outfile, align 8, !tbaa !35
  br i1 %612, label %616, label %614

614:                                              ; preds = %610
  %615 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 12, i64 1, ptr %613)
  br label %619

616:                                              ; preds = %610
  %617 = load i32, ptr %606, align 8, !tbaa !46
  %618 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %613, ptr noundef nonnull @.str.51, i32 noundef %617)
  br label %619

619:                                              ; preds = %616, %614
  store i1 false, ptr @sawclose, align 4
  br label %643

620:                                              ; preds = %605
  %621 = icmp eq i32 %601, 12
  br i1 %621, label %622, label %643

622:                                              ; preds = %603, %620, %599
  %623 = load i32, ptr @flag_dump_unnumbered, align 4, !tbaa !50
  %624 = icmp eq i32 %623, 0
  br i1 %624, label %625, label %635

625:                                              ; preds = %622
  %626 = load i32, ptr @flag_dump_unnumbered_links, align 4, !tbaa !50
  %627 = icmp ne i32 %626, 0
  %628 = trunc i64 %203 to i32
  %629 = add i32 %628, -1
  %630 = icmp ult i32 %629, 2
  %631 = and i1 %630, %627
  %632 = add nsw i32 %204, -7
  %633 = icmp ult i32 %632, 7
  %634 = select i1 %631, i1 %633, i1 false
  br i1 %634, label %635, label %638

635:                                              ; preds = %625, %622
  %636 = load ptr, ptr @outfile, align 8, !tbaa !35
  %637 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 2, i64 1, ptr %636)
  br label %643

638:                                              ; preds = %625
  %639 = load ptr, ptr @outfile, align 8, !tbaa !35
  %640 = getelementptr inbounds %struct.rtx_def, ptr %597, i64 0, i32 1
  %641 = load i32, ptr %640, align 8, !tbaa !46
  %642 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %639, ptr noundef nonnull @.str.25, i32 noundef %641)
  br label %643

643:                                              ; preds = %620, %635, %638, %603, %619
  %644 = phi i32 [ 5, %619 ], [ 8, %603 ], [ 0, %638 ], [ 0, %635 ], [ 8, %620 ]
  switch i32 %644, label %844 [
    i32 0, label %648
    i32 5, label %675
    i32 8, label %354
  ]

645:                                              ; preds = %595
  %646 = load ptr, ptr @outfile, align 8, !tbaa !35
  %647 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 2, i64 1, ptr %646)
  br label %648

648:                                              ; preds = %643, %645
  store i1 false, ptr @sawclose, align 4
  br label %675

649:                                              ; preds = %202
  %650 = getelementptr inbounds [1 x %union.rtunion_def], ptr %193, i64 0, i64 %203
  %651 = load ptr, ptr %650, align 8, !tbaa !46
  %652 = icmp eq ptr %651, null
  %653 = load ptr, ptr @outfile, align 8, !tbaa !35
  br i1 %652, label %654, label %656

654:                                              ; preds = %649
  %655 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 7, i64 1, ptr %653)
  br label %657

656:                                              ; preds = %649
  tail call void @bitmap_print(ptr noundef %653, ptr noundef nonnull %651, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55) #13
  br label %657

657:                                              ; preds = %656, %654
  store i1 false, ptr @sawclose, align 4
  br label %675

658:                                              ; preds = %202
  %659 = load ptr, ptr @outfile, align 8, !tbaa !35
  %660 = getelementptr inbounds [1 x %union.rtunion_def], ptr %192, i64 0, i64 %203
  %661 = load ptr, ptr %660, align 8, !tbaa !46
  tail call void @dump_addr(ptr noundef %659, ptr noundef nonnull @.str.26, ptr noundef %661) #13
  br label %675

662:                                              ; preds = %202
  %663 = load ptr, ptr @outfile, align 8, !tbaa !35
  %664 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 8, i64 1, ptr %663)
  store i1 false, ptr @sawclose, align 4
  br label %675

665:                                              ; preds = %202
  %666 = getelementptr inbounds [1 x %union.rtunion_def], ptr %191, i64 0, i64 %203
  %667 = load ptr, ptr %666, align 8, !tbaa !46
  %668 = icmp eq ptr %667, null
  br i1 %668, label %675, label %669

669:                                              ; preds = %665
  %670 = load ptr, ptr @outfile, align 8, !tbaa !35
  %671 = getelementptr inbounds %struct.basic_block_def, ptr %667, i64 0, i32 9
  %672 = load i32, ptr %671, align 8, !tbaa !54
  %673 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %670, ptr noundef nonnull @.str.57, i32 noundef %672)
  br label %675

674:                                              ; preds = %202
  tail call void @fancy_abort(ptr noundef nonnull @.str.58, i32 noundef 544, ptr noundef nonnull @.str.59) #13
  br label %675

675:                                              ; preds = %334, %332, %247, %262, %316, %302, %306, %298, %300, %284, %288, %256, %259, %240, %244, %225, %361, %413, %587, %643, %648, %657, %658, %662, %674, %266, %311, %280, %279, %336, %346, %324, %230, %234, %431, %424, %455, %586, %482, %478, %467, %440, %443, %446, %669, %665
  %676 = add nuw nsw i64 %203, 1
  %677 = load i32, ptr %0, align 8
  %678 = and i32 %677, 65535
  %679 = zext nneg i32 %678 to i64
  %680 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %679
  %681 = load i8, ptr %680, align 1, !tbaa !46
  %682 = zext i8 %681 to i64
  %683 = icmp ult i64 %676, %682
  br i1 %683, label %202, label %684, !llvm.loop !65

684:                                              ; preds = %675, %176
  %685 = phi i32 [ %178, %176 ], [ %677, %675 ]
  %686 = trunc i32 %685 to i16
  switch i16 %686, label %830 [
    i16 43, label %687
    i16 32, label %797
    i16 12, label %809
  ]

687:                                              ; preds = %684
  %688 = load i8, ptr @final_insns_dump_p, align 1, !tbaa !46
  %689 = icmp eq i8 %688, 0
  %690 = load ptr, ptr @outfile, align 8, !tbaa !35
  br i1 %689, label %693, label %691

691:                                              ; preds = %687
  %692 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 2, i64 1, ptr %690)
  br label %704

693:                                              ; preds = %687
  %694 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %695 = load ptr, ptr %694, align 8, !tbaa !46
  %696 = icmp eq ptr %695, null
  br i1 %696, label %701, label %697

697:                                              ; preds = %693
  %698 = getelementptr inbounds %struct.mem_attrs, ptr %695, i64 0, i32 3
  %699 = load i32, ptr %698, align 8, !tbaa !66
  %700 = sext i32 %699 to i64
  br label %701

701:                                              ; preds = %693, %697
  %702 = phi i64 [ %700, %697 ], [ 0, %693 ]
  %703 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %690, ptr noundef nonnull @.str.60, i64 noundef %702)
  br label %704

704:                                              ; preds = %701, %691
  %705 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %706 = load ptr, ptr %705, align 8, !tbaa !46
  %707 = icmp eq ptr %706, null
  br i1 %707, label %715, label %708

708:                                              ; preds = %704
  %709 = load ptr, ptr %706, align 8, !tbaa !68
  %710 = icmp eq ptr %709, null
  br i1 %710, label %715, label %711

711:                                              ; preds = %708
  %712 = load ptr, ptr @outfile, align 8, !tbaa !35
  %713 = tail call i32 @fputc(i32 noundef 32, ptr noundef %712)
  %714 = load i32, ptr @dump_flags, align 4, !tbaa !50
  tail call void @print_generic_expr(ptr noundef %712, ptr noundef nonnull %709, i32 noundef %714) #13
  br label %715

715:                                              ; preds = %704, %711, %708
  %716 = load ptr, ptr %705, align 8, !tbaa !46
  %717 = icmp eq ptr %716, null
  br i1 %717, label %727, label %718

718:                                              ; preds = %715
  %719 = getelementptr inbounds %struct.mem_attrs, ptr %716, i64 0, i32 1
  %720 = load ptr, ptr %719, align 8, !tbaa !69
  %721 = icmp eq ptr %720, null
  br i1 %721, label %727, label %722

722:                                              ; preds = %718
  %723 = load ptr, ptr @outfile, align 8, !tbaa !35
  %724 = getelementptr inbounds %struct.rtx_def, ptr %720, i64 0, i32 1
  %725 = load i64, ptr %724, align 8, !tbaa !46
  %726 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %723, ptr noundef nonnull @.str.46, i64 noundef %725)
  br label %727

727:                                              ; preds = %715, %722, %718
  %728 = load ptr, ptr %705, align 8, !tbaa !46
  %729 = icmp eq ptr %728, null
  br i1 %729, label %734, label %730

730:                                              ; preds = %727
  %731 = getelementptr inbounds %struct.mem_attrs, ptr %728, i64 0, i32 2
  %732 = load ptr, ptr %731, align 8, !tbaa !70
  %733 = icmp eq ptr %732, null
  br i1 %733, label %768, label %746

734:                                              ; preds = %727
  %735 = load i32, ptr %0, align 8
  %736 = lshr i32 %735, 16
  %737 = and i32 %736, 255
  %738 = icmp eq i32 %737, 1
  br i1 %738, label %768, label %739

739:                                              ; preds = %734
  %740 = zext nneg i32 %737 to i64
  %741 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %740
  %742 = load i8, ptr %741, align 1, !tbaa !46
  %743 = zext i8 %742 to i64
  %744 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %743) #13
  %745 = icmp eq ptr %744, null
  br i1 %745, label %768, label %746

746:                                              ; preds = %739, %730
  %747 = load ptr, ptr @outfile, align 8, !tbaa !35
  %748 = load ptr, ptr %705, align 8, !tbaa !46
  %749 = icmp eq ptr %748, null
  br i1 %749, label %753, label %750

750:                                              ; preds = %746
  %751 = getelementptr inbounds %struct.mem_attrs, ptr %748, i64 0, i32 2
  %752 = load ptr, ptr %751, align 8, !tbaa !70
  br label %763

753:                                              ; preds = %746
  %754 = load i32, ptr %0, align 8
  %755 = lshr i32 %754, 16
  %756 = and i32 %755, 255
  %757 = icmp ne i32 %756, 1
  tail call void @llvm.assume(i1 %757)
  %758 = zext nneg i32 %756 to i64
  %759 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %758
  %760 = load i8, ptr %759, align 1, !tbaa !46
  %761 = zext i8 %760 to i64
  %762 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %761) #13
  br label %763

763:                                              ; preds = %753, %750
  %764 = phi ptr [ %752, %750 ], [ %762, %753 ]
  %765 = getelementptr inbounds %struct.rtx_def, ptr %764, i64 0, i32 1
  %766 = load i64, ptr %765, align 8, !tbaa !46
  %767 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %747, ptr noundef nonnull @.str.61, i64 noundef %766)
  br label %768

768:                                              ; preds = %739, %734, %763, %730
  %769 = load ptr, ptr %705, align 8, !tbaa !46
  %770 = icmp eq ptr %769, null
  br i1 %770, label %775, label %771

771:                                              ; preds = %768
  %772 = getelementptr inbounds %struct.mem_attrs, ptr %769, i64 0, i32 4
  %773 = load i32, ptr %772, align 4, !tbaa !71
  %774 = icmp eq i32 %773, 1
  br i1 %774, label %783, label %775

775:                                              ; preds = %768, %771
  %776 = load ptr, ptr @outfile, align 8, !tbaa !35
  br i1 %770, label %780, label %777

777:                                              ; preds = %775
  %778 = getelementptr inbounds %struct.mem_attrs, ptr %769, i64 0, i32 4
  %779 = load i32, ptr %778, align 4, !tbaa !71
  br label %780

780:                                              ; preds = %775, %777
  %781 = phi i32 [ %779, %777 ], [ 8, %775 ]
  %782 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %776, ptr noundef nonnull @.str.62, i32 noundef %781)
  br label %783

783:                                              ; preds = %780, %771
  %784 = load ptr, ptr %705, align 8, !tbaa !46
  %785 = icmp eq ptr %784, null
  br i1 %785, label %794, label %786

786:                                              ; preds = %783
  %787 = getelementptr inbounds %struct.mem_attrs, ptr %784, i64 0, i32 5
  %788 = load i8, ptr %787, align 8, !tbaa !72
  %789 = icmp eq i8 %788, 0
  br i1 %789, label %794, label %790

790:                                              ; preds = %786
  %791 = load ptr, ptr @outfile, align 8, !tbaa !35
  %792 = zext i8 %788 to i32
  %793 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %791, ptr noundef nonnull @.str.63, i32 noundef %792)
  br label %794

794:                                              ; preds = %783, %790, %786
  %795 = load ptr, ptr @outfile, align 8, !tbaa !35
  %796 = tail call i32 @fputc(i32 noundef 93, ptr noundef %795)
  br label %830

797:                                              ; preds = %684
  %798 = lshr i32 %685, 16
  %799 = and i32 %798, 255
  %800 = zext nneg i32 %799 to i64
  %801 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %800
  %802 = load i8, ptr %801, align 1, !tbaa !46
  switch i8 %802, label %830 [
    i8 8, label %803
    i8 9, label %803
    i8 11, label %803
    i8 17, label %803
  ]

803:                                              ; preds = %797, %797, %797, %797
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %2) #13
  %804 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  call void @real_to_decimal(ptr noundef nonnull %2, ptr noundef nonnull %804, i64 noundef 60, i64 noundef 0, i32 noundef 1) #13
  %805 = load ptr, ptr @outfile, align 8, !tbaa !35
  %806 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %805, ptr noundef nonnull @.str.49, ptr noundef nonnull %2)
  call void @real_to_hexadecimal(ptr noundef nonnull %2, ptr noundef nonnull %804, i64 noundef 60, i64 noundef 0, i32 noundef 1) #13
  %807 = load ptr, ptr @outfile, align 8, !tbaa !35
  %808 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %807, ptr noundef nonnull @.str.64, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %2) #13
  br label %830

809:                                              ; preds = %684
  %810 = load ptr, ptr @outfile, align 8, !tbaa !35
  %811 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %812 = load i32, ptr %811, align 8, !tbaa !46
  %813 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %810, ptr noundef nonnull @.str.65, i32 noundef %812)
  %814 = load i32, ptr %0, align 8
  %815 = lshr i32 %814, 23
  %816 = and i32 %815, 2
  %817 = lshr i32 %814, 25
  %818 = and i32 %817, 1
  %819 = or disjoint i32 %816, %818
  switch i32 %819, label %829 [
    i32 0, label %830
    i32 1, label %820
    i32 2, label %823
    i32 3, label %826
  ]

820:                                              ; preds = %809
  %821 = load ptr, ptr @outfile, align 8, !tbaa !35
  %822 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 8, i64 1, ptr %821)
  br label %830

823:                                              ; preds = %809
  %824 = load ptr, ptr @outfile, align 8, !tbaa !35
  %825 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 15, i64 1, ptr %824)
  br label %830

826:                                              ; preds = %809
  %827 = load ptr, ptr @outfile, align 8, !tbaa !35
  %828 = tail call i64 @fwrite(ptr nonnull @.str.68, i64 13, i64 1, ptr %827)
  br label %830

829:                                              ; preds = %809
  unreachable

830:                                              ; preds = %797, %684, %809, %820, %823, %826, %803, %794
  %831 = load i32, ptr @dump_for_graph, align 4, !tbaa !50
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %839, label %833

833:                                              ; preds = %830
  br i1 %33, label %842, label %834

834:                                              ; preds = %833
  %835 = load i32, ptr %0, align 8
  %836 = and i32 %835, 65535
  %837 = add nsw i32 %836, -11
  %838 = icmp ult i32 %837, 3
  br i1 %838, label %842, label %839

839:                                              ; preds = %834, %830
  %840 = load ptr, ptr @outfile, align 8, !tbaa !35
  %841 = call i32 @fputc(i32 noundef 41, ptr noundef %840)
  br label %842

842:                                              ; preds = %839, %833, %834, %25, %18
  %843 = phi i1 [ true, %25 ], [ true, %18 ], [ true, %839 ], [ false, %834 ], [ false, %833 ]
  store i1 %843, ptr @sawclose, align 4
  ret void

844:                                              ; preds = %643
  unreachable
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_rtx(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  store ptr %2, ptr @outfile, align 8, !tbaa !35
  store i1 false, ptr @sawclose, align 4
  tail call fastcc void @print_rtx(ptr noundef %0)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !35
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_rtx_list(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = icmp eq i32 %1, 0
  %4 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %5 = select i1 %3, i32 1, i32 %4
  %6 = icmp slt i32 %1, 0
  %7 = icmp ugt i32 %5, 1
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = lshr i32 %5, 1
  br label %14

11:                                               ; preds = %14
  %12 = add nsw i32 %16, -1
  %13 = icmp sgt i32 %16, 1
  br i1 %13, label %14, label %20, !llvm.loop !73

14:                                               ; preds = %9, %11
  %15 = phi ptr [ %18, %11 ], [ %0, %9 ]
  %16 = phi i32 [ %12, %11 ], [ %10, %9 ]
  %17 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %11

20:                                               ; preds = %14, %11, %2
  %21 = phi ptr [ %0, %2 ], [ %18, %11 ], [ %15, %14 ]
  %22 = icmp ne i32 %5, 0
  %23 = icmp ne ptr %21, null
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %20, %25
  %26 = phi ptr [ %35, %25 ], [ %21, %20 ]
  %27 = phi i32 [ %33, %25 ], [ %5, %20 ]
  %28 = load ptr, ptr @stderr, align 8, !tbaa !35
  store ptr %28, ptr @outfile, align 8, !tbaa !35
  store i1 false, ptr @sawclose, align 4
  tail call fastcc void @print_rtx(ptr noundef nonnull %26)
  %29 = load ptr, ptr @stderr, align 8, !tbaa !35
  %30 = tail call i32 @fputc(i32 10, ptr %29)
  %31 = load ptr, ptr @stderr, align 8, !tbaa !35
  %32 = tail call i32 @fputc(i32 10, ptr %31)
  %33 = add nsw i32 %27, -1
  %34 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = icmp sgt i32 %27, 1
  %37 = icmp ne ptr %35, null
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %25, label %39, !llvm.loop !74

39:                                               ; preds = %25, %20
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_rtx_range(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #9 !prof !34 {
  br label %3

3:                                                ; preds = %2, %13
  %4 = phi ptr [ %0, %2 ], [ %15, %13 ]
  %5 = load ptr, ptr @stderr, align 8, !tbaa !35
  store ptr %5, ptr @outfile, align 8, !tbaa !35
  store i1 false, ptr @sawclose, align 4
  tail call fastcc void @print_rtx(ptr noundef %4)
  %6 = load ptr, ptr @stderr, align 8, !tbaa !35
  %7 = tail call i32 @fputc(i32 10, ptr %6)
  %8 = load ptr, ptr @stderr, align 8, !tbaa !35
  %9 = tail call i32 @fputc(i32 10, ptr %8)
  %10 = icmp eq ptr %4, null
  %11 = icmp eq ptr %4, %1
  %12 = or i1 %10, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  br label %3, !llvm.loop !75

16:                                               ; preds = %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @debug_rtx_find(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !34 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2, %9
  %5 = phi ptr [ %11, %9 ], [ %0, %2 ]
  %6 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !46
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %4, !llvm.loop !76

13:                                               ; preds = %4
  %14 = load i32, ptr @debug_rtx_count, align 4, !tbaa !50
  tail call void @debug_rtx_list(ptr noundef nonnull %5, i32 noundef %14)
  br label %18

15:                                               ; preds = %9, %2
  %16 = load ptr, ptr @stderr, align 8, !tbaa !35
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.2, i32 noundef %1) #14
  br label %18

18:                                               ; preds = %15, %13
  %19 = phi ptr [ %5, %13 ], [ null, %15 ]
  ret ptr %19
}

; Function Attrs: cold nounwind uwtable
define dso_local void @print_rtl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  store ptr %0, ptr @outfile, align 8, !tbaa !35
  store i1 false, ptr @sawclose, align 4
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = load ptr, ptr @print_rtx_head, align 8, !tbaa !35
  %6 = tail call i32 @fputs(ptr noundef %5, ptr noundef %0)
  %7 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 6, i64 1, ptr %0)
  br label %26

8:                                                ; preds = %2
  %9 = load i32, ptr %1, align 8
  %10 = trunc i32 %9 to i16
  %11 = add i16 %10, -8
  %12 = icmp ult i16 %11, 6
  br i1 %12, label %13, label %23

13:                                               ; preds = %8, %13
  %14 = phi ptr [ %21, %13 ], [ %1, %8 ]
  %15 = load ptr, ptr @print_rtx_head, align 8, !tbaa !35
  %16 = load ptr, ptr @outfile, align 8, !tbaa !35
  %17 = tail call i32 @fputs(ptr noundef %15, ptr noundef %16)
  tail call fastcc void @print_rtx(ptr noundef nonnull %14)
  %18 = load ptr, ptr @outfile, align 8, !tbaa !35
  %19 = tail call i32 @fputc(i32 10, ptr %18)
  %20 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %13, !llvm.loop !77

23:                                               ; preds = %8
  %24 = load ptr, ptr @print_rtx_head, align 8, !tbaa !35
  %25 = tail call i32 @fputs(ptr noundef %24, ptr noundef %0)
  tail call fastcc void @print_rtx(ptr noundef nonnull %1)
  br label %26

26:                                               ; preds = %13, %23, %4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @print_rtl_single(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  store ptr %0, ptr @outfile, align 8, !tbaa !35
  store i1 false, ptr @sawclose, align 4
  %3 = load ptr, ptr @print_rtx_head, align 8, !tbaa !35
  %4 = tail call i32 @fputs(ptr noundef %3, ptr noundef %0)
  tail call fastcc void @print_rtx(ptr noundef %1)
  %5 = tail call i32 @putc(i32 noundef 10, ptr noundef %0)
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define dso_local void @print_simple_rtl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !34 {
  store i32 1, ptr @flag_simple, align 4, !tbaa !50
  tail call void @print_rtl(ptr noundef %0, ptr noundef %1)
  store i32 0, ptr @flag_simple, align 4, !tbaa !50
  ret void
}

declare void @print_node_brief(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dump_addr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @insn_file(ptr noundef) local_unnamed_addr #3

declare i32 @insn_line(ptr noundef) local_unnamed_addr #3

declare ptr @locator_file(i32 noundef) local_unnamed_addr #3

declare i32 @locator_line(i32 noundef) local_unnamed_addr #3

declare ptr @get_insn_name(i32 noundef) local_unnamed_addr #3

declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

declare void @real_to_decimal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @real_to_hexadecimal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !41, i64 80}
!55 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!56 = !{!57, !41, i64 4}
!57 = !{!"cselib_val_struct", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!58 = !{!57, !41, i64 0}
!59 = !{!60, !41, i64 0}
!60 = !{!"rtvec_def", !41, i64 0, !37, i64 8}
!61 = distinct !{!61, !52, !53}
!62 = !{!63, !36, i64 0}
!63 = !{!"reg_attrs", !36, i64 0, !42, i64 8}
!64 = !{!63, !42, i64 8}
!65 = distinct !{!65, !52, !53}
!66 = !{!67, !41, i64 24}
!67 = !{!"mem_attrs", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !37, i64 32}
!68 = !{!67, !36, i64 0}
!69 = !{!67, !36, i64 8}
!70 = !{!67, !36, i64 16}
!71 = !{!67, !41, i64 28}
!72 = !{!67, !37, i64 32}
!73 = distinct !{!73, !52, !53}
!74 = distinct !{!74, !52, !53}
!75 = distinct !{!75, !53}
!76 = distinct !{!76, !52, !53}
!77 = distinct !{!77, !52, !53}
