; ModuleID = 'i386-c.c'
source_filename = "i386-c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.tree_target_option = type { %struct.tree_common, %struct.cl_target_option }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.cl_target_option = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@parse_in = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"cpu=i386\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"machine=i386\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"i386\00", align 1
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@ix86_arch = external local_unnamed_addr global i32, align 4
@ix86_tune = external local_unnamed_addr global i32, align 4
@ix86_fpmath = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@ix86_arch_string = external local_unnamed_addr global ptr, align 8
@ix86_tune_string = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"__i486\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"__i486__\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"__i586\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"__i586__\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"__pentium\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"__pentium__\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"__pentium_mmx__\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"__i686\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"__i686__\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"__pentiumpro\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"__pentiumpro__\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"__geode\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"__geode__\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"__k6\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"__k6__\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"__k6_2__\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"__k6_3__\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"__athlon\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"__athlon__\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"__athlon_sse__\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"__k8\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"__k8__\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"__amdfam10\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"__amdfam10__\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"__pentium4\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"__pentium4__\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"__nocona\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"__nocona__\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"__core2\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"__core2__\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"__atom\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"__atom__\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"i386-c.c\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"__tune_i386__\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"__tune_i486__\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"__tune_i586__\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"__tune_pentium__\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"__tune_pentium_mmx__\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"__tune_i686__\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"__tune_pentiumpro__\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"__tune_pentium3__\00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"__tune_pentium2__\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"__tune_geode__\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"__tune_k6__\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"__tune_k6_2__\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"__tune_k6_3__\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"__tune_athlon__\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"__tune_athlon_sse__\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"__tune_k8__\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"__tune_amdfam10__\00", align 1
@.str.54 = private unnamed_addr constant [18 x i8] c"__tune_pentium4__\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"__tune_nocona__\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"__tune_core2__\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"__tune_atom__\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"__MMX__\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"__3dNOW__\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"__3dNOW_A__\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"__SSE__\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"__SSE2__\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"__SSE3__\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"__SSSE3__\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"__SSE4_1__\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"__SSE4_2__\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"__AES__\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"__PCLMUL__\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"__AVX__\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"__FMA__\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"__SSE4A__\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"__FMA4__\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"__XOP__\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"__LWP__\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"__ABM__\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"__POPCNT__\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"__SSE_MATH__\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"__SSE2_MATH__\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !40 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !41
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !40 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !41
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !40 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !51

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #11
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !45
  %11 = load i8, ptr %3, align 1, !tbaa !52
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !40 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !51

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #11
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !45
  %11 = load i8, ptr %3, align 1, !tbaa !52
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !40 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !41
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !51

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #11
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !45
  %11 = load i8, ptr %3, align 1, !tbaa !52
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !40 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !41
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !40 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !51

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #11
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !53
  store i8 %12, ptr %4, align 1, !tbaa !52
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !40 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !51

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #11
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !53
  store i8 %12, ptr %4, align 1, !tbaa !52
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !40 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !41
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !51

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #11
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !53
  store i8 %12, ptr %4, align 1, !tbaa !52
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !40 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #11
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !40 {
  %2 = load i32, ptr %0, align 8, !tbaa !55
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !40 {
  %2 = load i32, ptr %0, align 8, !tbaa !55
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !40 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #11
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !56
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !40 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #11
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !56
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !40 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #11
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
  br i1 %23, label %7, label %24, !llvm.loop !57

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !40 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @ix86_target_macros() local_unnamed_addr #8 !prof !60 {
  %1 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_assert(ptr noundef %1, ptr noundef nonnull @.str) #11
  %2 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_assert(ptr noundef %2, ptr noundef nonnull @.str.1) #11
  tail call void @builtin_define_std(ptr noundef nonnull @.str.2) #11
  %3 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !56
  %4 = load i32, ptr @ix86_arch, align 4, !tbaa !56
  %5 = load i32, ptr @ix86_tune, align 4, !tbaa !56
  %6 = load i32, ptr @ix86_fpmath, align 4, !tbaa !56
  tail call fastcc void @ix86_target_macros_internal.specialized.1(i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6)
  ret void
}

declare void @cpp_assert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @builtin_define_std(ptr noundef) local_unnamed_addr #3

declare void @cpp_define(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @ix86_register_pragmas() local_unnamed_addr #9 !prof !60 {
  store ptr @ix86_pragma_target_parse, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 107, i32 4), align 8, !tbaa !61
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noundef zeroext i8 @ix86_pragma_target_parse(ptr noundef %0, ptr noundef %1) #8 !prof !40 {
  %3 = tail call ptr @build_target_option_node() #11
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  %7 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 127), align 8
  %8 = select i1 %6, ptr %7, ptr %1
  %9 = getelementptr inbounds %struct.tree_target_option, ptr %8, i64 0, i32 1
  tail call void @cl_target_option_restore(ptr noundef nonnull %9) #11
  br label %13

