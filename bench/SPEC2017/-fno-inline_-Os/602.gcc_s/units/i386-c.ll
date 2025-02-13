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
%struct.tree_target_option = type { %struct.tree_common, %struct.cl_target_option }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.cl_target_option = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }

@parse_in = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"cpu=i386\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"machine=i386\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"i386\00", align 1
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@ix86_arch = external local_unnamed_addr global i32, align 4
@ix86_tune = external local_unnamed_addr global i32, align 4
@ix86_fpmath = external local_unnamed_addr global i32, align 4
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
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ix86_target_macros() local_unnamed_addr #0 !prof !41 {
  %1 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void @cpp_assert(ptr noundef %1, ptr noundef nonnull @.str) #4
  %2 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void @cpp_assert(ptr noundef %2, ptr noundef nonnull @.str.1) #4
  tail call void @builtin_define_std(ptr noundef nonnull @.str.2) #4
  %3 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !46
  %4 = load i32, ptr @ix86_arch, align 4, !tbaa !46
  %5 = load i32, ptr @ix86_tune, align 4, !tbaa !46
  %6 = load i32, ptr @ix86_fpmath, align 4, !tbaa !46
  tail call fastcc void @ix86_target_macros_internal(i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull @cpp_define) #5
  ret void
}

; Function Attrs: optsize
declare void @cpp_assert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @builtin_define_std(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ix86_target_macros_internal(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !prof !41 !PGOFuncName !48 {
  %6 = load ptr, ptr @ix86_tune_string, align 8, !tbaa !42
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #5
  %8 = getelementptr i8, ptr %6, i64 %7
  %9 = getelementptr i8, ptr %8, i64 -1
  %10 = load i8, ptr %9, align 1, !tbaa !49
  switch i32 %1, label %74 [
    i32 12, label %73
    i32 1, label %11
    i32 2, label %14
    i32 3, label %23
    i32 4, label %28
    i32 5, label %31
    i32 6, label %48
    i32 8, label %55
    i32 13, label %58
    i32 7, label %61
    i32 9, label %64
    i32 10, label %67
    i32 14, label %70
    i32 11, label %73
  ], !prof !50

11:                                               ; preds = %5
  %12 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %12, ptr noundef nonnull @.str.3) #4, !callees !51
  %13 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %13, ptr noundef nonnull @.str.4) #4, !callees !51
  br label %74

14:                                               ; preds = %5
  %15 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %15, ptr noundef nonnull @.str.5) #4, !callees !51
  %16 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %16, ptr noundef nonnull @.str.6) #4, !callees !51
  %17 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %17, ptr noundef nonnull @.str.7) #4, !callees !51
  %18 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %18, ptr noundef nonnull @.str.8) #4, !callees !51
  %19 = and i32 %0, 2048
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %74, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %22, ptr noundef nonnull @.str.9) #4, !callees !51
  br label %74

23:                                               ; preds = %5
  %24 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %24, ptr noundef nonnull @.str.10) #4, !callees !51
  %25 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %25, ptr noundef nonnull @.str.11) #4, !callees !51
  %26 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %26, ptr noundef nonnull @.str.12) #4, !callees !51
  %27 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %27, ptr noundef nonnull @.str.13) #4, !callees !51
  br label %74

28:                                               ; preds = %5
  %29 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %29, ptr noundef nonnull @.str.14) #4, !callees !51
  %30 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %30, ptr noundef nonnull @.str.15) #4, !callees !51
  br label %74

31:                                               ; preds = %5
  %32 = load ptr, ptr @ix86_arch_string, align 8, !tbaa !42
  %33 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #5
  %34 = getelementptr i8, ptr %32, i64 %33
  %35 = getelementptr i8, ptr %34, i64 -1
  %36 = load i8, ptr %35, align 1, !tbaa !49
  %37 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %37, ptr noundef nonnull @.str.16) #4, !callees !51
  %38 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %38, ptr noundef nonnull @.str.17) #4, !callees !51
  switch i8 %36, label %43 [
    i8 50, label %39
    i8 51, label %41
  ]

