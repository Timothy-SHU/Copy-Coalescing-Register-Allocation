; ModuleID = 'sched-vis.c'
source_filename = "sched-vis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.haifa_sched_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, i32 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }

@.str = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"<0x%lx,0x%lx>\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"L%d\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"const(\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"high(\00", align 1
@reg_names = external local_unnamed_addr global [53 x ptr], align 16
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str.9 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"r%d\00", align 1
@current_sched_info = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@mode_name = external local_unnamed_addr constant [87 x ptr], align 16
@.str.12 = private unnamed_addr constant [4 x i8] c"#%d\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"scratch\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"cc0\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"D#%i\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"+low(\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"udiv\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"umod\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"smin\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"smax\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"umin\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"umax\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c" 0>>\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"<-<\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c">->\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"abs\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"sqrt\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"ffs\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"gtu\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"ltu\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"geu\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"leu\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"sign_extract\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"sxt\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"zero_extract\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"zxt\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"sign_extend\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"sxn\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"zero_extend\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"zxn\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"float_extend\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"fxn\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"trn\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"float_trunc\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"ftr\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"flt\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"uns_float\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"ufl\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"fix\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"uns_fix\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"ufx\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"pre \00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"post \00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"call \00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c" argc:\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"{(\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c")?\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.84 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"trap_if\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"prefetch\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"unspec\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"/v\00", align 1
@.str.89 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.90 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@rtx_name = external local_unnamed_addr constant [139 x ptr], align 16
@.str.93 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"clobber %s\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"use %s\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"loc %s\00", align 1
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@.str.99 = private unnamed_addr constant [8 x i8] c"(%s) %s\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"%s%s;\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"%s}\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"sched-vis.c\00", align 1
@.str.104 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"asm {%s}\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"trap_if %s\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"unspec/v{\00", align 1
@.str.109 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c" %4d %s\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.111 = private unnamed_addr constant [5 x i8] c"D.%i\00", align 1
@.str.112 = private unnamed_addr constant [30 x i8] c" %4d: debug %s optimized away\00", align 1
@.str.113 = private unnamed_addr constant [21 x i8] c" %4d: debug %s => %s\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"%s: jump %s\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"call <...>\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"L%d:\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"i%4d: barrier\00", align 1
@note_insn_name = external local_unnamed_addr constant [13 x ptr], align 16
@.str.118 = private unnamed_addr constant [17 x i8] c"i%4d  <What %s?>\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"      %s: %s\0A\00", align 1
@reg_note_name = external local_unnamed_addr constant [0 x ptr], align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.120 = private unnamed_addr constant [4 x i8] c";; \00", align 1
@cfun = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_value(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [2048 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %4) #9
  %5 = load i32, ptr %1, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %130 [
    i16 30, label %7
    i16 32, label %12
    i16 31, label %28
    i16 34, label %31
    i16 45, label %37
    i16 44, label %43
    i16 35, label %50
    i16 121, label %56
    i16 37, label %62
    i16 39, label %102
    i16 38, label %110
    i16 46, label %112
    i16 36, label %114
    i16 43, label %116
    i16 2, label %122
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !6
  %10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str, i64 noundef %9) #10
  %11 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4) #10
  br label %132

12:                                               ; preds = %3
  %13 = lshr i32 %5, 16
  %14 = and i32 %13, 255
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !6
  switch i8 %17, label %20 [
    i8 8, label %18
    i8 9, label %18
    i8 11, label %18
    i8 17, label %18
  ]

18:                                               ; preds = %12, %12, %12, %12
  %19 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  call void @real_to_decimal(ptr noundef nonnull %4, ptr noundef nonnull %19, i64 noundef 2048, i64 noundef 0, i32 noundef 1) #11
  br label %26

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load i64, ptr %23, align 8, !tbaa !6
  %25 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.1, i64 noundef %22, i64 noundef %24) #10
  br label %26

26:                                               ; preds = %20, %18
  %27 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4) #10
  br label %132

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  call void @fixed_to_decimal(ptr noundef nonnull %4, ptr noundef nonnull %29, i64 noundef 2048) #11
  %30 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4) #10
  br label %132

31:                                               ; preds = %3
  %32 = tail call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @.str.2) #10
  %33 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = tail call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %32, ptr noundef %34) #10
  %36 = tail call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %35, ptr noundef nonnull @.str.2) #10
  br label %132

37:                                               ; preds = %3
  %38 = tail call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @.str.3) #10
  %39 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = tail call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %38, ptr noundef %40) #10
  %42 = tail call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %41, ptr noundef nonnull @.str.4) #10
  br label %132

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !6
  %48 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %47) #10
  %49 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4) #10
  br label %132

50:                                               ; preds = %3
  %51 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  call void @print_value(ptr noundef nonnull %4, ptr noundef %52, i32 noundef %2) #10
  %53 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @.str.6) #10
  %54 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %53, ptr noundef nonnull %4) #10
  %55 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %54, ptr noundef nonnull @.str.7) #10
  br label %132

56:                                               ; preds = %3
  %57 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  call void @print_value(ptr noundef nonnull %4, ptr noundef %58, i32 noundef %2) #10
  %59 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @.str.8) #10
  %60 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %59, ptr noundef nonnull %4) #10
  %61 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %60, ptr noundef nonnull @.str.7) #10
  br label %132

62:                                               ; preds = %3
  %63 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #10
  %64 = icmp ult i32 %63, 53
  br i1 %64, label %65, label %84

65:                                               ; preds = %62
  %66 = zext nneg i32 %63 to i64
  %67 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !9
  %69 = load i8, ptr %68, align 1, !tbaa !6
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %70
  %72 = load i16, ptr %71, align 2, !tbaa !11
  %73 = and i16 %72, 4
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %65
  %76 = tail call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @.str.9) #10
  br label %77

77:                                               ; preds = %75, %65
  %78 = phi ptr [ %76, %75 ], [ %0, %65 ]
  %79 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %1) #10
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !9
  %83 = tail call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %78, ptr noundef %82) #10
  br label %87

84:                                               ; preds = %62
  %85 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %63) #10
  %86 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4) #10
  br label %87

87:                                               ; preds = %84, %77
  %88 = phi ptr [ %83, %77 ], [ %86, %84 ]
  %89 = icmp eq i32 %2, 0
  %90 = load ptr, ptr @current_sched_info, align 8
  %91 = icmp ne ptr %90, null
  %92 = select i1 %89, i1 true, i1 %91
  br i1 %92, label %132, label %93

93:                                               ; preds = %87
  %94 = load i32, ptr %1, align 8
  %95 = lshr i32 %94, 16
  %96 = and i32 %95, 255
  %97 = zext nneg i32 %96 to i64
  %98 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !9
  %100 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %99) #10
  %101 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %88, ptr noundef nonnull %4) #10
  br label %132