10:                                               ; preds = %2
  %11 = tail call ptr @ix86_valid_target_attribute_tree(ptr noundef nonnull %0) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %248, label %13

13:                                               ; preds = %10, %5
  %14 = phi ptr [ %11, %10 ], [ %8, %5 ]
  store ptr %14, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 128), align 16, !tbaa !41
  %15 = getelementptr inbounds %struct.tree_target_option, ptr %3, i64 0, i32 1, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !73
  %17 = getelementptr inbounds %struct.tree_target_option, ptr %14, i64 0, i32 1, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !73
  %19 = xor i32 %18, %16
  %20 = getelementptr inbounds %struct.tree_target_option, ptr %3, i64 0, i32 1, i32 4
  %21 = load i8, ptr %20, align 4, !tbaa !75
  %22 = getelementptr inbounds %struct.tree_target_option, ptr %3, i64 0, i32 1, i32 9
  %23 = load i8, ptr %22, align 1, !tbaa !76
  %24 = getelementptr inbounds %struct.tree_target_option, ptr %14, i64 0, i32 1, i32 4
  %25 = load i8, ptr %24, align 4, !tbaa !75
  %26 = getelementptr inbounds %struct.tree_target_option, ptr %14, i64 0, i32 1, i32 9
  %27 = load i8, ptr %26, align 1, !tbaa !76
  %28 = icmp eq i8 %25, %21
  %29 = select i1 %28, i8 15, i8 %21
  %30 = select i1 %28, i8 15, i8 %25
  %31 = zext i8 %30 to i32
  %32 = icmp eq i8 %27, %23
  %33 = select i1 %32, i8 15, i8 %23
  %34 = select i1 %32, i8 15, i8 %27
  %35 = zext i8 %34 to i32
  %36 = and i32 %19, %16
  %37 = getelementptr inbounds %struct.tree_target_option, ptr %3, i64 0, i32 1, i32 7
  %38 = load i8, ptr %37, align 1, !tbaa !77
  %39 = load ptr, ptr @ix86_tune_string, align 8, !tbaa !41
  %40 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %39)
  %41 = getelementptr i8, ptr %39, i64 %40
  %42 = getelementptr i8, ptr %41, i64 -1
  %43 = load i8, ptr %42, align 1, !tbaa !52
  switch i8 %29, label %107 [
    i8 12, label %106
    i8 1, label %44
    i8 2, label %47
    i8 3, label %56
    i8 4, label %61
    i8 5, label %64
    i8 6, label %81
    i8 8, label %88
    i8 13, label %91
    i8 7, label %94
    i8 9, label %97
    i8 10, label %100
    i8 14, label %103
    i8 11, label %106
  ]

44:                                               ; preds = %13
  %45 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %45, ptr noundef nonnull @.str.3) #11
  %46 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %46, ptr noundef nonnull @.str.4) #11
  br label %107

47:                                               ; preds = %13
  %48 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %48, ptr noundef nonnull @.str.5) #11
  %49 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %49, ptr noundef nonnull @.str.6) #11
  %50 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %50, ptr noundef nonnull @.str.7) #11
  %51 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %51, ptr noundef nonnull @.str.8) #11
  %52 = and i32 %36, 2048
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %107, label %54

54:                                               ; preds = %47
  %55 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %55, ptr noundef nonnull @.str.9) #11
  br label %107

56:                                               ; preds = %13
  %57 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %57, ptr noundef nonnull @.str.10) #11
  %58 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %58, ptr noundef nonnull @.str.11) #11
  %59 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %59, ptr noundef nonnull @.str.12) #11
  %60 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %60, ptr noundef nonnull @.str.13) #11
  br label %107

61:                                               ; preds = %13
  %62 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %62, ptr noundef nonnull @.str.14) #11
  %63 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %63, ptr noundef nonnull @.str.15) #11
  br label %107

64:                                               ; preds = %13
  %65 = load ptr, ptr @ix86_arch_string, align 8, !tbaa !41
  %66 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %65)
  %67 = getelementptr i8, ptr %65, i64 %66
  %68 = getelementptr i8, ptr %67, i64 -1
  %69 = load i8, ptr %68, align 1, !tbaa !52
  %70 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %70, ptr noundef nonnull @.str.16) #11
  %71 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %71, ptr noundef nonnull @.str.17) #11
  switch i8 %69, label %76 [
    i8 50, label %72
    i8 51, label %74
  ]