39:                                               ; preds = %31
  %40 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %40, ptr noundef nonnull @.str.18) #4, !callees !51
  br label %74

41:                                               ; preds = %31
  %42 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %42, ptr noundef nonnull @.str.19) #4, !callees !51
  br label %74

43:                                               ; preds = %31
  %44 = and i32 %0, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %74, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %47, ptr noundef nonnull @.str.19) #4, !callees !51
  br label %74

48:                                               ; preds = %5
  %49 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %49, ptr noundef nonnull @.str.20) #4, !callees !51
  %50 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %50, ptr noundef nonnull @.str.21) #4, !callees !51
  %51 = and i32 %0, 65536
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %74, label %53

53:                                               ; preds = %48
  %54 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %54, ptr noundef nonnull @.str.22) #4, !callees !51
  br label %74

55:                                               ; preds = %5
  %56 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %56, ptr noundef nonnull @.str.23) #4, !callees !51
  %57 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %57, ptr noundef nonnull @.str.24) #4, !callees !51
  br label %74

58:                                               ; preds = %5
  %59 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %59, ptr noundef nonnull @.str.25) #4, !callees !51
  %60 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %60, ptr noundef nonnull @.str.26) #4, !callees !51
  br label %74

61:                                               ; preds = %5
  %62 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %62, ptr noundef nonnull @.str.27) #4, !callees !51
  %63 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %63, ptr noundef nonnull @.str.28) #4, !callees !51
  br label %74

64:                                               ; preds = %5
  %65 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %65, ptr noundef nonnull @.str.29) #4, !callees !51
  %66 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %66, ptr noundef nonnull @.str.30) #4, !callees !51
  br label %74

67:                                               ; preds = %5
  %68 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %68, ptr noundef nonnull @.str.31) #4, !callees !51
  %69 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %69, ptr noundef nonnull @.str.32) #4, !callees !51
  br label %74

70:                                               ; preds = %5
  %71 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %71, ptr noundef nonnull @.str.33) #4, !callees !51
  %72 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %72, ptr noundef nonnull @.str.34) #4, !callees !51
  br label %74

73:                                               ; preds = %5, %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 131, ptr noundef nonnull @.str.36) #4
  br label %74

74:                                               ; preds = %48, %53, %39, %43, %46, %41, %14, %21, %73, %5, %70, %67, %64, %61, %58, %55, %28, %23, %11
  switch i32 %2, label %105 [
    i32 0, label %102
    i32 1, label %75
    i32 2, label %76
    i32 3, label %80
    i32 4, label %85
    i32 5, label %86
    i32 6, label %92
    i32 8, label %96
    i32 13, label %97
    i32 7, label %98
    i32 9, label %99
    i32 10, label %100
    i32 14, label %101
  ], !prof !52

75:                                               ; preds = %74
  br label %102

76:                                               ; preds = %74
  %77 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %77, ptr noundef nonnull @.str.39) #4, !callees !51
  %78 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %78, ptr noundef nonnull @.str.40) #4, !callees !51
  %79 = icmp eq i8 %10, 120
  br i1 %79, label %102, label %105

80:                                               ; preds = %74
  %81 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %81, ptr noundef nonnull @.str.42) #4, !callees !51
  %82 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %82, ptr noundef nonnull @.str.43) #4, !callees !51
  switch i8 %10, label %105 [
    i8 51, label %83
    i8 50, label %102
  ]

83:                                               ; preds = %80
  %84 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %84, ptr noundef nonnull @.str.44) #4, !callees !51
  br label %102

85:                                               ; preds = %74
  br label %102

86:                                               ; preds = %74
  %87 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %87, ptr noundef nonnull @.str.47) #4, !callees !51
  switch i8 %10, label %89 [
    i8 50, label %102
    i8 51, label %88
  ]

88:                                               ; preds = %86
  br label %102

89:                                               ; preds = %86
  %90 = and i32 %0, 1
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %105, label %102