102:                                              ; preds = %3
  %103 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !6
  call void @print_value(ptr noundef nonnull %4, ptr noundef %104, i32 noundef %2) #10
  %105 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4) #10
  %106 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %107 = load i32, ptr %106, align 8, !tbaa !6
  %108 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %107) #10
  %109 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %105, ptr noundef nonnull %4) #10
  br label %132

110:                                              ; preds = %3
  %111 = tail call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @.str.13) #10
  br label %132

112:                                              ; preds = %3
  %113 = tail call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @.str.14) #10
  br label %132

114:                                              ; preds = %3
  %115 = tail call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @.str.15) #10
  br label %132

116:                                              ; preds = %3
  %117 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !6
  call void @print_value(ptr noundef nonnull %4, ptr noundef %118, i32 noundef %2) #10
  %119 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @.str.16) #10
  %120 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %119, ptr noundef nonnull %4) #10
  %121 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %120, ptr noundef nonnull @.str.17) #10
  br label %132

122:                                              ; preds = %3
  %123 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !6
  %125 = getelementptr inbounds %struct.tree_decl_minimal, ptr %124, i64 0, i32 2
  %126 = load i32, ptr %125, align 4, !tbaa !6
  %127 = sub i32 0, %126
  %128 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %127) #10
  %129 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4) #10
  br label %132

130:                                              ; preds = %3
  call fastcc void @print_exp(ptr noundef nonnull %4, ptr noundef nonnull %1, i32 noundef %2) #10
  %131 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %4) #10
  br label %132

132:                                              ; preds = %87, %93, %130, %122, %116, %114, %112, %110, %102, %56, %50, %43, %37, %31, %28, %26, %7
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @safe_concat(ptr noundef writeonly %0, ptr noundef writeonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 2046
  %7 = icmp ult ptr %6, %1
  br i1 %7, label %23, label %8

8:                                                ; preds = %3
  %9 = icmp ugt ptr %6, %1
  br i1 %9, label %10, label %23

10:                                               ; preds = %8
  %11 = add i64 %5, 2046
  %12 = sub i64 %11, %4
  %13 = getelementptr i8, ptr %1, i64 %12
  br label %14

14:                                               ; preds = %10, %19
  %15 = phi ptr [ %21, %19 ], [ %1, %10 ]
  %16 = phi ptr [ %20, %19 ], [ %2, %10 ]
  %17 = load i8, ptr %16, align 1, !tbaa !6
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds i8, ptr %16, i64 1
  %21 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %17, ptr %15, align 1, !tbaa !6
  %22 = icmp eq ptr %21, %13
  br i1 %22, label %23, label %14, !llvm.loop !13

23:                                               ; preds = %19, %14, %8, %3
  %24 = phi ptr [ %6, %3 ], [ %1, %8 ], [ %13, %19 ], [ %15, %14 ]
  store i8 0, ptr %24, align 1, !tbaa !6
  ret ptr %24
}

; Function Attrs: optsize
declare void @real_to_decimal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @fixed_to_decimal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !6
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_exp(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [2048 x i8], align 16
  %5 = alloca [4 x ptr], align 16
  %6 = alloca [4 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 32, i1 false), !tbaa !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false), !tbaa !9
  %7 = load i32, ptr %1, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %301 [
    i16 49, label %9
    i16 122, label %29
    i16 50, label %34
    i16 48, label %38
    i16 51, label %41
    i16 52, label %44
    i16 55, label %48
    i16 59, label %52
    i16 58, label %55
    i16 60, label %59
    i16 70, label %62
    i16 71, label %65
    i16 72, label %68
    i16 73, label %71
    i16 64, label %74
    i16 61, label %77
    i16 62, label %81
    i16 63, label %85
    i16 65, label %89
    i16 68, label %93
    i16 67, label %97
    i16 66, label %101
    i16 69, label %105
    i16 111, label %109
    i16 112, label %112
    i16 114, label %115
    i16 81, label %118
    i16 80, label %122
    i16 83, label %126
    i16 87, label %130
    i16 85, label %133
    i16 89, label %137
    i16 82, label %140
    i16 86, label %144
    i16 84, label %147
    i16 88, label %151
    i16 119, label %154
    i16 120, label %162
    i16 98, label %170
    i16 99, label %175
    i16 101, label %180
    i16 100, label %185
    i16 102, label %190
    i16 103, label %195
    i16 105, label %200
    i16 104, label %205
    i16 106, label %208
    i16 74, label %213
    i16 75, label %216
    i16 76, label %219
    i16 77, label %223
    i16 78, label %227
    i16 79, label %233
    i16 26, label %239
    i16 47, label %248
    i16 29, label %257
    i16 22, label %260
    i16 18, label %266
    i16 19, label %266
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  store ptr %11, ptr %6, align 16, !tbaa !9
  %12 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 30
  br i1 %16, label %17, label %26

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !6
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.19, ptr %22, align 8, !tbaa !9
  %23 = sub nsw i64 0, %19
  %24 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %23) #11
  %25 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %24, ptr %25, align 8, !tbaa !9
  br label %310

26:                                               ; preds = %17, %9
  %27 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.20, ptr %27, align 8, !tbaa !9
  %28 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %13, ptr %28, align 8, !tbaa !9
  br label %310

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %31 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.21, ptr %31, align 8, !tbaa !9
  %32 = load <2 x ptr>, ptr %30, align 8, !tbaa !6
  store <2 x ptr> %32, ptr %6, align 16, !tbaa !9
  %33 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 2
  store ptr @.str.7, ptr %33, align 16, !tbaa !9
  br label %310

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %36 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.19, ptr %36, align 8, !tbaa !9
  %37 = load <2 x ptr>, ptr %35, align 8, !tbaa !6
  store <2 x ptr> %37, ptr %6, align 16, !tbaa !9
  br label %310

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %40 = load <2 x ptr>, ptr %39, align 8, !tbaa !6
  store <2 x ptr> %40, ptr %6, align 16, !tbaa !9
  br label %306

41:                                               ; preds = %3
  store ptr @.str.19, ptr %5, align 16, !tbaa !9
  %42 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  store ptr %43, ptr %6, align 16, !tbaa !9
  br label %310

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %46 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.23, ptr %46, align 8, !tbaa !9
  %47 = load <2 x ptr>, ptr %45, align 8, !tbaa !6
  store <2 x ptr> %47, ptr %6, align 16, !tbaa !9
  br label %310

48:                                               ; preds = %3
  %49 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %50 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.24, ptr %50, align 8, !tbaa !9
  %51 = load <2 x ptr>, ptr %49, align 8, !tbaa !6
  store <2 x ptr> %51, ptr %6, align 16, !tbaa !9
  br label %310