72:                                               ; preds = %64
  %73 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %73, ptr noundef nonnull @.str.18) #11
  br label %107

74:                                               ; preds = %64
  %75 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %75, ptr noundef nonnull @.str.19) #11
  br label %107

76:                                               ; preds = %64
  %77 = and i32 %36, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %107, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %80, ptr noundef nonnull @.str.19) #11
  br label %107

81:                                               ; preds = %13
  %82 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %82, ptr noundef nonnull @.str.20) #11
  %83 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %83, ptr noundef nonnull @.str.21) #11
  %84 = and i32 %36, 65536
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %107, label %86

86:                                               ; preds = %81
  %87 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %87, ptr noundef nonnull @.str.22) #11
  br label %107

88:                                               ; preds = %13
  %89 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %89, ptr noundef nonnull @.str.23) #11
  %90 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %90, ptr noundef nonnull @.str.24) #11
  br label %107

91:                                               ; preds = %13
  %92 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %92, ptr noundef nonnull @.str.25) #11
  %93 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %93, ptr noundef nonnull @.str.26) #11
  br label %107

94:                                               ; preds = %13
  %95 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %95, ptr noundef nonnull @.str.27) #11
  %96 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %96, ptr noundef nonnull @.str.28) #11
  br label %107

97:                                               ; preds = %13
  %98 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %98, ptr noundef nonnull @.str.29) #11
  %99 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %99, ptr noundef nonnull @.str.30) #11
  br label %107

100:                                              ; preds = %13
  %101 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %101, ptr noundef nonnull @.str.31) #11
  %102 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %102, ptr noundef nonnull @.str.32) #11
  br label %107

103:                                              ; preds = %13
  %104 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %104, ptr noundef nonnull @.str.33) #11
  %105 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %105, ptr noundef nonnull @.str.34) #11
  br label %107

106:                                              ; preds = %13, %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 131, ptr noundef nonnull @.str.36) #11
  br label %107

107:                                              ; preds = %106, %103, %100, %97, %94, %91, %88, %86, %81, %79, %76, %74, %72, %61, %56, %54, %47, %44, %13
  switch i8 %33, label %138 [
    i8 0, label %135
    i8 1, label %108
    i8 2, label %109
    i8 3, label %113
    i8 4, label %118
    i8 5, label %119
    i8 6, label %125
    i8 8, label %129
    i8 13, label %130
    i8 7, label %131
    i8 9, label %132
    i8 10, label %133
    i8 14, label %134
  ]

108:                                              ; preds = %107
  br label %135

109:                                              ; preds = %107
  %110 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %110, ptr noundef nonnull @.str.39) #11
  %111 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %111, ptr noundef nonnull @.str.40) #11
  %112 = icmp eq i8 %43, 120
  br i1 %112, label %135, label %138

113:                                              ; preds = %107
  %114 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %114, ptr noundef nonnull @.str.42) #11
  %115 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %115, ptr noundef nonnull @.str.43) #11
  switch i8 %43, label %138 [
    i8 51, label %116
    i8 50, label %135
  ]

116:                                              ; preds = %113
  %117 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %117, ptr noundef nonnull @.str.44) #11
  br label %135

118:                                              ; preds = %107
  br label %135

119:                                              ; preds = %107
  %120 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %120, ptr noundef nonnull @.str.47) #11
  switch i8 %43, label %122 [
    i8 50, label %135
    i8 51, label %121
  ]

121:                                              ; preds = %119
  br label %135

122:                                              ; preds = %119
  %123 = and i32 %36, 1
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %138, label %135

125:                                              ; preds = %107
  %126 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %126, ptr noundef nonnull @.str.50) #11
  %127 = and i32 %36, 65536
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %138, label %135

129:                                              ; preds = %107
  br label %135

130:                                              ; preds = %107
  br label %135

131:                                              ; preds = %107
  br label %135

132:                                              ; preds = %107
  br label %135

133:                                              ; preds = %107
  br label %135

134:                                              ; preds = %107
  br label %135

135:                                              ; preds = %125, %122, %119, %113, %116, %109, %107, %108, %118, %121, %129, %130, %131, %132, %133, %134
  %136 = phi ptr [ @.str.57, %134 ], [ @.str.56, %133 ], [ @.str.55, %132 ], [ @.str.54, %131 ], [ @.str.53, %130 ], [ @.str.52, %129 ], [ @.str.49, %121 ], [ @.str.46, %118 ], [ @.str.38, %108 ], [ @.str.37, %107 ], [ @.str.41, %109 ], [ @.str.45, %116 ], [ @.str.45, %113 ], [ @.str.48, %119 ], [ @.str.49, %122 ], [ @.str.51, %125 ]
  %137 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %137, ptr noundef nonnull %136) #11
  br label %138