92:                                               ; preds = %74
  %93 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %93, ptr noundef nonnull @.str.50) #4, !callees !51
  %94 = and i32 %0, 65536
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %105, label %102

96:                                               ; preds = %74
  br label %102

97:                                               ; preds = %74
  br label %102

98:                                               ; preds = %74
  br label %102

99:                                               ; preds = %74
  br label %102

100:                                              ; preds = %74
  br label %102

101:                                              ; preds = %74
  br label %102

102:                                              ; preds = %92, %89, %86, %83, %80, %76, %74, %75, %85, %96, %97, %98, %99, %100, %101, %88
  %103 = phi ptr [ @.str.49, %88 ], [ @.str.57, %101 ], [ @.str.56, %100 ], [ @.str.55, %99 ], [ @.str.54, %98 ], [ @.str.53, %97 ], [ @.str.52, %96 ], [ @.str.46, %85 ], [ @.str.38, %75 ], [ @.str.37, %74 ], [ @.str.41, %76 ], [ @.str.45, %80 ], [ @.str.45, %83 ], [ @.str.48, %86 ], [ @.str.49, %89 ], [ @.str.51, %92 ]
  %104 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %104, ptr noundef nonnull %103) #4
  br label %105

105:                                              ; preds = %102, %92, %89, %80, %76, %74
  %106 = and i32 %0, 2048
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108, !prof !53

108:                                              ; preds = %105
  %109 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %109, ptr noundef nonnull @.str.58) #4, !callees !51
  br label %110

110:                                              ; preds = %108, %105
  %111 = and i32 %0, 1
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %113, !prof !53

113:                                              ; preds = %110
  %114 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %114, ptr noundef nonnull @.str.59) #4, !callees !51
  br label %115

115:                                              ; preds = %113, %110
  %116 = and i32 %0, 2
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %120, label %118, !prof !53

118:                                              ; preds = %115
  %119 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %119, ptr noundef nonnull @.str.60) #4, !callees !51
  br label %120

120:                                              ; preds = %118, %115
  %121 = and i32 %0, 65536
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123, !prof !53

123:                                              ; preds = %120
  %124 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %124, ptr noundef nonnull @.str.61) #4, !callees !51
  br label %125

125:                                              ; preds = %123, %120
  %126 = and i32 %0, 131072
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %130, label %128, !prof !53

128:                                              ; preds = %125
  %129 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %129, ptr noundef nonnull @.str.62) #4, !callees !51
  br label %130

130:                                              ; preds = %128, %125
  %131 = and i32 %0, 262144
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133, !prof !53

133:                                              ; preds = %130
  %134 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %134, ptr noundef nonnull @.str.63) #4, !callees !51
  br label %135

135:                                              ; preds = %133, %130
  %136 = and i32 %0, 4194304
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138, !prof !53

138:                                              ; preds = %135
  %139 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %139, ptr noundef nonnull @.str.64) #4, !callees !51
  br label %140

140:                                              ; preds = %138, %135
  %141 = and i32 %0, 524288
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143, !prof !53

143:                                              ; preds = %140
  %144 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %144, ptr noundef nonnull @.str.65) #4, !callees !51
  br label %145

145:                                              ; preds = %143, %140
  %146 = and i32 %0, 1048576
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %150, label %148, !prof !53

148:                                              ; preds = %145
  %149 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %149, ptr noundef nonnull @.str.66) #4, !callees !51
  br label %150

150:                                              ; preds = %148, %145
  %151 = and i32 %0, 16
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %155, label %153, !prof !53

153:                                              ; preds = %150
  %154 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %154, ptr noundef nonnull @.str.67) #4, !callees !51
  br label %155

155:                                              ; preds = %153, %150
  %156 = and i32 %0, 8192
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %160, label %158, !prof !53

158:                                              ; preds = %155
  %159 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %159, ptr noundef nonnull @.str.68) #4, !callees !51
  br label %160

160:                                              ; preds = %158, %155
  %161 = and i32 %0, 32
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %165, label %163, !prof !53