52:                                               ; preds = %3
  %53 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %54 = load <2 x ptr>, ptr %53, align 8, !tbaa !6
  store <2 x ptr> %54, ptr %6, align 16, !tbaa !9
  br label %306

55:                                               ; preds = %3
  %56 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %57 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.9, ptr %57, align 8, !tbaa !9
  %58 = load <2 x ptr>, ptr %56, align 8, !tbaa !6
  store <2 x ptr> %58, ptr %6, align 16, !tbaa !9
  br label %310

59:                                               ; preds = %3
  %60 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %61 = load <2 x ptr>, ptr %60, align 8, !tbaa !6
  store <2 x ptr> %61, ptr %6, align 16, !tbaa !9
  br label %306

62:                                               ; preds = %3
  %63 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %64 = load <2 x ptr>, ptr %63, align 8, !tbaa !6
  store <2 x ptr> %64, ptr %6, align 16, !tbaa !9
  br label %306

65:                                               ; preds = %3
  %66 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %67 = load <2 x ptr>, ptr %66, align 8, !tbaa !6
  store <2 x ptr> %67, ptr %6, align 16, !tbaa !9
  br label %306

68:                                               ; preds = %3
  %69 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %70 = load <2 x ptr>, ptr %69, align 8, !tbaa !6
  store <2 x ptr> %70, ptr %6, align 16, !tbaa !9
  br label %306

71:                                               ; preds = %3
  %72 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %73 = load <2 x ptr>, ptr %72, align 8, !tbaa !6
  store <2 x ptr> %73, ptr %6, align 16, !tbaa !9
  br label %306

74:                                               ; preds = %3
  store ptr @.str.31, ptr %5, align 16, !tbaa !9
  %75 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !6
  store ptr %76, ptr %6, align 16, !tbaa !9
  br label %310

77:                                               ; preds = %3
  %78 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %79 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.32, ptr %79, align 8, !tbaa !9
  %80 = load <2 x ptr>, ptr %78, align 8, !tbaa !6
  store <2 x ptr> %80, ptr %6, align 16, !tbaa !9
  br label %310

81:                                               ; preds = %3
  %82 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %83 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.33, ptr %83, align 8, !tbaa !9
  %84 = load <2 x ptr>, ptr %82, align 8, !tbaa !6
  store <2 x ptr> %84, ptr %6, align 16, !tbaa !9
  br label %310

85:                                               ; preds = %3
  %86 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %87 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.34, ptr %87, align 8, !tbaa !9
  %88 = load <2 x ptr>, ptr %86, align 8, !tbaa !6
  store <2 x ptr> %88, ptr %6, align 16, !tbaa !9
  br label %310

89:                                               ; preds = %3
  %90 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %91 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.35, ptr %91, align 8, !tbaa !9
  %92 = load <2 x ptr>, ptr %90, align 8, !tbaa !6
  store <2 x ptr> %92, ptr %6, align 16, !tbaa !9
  br label %310

93:                                               ; preds = %3
  %94 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %95 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.36, ptr %95, align 8, !tbaa !9
  %96 = load <2 x ptr>, ptr %94, align 8, !tbaa !6
  store <2 x ptr> %96, ptr %6, align 16, !tbaa !9
  br label %310

97:                                               ; preds = %3
  %98 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %99 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.37, ptr %99, align 8, !tbaa !9
  %100 = load <2 x ptr>, ptr %98, align 8, !tbaa !6
  store <2 x ptr> %100, ptr %6, align 16, !tbaa !9
  br label %310

101:                                              ; preds = %3
  %102 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %103 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.38, ptr %103, align 8, !tbaa !9
  %104 = load <2 x ptr>, ptr %102, align 8, !tbaa !6
  store <2 x ptr> %104, ptr %6, align 16, !tbaa !9
  br label %310

105:                                              ; preds = %3
  %106 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %107 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.39, ptr %107, align 8, !tbaa !9
  %108 = load <2 x ptr>, ptr %106, align 8, !tbaa !6
  store <2 x ptr> %108, ptr %6, align 16, !tbaa !9
  br label %310

109:                                              ; preds = %3
  %110 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !6
  store ptr %111, ptr %6, align 16, !tbaa !9
  br label %306

112:                                              ; preds = %3
  %113 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !6
  store ptr %114, ptr %6, align 16, !tbaa !9
  br label %306

115:                                              ; preds = %3
  %116 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !6
  store ptr %117, ptr %6, align 16, !tbaa !9
  br label %306

118:                                              ; preds = %3
  %119 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %120 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.43, ptr %120, align 8, !tbaa !9
  %121 = load <2 x ptr>, ptr %119, align 8, !tbaa !6
  store <2 x ptr> %121, ptr %6, align 16, !tbaa !9
  br label %310

122:                                              ; preds = %3
  %123 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %124 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.44, ptr %124, align 8, !tbaa !9
  %125 = load <2 x ptr>, ptr %123, align 8, !tbaa !6
  store <2 x ptr> %125, ptr %6, align 16, !tbaa !9
  br label %310

126:                                              ; preds = %3
  %127 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %128 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.45, ptr %128, align 8, !tbaa !9
  %129 = load <2 x ptr>, ptr %127, align 8, !tbaa !6
  store <2 x ptr> %129, ptr %6, align 16, !tbaa !9
  br label %310

130:                                              ; preds = %3
  %131 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %132 = load <2 x ptr>, ptr %131, align 8, !tbaa !6
  store <2 x ptr> %132, ptr %6, align 16, !tbaa !9
  br label %306

133:                                              ; preds = %3
  %134 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %135 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.47, ptr %135, align 8, !tbaa !9
  %136 = load <2 x ptr>, ptr %134, align 8, !tbaa !6
  store <2 x ptr> %136, ptr %6, align 16, !tbaa !9
  br label %310

137:                                              ; preds = %3
  %138 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %139 = load <2 x ptr>, ptr %138, align 8, !tbaa !6
  store <2 x ptr> %139, ptr %6, align 16, !tbaa !9
  br label %306

140:                                              ; preds = %3
  %141 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %142 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.49, ptr %142, align 8, !tbaa !9
  %143 = load <2 x ptr>, ptr %141, align 8, !tbaa !6
  store <2 x ptr> %143, ptr %6, align 16, !tbaa !9
  br label %310

144:                                              ; preds = %3
  %145 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %146 = load <2 x ptr>, ptr %145, align 8, !tbaa !6
  store <2 x ptr> %146, ptr %6, align 16, !tbaa !9
  br label %306

147:                                              ; preds = %3
  %148 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %149 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.51, ptr %149, align 8, !tbaa !9
  %150 = load <2 x ptr>, ptr %148, align 8, !tbaa !6
  store <2 x ptr> %150, ptr %6, align 16, !tbaa !9
  br label %310