138:                                              ; preds = %135, %125, %122, %113, %109, %107
  %139 = and i32 %36, 2048
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %138
  %142 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %142, ptr noundef nonnull @.str.58) #11
  br label %143

143:                                              ; preds = %141, %138
  %144 = and i32 %36, 1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %148, label %146

146:                                              ; preds = %143
  %147 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %147, ptr noundef nonnull @.str.59) #11
  br label %148

148:                                              ; preds = %146, %143
  %149 = and i32 %36, 2
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %148
  %152 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %152, ptr noundef nonnull @.str.60) #11
  br label %153

153:                                              ; preds = %151, %148
  %154 = and i32 %36, 65536
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %153
  %157 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %157, ptr noundef nonnull @.str.61) #11
  br label %158

158:                                              ; preds = %156, %153
  %159 = and i32 %36, 131072
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %158
  %162 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %162, ptr noundef nonnull @.str.62) #11
  br label %163

163:                                              ; preds = %161, %158
  %164 = and i32 %36, 262144
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %163
  %167 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %167, ptr noundef nonnull @.str.63) #11
  br label %168

168:                                              ; preds = %166, %163
  %169 = and i32 %36, 4194304
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %168
  %172 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %172, ptr noundef nonnull @.str.64) #11
  br label %173

173:                                              ; preds = %171, %168
  %174 = and i32 %36, 524288
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %173
  %177 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %177, ptr noundef nonnull @.str.65) #11
  br label %178

178:                                              ; preds = %176, %173
  %179 = and i32 %36, 1048576
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %178
  %182 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %182, ptr noundef nonnull @.str.66) #11
  br label %183

183:                                              ; preds = %181, %178
  %184 = and i32 %36, 16
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %183
  %187 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %187, ptr noundef nonnull @.str.67) #11
  br label %188

188:                                              ; preds = %186, %183
  %189 = and i32 %36, 8192
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %188
  %192 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %192, ptr noundef nonnull @.str.68) #11
  br label %193

193:                                              ; preds = %191, %188
  %194 = and i32 %36, 32
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %193
  %197 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %197, ptr noundef nonnull @.str.69) #11
  br label %198

198:                                              ; preds = %196, %193
  %199 = and i32 %36, 256
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %203, label %201

201:                                              ; preds = %198
  %202 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %202, ptr noundef nonnull @.str.70) #11
  br label %203

203:                                              ; preds = %201, %198
  %204 = and i32 %36, 2097152
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %203
  %207 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %207, ptr noundef nonnull @.str.71) #11
  br label %208

208:                                              ; preds = %206, %203
  %209 = and i32 %36, 512
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %208
  %212 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %212, ptr noundef nonnull @.str.72) #11
  br label %213

213:                                              ; preds = %211, %208
  %214 = and i32 %36, 8388608
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %218, label %216

216:                                              ; preds = %213
  %217 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %217, ptr noundef nonnull @.str.73) #11
  br label %218

218:                                              ; preds = %216, %213
  %219 = and i32 %36, 1024
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %223, label %221

221:                                              ; preds = %218
  %222 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %222, ptr noundef nonnull @.str.74) #11
  br label %223

223:                                              ; preds = %221, %218
  %224 = and i32 %36, 8
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %223
  %227 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %227, ptr noundef nonnull @.str.75) #11
  br label %228

228:                                              ; preds = %226, %223
  %229 = and i32 %36, 16384
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %228
  %232 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %232, ptr noundef nonnull @.str.76) #11
  br label %233

233:                                              ; preds = %231, %228
  %234 = and i8 %38, 2
  %235 = icmp eq i8 %234, 0
  %236 = or i1 %155, %235
  br i1 %236, label %239, label %237

237:                                              ; preds = %233
  %238 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %238, ptr noundef nonnull @.str.77) #11
  br label %239

239:                                              ; preds = %237, %233
  %240 = or i1 %160, %235
  br i1 %240, label %243, label %241

241:                                              ; preds = %239
  %242 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_undef(ptr noundef %242, ptr noundef nonnull @.str.78) #11
  br label %243

243:                                              ; preds = %239, %241
  %244 = and i32 %19, %18
  %245 = getelementptr inbounds %struct.tree_target_option, ptr %14, i64 0, i32 1, i32 7
  %246 = load i8, ptr %245, align 1, !tbaa !77
  %247 = zext i8 %246 to i32
  tail call fastcc void @ix86_target_macros_internal.specialized.1(i32 noundef %244, i32 noundef %31, i32 noundef %35, i32 noundef %247)
  br label %248

