; ModuleID = 'lto-opts.c'
source_filename = "lto-opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cl_option = type { ptr, ptr, i16, i8, i32, i32, ptr, i32, i32 }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %struct.vectorize, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.addr_space, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.calls, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.c, %struct.cxx, %struct.emutls, %struct.target_option_hooks, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.asm_out = type { ptr, ptr, ptr, %struct.asm_int_op, %struct.asm_int_op, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asm_int_op = type { ptr, ptr, ptr, ptr }
%struct.sched = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vectorize = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.addr_space = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.calls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.c = type { ptr }
%struct.cxx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.emutls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%struct.target_option_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.VEC_opt_t_base = type { i32, i32, [1 x %struct.opt_d] }
%struct.opt_d = type { i32, i64, ptr, i32 }
%struct.lto_output_stream = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.lto_simple_header = type { %struct.lto_header, i32, i32 }
%struct.lto_header = type { i16, i16, i32 }
%struct.lto_input_block = type { ptr, i32, i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@user_options = internal global ptr null, align 8
@file_options = internal global ptr null, align 8
@flag_wpa = external local_unnamed_addr global i32, align 4
@cl_options = external constant [0 x %struct.cl_option], align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str = private unnamed_addr constant [11 x i8] c"lto-opts.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !41 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !42
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !41 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !42
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !41 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !52

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !46
  %11 = load i8, ptr %3, align 1, !tbaa !53
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !41 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !52

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !46
  %11 = load i8, ptr %3, align 1, !tbaa !53
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !41 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !42
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !52

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !46
  %11 = load i8, ptr %3, align 1, !tbaa !53
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !41 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !42
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !41 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !52

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !54
  store i8 %12, ptr %4, align 1, !tbaa !53
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !41 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !52

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !54
  store i8 %12, ptr %4, align 1, !tbaa !53
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !41 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !52

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !54
  store i8 %12, ptr %4, align 1, !tbaa !53
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !41 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !41 {
  %2 = load i32, ptr %0, align 8, !tbaa !56
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !41 {
  %2 = load i32, ptr %0, align 8, !tbaa !56
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !41 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !57
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !41 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #15
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !57
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !41 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !41 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !41 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !41 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #15
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
  br i1 %23, label %7, label %24, !llvm.loop !58

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !41 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_register_user_option(i64 noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !61 {
  switch i32 %3, label %33 [
    i32 1048576, label %6
    i32 2097152, label %5
  ], !prof !62

5:                                                ; preds = %4
  switch i64 %0, label %33 [
    i64 527, label %6
    i64 526, label %6
    i64 301, label %6
    i64 249, label %6
    i64 248, label %6
    i64 368, label %6
  ], !prof !63

6:                                                ; preds = %5, %4, %5, %5, %5, %5, %5
  %7 = icmp eq ptr %1, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %10 = add i64 %9, 1
  %11 = tail call ptr @xmalloc(i64 noundef %10) #15
  %12 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %1)
  br label %13

13:                                               ; preds = %6, %8
  %14 = phi ptr [ %11, %8 ], [ null, %6 ]
  %15 = load ptr, ptr @user_options, align 8, !tbaa !42
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.VEC_opt_t_base, ptr %15, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !64
  %20 = load i32, ptr %15, align 8, !tbaa !66
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %13, %17
  %23 = tail call ptr @vec_heap_o_reserve(ptr noundef %15, i32 noundef 1, i64 noundef 8, i64 noundef 32) #15
  store ptr %23, ptr @user_options, align 8, !tbaa !42
  br label %24

24:                                               ; preds = %17, %22
  %25 = load ptr, ptr @user_options, align 8, !tbaa !42
  %26 = load i32, ptr %25, align 8, !tbaa !66
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 8, !tbaa !66
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds %struct.VEC_opt_t_base, ptr %25, i64 0, i32 2, i64 %28
  store i32 %3, ptr %29, align 8, !tbaa.struct !67
  %30 = getelementptr inbounds i8, ptr %29, i64 8
  store i64 %0, ptr %30, align 8, !tbaa.struct !69
  %31 = getelementptr inbounds i8, ptr %29, i64 16
  store ptr %14, ptr %31, align 8, !tbaa.struct !70
  %32 = getelementptr inbounds i8, ptr %29, i64 24
  store i32 %2, ptr %32, align 8, !tbaa.struct !71
  br label %33

33:                                               ; preds = %4, %5, %24
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_clear_user_options() local_unnamed_addr #9 !prof !72 {
  tail call fastcc void @clear_options(ptr noundef nonnull @user_options)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @clear_options(ptr nocapture noundef %0) unnamed_addr #9 !prof !72 !PGOFuncName !73 {
  br label %2

2:                                                ; preds = %15, %1
  %3 = phi i64 [ %18, %15 ], [ 0, %1 ]
  %4 = load ptr, ptr %0, align 8, !tbaa !42
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !74

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 8, !tbaa !66
  %8 = zext i32 %7 to i64
  %9 = icmp uge i64 %3, %8
  %10 = getelementptr inbounds %struct.VEC_opt_t_base, ptr %4, i64 0, i32 2, i64 %3
  %11 = select i1 %9, ptr null, ptr %10
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi ptr [ null, %2 ], [ %11, %6 ]
  %14 = phi i1 [ true, %2 ], [ %9, %6 ]
  br i1 %14, label %19, label %15, !prof !74

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.opt_d, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !75
  tail call void @free(ptr noundef %17)
  %18 = add nuw i64 %3, 1
  br label %2, !llvm.loop !77

19:                                               ; preds = %12
  br i1 %5, label %21, label %20, !prof !74

20:                                               ; preds = %19
  tail call void @free(ptr noundef %4)
  br label %21

21:                                               ; preds = %19, %20
  store ptr null, ptr %0, align 8, !tbaa !42
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_clear_file_options() local_unnamed_addr #9 !prof !41 {
  tail call fastcc void @clear_options(ptr noundef nonnull @file_options)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_write_options() local_unnamed_addr #9 !prof !41 {
  %1 = alloca i8, align 1
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.lto_output_stream, align 8
  %5 = alloca %struct.lto_simple_header, align 4
  %6 = tail call ptr @lto_get_section_name(i32 noundef 9, ptr noundef null) #15
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %7 = load i32, ptr @flag_wpa, align 4, !tbaa !57
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i8
  tail call void @lto_begin_section(ptr noundef %6, i8 noundef zeroext %9) #15
  tail call void @free(ptr noundef %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %10 = load ptr, ptr @file_options, align 8, !tbaa !42
  %11 = load ptr, ptr @user_options, align 8, !tbaa !42
  %12 = tail call fastcc ptr @concatenate_options(ptr noundef %10, ptr noundef %11)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %0
  %15 = load i32, ptr %12, align 8, !tbaa !66
  %16 = zext i32 %15 to i64
  br label %17

17:                                               ; preds = %14, %0
  %18 = phi i64 [ %16, %14 ], [ 0, %0 ]
  store i64 %18, ptr %3, align 8, !tbaa !68
  call void @lto_output_data_stream(ptr noundef nonnull %4, ptr noundef nonnull %3, i64 noundef 8) #15
  br label %19

19:                                               ; preds = %39, %17
  %20 = phi i64 [ %41, %39 ], [ 0, %17 ]
  br i1 %13, label %27, label %21

21:                                               ; preds = %19
  %22 = load i32, ptr %12, align 8, !tbaa !66
  %23 = zext i32 %22 to i64
  %24 = icmp uge i64 %20, %23
  %25 = getelementptr inbounds %struct.VEC_opt_t_base, ptr %12, i64 0, i32 2, i64 %20
  %26 = select i1 %24, ptr null, ptr %25
  br label %27

27:                                               ; preds = %21, %19
  %28 = phi ptr [ null, %19 ], [ %26, %21 ]
  %29 = phi i1 [ true, %19 ], [ %24, %21 ]
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  call void @lto_output_data_stream(ptr noundef nonnull %4, ptr noundef %28, i64 noundef 4) #15
  %31 = getelementptr inbounds %struct.opt_d, ptr %28, i64 0, i32 1
  call void @lto_output_data_stream(ptr noundef nonnull %4, ptr noundef nonnull %31, i64 noundef 8) #15
  %32 = getelementptr inbounds %struct.opt_d, ptr %28, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #15
  store i8 0, ptr %1, align 1, !tbaa !53
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %36 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33)
  store i64 %36, ptr %2, align 8, !tbaa !68
  store i8 1, ptr %1, align 1, !tbaa !53
  call void @lto_output_data_stream(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef 1) #15
  call void @lto_output_data_stream(ptr noundef nonnull %4, ptr noundef nonnull %2, i64 noundef 8) #15
  %37 = load i64, ptr %2, align 8, !tbaa !68
  call void @lto_output_data_stream(ptr noundef nonnull %4, ptr noundef nonnull %33, i64 noundef %37) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  br label %39

38:                                               ; preds = %30
  call void @lto_output_data_stream(ptr noundef nonnull %4, ptr noundef nonnull %1, i64 noundef 1) #15
  br label %39

39:                                               ; preds = %38, %35
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #15
  %40 = getelementptr inbounds %struct.opt_d, ptr %28, i64 0, i32 3
  call void @lto_output_data_stream(ptr noundef nonnull %4, ptr noundef nonnull %40, i64 noundef 4) #15
  %41 = add nuw i64 %20, 1
  br label %19, !llvm.loop !78

42:                                               ; preds = %27
  br i1 %13, label %44, label %43

43:                                               ; preds = %42
  call void @free(ptr noundef %12)
  br label %44

44:                                               ; preds = %42, %43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i16 1, ptr %5, align 4, !tbaa !79
  %45 = getelementptr inbounds %struct.lto_header, ptr %5, i64 0, i32 1
  store i16 0, ptr %45, align 2, !tbaa !82
  %46 = getelementptr inbounds %struct.lto_header, ptr %5, i64 0, i32 2
  store i32 9, ptr %46, align 4, !tbaa !83
  %47 = getelementptr inbounds %struct.lto_simple_header, ptr %5, i64 0, i32 2
  store i32 0, ptr %47, align 4, !tbaa !84
  %48 = getelementptr inbounds %struct.lto_output_stream, ptr %4, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !85
  %50 = getelementptr inbounds %struct.lto_simple_header, ptr %5, i64 0, i32 1
  store i32 %49, ptr %50, align 4, !tbaa !87
  %51 = call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #15
  call void @lto_output_data_stream(ptr noundef %51, ptr noundef nonnull %5, i64 noundef 16) #15
  call void @lto_write_stream(ptr noundef %51) #15
  call void @free(ptr noundef %51)
  call void @lto_write_stream(ptr noundef nonnull %4) #15
  call void @lto_end_section() #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  ret void
}

declare ptr @lto_get_section_name(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @lto_begin_section(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @lto_output_data_stream(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @lto_write_stream(ptr noundef) local_unnamed_addr #3

declare void @lto_end_section() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_read_file_options(ptr noundef %0) local_unnamed_addr #9 !prof !41 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.opt_d, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.lto_input_block, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  %7 = call ptr @lto_get_section_data(ptr noundef %0, i32 noundef 9, ptr noundef null, ptr noundef nonnull %5) #15
  %8 = load i16, ptr %7, align 4, !tbaa !79
  %9 = sext i16 %8 to i32
  %10 = getelementptr inbounds %struct.lto_header, ptr %7, i64 0, i32 1
  %11 = load i16, ptr %10, align 2, !tbaa !82
  %12 = sext i16 %11 to i32
  call void @lto_check_version(i32 noundef %9, i32 noundef %12) #15
  %13 = getelementptr inbounds i8, ptr %7, i64 16
  store ptr %13, ptr %6, align 8, !tbaa !88
  %14 = getelementptr inbounds %struct.lto_input_block, ptr %6, i64 0, i32 1
  store i32 0, ptr %14, align 8, !tbaa !90
  %15 = getelementptr inbounds %struct.lto_simple_header, ptr %7, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !87
  %17 = getelementptr inbounds %struct.lto_input_block, ptr %6, i64 0, i32 2
  store i32 %16, ptr %17, align 4, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  br label %25

18:                                               ; preds = %25
  %19 = load i64, ptr %3, align 8, !tbaa !68
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %93, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.opt_d, ptr %4, i64 0, i32 1
  %23 = getelementptr inbounds %struct.opt_d, ptr %4, i64 0, i32 2
  %24 = getelementptr inbounds %struct.opt_d, ptr %4, i64 0, i32 3
  br label %31

25:                                               ; preds = %1, %25
  %26 = phi i64 [ 0, %1 ], [ %29, %25 ]
  %27 = call zeroext i8 @lto_input_1_unsigned(ptr noundef nonnull %6) #15
  %28 = getelementptr inbounds i8, ptr %3, i64 %26
  store i8 %27, ptr %28, align 1, !tbaa !53
  %29 = add nuw nsw i64 %26, 1
  %30 = icmp eq i64 %29, 8
  br i1 %30, label %18, label %25, !llvm.loop !92

31:                                               ; preds = %21, %85
  %32 = phi i64 [ 0, %21 ], [ %91, %85 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #15
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi i64 [ 0, %31 ], [ %37, %33 ]
  %35 = call zeroext i8 @lto_input_1_unsigned(ptr noundef nonnull %6) #15
  %36 = getelementptr inbounds i8, ptr %4, i64 %34
  store i8 %35, ptr %36, align 1, !tbaa !53
  %37 = add nuw nsw i64 %34, 1
  %38 = icmp eq i64 %37, 4
  br i1 %38, label %39, label %33, !llvm.loop !92

39:                                               ; preds = %33, %39
  %40 = phi i64 [ %43, %39 ], [ 0, %33 ]
  %41 = call zeroext i8 @lto_input_1_unsigned(ptr noundef nonnull %6) #15
  %42 = getelementptr inbounds i8, ptr %22, i64 %40
  store i8 %41, ptr %42, align 1, !tbaa !53
  %43 = add nuw nsw i64 %40, 1
  %44 = icmp eq i64 %43, 8
  br i1 %44, label %45, label %39, !llvm.loop !92

45:                                               ; preds = %39
  %46 = call zeroext i8 @lto_input_1_unsigned(ptr noundef nonnull %6) #15
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %67, label %48

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  br label %49

49:                                               ; preds = %48, %49
  %50 = phi i64 [ 0, %48 ], [ %53, %49 ]
  %51 = call zeroext i8 @lto_input_1_unsigned(ptr noundef nonnull %6) #15
  %52 = getelementptr inbounds i8, ptr %2, i64 %50
  store i8 %51, ptr %52, align 1, !tbaa !53
  %53 = add nuw nsw i64 %50, 1
  %54 = icmp eq i64 %53, 8
  br i1 %54, label %55, label %49, !llvm.loop !92

55:                                               ; preds = %49
  %56 = load i64, ptr %2, align 8, !tbaa !68
  %57 = add i64 %56, 1
  %58 = call ptr @xcalloc(i64 noundef 1, i64 noundef %57) #15
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %55, %60
  %61 = phi i64 [ %64, %60 ], [ 0, %55 ]
  %62 = call zeroext i8 @lto_input_1_unsigned(ptr noundef nonnull %6) #15
  %63 = getelementptr inbounds i8, ptr %58, i64 %61
  store i8 %62, ptr %63, align 1, !tbaa !53
  %64 = add nuw i64 %61, 1
  %65 = icmp eq i64 %64, %56
  br i1 %65, label %66, label %60, !llvm.loop !92

66:                                               ; preds = %60, %55
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  br label %67

67:                                               ; preds = %66, %45
  %68 = phi ptr [ %58, %66 ], [ null, %45 ]
  store ptr %68, ptr %23, align 8, !tbaa !75
  br label %69

69:                                               ; preds = %67, %69
  %70 = phi i64 [ 0, %67 ], [ %73, %69 ]
  %71 = call zeroext i8 @lto_input_1_unsigned(ptr noundef nonnull %6) #15
  %72 = getelementptr inbounds i8, ptr %24, i64 %70
  store i8 %71, ptr %72, align 1, !tbaa !53
  %73 = add nuw nsw i64 %70, 1
  %74 = icmp eq i64 %73, 4
  br i1 %74, label %75, label %69, !llvm.loop !92

75:                                               ; preds = %69
  %76 = load ptr, ptr @file_options, align 8, !tbaa !42
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.VEC_opt_t_base, ptr %76, i64 0, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !64
  %81 = load i32, ptr %76, align 8, !tbaa !66
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %78, %75
  %84 = call ptr @vec_heap_o_reserve(ptr noundef %76, i32 noundef 1, i64 noundef 8, i64 noundef 32) #15
  store ptr %84, ptr @file_options, align 8, !tbaa !42
  br label %85

85:                                               ; preds = %83, %78
  %86 = load ptr, ptr @file_options, align 8, !tbaa !42
  %87 = load i32, ptr %86, align 8, !tbaa !66
  %88 = add i32 %87, 1
  store i32 %88, ptr %86, align 8, !tbaa !66
  %89 = zext i32 %87 to i64
  %90 = getelementptr inbounds %struct.VEC_opt_t_base, ptr %86, i64 0, i32 2, i64 %89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %90, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !67
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #15
  %91 = add nuw i64 %32, 1
  %92 = icmp eq i64 %91, %19
  br i1 %92, label %93, label %31, !llvm.loop !93

93:                                               ; preds = %85, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  %94 = load i64, ptr %5, align 8, !tbaa !68
  call void @lto_free_section_data(ptr noundef %0, i32 noundef 9, ptr noundef null, ptr noundef nonnull %7, i64 noundef %94) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  ret void
}

declare ptr @lto_get_section_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lto_check_version(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @lto_free_section_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_reissue_options() local_unnamed_addr #9 !prof !41 {
  %1 = load ptr, ptr @file_options, align 8, !tbaa !42
  %2 = load ptr, ptr @user_options, align 8, !tbaa !42
  %3 = tail call fastcc ptr @concatenate_options(ptr noundef %1, ptr noundef %2)
  %4 = icmp eq ptr %3, null
  br label %5

5:                                                ; preds = %41, %0
  %6 = phi i64 [ %42, %41 ], [ 0, %0 ]
  br i1 %4, label %13, label %7

7:                                                ; preds = %5
  %8 = load i32, ptr %3, align 8, !tbaa !66
  %9 = zext i32 %8 to i64
  %10 = icmp uge i64 %6, %9
  %11 = getelementptr inbounds %struct.VEC_opt_t_base, ptr %3, i64 0, i32 2, i64 %6
  %12 = select i1 %10, ptr null, ptr %11
  br label %13

13:                                               ; preds = %7, %5
  %14 = phi ptr [ null, %5 ], [ %12, %7 ]
  %15 = phi i1 [ true, %5 ], [ %10, %7 ]
  br i1 %15, label %43, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.opt_d, ptr %14, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !94
  %19 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %18, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !95
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %18
  %24 = getelementptr inbounds %struct.opt_d, ptr %14, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !97
  %26 = getelementptr inbounds %struct.opt_d, ptr %14, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !75
  tail call void @set_option(ptr noundef nonnull %23, i32 noundef %25, ptr noundef %27) #15
  br label %28

28:                                               ; preds = %22, %16
  %29 = load i32, ptr %14, align 8, !tbaa !98
  switch i32 %29, label %40 [
    i32 1048576, label %30
    i32 2097152, label %38
  ]

30:                                               ; preds = %28
  %31 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 5), align 8, !tbaa !99
  %32 = load i64, ptr %17, align 8, !tbaa !94
  %33 = getelementptr inbounds %struct.opt_d, ptr %14, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !75
  %35 = getelementptr inbounds %struct.opt_d, ptr %14, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !97
  %37 = tail call zeroext i8 %31(i64 noundef %32, ptr noundef %34, i32 noundef %36) #15
  br label %41

38:                                               ; preds = %28
  br i1 %21, label %39, label %41

39:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 391, ptr noundef nonnull @.str.1) #15
  br label %41

40:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 393, ptr noundef nonnull @.str.1) #15
  br label %41

41:                                               ; preds = %39, %38, %40, %30
  %42 = add nuw i64 %6, 1
  br label %5, !llvm.loop !111

43:                                               ; preds = %13
  br i1 %4, label %45, label %44

44:                                               ; preds = %43
  tail call void @free(ptr noundef %3)
  br label %45

45:                                               ; preds = %43, %44
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @concatenate_options(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !41 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store ptr null, ptr %3, align 8, !tbaa !42
  %4 = tail call ptr @lto_bitmap_alloc() #15
  call fastcc void @reverse_iterate_options(ptr noundef %1, ptr noundef nonnull %3, ptr noundef %4)
  call fastcc void @reverse_iterate_options(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %4)
  tail call void @lto_bitmap_free(ptr noundef %4) #15
  %5 = load ptr, ptr %3, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret ptr %5
}

declare void @set_option(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

declare zeroext i8 @lto_input_1_unsigned(ptr noundef) local_unnamed_addr #3

declare ptr @lto_bitmap_alloc() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @reverse_iterate_options(ptr noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #9 !prof !41 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !66
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %3 ]
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %7
  %11 = zext nneg i32 %8 to i64
  br label %12

12:                                               ; preds = %10, %37
  %13 = phi i64 [ %11, %10 ], [ %14, %37 ]
  %14 = add nsw i64 %13, -1
  %15 = getelementptr inbounds %struct.VEC_opt_t_base, ptr %0, i64 0, i32 2, i64 %14
  %16 = getelementptr inbounds %struct.VEC_opt_t_base, ptr %0, i64 0, i32 2, i64 %14, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !94
  %18 = trunc i64 %17 to i32
  %19 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %18) #15
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %12
  %22 = load ptr, ptr %1, align 8, !tbaa !42
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.VEC_opt_t_base, ptr %22, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !64
  %27 = load i32, ptr %22, align 8, !tbaa !66
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21, %24
  %30 = tail call ptr @vec_heap_o_reserve(ptr noundef %22, i32 noundef 1, i64 noundef 8, i64 noundef 32) #15
  store ptr %30, ptr %1, align 8, !tbaa !42
  br label %31

31:                                               ; preds = %24, %29
  %32 = load ptr, ptr %1, align 8, !tbaa !42
  %33 = load i32, ptr %32, align 8, !tbaa !66
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 8, !tbaa !66
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds %struct.VEC_opt_t_base, ptr %32, i64 0, i32 2, i64 %35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !tbaa.struct !67
  br label %37

37:                                               ; preds = %31, %12
  %38 = icmp sgt i64 %13, 1
  br i1 %38, label %12, label %39, !llvm.loop !112

39:                                               ; preds = %37, %7
  ret void
}

declare void @lto_bitmap_free(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

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
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!40}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39}
!35 = !{ptr @lto_register_user_option, ptr @strlen, i64 1}
!36 = !{ptr @lto_register_user_option, ptr @xmalloc, i64 1}
!37 = !{ptr @lto_register_user_option, ptr @strcpy, i64 1}
!38 = !{ptr @lto_register_user_option, ptr @vec_heap_o_reserve, i64 1}
!39 = !{ptr @lto_clear_user_options, ptr @clear_options, i64 1}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !{!47, !43, i64 8}
!47 = !{!"_IO_FILE", !48, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !48, i64 112, !48, i64 116, !49, i64 120, !50, i64 128, !44, i64 130, !44, i64 131, !43, i64 136, !49, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !49, i64 184, !48, i64 192, !44, i64 196}
!48 = !{!"int", !44, i64 0}
!49 = !{!"long", !44, i64 0}
!50 = !{!"short", !44, i64 0}
!51 = !{!47, !43, i64 16}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{!44, !44, i64 0}
!54 = !{!47, !43, i64 40}
!55 = !{!47, !43, i64 48}
!56 = !{!47, !48, i64 0}
!57 = !{!48, !48, i64 0}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!"function_entry_count", i64 5}
!62 = !{!"branch_weights", i32 1, i32 0, i32 4}
!63 = !{!"branch_weights", i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2}
!64 = !{!65, !48, i64 4}
!65 = !{!"VEC_opt_t_base", !48, i64 0, !48, i64 4, !44, i64 8}
!66 = !{!65, !48, i64 0}
!67 = !{i64 0, i64 4, !57, i64 8, i64 8, !68, i64 16, i64 8, !42, i64 24, i64 4, !57}
!68 = !{!49, !49, i64 0}
!69 = !{i64 0, i64 8, !68, i64 8, i64 8, !42, i64 16, i64 4, !57}
!70 = !{i64 0, i64 8, !42, i64 8, i64 4, !57}
!71 = !{i64 0, i64 4, !57}
!72 = !{!"function_entry_count", i64 1}
!73 = !{!"lto-opts.c;clear_options"}
!74 = !{!"branch_weights", i32 1, i32 0}
!75 = !{!76, !43, i64 16}
!76 = !{!"opt_d", !48, i64 0, !49, i64 8, !43, i64 16, !48, i64 24}
!77 = distinct !{!77, !59, !60}
!78 = distinct !{!78, !59, !60}
!79 = !{!80, !50, i64 0}
!80 = !{!"lto_simple_header", !81, i64 0, !48, i64 8, !48, i64 12}
!81 = !{!"lto_header", !50, i64 0, !50, i64 2, !48, i64 4}
!82 = !{!80, !50, i64 2}
!83 = !{!80, !48, i64 4}
!84 = !{!80, !48, i64 12}
!85 = !{!86, !48, i64 32}
!86 = !{!"lto_output_stream", !43, i64 0, !43, i64 8, !43, i64 16, !48, i64 24, !48, i64 28, !48, i64 32}
!87 = !{!80, !48, i64 8}
!88 = !{!89, !43, i64 0}
!89 = !{!"lto_input_block", !43, i64 0, !48, i64 8, !48, i64 12}
!90 = !{!89, !48, i64 8}
!91 = !{!89, !48, i64 12}
!92 = distinct !{!92, !59, !60}
!93 = distinct !{!93, !59, !60}
!94 = !{!76, !49, i64 8}
!95 = !{!96, !43, i64 32}
!96 = !{!"cl_option", !43, i64 0, !43, i64 8, !50, i64 16, !44, i64 18, !48, i64 20, !48, i64 24, !43, i64 32, !48, i64 40, !48, i64 44}
!97 = !{!76, !48, i64 24}
!98 = !{!76, !48, i64 0}
!99 = !{!100, !43, i64 760}
!100 = !{!"gcc_target", !101, i64 0, !103, i64 368, !104, i64 664, !48, i64 744, !43, i64 752, !43, i64 760, !43, i64 768, !43, i64 776, !43, i64 784, !43, i64 792, !43, i64 800, !43, i64 808, !43, i64 816, !43, i64 824, !43, i64 832, !43, i64 840, !43, i64 848, !43, i64 856, !43, i64 864, !43, i64 872, !43, i64 880, !43, i64 888, !43, i64 896, !43, i64 904, !43, i64 912, !43, i64 920, !43, i64 928, !43, i64 936, !43, i64 944, !43, i64 952, !43, i64 960, !43, i64 968, !43, i64 976, !43, i64 984, !43, i64 992, !43, i64 1000, !43, i64 1008, !43, i64 1016, !43, i64 1024, !43, i64 1032, !43, i64 1040, !43, i64 1048, !43, i64 1056, !49, i64 1064, !49, i64 1072, !43, i64 1080, !43, i64 1088, !43, i64 1096, !43, i64 1104, !43, i64 1112, !43, i64 1120, !43, i64 1128, !43, i64 1136, !43, i64 1144, !43, i64 1152, !43, i64 1160, !43, i64 1168, !105, i64 1176, !43, i64 1232, !43, i64 1240, !43, i64 1248, !43, i64 1256, !43, i64 1264, !43, i64 1272, !43, i64 1280, !43, i64 1288, !43, i64 1296, !43, i64 1304, !43, i64 1312, !43, i64 1320, !43, i64 1328, !43, i64 1336, !43, i64 1344, !43, i64 1352, !43, i64 1360, !43, i64 1368, !43, i64 1376, !43, i64 1384, !43, i64 1392, !43, i64 1400, !43, i64 1408, !43, i64 1416, !43, i64 1424, !43, i64 1432, !43, i64 1440, !43, i64 1448, !43, i64 1456, !49, i64 1464, !106, i64 1472, !43, i64 1664, !43, i64 1672, !43, i64 1680, !43, i64 1688, !43, i64 1696, !43, i64 1704, !43, i64 1712, !43, i64 1720, !43, i64 1728, !43, i64 1736, !43, i64 1744, !43, i64 1752, !43, i64 1760, !43, i64 1768, !43, i64 1776, !107, i64 1784, !108, i64 1792, !109, i64 1896, !110, i64 1968, !43, i64 2016, !44, i64 2024, !44, i64 2025, !44, i64 2026, !44, i64 2027, !44, i64 2028, !44, i64 2029, !44, i64 2030, !44, i64 2031, !44, i64 2032, !44, i64 2033, !44, i64 2034, !44, i64 2035}
!101 = !{!"asm_out", !43, i64 0, !43, i64 8, !43, i64 16, !102, i64 24, !102, i64 56, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !43, i64 184, !43, i64 192, !43, i64 200, !43, i64 208, !43, i64 216, !43, i64 224, !43, i64 232, !43, i64 240, !43, i64 248, !43, i64 256, !43, i64 264, !43, i64 272, !43, i64 280, !43, i64 288, !43, i64 296, !43, i64 304, !43, i64 312, !43, i64 320, !43, i64 328, !43, i64 336, !43, i64 344, !43, i64 352, !43, i64 360}
!102 = !{!"asm_int_op", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24}
!103 = !{!"sched", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !43, i64 184, !43, i64 192, !43, i64 200, !43, i64 208, !43, i64 216, !43, i64 224, !43, i64 232, !43, i64 240, !43, i64 248, !43, i64 256, !43, i64 264, !43, i64 272, !43, i64 280, !43, i64 288}
!104 = !{!"vectorize", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72}
!105 = !{!"addr_space", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48}
!106 = !{!"calls", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !43, i64 184}
!107 = !{!"c", !43, i64 0}
!108 = !{!"cxx", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96}
!109 = !{!"emutls", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !44, i64 64, !44, i64 65}
!110 = !{!"target_option_hooks", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40}
!111 = distinct !{!111, !59, !60}
!112 = distinct !{!112, !59, !60}