151:                                              ; preds = %3
  %152 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %153 = load <2 x ptr>, ptr %152, align 8, !tbaa !6
  store <2 x ptr> %153, ptr %6, align 16, !tbaa !9
  br label %306

154:                                              ; preds = %3
  %155 = icmp eq i32 %2, 0
  %156 = select i1 %155, ptr @.str.54, ptr @.str.53
  %157 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %158 = load <2 x ptr>, ptr %157, align 8, !tbaa !6
  store <2 x ptr> %158, ptr %6, align 16, !tbaa !9
  %159 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %160 = load ptr, ptr %159, align 8, !tbaa !6
  %161 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 2
  store ptr %160, ptr %161, align 16, !tbaa !9
  br label %306

162:                                              ; preds = %3
  %163 = icmp eq i32 %2, 0
  %164 = select i1 %163, ptr @.str.56, ptr @.str.55
  %165 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %166 = load <2 x ptr>, ptr %165, align 8, !tbaa !6
  store <2 x ptr> %166, ptr %6, align 16, !tbaa !9
  %167 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %168 = load ptr, ptr %167, align 8, !tbaa !6
  %169 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 2
  store ptr %168, ptr %169, align 16, !tbaa !9
  br label %306

170:                                              ; preds = %3
  %171 = icmp eq i32 %2, 0
  %172 = select i1 %171, ptr @.str.58, ptr @.str.57
  %173 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !6
  store ptr %174, ptr %6, align 16, !tbaa !9
  br label %306

175:                                              ; preds = %3
  %176 = icmp eq i32 %2, 0
  %177 = select i1 %176, ptr @.str.60, ptr @.str.59
  %178 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !6
  store ptr %179, ptr %6, align 16, !tbaa !9
  br label %306

180:                                              ; preds = %3
  %181 = icmp eq i32 %2, 0
  %182 = select i1 %181, ptr @.str.62, ptr @.str.61
  %183 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !6
  store ptr %184, ptr %6, align 16, !tbaa !9
  br label %306

185:                                              ; preds = %3
  %186 = icmp eq i32 %2, 0
  %187 = select i1 %186, ptr @.str.64, ptr @.str.63
  %188 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !6
  store ptr %189, ptr %6, align 16, !tbaa !9
  br label %306

190:                                              ; preds = %3
  %191 = icmp eq i32 %2, 0
  %192 = select i1 %191, ptr @.str.66, ptr @.str.65
  %193 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !6
  store ptr %194, ptr %6, align 16, !tbaa !9
  br label %306

195:                                              ; preds = %3
  %196 = icmp eq i32 %2, 0
  %197 = select i1 %196, ptr @.str.68, ptr @.str.67
  %198 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !6
  store ptr %199, ptr %6, align 16, !tbaa !9
  br label %306

200:                                              ; preds = %3
  %201 = icmp eq i32 %2, 0
  %202 = select i1 %201, ptr @.str.70, ptr @.str.69
  %203 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !6
  store ptr %204, ptr %6, align 16, !tbaa !9
  br label %306

205:                                              ; preds = %3
  %206 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !6
  store ptr %207, ptr %6, align 16, !tbaa !9
  br label %306

208:                                              ; preds = %3
  %209 = icmp eq i32 %2, 0
  %210 = select i1 %209, ptr @.str.73, ptr @.str.72
  %211 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !6
  store ptr %212, ptr %6, align 16, !tbaa !9
  br label %306

213:                                              ; preds = %3
  store ptr @.str.74, ptr %5, align 16, !tbaa !9
  %214 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !6
  store ptr %215, ptr %6, align 16, !tbaa !9
  br label %310

216:                                              ; preds = %3
  store ptr @.str.75, ptr %5, align 16, !tbaa !9
  %217 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !6
  store ptr %218, ptr %6, align 16, !tbaa !9
  br label %310

219:                                              ; preds = %3
  %220 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !6
  store ptr %221, ptr %6, align 16, !tbaa !9
  %222 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.74, ptr %222, align 8, !tbaa !9
  br label %310

223:                                              ; preds = %3
  %224 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %225 = load ptr, ptr %224, align 8, !tbaa !6
  store ptr %225, ptr %6, align 16, !tbaa !9
  %226 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.75, ptr %226, align 8, !tbaa !9
  br label %310

227:                                              ; preds = %3
  store ptr @.str.76, ptr %5, align 16, !tbaa !9
  %228 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %229 = load ptr, ptr %228, align 8, !tbaa !6
  %230 = getelementptr inbounds %struct.rtx_def, ptr %229, i64 0, i32 1
  %231 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.77, ptr %231, align 8, !tbaa !9
  %232 = load <2 x ptr>, ptr %230, align 8, !tbaa !6
  store <2 x ptr> %232, ptr %6, align 16, !tbaa !9
  br label %310

233:                                              ; preds = %3
  store ptr @.str.78, ptr %5, align 16, !tbaa !9
  %234 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %235 = load ptr, ptr %234, align 8, !tbaa !6
  %236 = getelementptr inbounds %struct.rtx_def, ptr %235, i64 0, i32 1
  %237 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.77, ptr %237, align 8, !tbaa !9
  %238 = load <2 x ptr>, ptr %236, align 8, !tbaa !6
  store <2 x ptr> %238, ptr %6, align 16, !tbaa !9
  br label %310

239:                                              ; preds = %3
  store ptr @.str.79, ptr %5, align 16, !tbaa !9
  %240 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !6
  store ptr %241, ptr %6, align 16, !tbaa !9
  %242 = icmp eq i32 %2, 0
  br i1 %242, label %310, label %243

243:                                              ; preds = %239
  %244 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.80, ptr %244, align 8, !tbaa !9
  %245 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %246 = load ptr, ptr %245, align 8, !tbaa !6
  %247 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 1
  store ptr %246, ptr %247, align 8, !tbaa !9
  br label %310

248:                                              ; preds = %3
  store ptr @.str.81, ptr %5, align 16, !tbaa !9
  %249 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %250 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 1
  store ptr @.str.82, ptr %250, align 8, !tbaa !9
  %251 = load <2 x ptr>, ptr %249, align 8, !tbaa !6
  store <2 x ptr> %251, ptr %6, align 16, !tbaa !9
  %252 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 2
  store ptr @.str.83, ptr %252, align 16, !tbaa !9
  %253 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %254 = load ptr, ptr %253, align 8, !tbaa !6
  %255 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 2
  store ptr %254, ptr %255, align 16, !tbaa !9
  %256 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 3
  store ptr @.str.84, ptr %256, align 8, !tbaa !9
  br label %310

257:                                              ; preds = %3
  %258 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !6
  store ptr %259, ptr %6, align 16, !tbaa !9
  br label %306