248:                                              ; preds = %10, %243
  %249 = phi i8 [ 1, %243 ], [ 0, %10 ]
  ret i8 %249
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_target_option_node() local_unnamed_addr #3

declare void @cl_target_option_restore(ptr noundef) local_unnamed_addr #3

declare ptr @ix86_valid_target_attribute_tree(ptr noundef) local_unnamed_addr #3

declare void @cpp_undef(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @ix86_target_macros_internal.specialized.1(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 !prof !60 !PGOFuncName !78 {
  %5 = load ptr, ptr @ix86_tune_string, align 8, !tbaa !41
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5)
  %7 = getelementptr i8, ptr %5, i64 %6
  %8 = getelementptr i8, ptr %7, i64 -1
  %9 = load i8, ptr %8, align 1, !tbaa !52
  switch i32 %1, label %73 [
    i32 12, label %72
    i32 1, label %10
    i32 2, label %13
    i32 3, label %22
    i32 4, label %27
    i32 5, label %30
    i32 6, label %47
    i32 8, label %54
    i32 13, label %57
    i32 7, label %60
    i32 9, label %63
    i32 10, label %66
    i32 14, label %69
    i32 11, label %72
  ], !prof !79

10:                                               ; preds = %4
  %11 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %11, ptr noundef nonnull @.str.3) #11
  %12 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %12, ptr noundef nonnull @.str.4) #11
  br label %73

13:                                               ; preds = %4
  %14 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %14, ptr noundef nonnull @.str.5) #11
  %15 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %15, ptr noundef nonnull @.str.6) #11
  %16 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %16, ptr noundef nonnull @.str.7) #11
  %17 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %17, ptr noundef nonnull @.str.8) #11
  %18 = and i32 %0, 2048
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %73, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %21, ptr noundef nonnull @.str.9) #11
  br label %73

22:                                               ; preds = %4
  %23 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %23, ptr noundef nonnull @.str.10) #11
  %24 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %24, ptr noundef nonnull @.str.11) #11
  %25 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %25, ptr noundef nonnull @.str.12) #11
  %26 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %26, ptr noundef nonnull @.str.13) #11
  br label %73

27:                                               ; preds = %4
  %28 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %28, ptr noundef nonnull @.str.14) #11
  %29 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %29, ptr noundef nonnull @.str.15) #11
  br label %73

30:                                               ; preds = %4
  %31 = load ptr, ptr @ix86_arch_string, align 8, !tbaa !41
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %31)
  %33 = getelementptr i8, ptr %31, i64 %32
  %34 = getelementptr i8, ptr %33, i64 -1
  %35 = load i8, ptr %34, align 1, !tbaa !52
  %36 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %36, ptr noundef nonnull @.str.16) #11
  %37 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %37, ptr noundef nonnull @.str.17) #11
  switch i8 %35, label %42 [
    i8 50, label %38
    i8 51, label %40
  ]

38:                                               ; preds = %30
  %39 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %39, ptr noundef nonnull @.str.18) #11
  br label %73

40:                                               ; preds = %30
  %41 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %41, ptr noundef nonnull @.str.19) #11
  br label %73

42:                                               ; preds = %30
  %43 = and i32 %0, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %73, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %46, ptr noundef nonnull @.str.19) #11
  br label %73

47:                                               ; preds = %4
  %48 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %48, ptr noundef nonnull @.str.20) #11
  %49 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %49, ptr noundef nonnull @.str.21) #11
  %50 = and i32 %0, 65536
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %73, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %53, ptr noundef nonnull @.str.22) #11
  br label %73

54:                                               ; preds = %4
  %55 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %55, ptr noundef nonnull @.str.23) #11
  %56 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %56, ptr noundef nonnull @.str.24) #11
  br label %73

57:                                               ; preds = %4
  %58 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %58, ptr noundef nonnull @.str.25) #11
  %59 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %59, ptr noundef nonnull @.str.26) #11
  br label %73

60:                                               ; preds = %4
  %61 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %61, ptr noundef nonnull @.str.27) #11
  %62 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %62, ptr noundef nonnull @.str.28) #11
  br label %73

63:                                               ; preds = %4
  %64 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %64, ptr noundef nonnull @.str.29) #11
  %65 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %65, ptr noundef nonnull @.str.30) #11
  br label %73