163:                                              ; preds = %160
  %164 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %164, ptr noundef nonnull @.str.69) #4, !callees !51
  br label %165

165:                                              ; preds = %163, %160
  %166 = and i32 %0, 256
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %170, label %168, !prof !53

168:                                              ; preds = %165
  %169 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %169, ptr noundef nonnull @.str.70) #4, !callees !51
  br label %170

170:                                              ; preds = %168, %165
  %171 = and i32 %0, 2097152
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %175, label %173, !prof !53

173:                                              ; preds = %170
  %174 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %174, ptr noundef nonnull @.str.71) #4, !callees !51
  br label %175

175:                                              ; preds = %173, %170
  %176 = and i32 %0, 512
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %180, label %178, !prof !53

178:                                              ; preds = %175
  %179 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %179, ptr noundef nonnull @.str.72) #4, !callees !51
  br label %180

180:                                              ; preds = %178, %175
  %181 = and i32 %0, 8388608
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %185, label %183, !prof !53

183:                                              ; preds = %180
  %184 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %184, ptr noundef nonnull @.str.73) #4, !callees !51
  br label %185

185:                                              ; preds = %183, %180
  %186 = and i32 %0, 1024
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188, !prof !53

188:                                              ; preds = %185
  %189 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %189, ptr noundef nonnull @.str.74) #4, !callees !51
  br label %190

190:                                              ; preds = %188, %185
  %191 = and i32 %0, 8
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %195, label %193, !prof !53

193:                                              ; preds = %190
  %194 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %194, ptr noundef nonnull @.str.75) #4, !callees !51
  br label %195

195:                                              ; preds = %193, %190
  %196 = and i32 %0, 16384
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %200, label %198, !prof !53

198:                                              ; preds = %195
  %199 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %199, ptr noundef nonnull @.str.76) #4, !callees !51
  br label %200

200:                                              ; preds = %198, %195
  %201 = and i32 %3, 2
  %202 = icmp eq i32 %201, 0
  %203 = or i1 %122, %202
  br i1 %203, label %206, label %204, !prof !54

204:                                              ; preds = %200
  %205 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %205, ptr noundef nonnull @.str.77) #4, !callees !51
  br label %206

206:                                              ; preds = %200, %204
  %207 = or i1 %127, %202
  br i1 %207, label %210, label %208, !prof !54

208:                                              ; preds = %206
  %209 = load ptr, ptr @parse_in, align 8, !tbaa !42
  tail call void %4(ptr noundef %209, ptr noundef nonnull @.str.78) #4, !callees !51
  br label %210

210:                                              ; preds = %206, %208
  ret void
}

; Function Attrs: optsize
declare void @cpp_define(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @ix86_register_pragmas() local_unnamed_addr #3 !prof !41 {
  store ptr @ix86_pragma_target_parse, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 107, i32 4), align 8, !tbaa !55
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @ix86_pragma_target_parse(ptr noundef %0, ptr noundef %1) #0 !prof !68 !PGOFuncName !69 {
  %3 = tail call ptr @build_target_option_node() #4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  %7 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 127), align 8
  %8 = select i1 %6, ptr %7, ptr %1
  %9 = getelementptr inbounds %struct.tree_target_option, ptr %8, i64 0, i32 1
  tail call void @cl_target_option_restore(ptr noundef nonnull %9) #4
  br label %13

10:                                               ; preds = %2
  %11 = tail call ptr @ix86_valid_target_attribute_tree(ptr noundef nonnull %0) #4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %46, label %13