260:                                              ; preds = %3
  %261 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %262 = load <2 x ptr>, ptr %261, align 8, !tbaa !6
  store <2 x ptr> %262, ptr %6, align 16, !tbaa !9
  %263 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %264 = load ptr, ptr %263, align 8, !tbaa !6
  %265 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 2
  store ptr %264, ptr %265, align 16, !tbaa !9
  br label %306

266:                                              ; preds = %3, %3
  %267 = tail call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @.str.87) #10
  %268 = load i32, ptr %1, align 8
  %269 = and i32 %268, 65535
  %270 = icmp eq i32 %269, 19
  br i1 %270, label %271, label %273

271:                                              ; preds = %266
  %272 = tail call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %267, ptr noundef nonnull @.str.88) #10
  br label %273

273:                                              ; preds = %271, %266
  %274 = phi ptr [ %272, %271 ], [ %267, %266 ]
  %275 = tail call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %274, ptr noundef nonnull @.str.16) #10
  %276 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !6
  %278 = load i32, ptr %277, align 8, !tbaa !15
  %279 = icmp sgt i32 %278, 0
  br i1 %279, label %280, label %294

280:                                              ; preds = %273, %280
  %281 = phi i64 [ %289, %280 ], [ 0, %273 ]
  %282 = phi ptr [ %290, %280 ], [ %277, %273 ]
  %283 = phi ptr [ @.str.90, %280 ], [ @.str.89, %273 ]
  %284 = phi ptr [ %288, %280 ], [ %275, %273 ]
  %285 = getelementptr inbounds %struct.rtvec_def, ptr %282, i64 0, i32 1, i64 %281
  %286 = load ptr, ptr %285, align 8, !tbaa !9
  call void @print_pattern(ptr noundef nonnull %4, ptr noundef %286, i32 noundef %2) #10
  %287 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %284, ptr noundef nonnull %283) #10
  %288 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %287, ptr noundef nonnull %4) #10
  %289 = add nuw nsw i64 %281, 1
  %290 = load ptr, ptr %276, align 8, !tbaa !6
  %291 = load i32, ptr %290, align 8, !tbaa !15
  %292 = sext i32 %291 to i64
  %293 = icmp slt i64 %289, %292
  br i1 %293, label %280, label %294, !llvm.loop !18

294:                                              ; preds = %280, %273
  %295 = phi ptr [ %275, %273 ], [ %288, %280 ]
  %296 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %295, ptr noundef nonnull @.str.91) #10
  %297 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %298 = load i32, ptr %297, align 8, !tbaa !6
  %299 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.92, i32 noundef %298) #10
  %300 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %296, ptr noundef nonnull %4) #10
  br label %310

301:                                              ; preds = %3
  %302 = and i32 %7, 65535
  %303 = zext nneg i32 %302 to i64
  %304 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %303
  %305 = load ptr, ptr %304, align 8, !tbaa !9
  store ptr %305, ptr %5, align 16, !tbaa !9
  br label %310

306:                                              ; preds = %38, %52, %59, %62, %65, %68, %71, %109, %112, %115, %130, %137, %144, %151, %154, %162, %170, %175, %180, %185, %190, %195, %200, %205, %208, %257, %260
  %307 = phi ptr [ @.str.86, %260 ], [ @.str.85, %257 ], [ %210, %208 ], [ @.str.71, %205 ], [ %202, %200 ], [ %197, %195 ], [ %192, %190 ], [ %187, %185 ], [ %182, %180 ], [ %177, %175 ], [ %172, %170 ], [ %164, %162 ], [ %156, %154 ], [ @.str.52, %151 ], [ @.str.50, %144 ], [ @.str.48, %137 ], [ @.str.46, %130 ], [ @.str.42, %115 ], [ @.str.41, %112 ], [ @.str.40, %109 ], [ @.str.30, %71 ], [ @.str.29, %68 ], [ @.str.28, %65 ], [ @.str.27, %62 ], [ @.str.26, %59 ], [ @.str.25, %52 ], [ @.str.22, %38 ]
  %308 = tail call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %307) #10
  %309 = tail call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %308, ptr noundef nonnull @.str.93) #10
  br label %310

310:                                              ; preds = %26, %21, %29, %34, %41, %44, %48, %55, %74, %77, %81, %85, %89, %93, %97, %101, %105, %118, %122, %126, %133, %140, %147, %213, %216, %219, %223, %227, %233, %239, %243, %248, %294, %301, %306
  %311 = phi i1 [ true, %306 ], [ false, %301 ], [ false, %294 ], [ false, %248 ], [ false, %243 ], [ false, %239 ], [ false, %233 ], [ false, %227 ], [ false, %223 ], [ false, %219 ], [ false, %216 ], [ false, %213 ], [ false, %147 ], [ false, %140 ], [ false, %133 ], [ false, %126 ], [ false, %122 ], [ false, %118 ], [ false, %105 ], [ false, %101 ], [ false, %97 ], [ false, %93 ], [ false, %89 ], [ false, %85 ], [ false, %81 ], [ false, %77 ], [ false, %74 ], [ false, %55 ], [ false, %48 ], [ false, %44 ], [ false, %41 ], [ false, %34 ], [ false, %29 ], [ false, %21 ], [ false, %26 ]
  %312 = phi ptr [ %309, %306 ], [ %0, %301 ], [ %300, %294 ], [ %0, %248 ], [ %0, %243 ], [ %0, %239 ], [ %0, %233 ], [ %0, %227 ], [ %0, %223 ], [ %0, %219 ], [ %0, %216 ], [ %0, %213 ], [ %0, %147 ], [ %0, %140 ], [ %0, %133 ], [ %0, %126 ], [ %0, %122 ], [ %0, %118 ], [ %0, %105 ], [ %0, %101 ], [ %0, %97 ], [ %0, %93 ], [ %0, %89 ], [ %0, %85 ], [ %0, %81 ], [ %0, %77 ], [ %0, %74 ], [ %0, %55 ], [ %0, %48 ], [ %0, %44 ], [ %0, %41 ], [ %0, %34 ], [ %0, %29 ], [ %0, %21 ], [ %0, %26 ]
  br label %313

313:                                              ; preds = %310, %336
  %314 = phi i64 [ 0, %310 ], [ %338, %336 ]
  %315 = phi ptr [ %312, %310 ], [ %337, %336 ]
  %316 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 %314
  %317 = load ptr, ptr %316, align 8, !tbaa !9
  %318 = icmp eq ptr %317, null
  br i1 %318, label %321, label %319

319:                                              ; preds = %313
  %320 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %315, ptr noundef nonnull %317) #10
  br label %321