66:                                               ; preds = %4
  %67 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %67, ptr noundef nonnull @.str.31) #11
  %68 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %68, ptr noundef nonnull @.str.32) #11
  br label %73

69:                                               ; preds = %4
  %70 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %70, ptr noundef nonnull @.str.33) #11
  %71 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %71, ptr noundef nonnull @.str.34) #11
  br label %73

72:                                               ; preds = %4, %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 131, ptr noundef nonnull @.str.36) #11
  br label %73

73:                                               ; preds = %72, %69, %66, %63, %60, %57, %54, %52, %47, %45, %42, %40, %38, %27, %22, %20, %13, %10, %4
  switch i32 %2, label %104 [
    i32 0, label %101
    i32 1, label %74
    i32 2, label %75
    i32 3, label %79
    i32 4, label %84
    i32 5, label %85
    i32 6, label %91
    i32 8, label %95
    i32 13, label %96
    i32 7, label %97
    i32 9, label %98
    i32 10, label %99
    i32 14, label %100
  ], !prof !80

74:                                               ; preds = %73
  br label %101

75:                                               ; preds = %73
  %76 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %76, ptr noundef nonnull @.str.39) #11
  %77 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %77, ptr noundef nonnull @.str.40) #11
  %78 = icmp eq i8 %9, 120
  br i1 %78, label %101, label %104

79:                                               ; preds = %73
  %80 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %80, ptr noundef nonnull @.str.42) #11
  %81 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %81, ptr noundef nonnull @.str.43) #11
  switch i8 %9, label %104 [
    i8 51, label %82
    i8 50, label %101
  ]

82:                                               ; preds = %79
  %83 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %83, ptr noundef nonnull @.str.44) #11
  br label %101

84:                                               ; preds = %73
  br label %101

85:                                               ; preds = %73
  %86 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %86, ptr noundef nonnull @.str.47) #11
  switch i8 %9, label %88 [
    i8 50, label %101
    i8 51, label %87
  ]

87:                                               ; preds = %85
  br label %101

88:                                               ; preds = %85
  %89 = and i32 %0, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %104, label %101

91:                                               ; preds = %73
  %92 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %92, ptr noundef nonnull @.str.50) #11
  %93 = and i32 %0, 65536
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %104, label %101

95:                                               ; preds = %73
  br label %101

96:                                               ; preds = %73
  br label %101

97:                                               ; preds = %73
  br label %101

98:                                               ; preds = %73
  br label %101

99:                                               ; preds = %73
  br label %101

100:                                              ; preds = %73
  br label %101

101:                                              ; preds = %91, %88, %85, %79, %82, %75, %73, %74, %84, %87, %95, %96, %97, %98, %99, %100
  %102 = phi ptr [ @.str.57, %100 ], [ @.str.56, %99 ], [ @.str.55, %98 ], [ @.str.54, %97 ], [ @.str.53, %96 ], [ @.str.52, %95 ], [ @.str.49, %87 ], [ @.str.46, %84 ], [ @.str.38, %74 ], [ @.str.37, %73 ], [ @.str.41, %75 ], [ @.str.45, %82 ], [ @.str.45, %79 ], [ @.str.48, %85 ], [ @.str.49, %88 ], [ @.str.51, %91 ]
  %103 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %103, ptr noundef nonnull %102) #11
  br label %104

104:                                              ; preds = %101, %91, %88, %79, %75, %73
  %105 = and i32 %0, 2048
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107, !prof !81

107:                                              ; preds = %104
  %108 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %108, ptr noundef nonnull @.str.58) #11
  br label %109

109:                                              ; preds = %107, %104
  %110 = and i32 %0, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112, !prof !81

112:                                              ; preds = %109
  %113 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %113, ptr noundef nonnull @.str.59) #11
  br label %114

114:                                              ; preds = %112, %109
  %115 = and i32 %0, 2
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117, !prof !81

117:                                              ; preds = %114
  %118 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %118, ptr noundef nonnull @.str.60) #11
  br label %119

119:                                              ; preds = %117, %114
  %120 = and i32 %0, 65536
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122, !prof !81

122:                                              ; preds = %119
  %123 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %123, ptr noundef nonnull @.str.61) #11
  br label %124

124:                                              ; preds = %122, %119
  %125 = and i32 %0, 131072
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127, !prof !81

127:                                              ; preds = %124
  %128 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %128, ptr noundef nonnull @.str.62) #11
  br label %129

129:                                              ; preds = %127, %124
  %130 = and i32 %0, 262144
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %134, label %132, !prof !81

132:                                              ; preds = %129
  %133 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %133, ptr noundef nonnull @.str.63) #11
  br label %134