13:                                               ; preds = %10, %5
  %14 = phi ptr [ %11, %10 ], [ %8, %5 ]
  store ptr %14, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 128), align 16, !tbaa !42
  %15 = getelementptr inbounds %struct.tree_target_option, ptr %3, i64 0, i32 1, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !70
  %17 = getelementptr inbounds %struct.tree_target_option, ptr %14, i64 0, i32 1, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !70
  %19 = xor i32 %18, %16
  %20 = getelementptr inbounds %struct.tree_target_option, ptr %3, i64 0, i32 1, i32 4
  %21 = load i8, ptr %20, align 4, !tbaa !72
  %22 = getelementptr inbounds %struct.tree_target_option, ptr %3, i64 0, i32 1, i32 9
  %23 = load i8, ptr %22, align 1, !tbaa !73
  %24 = getelementptr inbounds %struct.tree_target_option, ptr %14, i64 0, i32 1, i32 4
  %25 = load i8, ptr %24, align 4, !tbaa !72
  %26 = getelementptr inbounds %struct.tree_target_option, ptr %14, i64 0, i32 1, i32 9
  %27 = load i8, ptr %26, align 1, !tbaa !73
  %28 = icmp eq i8 %25, %21
  %29 = select i1 %28, i8 15, i8 %21
  %30 = zext i8 %29 to i32
  %31 = select i1 %28, i8 15, i8 %25
  %32 = zext i8 %31 to i32
  %33 = icmp eq i8 %27, %23
  %34 = select i1 %33, i8 15, i8 %23
  %35 = zext i8 %34 to i32
  %36 = select i1 %33, i8 15, i8 %27
  %37 = zext i8 %36 to i32
  %38 = and i32 %19, %16
  %39 = getelementptr inbounds %struct.tree_target_option, ptr %3, i64 0, i32 1, i32 7
  %40 = load i8, ptr %39, align 1, !tbaa !74
  %41 = zext i8 %40 to i32
  tail call fastcc void @ix86_target_macros_internal(i32 noundef %38, i32 noundef %30, i32 noundef %35, i32 noundef %41, ptr noundef nonnull @cpp_undef) #5
  %42 = and i32 %19, %18
  %43 = getelementptr inbounds %struct.tree_target_option, ptr %14, i64 0, i32 1, i32 7
  %44 = load i8, ptr %43, align 1, !tbaa !74
  %45 = zext i8 %44 to i32
  tail call fastcc void @ix86_target_macros_internal(i32 noundef %42, i32 noundef %32, i32 noundef %37, i32 noundef %45, ptr noundef nonnull @cpp_define) #5
  br label %46

46:                                               ; preds = %10, %13
  %47 = phi i8 [ 1, %13 ], [ 0, %10 ]
  ret i8 %47
}

; Function Attrs: optsize
declare ptr @build_target_option_node() local_unnamed_addr #1