321:                                              ; preds = %319, %313
  %322 = phi ptr [ %320, %319 ], [ %315, %313 ]
  %323 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 %314
  %324 = load ptr, ptr %323, align 8, !tbaa !9
  %325 = icmp eq ptr %324, null
  br i1 %325, label %336, label %326

326:                                              ; preds = %321
  %327 = icmp ne i64 %314, 0
  %328 = and i1 %311, %327
  br i1 %328, label %329, label %332

329:                                              ; preds = %326
  %330 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %322, ptr noundef nonnull @.str.90) #10
  %331 = load ptr, ptr %323, align 8, !tbaa !9
  br label %332

332:                                              ; preds = %329, %326
  %333 = phi ptr [ %331, %329 ], [ %324, %326 ]
  %334 = phi ptr [ %330, %329 ], [ %322, %326 ]
  call void @print_value(ptr noundef nonnull %4, ptr noundef %333, i32 noundef %2) #10
  %335 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %334, ptr noundef nonnull %4) #10
  br label %336

336:                                              ; preds = %321, %332
  %337 = phi ptr [ %335, %332 ], [ %322, %321 ]
  %338 = add nuw nsw i64 %314, 1
  %339 = icmp eq i64 %338, 4
  br i1 %339, label %340, label %313, !llvm.loop !19

340:                                              ; preds = %336
  br i1 %311, label %341, label %343

341:                                              ; preds = %340
  %342 = call fastcc ptr @safe_concat(ptr noundef %0, ptr noundef %337, ptr noundef nonnull @.str.7) #10
  br label %343

343:                                              ; preds = %341, %340
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %4) #9
  ret void
}

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_pattern(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [2048 x i8], align 16
  %5 = alloca [2048 x i8], align 16
  %6 = alloca [2048 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %6) #9
  %7 = load i32, ptr %1, align 8
  %8 = trunc i32 %7 to i16
  switch i16 %8, label %125 [
    i16 23, label %9
    i16 27, label %15
    i16 26, label %16
    i16 25, label %17
    i16 24, label %21
    i16 138, label %25
    i16 14, label %29
    i16 15, label %56
    i16 5, label %75
    i16 16, label %76
    i16 20, label %126
    i16 21, label %80
    i16 29, label %83
    i16 18, label %87
    i16 19, label %106
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  call void @print_value(ptr noundef nonnull %4, ptr noundef %11, i32 noundef %2) #10
  %12 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  call void @print_value(ptr noundef nonnull %5, ptr noundef %13, i32 noundef %2) #10
  %14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.94, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  br label %126

15:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %0, ptr noundef nonnull align 1 dereferenceable(7) @.str.95, i64 7, i1 false)
  br label %126

16:                                               ; preds = %3
  tail call fastcc void @print_exp(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2) #10
  br label %126

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  call void @print_value(ptr noundef nonnull %4, ptr noundef %19, i32 noundef %2) #10
  %20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.96, ptr noundef nonnull %4) #10
  br label %126

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  call void @print_value(ptr noundef nonnull %4, ptr noundef %23, i32 noundef %2) #10
  %24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.97, ptr noundef nonnull %4) #10
  br label %126

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  call void @print_value(ptr noundef nonnull %4, ptr noundef %27, i32 noundef %2) #10
  %28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.98, ptr noundef nonnull %4) #10
  br label %126

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = load i32, ptr %31, align 8
  %33 = trunc i32 %32 to i16
  switch i16 %33, label %51 [
    i16 80, label %34
    i16 81, label %42
  ]

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !6
  %37 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !9
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  call void @print_value(ptr noundef nonnull %4, ptr noundef %41, i32 noundef %2) #10
  br label %52

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !9
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  store i8 33, ptr %4, align 16, !tbaa !6
  %48 = getelementptr inbounds i8, ptr %4, i64 1
  %49 = getelementptr inbounds %struct.rtx_def, ptr %31, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  call void @print_value(ptr noundef nonnull %48, ptr noundef %50, i32 noundef %2) #10
  br label %52

51:                                               ; preds = %29, %34, %42
  call void @print_value(ptr noundef nonnull %4, ptr noundef nonnull %31, i32 noundef %2) #10
  br label %52

52:                                               ; preds = %47, %51, %39
  %53 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !6
  call void @print_pattern(ptr noundef nonnull %5, ptr noundef %54, i32 noundef %2) #10
  %55 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.99, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  br label %126

56:                                               ; preds = %3
  store i16 123, ptr %4, align 16
  %57 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = load i32, ptr %58, align 8, !tbaa !15
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %56, %61
  %62 = phi i64 [ %68, %61 ], [ 0, %56 ]
  %63 = phi ptr [ %69, %61 ], [ %58, %56 ]
  %64 = getelementptr inbounds %struct.rtvec_def, ptr %63, i64 0, i32 1, i64 %62
  %65 = load ptr, ptr %64, align 8, !tbaa !9
  call void @print_pattern(ptr noundef nonnull %5, ptr noundef %65, i32 noundef %2) #10
  %66 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.101, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %67 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %6) #10
  %68 = add nuw nsw i64 %62, 1
  %69 = load ptr, ptr %57, align 8, !tbaa !6
  %70 = load i32, ptr %69, align 8, !tbaa !15
  %71 = sext i32 %70 to i64
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %61, label %73, !llvm.loop !20

73:                                               ; preds = %61, %56
  %74 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.102, ptr noundef nonnull %4) #10
  br label %126

75:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.103, i32 noundef 598, ptr noundef nonnull @.str.104) #11
  br label %76

76:                                               ; preds = %3, %75
  %77 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !6
  %79 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.105, ptr noundef %78) #10
  br label %126

80:                                               ; preds = %3
  %81 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !6
  tail call void @print_value(ptr noundef %0, ptr noundef %82, i32 noundef %2) #10
  br label %126

83:                                               ; preds = %3
  %84 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  call void @print_value(ptr noundef nonnull %4, ptr noundef %85, i32 noundef %2) #10
  %86 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.106, ptr noundef nonnull %4) #10
  br label %126

87:                                               ; preds = %3
  store i64 34730709464870517, ptr %4, align 16
  %88 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !6
  %90 = load i32, ptr %89, align 8, !tbaa !15
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %87, %92
  %93 = phi i64 [ %99, %92 ], [ 0, %87 ]
  %94 = phi ptr [ %100, %92 ], [ %89, %87 ]
  %95 = getelementptr inbounds %struct.rtvec_def, ptr %94, i64 0, i32 1, i64 %93
  %96 = load ptr, ptr %95, align 8, !tbaa !9
  call void @print_pattern(ptr noundef nonnull %5, ptr noundef %96, i32 noundef %2) #10
  %97 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.101, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %98 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %6) #10
  %99 = add nuw nsw i64 %93, 1
  %100 = load ptr, ptr %88, align 8, !tbaa !6
  %101 = load i32, ptr %100, align 8, !tbaa !15
  %102 = sext i32 %101 to i64
  %103 = icmp slt i64 %99, %102
  br i1 %103, label %92, label %104, !llvm.loop !21