134:                                              ; preds = %132, %129
  %135 = and i32 %0, 4194304
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137, !prof !81

137:                                              ; preds = %134
  %138 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %138, ptr noundef nonnull @.str.64) #11
  br label %139

139:                                              ; preds = %137, %134
  %140 = and i32 %0, 524288
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142, !prof !81

142:                                              ; preds = %139
  %143 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %143, ptr noundef nonnull @.str.65) #11
  br label %144

144:                                              ; preds = %142, %139
  %145 = and i32 %0, 1048576
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %149, label %147, !prof !81

147:                                              ; preds = %144
  %148 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %148, ptr noundef nonnull @.str.66) #11
  br label %149

149:                                              ; preds = %147, %144
  %150 = and i32 %0, 16
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %154, label %152, !prof !81

152:                                              ; preds = %149
  %153 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %153, ptr noundef nonnull @.str.67) #11
  br label %154

154:                                              ; preds = %152, %149
  %155 = and i32 %0, 8192
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %159, label %157, !prof !81

157:                                              ; preds = %154
  %158 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %158, ptr noundef nonnull @.str.68) #11
  br label %159

159:                                              ; preds = %157, %154
  %160 = and i32 %0, 32
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %164, label %162, !prof !81

162:                                              ; preds = %159
  %163 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %163, ptr noundef nonnull @.str.69) #11
  br label %164

164:                                              ; preds = %162, %159
  %165 = and i32 %0, 256
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %169, label %167, !prof !81

167:                                              ; preds = %164
  %168 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %168, ptr noundef nonnull @.str.70) #11
  br label %169

169:                                              ; preds = %167, %164
  %170 = and i32 %0, 2097152
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %174, label %172, !prof !81

172:                                              ; preds = %169
  %173 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %173, ptr noundef nonnull @.str.71) #11
  br label %174

174:                                              ; preds = %172, %169
  %175 = and i32 %0, 512
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %179, label %177, !prof !81

177:                                              ; preds = %174
  %178 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %178, ptr noundef nonnull @.str.72) #11
  br label %179

179:                                              ; preds = %177, %174
  %180 = and i32 %0, 8388608
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %184, label %182, !prof !81

182:                                              ; preds = %179
  %183 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %183, ptr noundef nonnull @.str.73) #11
  br label %184

184:                                              ; preds = %182, %179
  %185 = and i32 %0, 1024
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %189, label %187, !prof !81

187:                                              ; preds = %184
  %188 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %188, ptr noundef nonnull @.str.74) #11
  br label %189

189:                                              ; preds = %187, %184
  %190 = and i32 %0, 8
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %194, label %192, !prof !81

192:                                              ; preds = %189
  %193 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %193, ptr noundef nonnull @.str.75) #11
  br label %194

194:                                              ; preds = %192, %189
  %195 = and i32 %0, 16384
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %199, label %197, !prof !81

197:                                              ; preds = %194
  %198 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %198, ptr noundef nonnull @.str.76) #11
  br label %199

199:                                              ; preds = %197, %194
  %200 = and i32 %3, 2
  %201 = icmp eq i32 %200, 0
  %202 = or i1 %121, %201
  br i1 %202, label %205, label %203, !prof !81

203:                                              ; preds = %199
  %204 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %204, ptr noundef nonnull @.str.77) #11
  br label %205

205:                                              ; preds = %199, %203
  %206 = or i1 %126, %201
  br i1 %206, label %209, label %207, !prof !81

207:                                              ; preds = %205
  %208 = load ptr, ptr @parse_in, align 8, !tbaa !41
  tail call void @cpp_define(ptr noundef %208, ptr noundef nonnull @.str.78) #11
  br label %209