; Function Attrs: optsize
declare void @cl_target_option_restore(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ix86_valid_target_attribute_tree(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cpp_undef(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!40}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39}
!36 = !{ptr @ix86_target_macros, ptr @cpp_assert, i64 2}
!37 = !{ptr @ix86_target_macros, ptr @builtin_define_std, i64 1}
!38 = !{ptr @ix86_target_macros, ptr @ix86_target_macros_internal, i64 1}
!39 = !{ptr @ix86_target_macros_internal, ptr @strlen, i64 1}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 1}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !{!47, !47, i64 0}
!47 = !{!"int", !44, i64 0}
!48 = !{!"i386-c.c:ix86_target_macros_internal"}
!49 = !{!44, !44, i64 0}
!50 = !{!"branch_weights", i32 4, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!51 = !{ptr @cpp_define, ptr @cpp_undef}
!52 = !{!"branch_weights", i32 5, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!53 = !{!"branch_weights", i32 2, i32 1}
!54 = !{!"branch_weights", i32 5, i32 1}
!55 = !{!56, !43, i64 2000}
!56 = !{!"gcc_target", !57, i64 0, !59, i64 368, !60, i64 664, !47, i64 744, !43, i64 752, !43, i64 760, !43, i64 768, !43, i64 776, !43, i64 784, !43, i64 792, !43, i64 800, !43, i64 808, !43, i64 816, !43, i64 824, !43, i64 832, !43, i64 840, !43, i64 848, !43, i64 856, !43, i64 864, !43, i64 872, !43, i64 880, !43, i64 888, !43, i64 896, !43, i64 904, !43, i64 912, !43, i64 920, !43, i64 928, !43, i64 936, !43, i64 944, !43, i64 952, !43, i64 960, !43, i64 968, !43, i64 976, !43, i64 984, !43, i64 992, !43, i64 1000, !43, i64 1008, !43, i64 1016, !43, i64 1024, !43, i64 1032, !43, i64 1040, !43, i64 1048, !43, i64 1056, !61, i64 1064, !61, i64 1072, !43, i64 1080, !43, i64 1088, !43, i64 1096, !43, i64 1104, !43, i64 1112, !43, i64 1120, !43, i64 1128, !43, i64 1136, !43, i64 1144, !43, i64 1152, !43, i64 1160, !43, i64 1168, !62, i64 1176, !43, i64 1232, !43, i64 1240, !43, i64 1248, !43, i64 1256, !43, i64 1264, !43, i64 1272, !43, i64 1280, !43, i64 1288, !43, i64 1296, !43, i64 1304, !43, i64 1312, !43, i64 1320, !43, i64 1328, !43, i64 1336, !43, i64 1344, !43, i64 1352, !43, i64 1360, !43, i64 1368, !43, i64 1376, !43, i64 1384, !43, i64 1392, !43, i64 1400, !43, i64 1408, !43, i64 1416, !43, i64 1424, !43, i64 1432, !43, i64 1440, !43, i64 1448, !43, i64 1456, !61, i64 1464, !63, i64 1472, !43, i64 1664, !43, i64 1672, !43, i64 1680, !43, i64 1688, !43, i64 1696, !43, i64 1704, !43, i64 1712, !43, i64 1720, !43, i64 1728, !43, i64 1736, !43, i64 1744, !43, i64 1752, !43, i64 1760, !43, i64 1768, !43, i64 1776, !64, i64 1784, !65, i64 1792, !66, i64 1896, !67, i64 1968, !43, i64 2016, !44, i64 2024, !44, i64 2025, !44, i64 2026, !44, i64 2027, !44, i64 2028, !44, i64 2029, !44, i64 2030, !44, i64 2031, !44, i64 2032, !44, i64 2033, !44, i64 2034, !44, i64 2035}
!57 = !{!"asm_out", !43, i64 0, !43, i64 8, !43, i64 16, !58, i64 24, !58, i64 56, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !43, i64 184, !43, i64 192, !43, i64 200, !43, i64 208, !43, i64 216, !43, i64 224, !43, i64 232, !43, i64 240, !43, i64 248, !43, i64 256, !43, i64 264, !43, i64 272, !43, i64 280, !43, i64 288, !43, i64 296, !43, i64 304, !43, i64 312, !43, i64 320, !43, i64 328, !43, i64 336, !43, i64 344, !43, i64 352, !43, i64 360}
!58 = !{!"asm_int_op", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24}
!59 = !{!"sched", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !43, i64 184, !43, i64 192, !43, i64 200, !43, i64 208, !43, i64 216, !43, i64 224, !43, i64 232, !43, i64 240, !43, i64 248, !43, i64 256, !43, i64 264, !43, i64 272, !43, i64 280, !43, i64 288}
!60 = !{!"vectorize", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72}
!61 = !{!"long", !44, i64 0}
!62 = !{!"addr_space", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48}
!63 = !{!"calls", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !43, i64 184}
!64 = !{!"c", !43, i64 0}
!65 = !{!"cxx", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96}
!66 = !{!"emutls", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !44, i64 64, !44, i64 65}
!67 = !{!"target_option_hooks", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40}
!68 = !{!"function_entry_count", i64 0}
!69 = !{!"i386-c.c:ix86_pragma_target_parse"}
!70 = !{!71, !47, i64 12}
!71 = !{!"cl_target_option", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !44, i64 16, !44, i64 17, !44, i64 18, !44, i64 19, !44, i64 20, !44, i64 21, !44, i64 22}
!72 = !{!71, !44, i64 16}
!73 = !{!71, !44, i64 21}
!74 = !{!71, !44, i64 19}