104:                                              ; preds = %92, %87
  %105 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.102, ptr noundef nonnull %4) #10
  br label %126

106:                                              ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %4, ptr noundef nonnull align 1 dereferenceable(10) @.str.108, i64 10, i1 false)
  %107 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !6
  %109 = load i32, ptr %108, align 8, !tbaa !15
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %106, %111
  %112 = phi i64 [ %118, %111 ], [ 0, %106 ]
  %113 = phi ptr [ %119, %111 ], [ %108, %106 ]
  %114 = getelementptr inbounds %struct.rtvec_def, ptr %113, i64 0, i32 1, i64 %112
  %115 = load ptr, ptr %114, align 8, !tbaa !9
  call void @print_pattern(ptr noundef nonnull %5, ptr noundef %115, i32 noundef %2) #10
  %116 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.101, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %117 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %6) #10
  %118 = add nuw nsw i64 %112, 1
  %119 = load ptr, ptr %107, align 8, !tbaa !6
  %120 = load i32, ptr %119, align 8, !tbaa !15
  %121 = sext i32 %120 to i64
  %122 = icmp slt i64 %118, %121
  br i1 %122, label %111, label %123, !llvm.loop !22

123:                                              ; preds = %111, %106
  %124 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.102, ptr noundef nonnull %4) #10
  br label %126

125:                                              ; preds = %3
  tail call void @print_value(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2) #10
  br label %126

126:                                              ; preds = %125, %123, %104, %83, %80, %3, %76, %73, %52, %25, %21, %17, %16, %15, %9
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_insn(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [2048 x i8], align 16
  %5 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %4) #9
  %6 = load i32, ptr %1, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %132 [
    i16 8, label %8
    i16 7, label %24
    i16 9, label %73
    i16 10, label %89
    i16 12, label %115
    i16 11, label %119
    i16 13, label %123
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  call void @print_pattern(ptr noundef nonnull %4, ptr noundef %10, i32 noundef %2) #10
  %11 = icmp ne i32 %2, 0
  %12 = load ptr, ptr @current_sched_info, align 8
  %13 = icmp ne ptr %12, null
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.haifa_sched_info, ptr %12, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !23
  %18 = call ptr %17(ptr noundef nonnull %1, i32 noundef 1) #11
  %19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.109, ptr noundef %18, ptr noundef nonnull %4) #10
  br label %140

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !6
  %23 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.110, i32 noundef %22, ptr noundef nonnull %4) #10
  br label %140

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %26 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !25
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %35, label %54

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.tree_decl_minimal, ptr %29, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #9
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.tree_identifier, ptr %37, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  br label %51

42:                                               ; preds = %35
  %43 = icmp eq i64 %31, 37
  %44 = getelementptr inbounds %struct.tree_decl_minimal, ptr %29, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !6
  br i1 %43, label %46, label %49

46:                                               ; preds = %42
  %47 = sub i32 0, %45
  %48 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %47) #10
  br label %51

49:                                               ; preds = %42
  %50 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.111, i32 noundef %45) #10
  br label %51

51:                                               ; preds = %46, %49, %39
  %52 = phi ptr [ %41, %39 ], [ %5, %46 ], [ %5, %49 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #9
  %53 = load ptr, ptr %26, align 8, !tbaa !6
  br label %54

54:                                               ; preds = %51, %24
  %55 = phi ptr [ %53, %51 ], [ %27, %24 ]
  %56 = phi ptr [ %52, %51 ], [ @.str.104, %24 ]
  %57 = getelementptr inbounds %struct.rtx_def, ptr %55, i64 0, i32 1, i32 0, i32 0, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 25
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !9
  %66 = icmp eq ptr %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, ptr %25, align 8, !tbaa !6
  %69 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.112, i32 noundef %68, ptr noundef %56) #10
  br label %140

70:                                               ; preds = %62, %54
  call void @print_pattern(ptr noundef nonnull %4, ptr noundef nonnull %58, i32 noundef %2) #10
  %71 = load i32, ptr %25, align 8, !tbaa !6
  %72 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.113, i32 noundef %71, ptr noundef %56, ptr noundef nonnull %4) #10
  br label %140

73:                                               ; preds = %3
  %74 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !6
  call void @print_pattern(ptr noundef nonnull %4, ptr noundef %75, i32 noundef %2) #10
  %76 = icmp ne i32 %2, 0
  %77 = load ptr, ptr @current_sched_info, align 8
  %78 = icmp ne ptr %77, null
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.haifa_sched_info, ptr %77, i64 0, i32 5
  %82 = load ptr, ptr %81, align 8, !tbaa !23
  %83 = call ptr %82(ptr noundef nonnull %1, i32 noundef 1) #11
  %84 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.114, ptr noundef %83, ptr noundef nonnull %4) #10
  br label %140

85:                                               ; preds = %73
  %86 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %87 = load i32, ptr %86, align 8, !tbaa !6
  %88 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.110, i32 noundef %87, ptr noundef nonnull %4) #10
  br label %140

89:                                               ; preds = %3
  %90 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %91 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %92 = load ptr, ptr %91, align 8, !tbaa !6
  %93 = load i32, ptr %92, align 8
  %94 = and i32 %93, 65535
  %95 = icmp eq i32 %94, 15
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !6
  %99 = getelementptr inbounds %struct.rtvec_def, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !9
  call void @print_pattern(ptr noundef nonnull %4, ptr noundef %100, i32 noundef %2) #10
  br label %102

101:                                              ; preds = %89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %4, ptr noundef nonnull align 1 dereferenceable(11) @.str.115, i64 11, i1 false) #10
  br label %102

102:                                              ; preds = %101, %96
  %103 = icmp ne i32 %2, 0
  %104 = load ptr, ptr @current_sched_info, align 8
  %105 = icmp ne ptr %104, null
  %106 = select i1 %103, i1 %105, i1 false
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.haifa_sched_info, ptr %104, i64 0, i32 5
  %109 = load ptr, ptr %108, align 8, !tbaa !23
  %110 = call ptr %109(ptr noundef nonnull %1, i32 noundef 1) #11
  %111 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.109, ptr noundef %110, ptr noundef nonnull %4) #10
  br label %140

112:                                              ; preds = %102
  %113 = load i32, ptr %90, align 8, !tbaa !6
  %114 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.110, i32 noundef %113, ptr noundef nonnull %4) #10
  br label %140

115:                                              ; preds = %3
  %116 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !6
  %118 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.116, i32 noundef %117) #10
  br label %140