209:                                              ; preds = %205, %207
  ret void
}

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @ix86_target_macros, ptr @cpp_assert, i64 2}
!36 = !{ptr @ix86_target_macros, ptr @builtin_define_std, i64 1}
!37 = !{ptr @ix86_target_macros, ptr @ix86_target_macros_internal.specialized.1, i64 1}
!38 = !{ptr @ix86_target_macros_internal.specialized.1, ptr @strlen, i64 1}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!46, !42, i64 8}
!46 = !{!"_IO_FILE", !47, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !47, i64 112, !47, i64 116, !48, i64 120, !49, i64 128, !43, i64 130, !43, i64 131, !42, i64 136, !48, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !48, i64 184, !47, i64 192, !43, i64 196}
!47 = !{!"int", !43, i64 0}
!48 = !{!"long", !43, i64 0}
!49 = !{!"short", !43, i64 0}
!50 = !{!46, !42, i64 16}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{!43, !43, i64 0}
!53 = !{!46, !42, i64 40}
!54 = !{!46, !42, i64 48}
!55 = !{!46, !47, i64 0}
!56 = !{!47, !47, i64 0}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!"function_entry_count", i64 1}
!61 = !{!62, !42, i64 2000}
!62 = !{!"gcc_target", !63, i64 0, !65, i64 368, !66, i64 664, !47, i64 744, !42, i64 752, !42, i64 760, !42, i64 768, !42, i64 776, !42, i64 784, !42, i64 792, !42, i64 800, !42, i64 808, !42, i64 816, !42, i64 824, !42, i64 832, !42, i64 840, !42, i64 848, !42, i64 856, !42, i64 864, !42, i64 872, !42, i64 880, !42, i64 888, !42, i64 896, !42, i64 904, !42, i64 912, !42, i64 920, !42, i64 928, !42, i64 936, !42, i64 944, !42, i64 952, !42, i64 960, !42, i64 968, !42, i64 976, !42, i64 984, !42, i64 992, !42, i64 1000, !42, i64 1008, !42, i64 1016, !42, i64 1024, !42, i64 1032, !42, i64 1040, !42, i64 1048, !42, i64 1056, !48, i64 1064, !48, i64 1072, !42, i64 1080, !42, i64 1088, !42, i64 1096, !42, i64 1104, !42, i64 1112, !42, i64 1120, !42, i64 1128, !42, i64 1136, !42, i64 1144, !42, i64 1152, !42, i64 1160, !42, i64 1168, !67, i64 1176, !42, i64 1232, !42, i64 1240, !42, i64 1248, !42, i64 1256, !42, i64 1264, !42, i64 1272, !42, i64 1280, !42, i64 1288, !42, i64 1296, !42, i64 1304, !42, i64 1312, !42, i64 1320, !42, i64 1328, !42, i64 1336, !42, i64 1344, !42, i64 1352, !42, i64 1360, !42, i64 1368, !42, i64 1376, !42, i64 1384, !42, i64 1392, !42, i64 1400, !42, i64 1408, !42, i64 1416, !42, i64 1424, !42, i64 1432, !42, i64 1440, !42, i64 1448, !42, i64 1456, !48, i64 1464, !68, i64 1472, !42, i64 1664, !42, i64 1672, !42, i64 1680, !42, i64 1688, !42, i64 1696, !42, i64 1704, !42, i64 1712, !42, i64 1720, !42, i64 1728, !42, i64 1736, !42, i64 1744, !42, i64 1752, !42, i64 1760, !42, i64 1768, !42, i64 1776, !69, i64 1784, !70, i64 1792, !71, i64 1896, !72, i64 1968, !42, i64 2016, !43, i64 2024, !43, i64 2025, !43, i64 2026, !43, i64 2027, !43, i64 2028, !43, i64 2029, !43, i64 2030, !43, i64 2031, !43, i64 2032, !43, i64 2033, !43, i64 2034, !43, i64 2035}
!63 = !{!"asm_out", !42, i64 0, !42, i64 8, !42, i64 16, !64, i64 24, !64, i64 56, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184, !42, i64 192, !42, i64 200, !42, i64 208, !42, i64 216, !42, i64 224, !42, i64 232, !42, i64 240, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288, !42, i64 296, !42, i64 304, !42, i64 312, !42, i64 320, !42, i64 328, !42, i64 336, !42, i64 344, !42, i64 352, !42, i64 360}
!64 = !{!"asm_int_op", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24}
!65 = !{!"sched", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184, !42, i64 192, !42, i64 200, !42, i64 208, !42, i64 216, !42, i64 224, !42, i64 232, !42, i64 240, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288}
!66 = !{!"vectorize", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72}
!67 = !{!"addr_space", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48}
!68 = !{!"calls", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184}
!69 = !{!"c", !42, i64 0}
!70 = !{!"cxx", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96}
!71 = !{!"emutls", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !43, i64 64, !43, i64 65}
!72 = !{!"target_option_hooks", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40}
!73 = !{!74, !47, i64 12}
!74 = !{!"cl_target_option", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !43, i64 16, !43, i64 17, !43, i64 18, !43, i64 19, !43, i64 20, !43, i64 21, !43, i64 22}
!75 = !{!74, !43, i64 16}
!76 = !{!74, !43, i64 21}
!77 = !{!74, !43, i64 19}
!78 = !{!"i386-c.c;ix86_target_macros_internal.specialized.1"}
!79 = !{!"branch_weights", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!80 = !{!"branch_weights", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!81 = !{!"branch_weights", i32 1, i32 0}