119:                                              ; preds = %3
  %120 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %121 = load i32, ptr %120, align 8, !tbaa !6
  %122 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.117, i32 noundef %121) #10
  br label %140

123:                                              ; preds = %3
  %124 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %125 = load i32, ptr %124, align 8, !tbaa !6
  %126 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %127 = load i32, ptr %126, align 8, !tbaa !6
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [13 x ptr], ptr @note_insn_name, i64 0, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !9
  %131 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.110, i32 noundef %125, ptr noundef %130) #10
  br label %140

132:                                              ; preds = %3
  %133 = and i32 %6, 65535
  %134 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %135 = load i32, ptr %134, align 8, !tbaa !6
  %136 = zext nneg i32 %133 to i64
  %137 = getelementptr inbounds [139 x ptr], ptr @rtx_name, i64 0, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !9
  %139 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.118, i32 noundef %135, ptr noundef %138) #10
  br label %140

140:                                              ; preds = %67, %70, %107, %112, %80, %85, %15, %20, %132, %123, %119, %115
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %4) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_insn_slim(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2080 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 2080, ptr nonnull %3) #9
  call void @print_insn(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 1) #10
  %4 = call i32 @fputs(ptr noundef nonnull %3, ptr noundef %0) #10
  %5 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #10
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -7
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %26, %14 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  call void @print_value(ptr noundef nonnull %3, ptr noundef %17, i32 noundef 1) #10
  %18 = load i32, ptr %15, align 8
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = zext nneg i32 %20 to i64
  %22 = getelementptr inbounds [0 x ptr], ptr @reg_note_name, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.119, ptr noundef %23, ptr noundef nonnull %3) #10
  %25 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %14, !llvm.loop !26

28:                                               ; preds = %14, %2, %10
  call void @llvm.lifetime.end.p0(i64 2080, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_insn_slim(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !9
  tail call void @dump_insn_slim(ptr noundef %2, ptr noundef %0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_rtl_slim_with_bb(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void @print_rtl_slim(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef -1, i32 noundef %2) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_rtl_slim(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %5, %7
  %11 = phi ptr [ %9, %7 ], [ null, %5 ]
  %12 = icmp eq ptr %1, null
  br i1 %12, label %53, label %13

13:                                               ; preds = %10
  %14 = and i32 %4, 32
  %15 = icmp eq i32 %14, 0
  br label %16

16:                                               ; preds = %13, %45
  %17 = phi i32 [ %3, %13 ], [ %49, %45 ]
  %18 = phi ptr [ %1, %13 ], [ %51, %45 ]
  %19 = phi ptr [ null, %13 ], [ %46, %45 ]
  %20 = icmp ne ptr %18, %11
  %21 = icmp ne i32 %17, 0
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %53

23:                                               ; preds = %16
  br i1 %15, label %24, label %25

24:                                               ; preds = %23
  tail call void @dump_insn_slim(ptr noundef %0, ptr noundef nonnull %18) #10
  br label %45

25:                                               ; preds = %23
  %26 = load i32, ptr %18, align 8
  %27 = trunc i32 %26 to i16
  switch i16 %27, label %35 [
    i16 8, label %28
    i16 7, label %28
    i16 9, label %28
    i16 10, label %28
    i16 13, label %28
  ]

28:                                               ; preds = %25, %25, %25, %25, %25
  %29 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = icmp eq ptr %30, null
  %32 = icmp ne ptr %19, null
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  tail call void @dump_bb_info(ptr noundef nonnull %30, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef %4, ptr noundef nonnull @.str.120, ptr noundef %0) #11
  tail call void @dump_insn_slim(ptr noundef %0, ptr noundef nonnull %18) #10
  br label %37

35:                                               ; preds = %25, %28
  tail call void @dump_insn_slim(ptr noundef %0, ptr noundef nonnull %18) #10
  %36 = icmp eq ptr %19, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %34, %35
  %38 = phi ptr [ %30, %34 ], [ %19, %35 ]
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = getelementptr inbounds %struct.rtl_bb_info, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !27
  %43 = icmp eq ptr %18, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  tail call void @dump_bb_info(ptr noundef nonnull %38, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %4, ptr noundef nonnull @.str.120, ptr noundef %0) #11
  br label %45

45:                                               ; preds = %24, %44, %37, %35
  %46 = phi ptr [ null, %44 ], [ %38, %37 ], [ null, %35 ], [ %19, %24 ]
  %47 = icmp sgt i32 %17, 0
  %48 = sext i1 %47 to i32
  %49 = add nsw i32 %17, %48
  %50 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 2
  %51 = load ptr, ptr %50, align 8, !tbaa !6
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %16, !llvm.loop !29

53:                                               ; preds = %45, %16, %10
  ret void
}

; Function Attrs: optsize
declare void @dump_bb_info(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_bb_slim(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !9
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = load ptr, ptr %4, align 8, !tbaa !30
  %6 = getelementptr inbounds %struct.rtl_bb_info, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !27
  tail call void @print_rtl_slim(ptr noundef %2, ptr noundef %5, ptr noundef %7, i32 noundef -1, i32 noundef 32) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_bb_n_slim(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !9
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !31
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !33
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %0) #10
  tail call void @debug_bb_slim(ptr noundef %7) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  ret ptr %5
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !17, i64 0}
!16 = !{!"rtvec_def", !17, i64 0, !7, i64 8}
!17 = !{!"int", !7, i64 0}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = !{!24, !10, i64 40}
!24 = !{!"haifa_sched_info", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !17, i64 96, !17, i64 100, !10, i64 104, !10, i64 112, !10, i64 120, !17, i64 128}
!25 = !{!17, !17, i64 0}
!26 = distinct !{!26, !14}
!27 = !{!28, !10, i64 8}
!28 = !{!"rtl_bb_info", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !17, i64 32}
!29 = distinct !{!29, !14}
!30 = !{!28, !10, i64 0}
!31 = !{!32, !10, i64 8}
!32 = !{!"function", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !17, i64 104, !17, i64 108, !17, i64 112, !17, i64 116, !17, i64 120, !17, i64 124, !10, i64 128, !17, i64 136, !17, i64 137, !17, i64 138, !17, i64 138, !17, i64 138, !17, i64 138, !17, i64 138, !17, i64 138, !17, i64 138, !17, i64 139, !17, i64 139, !17, i64 139, !17, i64 139, !17, i64 139, !17, i64 139, !17, i64 139}
!33 = !{!34, !10, i64 16}
!34 = !{!"control_flow_graph", !10, i64 0, !10, i64 8, !10, i64 16, !17, i64 24, !17, i64 28, !17, i64 32, !10, i64 40, !17, i64 48, !7, i64 52, !7, i64 60, !17, i64 68, !17, i64 72}
