; ModuleID = 'loop-invariant.c'
source_filename = "loop-invariant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.loop_iterator = type { ptr, i32 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.loop_data = type { ptr, i8, [27 x i32], %struct.bitmap_head_def, %struct.bitmap_head_def }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.invariant = type { i32, i32, ptr, i32, ptr, ptr, i8, i8, i8, i32, ptr, i32 }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.df_insn_info = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.def = type { ptr, i32, i32, i32 }
%struct.df_link = type { ptr, ptr }
%struct.df_artificial_ref = type { %struct.df_base_ref, ptr }
%struct.VEC_invariant_p_base = type { i32, i32, [1 x ptr] }
%struct.df_regular_ref = type { %struct.df_base_ref, ptr }
%struct.use = type { ptr, ptr, i32, ptr }
%struct.invariant_expr_entry = type { ptr, ptr, i32, i32 }

@flag_ira_loop_pressure = external local_unnamed_addr global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@curr_loop = internal unnamed_addr global ptr null, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@invariant_table = internal unnamed_addr global ptr null, align 8
@invariant_table_size = internal unnamed_addr global i32 0, align 4
@reg_obstack = external global %struct.bitmap_obstack, align 8
@curr_regs_live = internal global %struct.bitmap_head_def zeroinitializer, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@ira_reg_class_cover_size = external local_unnamed_addr global i32, align 4
@curr_reg_pressure = internal unnamed_addr global [27 x i32] zeroinitializer, align 16
@ira_reg_class_cover = external local_unnamed_addr global [27 x i32], align 16
@n_regs_set = internal unnamed_addr global i32 0, align 4
@regs_set = internal unnamed_addr global [106 x ptr] zeroinitializer, align 16
@flag_ira_region = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [47 x i8] c"\0A  Loop %d (parent %d, header bb%d, depth %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"\0A    ref. regnos:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\0A    live regnos:\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"\0A    Pressure:\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" %s=%d\00", align 1
@reg_class_names = external local_unnamed_addr global [0 x ptr], align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@df = external local_unnamed_addr global ptr, align 8
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@ira_reg_class_nregs = external local_unnamed_addr global [27 x [87 x i32]], align 16
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@ira_no_alloc_regs = external local_unnamed_addr global i64, align 8
@eliminable_regset = external local_unnamed_addr global i64, align 8
@ira_class_translate = external local_unnamed_addr global [27 x i32], align 16
@regclass_map = external local_unnamed_addr constant [53 x i32], align 16
@actual_stamp = internal unnamed_addr global i32 0, align 4
@invariants = internal unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"*****starting processing of loop  ******\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"*****ending processing of loop  ******\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"loop-invariant.c\00", align 1
@word_mode = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [55 x i8] c"Set in insn %d is invariant (%d), cost %d, depends on \00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"Invariant %d is equivalent to invariant %d.\0A\00", align 1
@ira_available_class_regs = external local_unnamed_addr global [27 x i32], align 16
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@ix86_fpmath = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [41 x i8] c"Decided to move invariant %d -- gain %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Decided to move dependent invariant %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Failed to move invariant %d\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @move_loop_invariants() local_unnamed_addr #0 !prof !243 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.loop_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  %3 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !244
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !248

5:                                                ; preds = %0
  tail call void @df_analyze() #18
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !249
  tail call void @ira_set_pseudo_classes(ptr noundef %6) #18
  tail call fastcc void @calculate_loop_reg_pressure() #19
  br label %7

7:                                                ; preds = %5, %0
  %8 = tail call i32 @df_set_flags(i32 noundef 36) #18
  call fastcc void @fel_init(ptr noundef nonnull %2, ptr noundef nonnull %1, i32 noundef 2) #19
  %9 = load ptr, ptr %1, align 8, !tbaa !249
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11, !prof !251

11:                                               ; preds = %7, %20
  %12 = phi ptr [ %21, %20 ], [ %9, %7 ]
  store ptr %12, ptr @curr_loop, align 8, !tbaa !249
  %13 = getelementptr inbounds %struct.loop, ptr %12, i64 0, i32 6
  %14 = load i32, ptr %13, align 4, !tbaa !252
  %15 = load ptr, ptr @compiler_params, align 8, !tbaa !249
  %16 = getelementptr inbounds %struct.param_info, ptr %15, i64 112, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !257
  %18 = icmp ugt i32 %14, %17
  br i1 %18, label %20, label %19, !prof !259

19:                                               ; preds = %11
  tail call fastcc void @move_single_loop_invariants(ptr noundef nonnull %12) #19
  br label %20

20:                                               ; preds = %11, %19
  call fastcc void @fel_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #19
  %21 = load ptr, ptr %1, align 8, !tbaa !249
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %11, !prof !260, !llvm.loop !261

23:                                               ; preds = %20, %7
  call fastcc void @fel_init(ptr noundef nonnull %2, ptr noundef nonnull %1, i32 noundef 0) #19
  %24 = load ptr, ptr %1, align 8, !tbaa !249
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26, !prof !251

26:                                               ; preds = %23, %26
  %27 = phi ptr [ %28, %26 ], [ %24, %23 ]
  tail call fastcc void @free_loop_data(ptr noundef nonnull %27) #19
  call fastcc void @fel_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #19
  %28 = load ptr, ptr %1, align 8, !tbaa !249
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %26, !prof !260, !llvm.loop !263

30:                                               ; preds = %26, %23
  %31 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !244
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33, !prof !248

33:                                               ; preds = %30
  tail call void @free_reg_info() #18
  br label %34

34:                                               ; preds = %33, %30
  %35 = load ptr, ptr @invariant_table, align 8, !tbaa !249
  tail call void @free(ptr noundef %35) #19
  store ptr null, ptr @invariant_table, align 8, !tbaa !249
  store i32 0, ptr @invariant_table_size, align 4, !tbaa !244
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @df_analyze() local_unnamed_addr #2

; Function Attrs: optsize
declare void @ira_set_pseudo_classes(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @calculate_loop_reg_pressure() unnamed_addr #0 !prof !264 !PGOFuncName !265 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.loop_iterator, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call fastcc void @fel_init(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 0) #19
  %6 = load ptr, ptr %3, align 8, !tbaa !249
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %0, %18
  %9 = phi ptr [ %19, %18 ], [ %6, %0 ]
  %10 = getelementptr inbounds %struct.loop, ptr %9, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !266
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 184) #18
  store ptr %14, ptr %10, align 8, !tbaa !266
  %15 = getelementptr inbounds %struct.loop_data, ptr %14, i64 0, i32 3
  tail call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %15) #19
  %16 = load ptr, ptr %10, align 8, !tbaa !266
  %17 = getelementptr inbounds %struct.loop_data, ptr %16, i64 0, i32 4
  tail call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %17) #19
  br label %18

18:                                               ; preds = %8, %13
  call fastcc void @fel_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #19
  %19 = load ptr, ptr %3, align 8, !tbaa !249
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %8, !llvm.loop !267

21:                                               ; preds = %18, %0
  tail call void @ira_setup_eliminable_regset() #18
  tail call fastcc void @bitmap_initialize_stat(ptr noundef nonnull @curr_regs_live) #19
  %22 = load ptr, ptr @cfun, align 8, !tbaa !249
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !268
  %25 = load ptr, ptr %24, align 8, !tbaa !270
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !272
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !274
  %30 = icmp eq ptr %27, %29
  br i1 %30, label %157, label %31

31:                                               ; preds = %21, %147
  %32 = phi ptr [ %151, %147 ], [ %22, %21 ]
  %33 = phi ptr [ %150, %147 ], [ %27, %21 ]
  %34 = phi ptr [ %148, %147 ], [ null, %21 ]
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !275
  store ptr %36, ptr @curr_loop, align 8, !tbaa !249
  %37 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !276
  %39 = getelementptr inbounds %struct.loops, ptr %38, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !277
  %41 = icmp eq ptr %36, %40
  br i1 %41, label %147, label %42

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 9
  br label %44

44:                                               ; preds = %42, %44
  %45 = phi ptr [ %36, %42 ], [ %54, %44 ]
  %46 = getelementptr inbounds %struct.loop, ptr %45, i64 0, i32 10
  %47 = load ptr, ptr %46, align 8, !tbaa !266
  %48 = getelementptr inbounds %struct.loop_data, ptr %47, i64 0, i32 4
  %49 = load i32, ptr %43, align 8, !tbaa !279
  %50 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %49) #19
  %51 = getelementptr inbounds %struct.df_lr_bb_info, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !280
  %53 = tail call zeroext i8 @bitmap_ior_into(ptr noundef nonnull %48, ptr noundef %52) #18
  %54 = tail call fastcc ptr @loop_outer(ptr noundef %45) #19
  %55 = load ptr, ptr @cfun, align 8, !tbaa !249
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !276
  %58 = getelementptr inbounds %struct.loops, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !277
  %60 = icmp eq ptr %54, %59
  br i1 %60, label %61, label %44, !llvm.loop !282

61:                                               ; preds = %44
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 9
  %63 = load i32, ptr %62, align 8, !tbaa !279
  %64 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %63) #19
  %65 = getelementptr inbounds %struct.df_lr_bb_info, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !280
  tail call void @bitmap_copy(ptr noundef nonnull @curr_regs_live, ptr noundef %66) #18
  %67 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !244
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %61
  %70 = zext nneg i32 %67 to i64
  br label %71

71:                                               ; preds = %69, %71
  %72 = phi i64 [ 0, %69 ], [ %77, %71 ]
  %73 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !244
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %75
  store i32 0, ptr %76, align 4, !tbaa !244
  %77 = add nuw nsw i64 %72, 1
  %78 = icmp eq i64 %77, %70
  br i1 %78, label %79, label %71, !llvm.loop !283

79:                                               ; preds = %71, %61
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef nonnull @curr_regs_live, ptr noundef nonnull %1) #19
  %80 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #19, !range !284
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79, %82
  %83 = load i32, ptr %1, align 4, !tbaa !244
  tail call fastcc void @change_pressure(i32 noundef %83, i8 noundef zeroext 1) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #19
  %84 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #19, !range !284
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %82, !llvm.loop !285

86:                                               ; preds = %82, %79
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 7
  %88 = load ptr, ptr %87, align 8, !tbaa !286
  %89 = load ptr, ptr %88, align 8, !tbaa !286
  %90 = icmp eq ptr %89, null
  br i1 %90, label %147, label %91

91:                                               ; preds = %86, %143
  %92 = phi ptr [ %145, %143 ], [ %89, %86 ]
  %93 = load ptr, ptr %87, align 8, !tbaa !286
  %94 = getelementptr inbounds %struct.rtl_bb_info, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !287
  %96 = getelementptr inbounds %struct.rtx_def, ptr %95, i64 0, i32 1, i32 0, i32 0, i64 2
  %97 = load ptr, ptr %96, align 8, !tbaa !286
  %98 = icmp eq ptr %92, %97
  br i1 %98, label %147, label %99

99:                                               ; preds = %91
  %100 = load i32, ptr %92, align 8
  %101 = and i32 %100, 65535
  %102 = add nsw i32 %101, -11
  %103 = icmp ult i32 %102, -3
  br i1 %103, label %143, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !286
  tail call fastcc void @mark_ref_regs(ptr noundef %106) #19
  store i32 0, ptr @n_regs_set, align 4, !tbaa !244
  %107 = load ptr, ptr %105, align 8, !tbaa !286
  tail call void @note_stores(ptr noundef %107, ptr noundef nonnull @mark_reg_clobber, ptr noundef null) #18
  %108 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 1, i32 1, i32 0, i32 0, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !286
  %110 = icmp eq ptr %109, null
  br i1 %110, label %123, label %111

111:                                              ; preds = %104, %119
  %112 = phi ptr [ %121, %119 ], [ %109, %104 ]
  %113 = load i32, ptr %112, align 8
  %114 = and i32 %113, 16711680
  %115 = icmp eq i32 %114, 65536
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !286
  tail call fastcc void @mark_reg_death(ptr noundef %118) #19
  br label %119

119:                                              ; preds = %111, %116
  %120 = getelementptr inbounds %struct.rtx_def, ptr %112, i64 0, i32 1, i32 0, i32 0, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !286
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %111, !llvm.loop !289

123:                                              ; preds = %119, %104
  %124 = load ptr, ptr %105, align 8, !tbaa !286
  tail call void @note_stores(ptr noundef %124, ptr noundef nonnull @mark_reg_store, ptr noundef null) #18
  %125 = load i32, ptr @n_regs_set, align 4, !tbaa !244
  %126 = add nsw i32 %125, -1
  store i32 %126, ptr @n_regs_set, align 4, !tbaa !244
  %127 = icmp sgt i32 %125, 0
  br i1 %127, label %128, label %143

128:                                              ; preds = %123, %139
  %129 = phi i32 [ %141, %139 ], [ %126, %123 ]
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds [106 x ptr], ptr @regs_set, i64 0, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !249
  %133 = tail call fastcc i32 @rhs_regno(ptr noundef %132) #19
  %134 = tail call ptr @find_regno_note(ptr noundef nonnull %92, i32 noundef 6, i32 noundef %133) #18
  %135 = icmp eq ptr %134, null
  br i1 %135, label %139, label %136, !llvm.loop !290

136:                                              ; preds = %128
  %137 = getelementptr inbounds %struct.rtx_def, ptr %134, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !286
  tail call fastcc void @mark_reg_death(ptr noundef %138) #19
  br label %139

139:                                              ; preds = %128, %136
  %140 = load i32, ptr @n_regs_set, align 4, !tbaa !244
  %141 = add nsw i32 %140, -1
  store i32 %141, ptr @n_regs_set, align 4, !tbaa !244
  %142 = icmp sgt i32 %140, 0
  br i1 %142, label %128, label %143

143:                                              ; preds = %139, %123, %99
  %144 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1, i32 0, i32 0, i64 2
  %145 = load ptr, ptr %144, align 8, !tbaa !286
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %91, !llvm.loop !291

147:                                              ; preds = %143, %91, %86, %31
  %148 = phi ptr [ %34, %31 ], [ %54, %86 ], [ %54, %91 ], [ %54, %143 ]
  %149 = getelementptr inbounds %struct.basic_block_def, ptr %33, i64 0, i32 6
  %150 = load ptr, ptr %149, align 8, !tbaa !272
  %151 = load ptr, ptr @cfun, align 8, !tbaa !249
  %152 = getelementptr inbounds %struct.function, ptr %151, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !268
  %154 = getelementptr inbounds %struct.control_flow_graph, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !274
  %156 = icmp eq ptr %150, %155
  br i1 %156, label %157, label %31, !llvm.loop !292

157:                                              ; preds = %147, %21
  %158 = phi ptr [ null, %21 ], [ %148, %147 ]
  store ptr %158, ptr %3, align 8, !tbaa !249
  tail call void @bitmap_clear(ptr noundef nonnull @curr_regs_live) #18
  %159 = load i32, ptr @flag_ira_region, align 4
  %160 = add i32 %159, -1
  %161 = icmp ult i32 %160, 2
  br i1 %161, label %162, label %192

162:                                              ; preds = %157
  call fastcc void @fel_init(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 0) #19
  %163 = load ptr, ptr %3, align 8, !tbaa !249
  %164 = icmp eq ptr %163, null
  br i1 %164, label %192, label %165

165:                                              ; preds = %162, %189
  %166 = phi ptr [ %190, %189 ], [ %163, %162 ]
  %167 = getelementptr inbounds %struct.loop, ptr %166, i64 0, i32 10
  %168 = load ptr, ptr %167, align 8, !tbaa !266
  %169 = getelementptr inbounds %struct.loop_data, ptr %168, i64 0, i32 4
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef nonnull %169, ptr noundef nonnull %1) #19
  %170 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #19, !range !284
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %189, label %172

172:                                              ; preds = %165, %186
  %173 = load ptr, ptr %167, align 8, !tbaa !266
  %174 = getelementptr inbounds %struct.loop_data, ptr %173, i64 0, i32 3
  %175 = load i32, ptr %1, align 4, !tbaa !244
  %176 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %174, i32 noundef %175) #18
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %172
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  %179 = call fastcc i32 @get_regno_cover_class(i32 noundef %175, ptr noundef nonnull %5) #19
  %180 = load i32, ptr %5, align 4, !tbaa !244
  %181 = load ptr, ptr %167, align 8, !tbaa !266
  %182 = zext i32 %179 to i64
  %183 = getelementptr inbounds %struct.loop_data, ptr %181, i64 0, i32 2, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !244
  %185 = sub nsw i32 %184, %180
  store i32 %185, ptr %183, align 4, !tbaa !244
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  br label %186

186:                                              ; preds = %172, %178
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #19
  %187 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #19, !range !284
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %189, label %172, !llvm.loop !293

189:                                              ; preds = %186, %165
  call fastcc void @fel_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #19
  %190 = load ptr, ptr %3, align 8, !tbaa !249
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %165, !llvm.loop !294

192:                                              ; preds = %189, %162, %157
  %193 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %194 = icmp eq ptr %193, null
  br i1 %194, label %271, label %195

195:                                              ; preds = %192
  call fastcc void @fel_init(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 0) #19
  %196 = load ptr, ptr %3, align 8, !tbaa !249
  %197 = icmp eq ptr %196, null
  br i1 %197, label %271, label %198

198:                                              ; preds = %195, %266
  %199 = phi ptr [ %269, %266 ], [ %196, %195 ]
  %200 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %199) #19
  %201 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %202 = load i32, ptr %199, align 8, !tbaa !295
  %203 = icmp eq ptr %200, null
  br i1 %203, label %206, label %204

204:                                              ; preds = %198
  %205 = load i32, ptr %200, align 8, !tbaa !295
  br label %206

206:                                              ; preds = %198, %204
  %207 = phi i32 [ %205, %204 ], [ -1, %198 ]
  %208 = getelementptr inbounds %struct.loop, ptr %199, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !296
  %210 = getelementptr inbounds %struct.basic_block_def, ptr %209, i64 0, i32 9
  %211 = load i32, ptr %210, align 8, !tbaa !279
  %212 = tail call fastcc i32 @loop_depth(ptr noundef nonnull %199) #19
  %213 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %201, ptr noundef nonnull @.str, i32 noundef %202, i32 noundef %207, i32 noundef %211, i32 noundef %212) #19
  %214 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %215 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 17, i64 1, ptr %214)
  %216 = getelementptr inbounds %struct.loop, ptr %199, i64 0, i32 10
  %217 = load ptr, ptr %216, align 8, !tbaa !266
  %218 = getelementptr inbounds %struct.loop_data, ptr %217, i64 0, i32 3
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef nonnull %218, ptr noundef nonnull %1) #19
  %219 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #19, !range !284
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %227, label %221

221:                                              ; preds = %206, %221
  %222 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %223 = load i32, ptr %1, align 4, !tbaa !244
  %224 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %222, ptr noundef nonnull @.str.2, i32 noundef %223) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #19
  %225 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #19, !range !284
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %227, label %221, !llvm.loop !297

227:                                              ; preds = %221, %206
  %228 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %229 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 17, i64 1, ptr %228)
  %230 = load ptr, ptr %216, align 8, !tbaa !266
  %231 = getelementptr inbounds %struct.loop_data, ptr %230, i64 0, i32 4
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef nonnull %231, ptr noundef nonnull %1) #19
  %232 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #19, !range !284
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %240, label %234

234:                                              ; preds = %227, %234
  %235 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %236 = load i32, ptr %1, align 4, !tbaa !244
  %237 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %235, ptr noundef nonnull @.str.2, i32 noundef %236) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %1) #19
  %238 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %1) #19, !range !284
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %240, label %234, !llvm.loop !298

240:                                              ; preds = %234, %227
  %241 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %242 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 14, i64 1, ptr %241)
  %243 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !244
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %266

245:                                              ; preds = %240, %261
  %246 = phi i32 [ %262, %261 ], [ %243, %240 ]
  %247 = phi i64 [ %263, %261 ], [ 0, %240 ]
  %248 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !244
  %250 = load ptr, ptr %216, align 8, !tbaa !266
  %251 = zext i32 %249 to i64
  %252 = getelementptr inbounds %struct.loop_data, ptr %250, i64 0, i32 2, i64 %251
  %253 = load i32, ptr %252, align 4, !tbaa !244
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %261, label %255

255:                                              ; preds = %245
  %256 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %257 = getelementptr inbounds [0 x ptr], ptr @reg_class_names, i64 0, i64 %251
  %258 = load ptr, ptr %257, align 8, !tbaa !249
  %259 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %256, ptr noundef nonnull @.str.5, ptr noundef %258, i32 noundef %253) #19
  %260 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !244
  br label %261

261:                                              ; preds = %245, %255
  %262 = phi i32 [ %246, %245 ], [ %260, %255 ]
  %263 = add nuw nsw i64 %247, 1
  %264 = sext i32 %262 to i64
  %265 = icmp slt i64 %263, %264
  br i1 %265, label %245, label %266, !llvm.loop !299

266:                                              ; preds = %261, %240
  %267 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %268 = tail call i32 @fputc(i32 10, ptr %267)
  call fastcc void @fel_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #19
  %269 = load ptr, ptr %3, align 8, !tbaa !249
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %198, !llvm.loop !300

271:                                              ; preds = %266, %195, %192
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #17
  ret void
}

; Function Attrs: optsize
declare i32 @df_set_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 !prof !301 !PGOFuncName !302 {
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !303
  %5 = load ptr, ptr @cfun, align 8, !tbaa !249
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !276
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !305

9:                                                ; preds = %3
  store ptr null, ptr %0, align 8, !tbaa !306
  store ptr null, ptr %1, align 8, !tbaa !249
  br label %68

10:                                               ; preds = %3
  %11 = tail call fastcc i32 @number_of_loops() #19
  %12 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %11) #19
  store ptr %12, ptr %0, align 8, !tbaa !306
  %13 = and i32 %2, 1
  %14 = xor i32 %13, 1
  %15 = and i32 %2, 2
  %16 = icmp eq i32 %15, 0
  %17 = load ptr, ptr @cfun, align 8, !tbaa !249
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !276
  %20 = getelementptr inbounds %struct.loops, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !277
  br i1 %16, label %47, label %22, !prof !307

22:                                               ; preds = %10, %22
  %23 = phi ptr [ %25, %22 ], [ %21, %10 ]
  %24 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !308
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %22, !prof !309, !llvm.loop !310

27:                                               ; preds = %22, %45
  %28 = phi ptr [ %46, %45 ], [ %23, %22 ]
  %29 = load i32, ptr %28, align 8, !tbaa !295
  %30 = icmp slt i32 %29, %14
  br i1 %30, label %33, label %31, !prof !311

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 8, !tbaa !306
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %32, i32 noundef %29) #19
  br label %33

33:                                               ; preds = %31, %27
  %34 = getelementptr inbounds %struct.loop, ptr %28, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !312
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37, !prof !313

37:                                               ; preds = %33, %37
  %38 = phi ptr [ %40, %37 ], [ %35, %33 ]
  %39 = getelementptr inbounds %struct.loop, ptr %38, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !308
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %37, !prof !314, !llvm.loop !315

42:                                               ; preds = %33
  %43 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %28) #19
  %44 = icmp eq ptr %43, null
  br i1 %44, label %67, label %45, !prof !316

45:                                               ; preds = %37, %42
  %46 = phi ptr [ %43, %42 ], [ %38, %37 ]
  br label %27

47:                                               ; preds = %10, %57
  %48 = phi ptr [ %58, %57 ], [ %21, %10 ]
  %49 = load i32, ptr %48, align 8, !tbaa !295
  %50 = icmp slt i32 %49, %14
  br i1 %50, label %53, label %51, !prof !311

51:                                               ; preds = %47
  %52 = load ptr, ptr %0, align 8, !tbaa !306
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %52, i32 noundef %49) #19
  br label %53

53:                                               ; preds = %51, %47
  %54 = getelementptr inbounds %struct.loop, ptr %48, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !308
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57, !prof !317

57:                                               ; preds = %59, %53
  %58 = phi ptr [ %55, %53 ], [ %62, %59 ]
  br label %47

59:                                               ; preds = %53, %64
  %60 = phi ptr [ %65, %64 ], [ %48, %53 ]
  %61 = getelementptr inbounds %struct.loop, ptr %60, i64 0, i32 9
  %62 = load ptr, ptr %61, align 8, !tbaa !312
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %57, !prof !318

64:                                               ; preds = %59
  %65 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %60) #19
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %59, !prof !319, !llvm.loop !320

67:                                               ; preds = %42, %64
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #19
  br label %68

68:                                               ; preds = %67, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_single_loop_invariants(ptr noundef %0) unnamed_addr #0 !prof !321 !PGOFuncName !322 {
  tail call fastcc void @init_inv_motion_data() #19
  tail call fastcc void @find_invariants(ptr noundef %0) #19
  %2 = tail call zeroext i8 @optimize_loop_for_speed_p(ptr noundef %0) #18
  tail call fastcc void @find_invariants_to_move(i8 noundef zeroext %2) #19
  tail call fastcc void @move_invariants(ptr noundef %0) #19
  tail call fastcc void @free_inv_motion_data() #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !323 !PGOFuncName !324 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !303
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !306
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #19, !range !325
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !326

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !303
  %13 = load i32, ptr %3, align 4, !tbaa !244
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #19
  store ptr %14, ptr %1, align 8, !tbaa !249
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !prof !327, !llvm.loop !328

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #19
  store ptr null, ptr %1, align 8, !tbaa !249
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_loop_data(ptr nocapture noundef %0) unnamed_addr #0 !prof !321 !PGOFuncName !329 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !266
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !259

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.loop_data, ptr %3, i64 0, i32 3
  tail call void @bitmap_clear(ptr noundef nonnull %6) #18
  %7 = load ptr, ptr %2, align 8, !tbaa !266
  %8 = getelementptr inbounds %struct.loop_data, ptr %7, i64 0, i32 4
  tail call void @bitmap_clear(ptr noundef nonnull %8) #18
  tail call void @free(ptr noundef nonnull %3) #19
  store ptr null, ptr %2, align 8, !tbaa !266
  br label %9

9:                                                ; preds = %1, %5
  ret void
}

; Function Attrs: optsize
declare void @free_reg_info() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @bitmap_initialize_stat(ptr nocapture noundef writeonly %0) unnamed_addr #4 !prof !330 !PGOFuncName !331 {
  %2 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr @reg_obstack, ptr %2, align 8, !tbaa !332
  ret void
}

; Function Attrs: optsize
declare void @ira_setup_eliminable_regset() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #5 !prof !264 !PGOFuncName !334 {
  %2 = load ptr, ptr @df, align 8, !tbaa !249
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !249
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !335
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !337
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !249
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !338 !PGOFuncName !339 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !340
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !341

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #19
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !342 !PGOFuncName !343 {
  %4 = load ptr, ptr %1, align 8, !tbaa !344
  store ptr %4, ptr %0, align 8, !tbaa !345
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !347
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !348

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !345
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !349
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !351

13:                                               ; preds = %8
  %14 = shl i32 %11, 7
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ %14, %13 ], [ 0, %8 ]
  %17 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !352
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !353
  %20 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %19, ptr %20, align 8, !tbaa !354
  %21 = icmp eq i64 %19, 0
  %22 = zext i1 %21 to i32
  %23 = or disjoint i32 %16, %22
  store i32 %23, ptr %2, align 4, !tbaa !244
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 !prof !355 !PGOFuncName !356 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !354
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !357

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !358

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !244
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !359, !llvm.loop !360

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !244
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !244
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !352
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !345
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !352
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !361

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !353
  store i64 %35, ptr %3, align 8, !tbaa !354
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !362

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !244
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !244
  %40 = load i32, ptr %23, align 8, !tbaa !352
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !352
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !363, !llvm.loop !364

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !365
  store ptr %44, ptr %0, align 8, !tbaa !345
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !366

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !349
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !244
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !354
  store i32 %16, ptr %1, align 4, !tbaa !244
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @change_pressure(i32 noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !264 !PGOFuncName !367 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %4 = call fastcc i32 @get_regno_cover_class(i32 noundef %0, ptr noundef nonnull %3) #19
  %5 = icmp eq i8 %1, 0
  %6 = load i32, ptr %3, align 4, !tbaa !244
  %7 = zext i32 %4 to i64
  %8 = getelementptr inbounds [27 x i32], ptr @curr_reg_pressure, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !244
  br i1 %5, label %10, label %12

10:                                               ; preds = %2
  %11 = sub nsw i32 %9, %6
  store i32 %11, ptr %8, align 4, !tbaa !244
  br label %21

12:                                               ; preds = %2
  %13 = add nsw i32 %9, %6
  store i32 %13, ptr %8, align 4, !tbaa !244
  %14 = load ptr, ptr @curr_loop, align 8, !tbaa !249
  %15 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !266
  %17 = getelementptr inbounds %struct.loop_data, ptr %16, i64 0, i32 2, i64 %7
  %18 = load i32, ptr %17, align 4, !tbaa !244
  %19 = icmp slt i32 %18, %13
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 %13, ptr %17, align 4, !tbaa !244
  br label %21

21:                                               ; preds = %12, %20, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !prof !368 !PGOFuncName !369 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !354
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !354
  %6 = load i32, ptr %1, align 4, !tbaa !244
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !244
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_ref_regs(ptr noundef readonly %0) unnamed_addr #0 !prof !264 !PGOFuncName !370 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %64, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 37
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = load ptr, ptr @curr_loop, align 8, !tbaa !249
  %9 = load ptr, ptr @cfun, align 8, !tbaa !249
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !276
  %12 = getelementptr inbounds %struct.loops, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !277
  %14 = icmp eq ptr %8, %13
  br i1 %14, label %64, label %15

15:                                               ; preds = %7, %15
  %16 = phi ptr [ %22, %15 ], [ %8, %7 ]
  %17 = getelementptr inbounds %struct.loop, ptr %16, i64 0, i32 10
  %18 = load ptr, ptr %17, align 8, !tbaa !266
  %19 = getelementptr inbounds %struct.loop_data, ptr %18, i64 0, i32 3
  %20 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #19
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %19, i32 noundef %20) #18
  %22 = tail call fastcc ptr @loop_outer(ptr noundef %16) #19
  %23 = load ptr, ptr @cfun, align 8, !tbaa !249
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !276
  %26 = getelementptr inbounds %struct.loops, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !277
  %28 = icmp eq ptr %22, %27
  br i1 %28, label %64, label %15, !llvm.loop !371

29:                                               ; preds = %3
  %30 = zext nneg i32 %5 to i64
  %31 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !249
  %33 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %30
  %34 = load i8, ptr %33, align 1, !tbaa !286
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %64, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %38 = zext i8 %34 to i64
  br label %39

39:                                               ; preds = %36, %62
  %40 = phi i64 [ %38, %36 ], [ %41, %62 ]
  %41 = add nsw i64 %40, -1
  %42 = getelementptr inbounds i8, ptr %32, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !286
  switch i8 %43, label %62 [
    i8 101, label %49
    i8 69, label %44
  ]

44:                                               ; preds = %39
  %45 = getelementptr inbounds [1 x %union.rtunion_def], ptr %37, i64 0, i64 %41
  %46 = load ptr, ptr %45, align 8, !tbaa !286
  %47 = load i32, ptr %46, align 8, !tbaa !372
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %52, label %62

49:                                               ; preds = %39
  %50 = getelementptr inbounds [1 x %union.rtunion_def], ptr %37, i64 0, i64 %41
  %51 = load ptr, ptr %50, align 8, !tbaa !286
  tail call fastcc void @mark_ref_regs(ptr noundef %51) #19
  br label %62

52:                                               ; preds = %44, %52
  %53 = phi i64 [ %57, %52 ], [ 0, %44 ]
  %54 = phi ptr [ %58, %52 ], [ %46, %44 ]
  %55 = getelementptr inbounds %struct.rtvec_def, ptr %54, i64 0, i32 1, i64 %53
  %56 = load ptr, ptr %55, align 8, !tbaa !249
  tail call fastcc void @mark_ref_regs(ptr noundef %56) #19
  %57 = add nuw nsw i64 %53, 1
  %58 = load ptr, ptr %45, align 8, !tbaa !286
  %59 = load i32, ptr %58, align 8, !tbaa !372
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %57, %60
  br i1 %61, label %52, label %62, !llvm.loop !374

62:                                               ; preds = %52, %44, %39, %49
  %63 = icmp sgt i64 %40, 1
  br i1 %63, label %39, label %64, !llvm.loop !375

64:                                               ; preds = %62, %15, %29, %7, %1
  ret void
}

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mark_reg_clobber(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 !prof !264 !PGOFuncName !376 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 25
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @mark_reg_store(ptr noundef %0, ptr nonnull poison, ptr poison) #19
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_reg_death(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !264 !PGOFuncName !377 {
  %2 = tail call fastcc i32 @rhs_regno(ptr noundef %0) #19
  %3 = icmp sgt i32 %2, 52
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call fastcc void @mark_regno_death(i32 noundef %2) #19
  br label %20

5:                                                ; preds = %1
  %6 = sext i32 %2 to i64
  %7 = load i32, ptr %0, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %6, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !286
  %13 = zext i8 %12 to i32
  %14 = add nsw i32 %2, %13
  %15 = icmp eq i8 %12, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %5, %16
  %17 = phi i32 [ %18, %16 ], [ %2, %5 ]
  tail call fastcc void @mark_regno_death(i32 noundef %17) #19
  %18 = add nsw i32 %17, 1
  %19 = icmp slt i32 %18, %14
  br i1 %19, label %16, label %20, !llvm.loop !378

20:                                               ; preds = %16, %5, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mark_reg_store(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #0 !prof !264 !PGOFuncName !379 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 39
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !286
  %10 = load i32, ptr %9, align 8
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ %10, %7 ], [ %4, %3 ]
  %13 = phi ptr [ %9, %7 ], [ %0, %3 ]
  %14 = and i32 %12, 65535
  %15 = icmp eq i32 %14, 37
  br i1 %15, label %16, label %38

16:                                               ; preds = %11
  %17 = load i32, ptr @n_regs_set, align 4, !tbaa !244
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr @n_regs_set, align 4, !tbaa !244
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds [106 x ptr], ptr @regs_set, i64 0, i64 %19
  store ptr %13, ptr %20, align 8, !tbaa !249
  %21 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %13) #19
  %22 = icmp sgt i32 %21, 52
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  tail call fastcc void @mark_regno_live(i32 noundef %21) #19
  br label %38

24:                                               ; preds = %16
  %25 = sext i32 %21 to i64
  %26 = lshr i32 %12, 16
  %27 = and i32 %26, 255
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %25, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !286
  %31 = zext i8 %30 to i32
  %32 = add nsw i32 %21, %31
  %33 = icmp eq i8 %30, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %24, %34
  %35 = phi i32 [ %36, %34 ], [ %21, %24 ]
  tail call fastcc void @mark_regno_live(i32 noundef %35) #19
  %36 = add nsw i32 %35, 1
  %37 = icmp slt i32 %36, %32
  br i1 %37, label %34, label %38, !llvm.loop !380

38:                                               ; preds = %34, %24, %23, %11
  ret void
}

; Function Attrs: optsize
declare ptr @find_regno_note(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !381 !PGOFuncName !382 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !286
  ret i32 %3
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_regno_cover_class(i32 noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !264 !PGOFuncName !383 {
  %3 = icmp sgt i32 %0, 52
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = tail call i32 @reg_cover_class(i32 noundef %0) #18
  %6 = zext i32 %5 to i64
  %7 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !249
  %8 = zext nneg i32 %0 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !249
  %11 = load i32, ptr %10, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %6, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !244
  store i32 %16, ptr %1, align 4, !tbaa !244
  br label %35

17:                                               ; preds = %2
  %18 = load i64, ptr @ira_no_alloc_regs, align 8, !tbaa !353
  %19 = zext nneg i32 %0 to i64
  %20 = shl nuw i64 1, %19
  %21 = and i64 %18, %20
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load i64, ptr @eliminable_regset, align 8, !tbaa !353
  %25 = and i64 %24, %20
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  store i32 1, ptr %1, align 4, !tbaa !244
  %28 = sext i32 %0 to i64
  %29 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !244
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [27 x i32], ptr @ira_class_translate, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !244
  br label %35

34:                                               ; preds = %23, %17
  store i32 0, ptr %1, align 4, !tbaa !244
  br label %35

35:                                               ; preds = %34, %27, %4
  %36 = phi i32 [ %5, %4 ], [ 0, %34 ], [ %33, %27 ]
  ret i32 %36
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !264 !PGOFuncName !384 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !340
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #19
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !385 !PGOFuncName !386 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !387

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !388
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !390 !PGOFuncName !391 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !249
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_regno_death(i32 noundef %0) unnamed_addr #0 !prof !264 !PGOFuncName !392 {
  %2 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @curr_regs_live, i32 noundef %0) #18
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull @curr_regs_live, i32 noundef %0) #18
  tail call fastcc void @change_pressure(i32 noundef %0, i8 noundef zeroext 0) #19
  br label %6

6:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_regno_live(i32 noundef %0) unnamed_addr #0 !prof !264 !PGOFuncName !393 {
  %2 = load ptr, ptr @curr_loop, align 8, !tbaa !249
  %3 = load ptr, ptr @cfun, align 8, !tbaa !249
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !276
  %6 = getelementptr inbounds %struct.loops, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !277
  %8 = icmp eq ptr %2, %7
  br i1 %8, label %22, label %9

9:                                                ; preds = %1, %9
  %10 = phi ptr [ %15, %9 ], [ %2, %1 ]
  %11 = getelementptr inbounds %struct.loop, ptr %10, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !266
  %13 = getelementptr inbounds %struct.loop_data, ptr %12, i64 0, i32 4
  %14 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %13, i32 noundef %0) #18
  %15 = tail call fastcc ptr @loop_outer(ptr noundef %10) #19
  %16 = load ptr, ptr @cfun, align 8, !tbaa !249
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !276
  %19 = getelementptr inbounds %struct.loops, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !277
  %21 = icmp eq ptr %15, %20
  br i1 %21, label %22, label %9, !llvm.loop !394

22:                                               ; preds = %9, %1
  %23 = tail call i32 @bitmap_bit_p(ptr noundef nonnull @curr_regs_live, i32 noundef %0) #18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull @curr_regs_live, i32 noundef %0) #18
  tail call fastcc void @change_pressure(i32 noundef %0, i8 noundef zeroext 1) #19
  br label %27

27:                                               ; preds = %22, %25
  ret void
}

; Function Attrs: optsize
declare i32 @reg_cover_class(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !301 !PGOFuncName !395 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #5 !prof !301 !PGOFuncName !396 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !249
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !276
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !305

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !397
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #19
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #8 !prof !330 !PGOFuncName !398 {
  %3 = load i32, ptr %0, align 4, !tbaa !399
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !399
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !244
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_inv_motion_data() unnamed_addr #0 !prof !321 !PGOFuncName !401 {
  store i32 1, ptr @actual_stamp, align 4, !tbaa !244
  %1 = tail call fastcc ptr @VEC_invariant_p_heap_alloc() #19
  store ptr %1, ptr @invariants, align 8, !tbaa !249
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_invariants(ptr noundef %0) unnamed_addr #0 !prof !321 !PGOFuncName !402 {
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %4 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %6 = tail call ptr @get_loop_body_in_dom_order(ptr noundef %0) #18
  tail call fastcc void @find_exits(ptr noundef %0, ptr noundef %6, ptr noundef %2, ptr noundef %4) #19
  tail call fastcc void @compute_always_reached(ptr noundef %0, ptr noundef %6, ptr noundef %2, ptr noundef %3) #19
  tail call fastcc void @compute_always_reached(ptr noundef %0, ptr noundef %6, ptr noundef %4, ptr noundef %5) #19
  tail call fastcc void @find_defs(ptr noundef %0, ptr noundef %6) #19
  tail call fastcc void @find_invariants_body(ptr noundef %0, ptr noundef %6, ptr noundef %3, ptr noundef %5) #19
  tail call fastcc void @merge_identical_invariants() #19
  tail call void @bitmap_obstack_free(ptr noundef %3) #18
  tail call void @bitmap_obstack_free(ptr noundef %5) #18
  tail call void @bitmap_obstack_free(ptr noundef %2) #18
  tail call void @bitmap_obstack_free(ptr noundef %4) #18
  tail call void @free(ptr noundef %6) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_invariants_to_move(i8 noundef zeroext %0) unnamed_addr #0 !prof !321 !PGOFuncName !403 {
  %2 = alloca [27 x i32], align 16
  %3 = alloca [27 x i32], align 16
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  store ptr null, ptr %4, align 8, !tbaa !249
  %5 = load ptr, ptr @invariants, align 8
  %6 = tail call fastcc i32 @VEC_invariant_p_base_length(ptr noundef %5) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %89, label %8, !prof !404

8:                                                ; preds = %1
  %9 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !244
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %39, !prof !405

11:                                               ; preds = %8
  %12 = load ptr, ptr @df, align 8, !tbaa !249
  %13 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 4, !tbaa !406
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %45, label %16, !prof !409

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !410
  %19 = getelementptr inbounds %struct.df, ptr %12, i64 0, i32 6
  %20 = zext i32 %14 to i64
  br label %21

21:                                               ; preds = %16, %34
  %22 = phi i64 [ 0, %16 ], [ %36, %34 ]
  %23 = phi i32 [ 2, %16 ], [ %35, %34 ]
  %24 = getelementptr inbounds ptr, ptr %18, i64 %22
  %25 = load ptr, ptr %24, align 8, !tbaa !249
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %34, !prof !411

27:                                               ; preds = %21
  %28 = load ptr, ptr %19, align 8, !tbaa !412
  %29 = getelementptr inbounds ptr, ptr %28, i64 %22
  %30 = load ptr, ptr %29, align 8, !tbaa !249
  %31 = icmp ne ptr %30, null
  %32 = zext i1 %31 to i32
  %33 = add i32 %23, %32
  br label %34

34:                                               ; preds = %27, %21
  %35 = phi i32 [ %23, %21 ], [ %33, %27 ]
  %36 = add nuw nsw i64 %22, 1
  %37 = icmp eq i64 %36, %20
  br i1 %37, label %38, label %21, !prof !413, !llvm.loop !414

38:                                               ; preds = %34
  br i1 %10, label %45, label %39, !prof !415

39:                                               ; preds = %8, %38
  %40 = phi i32 [ %35, %38 ], [ 0, %8 ]
  %41 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !244
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %39
  %44 = zext nneg i32 %41 to i64
  br label %47

45:                                               ; preds = %11, %38
  %46 = phi i32 [ %35, %38 ], [ 2, %11 ]
  store i32 0, ptr %2, align 16, !tbaa !244
  store i32 0, ptr %3, align 16, !tbaa !244
  br label %55

47:                                               ; preds = %43, %47
  %48 = phi i64 [ 0, %43 ], [ %53, %47 ]
  %49 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !244
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [27 x i32], ptr %3, i64 0, i64 %51
  store i32 0, ptr %52, align 4, !tbaa !244
  %53 = add nuw nsw i64 %48, 1
  %54 = icmp eq i64 %53, %44
  br i1 %54, label %55, label %47, !llvm.loop !416

55:                                               ; preds = %47, %39, %45
  %56 = phi i32 [ %40, %39 ], [ %46, %45 ], [ %40, %47 ]
  %57 = call fastcc i32 @best_gain_for_invariant(ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %56, i8 noundef zeroext %0) #19, !range !417
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %89, label %59, !prof !418

59:                                               ; preds = %55, %86
  %60 = phi i32 [ %87, %86 ], [ %57, %55 ]
  %61 = load ptr, ptr %4, align 8, !tbaa !249
  %62 = load i32, ptr %61, align 8, !tbaa !419
  tail call fastcc void @set_move_mark(i32 noundef %62, i32 noundef %60) #19
  %63 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !244
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65, !prof !421

65:                                               ; preds = %59
  %66 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !244
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %65
  %69 = zext nneg i32 %66 to i64
  br label %74

70:                                               ; preds = %59
  %71 = load i32, ptr %2, align 16, !tbaa !244
  %72 = load i32, ptr %3, align 16, !tbaa !244
  %73 = add i32 %72, %71
  store i32 %73, ptr %3, align 16, !tbaa !244
  br label %86

74:                                               ; preds = %68, %74
  %75 = phi i64 [ 0, %68 ], [ %84, %74 ]
  %76 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !244
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds [27 x i32], ptr %2, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !244
  %81 = getelementptr inbounds [27 x i32], ptr %3, i64 0, i64 %78
  %82 = load i32, ptr %81, align 4, !tbaa !244
  %83 = add i32 %82, %80
  store i32 %83, ptr %81, align 4, !tbaa !244
  %84 = add nuw nsw i64 %75, 1
  %85 = icmp eq i64 %84, %69
  br i1 %85, label %86, label %74, !llvm.loop !422

86:                                               ; preds = %74, %65, %70
  %87 = call fastcc i32 @best_gain_for_invariant(ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef %56, i8 noundef zeroext %0) #19, !range !417
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %59, !prof !423, !llvm.loop !424

89:                                               ; preds = %86, %55, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @optimize_loop_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_invariants(ptr noundef %0) unnamed_addr #0 !prof !321 !PGOFuncName !425 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %3 = load ptr, ptr @invariants, align 8
  %4 = call fastcc i32 @VEC_invariant_p_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #19, !range !325
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6, !prof !426

6:                                                ; preds = %1, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %1 ]
  %8 = tail call fastcc zeroext i8 @move_invariant_reg(ptr noundef %0, i32 noundef %7) #19, !range !284
  %9 = add i32 %7, 1
  %10 = load ptr, ptr @invariants, align 8
  %11 = call fastcc i32 @VEC_invariant_p_base_iterate(ptr noundef %10, i32 noundef %9, ptr noundef nonnull %2) #19, !range !325
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %6, !prof !427, !llvm.loop !428

13:                                               ; preds = %6, %1
  %14 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !244
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %46, label %16, !prof !429

16:                                               ; preds = %13
  %17 = tail call zeroext i8 @resize_reg_info() #18
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %46, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr @invariants, align 8
  %21 = call fastcc i32 @VEC_invariant_p_base_iterate(ptr noundef %20, i32 noundef 0, ptr noundef nonnull %2) #19, !range !325
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %46, label %23

23:                                               ; preds = %19, %41
  %24 = phi i32 [ %42, %41 ], [ 0, %19 ]
  %25 = load ptr, ptr %2, align 8, !tbaa !249
  %26 = getelementptr inbounds %struct.invariant, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !430
  %28 = icmp eq ptr %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.invariant, ptr %25, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !431
  %32 = icmp sgt i32 %31, -1
  %33 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %27) #19
  br i1 %32, label %34, label %40

34:                                               ; preds = %29
  %35 = tail call i32 @reg_preferred_class(i32 noundef %31) #18
  %36 = load i32, ptr %30, align 8, !tbaa !431
  %37 = tail call i32 @reg_alternate_class(i32 noundef %36) #18
  %38 = load i32, ptr %30, align 8, !tbaa !431
  %39 = tail call i32 @reg_cover_class(i32 noundef %38) #18
  tail call void @setup_reg_classes(i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39) #18
  br label %41

40:                                               ; preds = %29
  tail call void @setup_reg_classes(i32 noundef %33, i32 noundef 13, i32 noundef 0, i32 noundef 13) #18
  br label %41

41:                                               ; preds = %23, %40, %34
  %42 = add i32 %24, 1
  %43 = load ptr, ptr @invariants, align 8
  %44 = call fastcc i32 @VEC_invariant_p_base_iterate(ptr noundef %43, i32 noundef %42, ptr noundef nonnull %2) #19, !range !325
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %23, !llvm.loop !432

46:                                               ; preds = %41, %19, %16, %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_inv_motion_data() unnamed_addr #0 !prof !321 !PGOFuncName !433 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  tail call fastcc void @check_invariant_table_size() #19
  %2 = load ptr, ptr @df, align 8, !tbaa !249
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 3, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !434
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6, !prof !426

6:                                                ; preds = %0
  %7 = load ptr, ptr @invariant_table, align 8, !tbaa !249
  br label %13

8:                                                ; preds = %30, %0
  %9 = phi ptr [ undef, %0 ], [ %18, %30 ]
  store ptr %9, ptr %1, align 8, !tbaa !249
  %10 = load ptr, ptr @invariants, align 8
  %11 = call fastcc i32 @VEC_invariant_p_base_iterate(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %1) #19, !range !325
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %47, label %38, !prof !426

13:                                               ; preds = %6, %30
  %14 = phi ptr [ %2, %6 ], [ %31, %30 ]
  %15 = phi ptr [ %7, %6 ], [ %32, %30 ]
  %16 = phi i64 [ 0, %6 ], [ %33, %30 ]
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !249
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20, !prof !435

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.invariant, ptr %18, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !436
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25, !prof !437

24:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1533, ptr noundef nonnull @.str.8) #18
  br label %25

25:                                               ; preds = %20, %24
  %26 = load ptr, ptr %22, align 8, !tbaa !438
  tail call fastcc void @free_use_list(ptr noundef %26) #19
  tail call void @free(ptr noundef %22) #19
  %27 = load ptr, ptr @invariant_table, align 8, !tbaa !249
  %28 = getelementptr inbounds ptr, ptr %27, i64 %16
  store ptr null, ptr %28, align 8, !tbaa !249
  %29 = load ptr, ptr @df, align 8, !tbaa !249
  br label %30

30:                                               ; preds = %13, %25
  %31 = phi ptr [ %14, %13 ], [ %29, %25 ]
  %32 = phi ptr [ %15, %13 ], [ %27, %25 ]
  %33 = add nuw nsw i64 %16, 1
  %34 = getelementptr inbounds %struct.df, ptr %31, i64 0, i32 3, i32 4
  %35 = load i32, ptr %34, align 4, !tbaa !434
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %13, label %8, !prof !440, !llvm.loop !441

38:                                               ; preds = %8, %38
  %39 = phi i32 [ %43, %38 ], [ 0, %8 ]
  %40 = load ptr, ptr %1, align 8, !tbaa !249
  %41 = getelementptr inbounds %struct.invariant, ptr %40, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !442
  tail call void @bitmap_obstack_free(ptr noundef %42) #18
  tail call void @free(ptr noundef %40) #19
  %43 = add i32 %39, 1
  %44 = load ptr, ptr @invariants, align 8
  %45 = call fastcc i32 @VEC_invariant_p_base_iterate(ptr noundef %44, i32 noundef %43, ptr noundef nonnull %1) #19, !range !325
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %38, !prof !427, !llvm.loop !443

47:                                               ; preds = %38, %8
  tail call fastcc void @VEC_invariant_p_heap_free() #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_invariant_p_heap_alloc() unnamed_addr #0 !prof !321 !PGOFuncName !444 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 100) #18
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_loop_body_in_dom_order(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_exits(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !321 !PGOFuncName !445 {
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  %7 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !252
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %117, label %10, !prof !426

10:                                               ; preds = %4
  %11 = getelementptr inbounds i8, ptr %5, i64 8
  br label %12

12:                                               ; preds = %10, %110
  %13 = phi i64 [ 0, %10 ], [ %113, %110 ]
  %14 = phi ptr [ %0, %10 ], [ %112, %110 ]
  %15 = phi i8 [ 0, %10 ], [ %111, %110 ]
  %16 = getelementptr inbounds ptr, ptr %1, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !249
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !275
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %21, label %80, !prof !446

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !286
  %24 = load ptr, ptr %23, align 8, !tbaa !286
  %25 = icmp eq ptr %24, null
  br i1 %25, label %52, label %26, !prof !447

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.rtl_bb_info, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !287
  %29 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !286
  br label %31

31:                                               ; preds = %26, %48
  %32 = phi ptr [ %24, %26 ], [ %50, %48 ]
  %33 = icmp eq ptr %32, %30
  br i1 %33, label %52, label %34, !prof !448

34:                                               ; preds = %31
  %35 = load i32, ptr %32, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %48, !prof !449

38:                                               ; preds = %34
  %39 = and i32 %35, 33554432
  %40 = icmp ne i32 %39, 0
  %41 = and i32 %35, -2080374784
  %42 = icmp eq i32 %41, 0
  %43 = or i1 %40, %42
  br i1 %43, label %44, label %48, !prof !450

44:                                               ; preds = %38
  %45 = trunc i64 %13 to i32
  %46 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %45) #18
  %47 = load ptr, ptr %16, align 8, !tbaa !249
  br label %52

48:                                               ; preds = %38, %34
  %49 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1, i32 0, i32 0, i64 2
  %50 = load ptr, ptr %49, align 8, !tbaa !286
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %31, !prof !451, !llvm.loop !452

52:                                               ; preds = %31, %48, %21, %44
  %53 = phi ptr [ %47, %44 ], [ %17, %21 ], [ %17, %48 ], [ %17, %31 ]
  %54 = phi i8 [ 1, %44 ], [ %15, %21 ], [ %15, %48 ], [ %15, %31 ]
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 1
  %56 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %55) #19
  store i32 0, ptr %5, align 8, !tbaa.struct !453
  store ptr %56, ptr %11, align 8, !tbaa.struct !454
  %57 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %56, ptr noundef nonnull %6) #19, !range !284
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %110, label %59, !prof !455

59:                                               ; preds = %52, %74
  %60 = phi ptr [ %75, %74 ], [ %14, %52 ]
  %61 = load ptr, ptr %6, align 8, !tbaa !249
  %62 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !456
  %64 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %63) #18
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %74, !prof !458

66:                                               ; preds = %59
  %67 = trunc i64 %13 to i32
  %68 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %67) #18
  %69 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %67) #18
  %70 = load ptr, ptr %62, align 8, !tbaa !456
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !275
  %73 = tail call ptr @find_common_loop(ptr noundef %60, ptr noundef %72) #18
  br label %74

74:                                               ; preds = %59, %66
  %75 = phi ptr [ %60, %59 ], [ %73, %66 ]
  call fastcc void @ei_next(ptr noundef nonnull %5) #19
  %76 = load i32, ptr %5, align 8
  %77 = load ptr, ptr %11, align 8
  %78 = call fastcc zeroext i8 @ei_cond(i32 %76, ptr %77, ptr noundef nonnull %6) #19, !range !284
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %110, label %59, !prof !459, !llvm.loop !460

80:                                               ; preds = %12
  %81 = getelementptr inbounds %struct.loop, ptr %19, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !296
  %83 = icmp eq ptr %82, %17
  br i1 %83, label %84, label %110, !prof !461

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.loop, ptr %19, i64 0, i32 10
  %86 = load ptr, ptr %85, align 8, !tbaa !266
  %87 = getelementptr inbounds %struct.loop_data, ptr %86, i64 0, i32 1
  %88 = load i8, ptr %87, align 8, !tbaa !462
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %98, label %90, !prof !464

90:                                               ; preds = %84
  %91 = trunc i64 %13 to i32
  %92 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %91) #18
  %93 = load ptr, ptr %16, align 8, !tbaa !249
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %93, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !275
  %96 = getelementptr inbounds %struct.loop, ptr %95, i64 0, i32 10
  %97 = load ptr, ptr %96, align 8, !tbaa !266
  br label %98

98:                                               ; preds = %90, %84
  %99 = phi ptr [ %97, %90 ], [ %86, %84 ]
  %100 = phi i8 [ 1, %90 ], [ %15, %84 ]
  %101 = load ptr, ptr %99, align 8, !tbaa !465
  %102 = icmp eq ptr %101, %0
  br i1 %102, label %110, label %103, !prof !466

103:                                              ; preds = %98
  %104 = trunc i64 %13 to i32
  %105 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %104) #18
  %106 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %104) #18
  %107 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %101, ptr noundef %14) #18
  %108 = icmp eq i8 %107, 0
  %109 = select i1 %108, ptr %14, ptr %101, !prof !467
  br label %110

110:                                              ; preds = %74, %52, %103, %98, %80
  %111 = phi i8 [ %15, %80 ], [ %100, %98 ], [ %100, %103 ], [ %54, %52 ], [ %54, %74 ]
  %112 = phi ptr [ %14, %80 ], [ %14, %98 ], [ %109, %103 ], [ %14, %52 ], [ %75, %74 ]
  %113 = add nuw nsw i64 %13, 1
  %114 = load i32, ptr %7, align 4, !tbaa !252
  %115 = zext i32 %114 to i64
  %116 = icmp ult i64 %113, %115
  br i1 %116, label %12, label %117, !prof !468, !llvm.loop !469

117:                                              ; preds = %110, %4
  %118 = phi i8 [ 0, %4 ], [ %111, %110 ]
  %119 = phi ptr [ %0, %4 ], [ %112, %110 ]
  %120 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 10
  %121 = load ptr, ptr %120, align 8, !tbaa !266
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %129, !prof !429

123:                                              ; preds = %117
  %124 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 184) #18
  store ptr %124, ptr %120, align 8, !tbaa !266
  %125 = getelementptr inbounds %struct.loop_data, ptr %124, i64 0, i32 3
  tail call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %125) #19
  %126 = load ptr, ptr %120, align 8, !tbaa !266
  %127 = getelementptr inbounds %struct.loop_data, ptr %126, i64 0, i32 4
  tail call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %127) #19
  %128 = load ptr, ptr %120, align 8, !tbaa !266
  br label %129

129:                                              ; preds = %123, %117
  %130 = phi ptr [ %128, %123 ], [ %121, %117 ]
  store ptr %119, ptr %130, align 8, !tbaa !465
  %131 = getelementptr inbounds %struct.loop_data, ptr %130, i64 0, i32 1
  store i8 %118, ptr %131, align 8, !tbaa !462
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_always_reached(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !330 !PGOFuncName !470 {
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !252
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8, !prof !471

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  br label %15

10:                                               ; preds = %25
  %11 = add nuw nsw i64 %16, 1
  %12 = load i32, ptr %5, align 4, !tbaa !252
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %28, !prof !472, !llvm.loop !473

15:                                               ; preds = %8, %10
  %16 = phi i64 [ 0, %8 ], [ %11, %10 ]
  %17 = load ptr, ptr %9, align 8, !tbaa !474
  %18 = getelementptr inbounds ptr, ptr %1, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !249
  %20 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %17, ptr noundef %19) #18
  %21 = icmp eq i8 %20, 0
  %22 = trunc i64 %16 to i32
  br i1 %21, label %25, label %23, !prof !475

23:                                               ; preds = %15
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %22) #18
  br label %25

25:                                               ; preds = %15, %23
  %26 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %22) #18
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %10, label %28, !prof !476

28:                                               ; preds = %25, %10, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_defs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !321 !PGOFuncName !477 {
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !252
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %18, label %7, !prof !426

7:                                                ; preds = %2, %7
  %8 = phi i64 [ %14, %7 ], [ 0, %2 ]
  %9 = getelementptr inbounds ptr, ptr %1, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !249
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !279
  %13 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %3, i32 noundef %12) #18
  %14 = add nuw nsw i64 %8, 1
  %15 = load i32, ptr %4, align 4, !tbaa !252
  %16 = zext i32 %15 to i64
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %7, label %18, !prof !468, !llvm.loop !478

18:                                               ; preds = %7, %2
  %19 = load ptr, ptr @df, align 8, !tbaa !249
  %20 = getelementptr inbounds %struct.df, ptr %19, i64 0, i32 1, i64 4
  %21 = load ptr, ptr %20, align 8, !tbaa !249
  tail call void @df_remove_problem(ptr noundef %21) #18
  tail call void @df_process_deferred_rescans() #18
  tail call void @df_chain_add_problem(i32 noundef 2) #18
  tail call void @df_set_blocks(ptr noundef %3) #18
  tail call void @df_analyze() #18
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24, !prof !429

24:                                               ; preds = %18
  tail call void @df_dump_region(ptr noundef nonnull %22) #18
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %26 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 41, i64 1, ptr %25)
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %28 = tail call ptr @get_insns() #18
  tail call void @print_rtl_with_bb(ptr noundef %27, ptr noundef %28) #18
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %30 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 39, i64 1, ptr %29)
  br label %31

31:                                               ; preds = %24, %18
  tail call fastcc void @check_invariant_table_size() #19
  tail call void @bitmap_obstack_free(ptr noundef %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_invariants_body(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !321 !PGOFuncName !479 {
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !252
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8, !prof !426

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %17, %8 ], [ 0, %4 ]
  %10 = getelementptr inbounds ptr, ptr %1, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !249
  %12 = trunc i64 %9 to i32
  %13 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef %12) #18
  %14 = trunc i32 %13 to i8
  %15 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %12) #18
  %16 = trunc i32 %15 to i8
  tail call fastcc void @find_invariants_bb(ptr noundef %11, i8 noundef zeroext %14, i8 noundef zeroext %16) #19
  %17 = add nuw nsw i64 %9, 1
  %18 = load i32, ptr %5, align 4, !tbaa !252
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %8, label %21, !prof !468, !llvm.loop !480

21:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_identical_invariants() unnamed_addr #0 !prof !321 !PGOFuncName !481 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  %2 = load ptr, ptr @invariants, align 8
  %3 = tail call fastcc i32 @VEC_invariant_p_base_length(ptr noundef %2) #19
  %4 = zext i32 %3 to i64
  %5 = tail call ptr @htab_create(i64 noundef %4, ptr noundef nonnull @hash_invariant_expr, ptr noundef nonnull @eq_invariant_expr, ptr noundef nonnull @free) #18
  %6 = load ptr, ptr @invariants, align 8
  %7 = call fastcc i32 @VEC_invariant_p_base_iterate(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %1) #19, !range !325
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9, !prof !426

9:                                                ; preds = %0, %9
  %10 = phi i32 [ %12, %9 ], [ 0, %0 ]
  %11 = load ptr, ptr %1, align 8, !tbaa !249
  tail call fastcc void @find_identical_invariants(ptr noundef %5, ptr noundef %11) #19
  %12 = add i32 %10, 1
  %13 = load ptr, ptr @invariants, align 8
  %14 = call fastcc i32 @VEC_invariant_p_base_iterate(ptr noundef %13, i32 noundef %12, ptr noundef nonnull %1) #19, !range !325
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %9, !prof !427, !llvm.loop !482

16:                                               ; preds = %9, %0
  tail call void @htab_delete(ptr noundef %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #11 !prof !483 !PGOFuncName !484 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !485 !PGOFuncName !486 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !284
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !487

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !249
  ret i8 %10
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_common_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !488 !PGOFuncName !489 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !490

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #19
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #19
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !491

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 738, ptr noundef nonnull @.str.8) #18
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !492
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !492
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @flow_loop_nested_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !485 !PGOFuncName !494 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !495

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #19
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !488 !PGOFuncName !496 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !490

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #19
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !497 !PGOFuncName !498 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !499

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !500
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !502 !PGOFuncName !503 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !504

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 687, ptr noundef nonnull @.str.8) #18
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !249
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !488 !PGOFuncName !505 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !249
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_remove_problem(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_process_deferred_rescans() local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_chain_add_problem(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_set_blocks(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @df_dump_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_rtl_with_bb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_invariant_table_size() unnamed_addr #0 !prof !506 !PGOFuncName !507 {
  %1 = load i32, ptr @invariant_table_size, align 4, !tbaa !244
  %2 = load ptr, ptr @df, align 8, !tbaa !249
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 3, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !434
  %5 = icmp ult i32 %1, %4
  br i1 %5, label %6, label %19, !prof !508

6:                                                ; preds = %0
  %7 = lshr i32 %4, 2
  %8 = add i32 %7, %4
  %9 = load ptr, ptr @invariant_table, align 8, !tbaa !249
  %10 = zext i32 %8 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = tail call ptr @xrealloc(ptr noundef %9, i64 noundef %11) #18
  store ptr %12, ptr @invariant_table, align 8, !tbaa !249
  %13 = load i32, ptr @invariant_table_size, align 4, !tbaa !244
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  %16 = sub i32 %8, %13
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 %18, i1 false)
  store i32 %8, ptr @invariant_table_size, align 4, !tbaa !244
  br label %19

19:                                               ; preds = %6, %0
  ret void
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_invariants_bb(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !509 !PGOFuncName !510 {
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !286
  %6 = load ptr, ptr %5, align 8, !tbaa !286
  %7 = icmp eq ptr %6, null
  br i1 %7, label %40, label %8, !prof !511

8:                                                ; preds = %3, %35
  %9 = phi ptr [ %38, %35 ], [ %6, %3 ]
  %10 = phi i8 [ %36, %35 ], [ %1, %3 ]
  %11 = load ptr, ptr %4, align 8, !tbaa !286
  %12 = getelementptr inbounds %struct.rtl_bb_info, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !287
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !286
  %16 = icmp eq ptr %9, %15
  br i1 %16, label %40, label %17, !prof !512

17:                                               ; preds = %8
  %18 = load i32, ptr %9, align 8
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -11
  %21 = icmp ult i32 %20, -3
  br i1 %21, label %35, label %22, !prof !513

22:                                               ; preds = %17
  tail call fastcc void @find_invariants_insn(ptr noundef nonnull %9, i8 noundef zeroext %10, i8 noundef zeroext %2) #19
  %23 = icmp eq i8 %10, 0
  br i1 %23, label %35, label %24, !prof !514

24:                                               ; preds = %22
  %25 = load i32, ptr %9, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %35, !prof !515

28:                                               ; preds = %24
  %29 = and i32 %25, 33554432
  %30 = icmp ne i32 %29, 0
  %31 = and i32 %25, -2080374784
  %32 = icmp eq i32 %31, 0
  %33 = or i1 %30, %32
  %34 = select i1 %33, i8 0, i8 %10, !prof !516
  br label %35

35:                                               ; preds = %28, %17, %22, %24
  %36 = phi i8 [ %10, %24 ], [ 0, %22 ], [ %10, %17 ], [ %34, %28 ]
  %37 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %38 = load ptr, ptr %37, align 8, !tbaa !286
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %8, !prof !517, !llvm.loop !518

40:                                               ; preds = %8, %35, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_invariants_insn(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !519 !PGOFuncName !520 {
  tail call fastcc void @find_invariant_insn(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #19
  tail call fastcc void @record_uses(ptr noundef %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_invariant_insn(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 !prof !519 !PGOFuncName !521 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = add nsw i32 %5, -7
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %8, label %63, !prof !522

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !286
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 23
  br i1 %13, label %17, label %14, !prof !523

14:                                               ; preds = %8
  %15 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %10) #18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %63, label %17, !prof !415

17:                                               ; preds = %8, %14
  %18 = phi ptr [ %15, %14 ], [ %10, %8 ]
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !286
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 37
  br i1 %23, label %24, label %27, !prof !524

24:                                               ; preds = %17
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %20) #19
  %26 = icmp ult i32 %25, 53
  br i1 %26, label %27, label %28, !prof !525

27:                                               ; preds = %24, %17
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i1 [ true, %27 ], [ false, %24 ]
  %30 = tail call fastcc zeroext i8 @may_assign_reg_p(ptr noundef nonnull %20) #19, !range !284
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %63, label %32, !prof !526

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %34 = load ptr, ptr %33, align 8, !tbaa !286
  %35 = tail call fastcc zeroext i8 @check_maybe_invariant(ptr noundef %34) #19, !range !284
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %63, label %37, !prof !527

37:                                               ; preds = %32
  %38 = tail call zeroext i8 @can_throw_internal(ptr noundef nonnull %0) #18
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %63, !prof !528

40:                                               ; preds = %37
  %41 = load ptr, ptr %9, align 8, !tbaa !286
  %42 = tail call i32 @may_trap_or_fault_p(ptr noundef %41) #18
  %43 = icmp eq i32 %42, 0
  %44 = icmp ne i8 %1, 0
  %45 = or i1 %44, %43
  br i1 %45, label %46, label %63, !prof !529

46:                                               ; preds = %40
  %47 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %48 = tail call fastcc zeroext i8 @check_dependencies(ptr noundef nonnull %0, ptr noundef %47) #19, !range !284
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %51, !prof !530

50:                                               ; preds = %46
  tail call void @bitmap_obstack_free(ptr noundef %47) #18
  br label %63

51:                                               ; preds = %46
  br i1 %29, label %52, label %54, !prof !531

52:                                               ; preds = %51
  %53 = tail call fastcc ptr @create_new_invariant(ptr noundef null, ptr noundef nonnull %0, ptr noundef %47, i8 noundef zeroext %2) #19
  br label %63

54:                                               ; preds = %51
  %55 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #18
  %56 = tail call fastcc ptr @create_new_invariant(ptr noundef %55, ptr noundef nonnull %0, ptr noundef %47, i8 noundef zeroext %2) #19
  %57 = tail call ptr @df_find_def(ptr noundef nonnull %0, ptr noundef nonnull %20) #18
  tail call fastcc void @check_invariant_table_size() #19
  %58 = load ptr, ptr @invariant_table, align 8, !tbaa !249
  %59 = getelementptr inbounds %struct.df_base_ref, ptr %57, i64 0, i32 7
  %60 = load i32, ptr %59, align 4, !tbaa !286
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds ptr, ptr %58, i64 %61
  store ptr %56, ptr %62, align 8, !tbaa !249
  br label %63

63:                                               ; preds = %3, %52, %54, %40, %37, %28, %32, %14, %50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_uses(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !519 !PGOFuncName !532 {
  %2 = load ptr, ptr @df, align 8, !tbaa !249
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !533
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !286
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !249
  %10 = getelementptr inbounds %struct.df_insn_info, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !534
  %12 = load ptr, ptr %11, align 8, !tbaa !249
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14, !prof !536

14:                                               ; preds = %1, %22
  %15 = phi ptr [ %24, %22 ], [ %12, %1 ]
  %16 = phi ptr [ %23, %22 ], [ %11, %1 ]
  %17 = tail call fastcc ptr @invariant_for_use(ptr noundef nonnull %15) #19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19, !prof !537

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.invariant, ptr %17, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !436
  tail call fastcc void @record_use(ptr noundef %21, ptr noundef nonnull %15) #19
  br label %22

22:                                               ; preds = %19, %14
  %23 = getelementptr inbounds ptr, ptr %16, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !249
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %14, !prof !538, !llvm.loop !539

26:                                               ; preds = %22, %1
  %27 = getelementptr inbounds %struct.df_insn_info, ptr %9, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !540
  %29 = load ptr, ptr %28, align 8, !tbaa !249
  %30 = icmp eq ptr %29, null
  br i1 %30, label %43, label %31, !prof !541

31:                                               ; preds = %26, %39
  %32 = phi ptr [ %41, %39 ], [ %29, %26 ]
  %33 = phi ptr [ %40, %39 ], [ %28, %26 ]
  %34 = tail call fastcc ptr @invariant_for_use(ptr noundef nonnull %32) #19
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36, !prof !542

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.invariant, ptr %34, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !436
  tail call fastcc void @record_use(ptr noundef %38, ptr noundef nonnull %32) #19
  br label %39

39:                                               ; preds = %36, %31
  %40 = getelementptr inbounds ptr, ptr %33, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !249
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %31, !prof !543, !llvm.loop !544

43:                                               ; preds = %39, %26
  ret void
}

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @may_assign_reg_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !545 !PGOFuncName !546 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 255
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %22, label %6, !prof !547

6:                                                ; preds = %1
  %7 = tail call zeroext i8 @can_copy_p(i32 noundef %4) #18
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %22, label %9, !prof !548

9:                                                ; preds = %6
  %10 = load i32, ptr %0, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 37
  br i1 %12, label %13, label %22, !prof !549

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #19
  %15 = icmp ult i32 %14, 53
  br i1 %15, label %16, label %22, !prof !550

16:                                               ; preds = %13
  %17 = zext nneg i32 %14 to i64
  %18 = getelementptr inbounds [53 x i32], ptr @regclass_map, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !244
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %1, %9, %13, %16, %6
  %23 = phi i8 [ 0, %6 ], [ 1, %13 ], [ 1, %9 ], [ %21, %16 ], [ 0, %1 ]
  ret i8 %23
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @check_maybe_invariant(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !551 !PGOFuncName !552 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = trunc i32 %2 to i16
  switch i16 %4, label %12 [
    i16 30, label %50
    i16 32, label %50
    i16 31, label %50
    i16 45, label %50
    i16 35, label %50
    i16 44, label %50
    i16 36, label %5
    i16 46, label %5
    i16 19, label %5
    i16 26, label %5
    i16 37, label %50
    i16 43, label %6
    i16 17, label %9
  ], !prof !553

5:                                                ; preds = %1, %1, %1, %1
  br label %50

6:                                                ; preds = %1
  %7 = and i32 %2, 201326592
  %8 = icmp eq i32 %7, 67108864
  br i1 %8, label %12, label %50, !prof !554

9:                                                ; preds = %1
  %10 = and i32 %2, 134217728
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %6, %1, %9
  %13 = zext nneg i32 %3 to i64
  %14 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !249
  %16 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %13
  %17 = load i8, ptr %16, align 1, !tbaa !286
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %50, label %19, !prof !555

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %21 = zext i8 %17 to i64
  br label %22

22:                                               ; preds = %19, %48
  %23 = phi i64 [ %21, %19 ], [ %24, %48 ]
  %24 = add nsw i64 %23, -1
  %25 = getelementptr inbounds i8, ptr %15, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !286
  switch i8 %26, label %48 [
    i8 101, label %34
    i8 69, label %27
  ], !prof !556

27:                                               ; preds = %22
  %28 = getelementptr inbounds [1 x %union.rtunion_def], ptr %20, i64 0, i64 %24
  %29 = load ptr, ptr %28, align 8, !tbaa !286
  %30 = load i32, ptr %29, align 8, !tbaa !372
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = zext nneg i32 %30 to i64
  br label %42

34:                                               ; preds = %22
  %35 = getelementptr inbounds [1 x %union.rtunion_def], ptr %20, i64 0, i64 %24
  %36 = load ptr, ptr %35, align 8, !tbaa !286
  %37 = tail call fastcc zeroext i8 @check_maybe_invariant(ptr noundef %36) #19, !range !284
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %50, label %48, !prof !557

39:                                               ; preds = %42
  %40 = add nuw nsw i64 %43, 1
  %41 = icmp eq i64 %40, %33
  br i1 %41, label %48, label %42, !llvm.loop !558

42:                                               ; preds = %32, %39
  %43 = phi i64 [ 0, %32 ], [ %40, %39 ]
  %44 = getelementptr inbounds %struct.rtvec_def, ptr %29, i64 0, i32 1, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !249
  %46 = tail call fastcc zeroext i8 @check_maybe_invariant(ptr noundef %45) #19, !range !284
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %50, label %39

48:                                               ; preds = %39, %27, %22, %34
  %49 = icmp sgt i64 %23, 1
  br i1 %49, label %22, label %50, !prof !559, !llvm.loop !560

50:                                               ; preds = %34, %48, %42, %12, %9, %6, %1, %1, %1, %1, %1, %1, %1, %5
  %51 = phi i8 [ 0, %5 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 0, %6 ], [ 0, %9 ], [ 1, %12 ], [ 0, %42 ], [ 0, %34 ], [ 1, %48 ]
  ret i8 %51
}

; Function Attrs: optsize
declare zeroext i8 @can_throw_internal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @may_trap_or_fault_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @check_dependencies(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !561 !PGOFuncName !562 {
  %3 = load ptr, ptr @df, align 8, !tbaa !249
  %4 = getelementptr inbounds %struct.df, ptr %3, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !533
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !286
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !249
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !286
  %13 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !534
  %15 = load ptr, ptr %14, align 8, !tbaa !249
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %21, !prof !563

17:                                               ; preds = %21
  %18 = getelementptr inbounds ptr, ptr %23, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !249
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21, !prof !564, !llvm.loop !565

21:                                               ; preds = %2, %17
  %22 = phi ptr [ %19, %17 ], [ %15, %2 ]
  %23 = phi ptr [ %18, %17 ], [ %14, %2 ]
  %24 = tail call fastcc zeroext i8 @check_dependency(ptr noundef %12, ptr noundef nonnull %22, ptr noundef %1) #19, !range !284
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %40, label %17, !prof !566

26:                                               ; preds = %17, %2
  %27 = getelementptr inbounds %struct.df_insn_info, ptr %10, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !540
  %29 = load ptr, ptr %28, align 8, !tbaa !249
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %35, !prof !567

31:                                               ; preds = %35
  %32 = getelementptr inbounds ptr, ptr %37, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !249
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35, !prof !568, !llvm.loop !569

35:                                               ; preds = %26, %31
  %36 = phi ptr [ %33, %31 ], [ %29, %26 ]
  %37 = phi ptr [ %32, %31 ], [ %28, %26 ]
  %38 = tail call fastcc zeroext i8 @check_dependency(ptr noundef %12, ptr noundef nonnull %36, ptr noundef %1) #19, !range !284
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %31, !prof !570

40:                                               ; preds = %21, %35, %31, %26
  %41 = phi i8 [ 1, %26 ], [ 0, %35 ], [ 1, %31 ], [ 0, %21 ]
  ret i8 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_new_invariant(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !571 !PGOFuncName !572 {
  %5 = tail call ptr @xmalloc(i64 noundef 64) #18
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -7
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %10, label %18, !prof !573

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !286
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 23
  br i1 %15, label %18, label %16, !prof !574

16:                                               ; preds = %10
  %17 = tail call ptr @single_set_2(ptr noundef nonnull %1, ptr noundef nonnull %12) #18
  br label %18

18:                                               ; preds = %4, %10, %16
  %19 = phi ptr [ %17, %16 ], [ null, %4 ], [ %12, %10 ]
  %20 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %21 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !286
  %23 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %22) #18
  %24 = getelementptr inbounds %struct.invariant, ptr %5, i64 0, i32 4
  store ptr %0, ptr %24, align 8, !tbaa !436
  %25 = getelementptr inbounds %struct.invariant, ptr %5, i64 0, i32 6
  store i8 %3, ptr %25, align 8, !tbaa !575
  %26 = getelementptr inbounds %struct.invariant, ptr %5, i64 0, i32 10
  store ptr %2, ptr %26, align 8, !tbaa !442
  %27 = icmp eq ptr %0, null
  br i1 %27, label %37, label %28, !prof !531

28:                                               ; preds = %18
  %29 = tail call i32 @rtx_cost(ptr noundef %19, i32 noundef 23, i8 noundef zeroext %23) #18
  %30 = getelementptr inbounds %struct.invariant, ptr %5, i64 0, i32 9
  store i32 %29, ptr %30, align 4, !tbaa !576
  %31 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !286
  %33 = load i32, ptr @word_mode, align 4, !tbaa !244
  %34 = tail call i32 @address_cost(ptr noundef %32, i32 noundef %33, i8 noundef zeroext 0, i8 noundef zeroext %23) #18
  %35 = icmp slt i32 %34, 3
  %36 = zext i1 %35 to i8
  br label %42

37:                                               ; preds = %18
  %38 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !286
  %40 = tail call i32 @rtx_cost(ptr noundef %39, i32 noundef 23, i8 noundef zeroext %23) #18
  %41 = getelementptr inbounds %struct.invariant, ptr %5, i64 0, i32 9
  store i32 %40, ptr %41, align 4, !tbaa !576
  br label %42

42:                                               ; preds = %37, %28
  %43 = phi i8 [ 0, %37 ], [ %36, %28 ]
  %44 = getelementptr inbounds %struct.invariant, ptr %5, i64 0, i32 8
  store i8 %43, ptr %44, align 2
  %45 = getelementptr inbounds %struct.invariant, ptr %5, i64 0, i32 7
  store i8 0, ptr %45, align 1, !tbaa !577
  %46 = getelementptr inbounds %struct.invariant, ptr %5, i64 0, i32 2
  store ptr null, ptr %46, align 8, !tbaa !430
  %47 = getelementptr inbounds %struct.invariant, ptr %5, i64 0, i32 3
  store i32 -1, ptr %47, align 8, !tbaa !431
  %48 = getelementptr inbounds %struct.invariant, ptr %5, i64 0, i32 11
  store i32 0, ptr %48, align 8, !tbaa !578
  %49 = getelementptr inbounds %struct.invariant, ptr %5, i64 0, i32 5
  store ptr %1, ptr %49, align 8, !tbaa !579
  %50 = load ptr, ptr @invariants, align 8
  %51 = tail call fastcc i32 @VEC_invariant_p_base_length(ptr noundef %50) #19
  store i32 %51, ptr %5, align 8, !tbaa !419
  %52 = getelementptr inbounds %struct.invariant, ptr %5, i64 0, i32 1
  store i32 -1, ptr %52, align 4, !tbaa !580
  br i1 %27, label %55, label %53, !prof !531

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.def, ptr %0, i64 0, i32 3
  store i32 %51, ptr %54, align 8, !tbaa !581
  br label %55

55:                                               ; preds = %53, %42
  tail call fastcc void @VEC_invariant_p_heap_safe_push(ptr noundef nonnull %5) #19
  %56 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58, !prof !582

58:                                               ; preds = %55
  %59 = load i32, ptr %20, align 8, !tbaa !286
  %60 = load i32, ptr %5, align 8, !tbaa !419
  %61 = getelementptr inbounds %struct.invariant, ptr %5, i64 0, i32 9
  %62 = load i32, ptr %61, align 4, !tbaa !576
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %56, ptr noundef nonnull @.str.12, i32 noundef %59, i32 noundef %60, i32 noundef %62) #19
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %65 = load ptr, ptr %26, align 8, !tbaa !442
  tail call void @bitmap_print(ptr noundef %64, ptr noundef %65, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.6) #18
  br label %66

66:                                               ; preds = %58, %55
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @df_find_def(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @can_copy_p(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @check_dependency(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 !prof !583 !PGOFuncName !584 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 2097152
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %49, !prof !585

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.df_base_ref, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !286
  %10 = icmp eq ptr %9, null
  br i1 %10, label %49, label %11, !prof !586

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.df_link, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !587
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %49, !prof !589

15:                                               ; preds = %11
  %16 = load ptr, ptr %9, align 8, !tbaa !590
  tail call fastcc void @check_invariant_table_size() #19
  %17 = load ptr, ptr @invariant_table, align 8, !tbaa !249
  %18 = getelementptr inbounds %struct.df_base_ref, ptr %16, i64 0, i32 7
  %19 = load i32, ptr %18, align 4, !tbaa !286
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds ptr, ptr %17, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !249
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24, !prof !591

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.invariant, ptr %22, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !436
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29, !prof !592

28:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 797, ptr noundef nonnull @.str.8) #18
  br label %29

29:                                               ; preds = %24, %28
  %30 = load i32, ptr %16, align 8
  %31 = and i32 %30, 255
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %35, !prof !592

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.df_artificial_ref, ptr %16, i64 0, i32 1
  br label %40

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.df_base_ref, ptr %16, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !286
  %38 = load ptr, ptr %37, align 8, !tbaa !593
  %39 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1, i32 0, i32 1
  br label %40

40:                                               ; preds = %35, %33
  %41 = phi ptr [ %34, %33 ], [ %39, %35 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !286
  %43 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %0, ptr noundef %42) #18
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45, !prof !594

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.def, ptr %26, i64 0, i32 3
  %47 = load i32, ptr %46, align 8, !tbaa !581
  %48 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %2, i32 noundef %47) #18
  br label %49

49:                                               ; preds = %40, %15, %11, %7, %3, %45
  %50 = phi i8 [ 1, %45 ], [ 0, %3 ], [ 1, %7 ], [ 0, %11 ], [ 0, %15 ], [ 0, %40 ]
  ret i8 %50
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @rtx_cost(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @address_cost(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_invariant_p_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !595 !PGOFuncName !596 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !597

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !598
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_invariant_p_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !571 !PGOFuncName !600 {
  tail call fastcc void @VEC_invariant_p_heap_reserve() #19
  %2 = load ptr, ptr @invariants, align 8, !tbaa !249
  tail call fastcc void @VEC_invariant_p_base_quick_push(ptr noundef %2, ptr noundef %0) #19
  ret void
}

; Function Attrs: optsize
declare void @bitmap_print(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_invariant_p_heap_reserve() unnamed_addr #0 !prof !571 !PGOFuncName !601 {
  %1 = load ptr, ptr @invariants, align 8, !tbaa !249
  %2 = tail call fastcc i32 @VEC_invariant_p_base_space(ptr noundef %1) #19
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !602

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #18
  store ptr %5, ptr @invariants, align 8, !tbaa !249
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_invariant_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #8 !prof !571 !PGOFuncName !603 {
  %3 = load i32, ptr %0, align 8, !tbaa !598
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !598
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_invariant_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !249
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_invariant_p_base_space(ptr noundef readonly %0) unnamed_addr #9 !prof !571 !PGOFuncName !604 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !605

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_invariant_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !606
  %6 = load i32, ptr %0, align 8, !tbaa !598
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @invariant_for_use(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !607 !PGOFuncName !608 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %7, !prof !609

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.df_artificial_ref, ptr %0, i64 0, i32 1
  br label %12

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !286
  %10 = load ptr, ptr %9, align 8, !tbaa !593
  %11 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1, i32 0, i32 1
  br label %12

12:                                               ; preds = %7, %5
  %13 = phi ptr [ %6, %5 ], [ %11, %7 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !286
  %15 = and i32 %2, 2097152
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %56, !prof !610

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.df_base_ref, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !286
  %20 = icmp eq ptr %19, null
  br i1 %20, label %56, label %21, !prof !611

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.df_link, ptr %19, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !587
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %56, !prof !612

25:                                               ; preds = %21
  %26 = load ptr, ptr %19, align 8, !tbaa !590
  tail call fastcc void @check_invariant_table_size() #19
  %27 = load ptr, ptr @invariant_table, align 8, !tbaa !249
  %28 = getelementptr inbounds %struct.df_base_ref, ptr %26, i64 0, i32 7
  %29 = load i32, ptr %28, align 4, !tbaa !286
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %27, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !249
  %33 = icmp eq ptr %32, null
  br i1 %33, label %56, label %34, !prof !613

34:                                               ; preds = %25
  %35 = load i32, ptr %26, align 8
  %36 = and i32 %35, 255
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %40, !prof !614

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.df_artificial_ref, ptr %26, i64 0, i32 1
  br label %45

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.df_base_ref, ptr %26, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !286
  %43 = load ptr, ptr %42, align 8, !tbaa !593
  %44 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1, i32 0, i32 1
  br label %45

45:                                               ; preds = %40, %38
  %46 = phi ptr [ %39, %38 ], [ %44, %40 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !286
  %48 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %14, ptr noundef %47) #18
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %56, label %50, !prof !615

50:                                               ; preds = %45
  %51 = load ptr, ptr @invariant_table, align 8, !tbaa !249
  %52 = load i32, ptr %28, align 4, !tbaa !286
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %51, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !249
  br label %56

56:                                               ; preds = %45, %25, %17, %21, %12, %50
  %57 = phi ptr [ %55, %50 ], [ null, %12 ], [ null, %21 ], [ null, %17 ], [ null, %25 ], [ null, %45 ]
  ret ptr %57
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !616 !PGOFuncName !617 {
  %3 = tail call ptr @xmalloc(i64 noundef 32) #18
  %4 = getelementptr inbounds %struct.df_regular_ref, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !286
  %6 = load ptr, ptr %5, align 8, !tbaa !249
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %8, 39
  br i1 %9, label %10, label %12, !prof !618

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi ptr [ %11, %10 ], [ %5, %2 ]
  store ptr %13, ptr %3, align 8, !tbaa !619
  %14 = getelementptr inbounds %struct.df_base_ref, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !286
  %16 = load ptr, ptr %15, align 8, !tbaa !593
  %17 = getelementptr inbounds %struct.use, ptr %3, i64 0, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !621
  %18 = load i32, ptr %1, align 8
  %19 = and i32 %18, 65024
  %20 = icmp eq i32 %19, 512
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds %struct.use, ptr %3, i64 0, i32 2
  store i32 %21, ptr %22, align 8, !tbaa !622
  %23 = load ptr, ptr %0, align 8, !tbaa !438
  %24 = getelementptr inbounds %struct.use, ptr %3, i64 0, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !623
  store ptr %3, ptr %0, align 8, !tbaa !438
  %25 = getelementptr inbounds %struct.def, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !624
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 8, !tbaa !624
  br i1 %20, label %28, label %32, !prof !625

28:                                               ; preds = %12
  %29 = getelementptr inbounds %struct.def, ptr %0, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !626
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 4, !tbaa !626
  br label %32

32:                                               ; preds = %28, %12
  ret void
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @hash_invariant_expr(ptr nocapture noundef readonly %0) #9 !prof !627 !PGOFuncName !628 {
  %2 = getelementptr inbounds %struct.invariant_expr_entry, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !629
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @eq_invariant_expr(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !631 !PGOFuncName !632 {
  %3 = getelementptr inbounds %struct.invariant_expr_entry, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !633
  %5 = getelementptr inbounds %struct.invariant_expr_entry, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !633
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %21, !prof !634

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !635
  %10 = getelementptr inbounds %struct.invariant, ptr %9, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !579
  %12 = getelementptr inbounds %struct.invariant_expr_entry, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !636
  %14 = load ptr, ptr %1, align 8, !tbaa !635
  %15 = getelementptr inbounds %struct.invariant, ptr %14, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !579
  %17 = getelementptr inbounds %struct.invariant_expr_entry, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !636
  %19 = tail call fastcc zeroext i8 @invariant_expr_equal_p(ptr noundef %11, ptr noundef %13, ptr noundef %16, ptr noundef %18) #19
  %20 = zext i8 %19 to i32
  br label %21

21:                                               ; preds = %2, %8
  %22 = phi i32 [ %20, %8 ], [ 0, %2 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_invariant_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !prof !637 !PGOFuncName !638 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !639

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !598
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !640

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_invariant_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !249
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !249
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_identical_invariants(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !641 !PGOFuncName !642 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.invariant, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !580
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %54, !prof !643

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.invariant, ptr %1, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !442
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %10, ptr noundef nonnull %3) #19
  %11 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #19, !range !284
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %19, label %13, !prof !644

13:                                               ; preds = %8, %13
  %14 = load ptr, ptr @invariants, align 8
  %15 = load i32, ptr %3, align 4, !tbaa !244
  %16 = tail call fastcc ptr @VEC_invariant_p_base_index(ptr noundef %14, i32 noundef %15) #19
  tail call fastcc void @find_identical_invariants(ptr noundef %0, ptr noundef %16) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #19
  %17 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #19, !range !284
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %13, !prof !645, !llvm.loop !646

19:                                               ; preds = %13, %8
  %20 = getelementptr inbounds %struct.invariant, ptr %1, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !579
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !286
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 23
  br i1 %26, label %29, label %27, !prof !574

27:                                               ; preds = %19
  %28 = tail call ptr @single_set_2(ptr noundef nonnull %21, ptr noundef nonnull %23) #18
  br label %29

29:                                               ; preds = %19, %27
  %30 = phi ptr [ %28, %27 ], [ %23, %19 ]
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !286
  %33 = load i32, ptr %32, align 8
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43, !prof !647

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !286
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  br label %43

43:                                               ; preds = %37, %29
  %44 = phi i32 [ %42, %37 ], [ %35, %29 ]
  %45 = tail call fastcc ptr @find_or_insert_inv(ptr noundef %0, ptr noundef nonnull %32, i32 noundef %44, ptr noundef nonnull %1) #19
  %46 = load i32, ptr %45, align 8, !tbaa !419
  store i32 %46, ptr %5, align 4, !tbaa !580
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49, !prof !582

49:                                               ; preds = %43
  %50 = load i32, ptr %1, align 8, !tbaa !419
  %51 = icmp eq i32 %46, %50
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %47, ptr noundef nonnull @.str.14, i32 noundef %50, i32 noundef %46) #19
  br label %54

54:                                               ; preds = %43, %49, %52, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @invariant_expr_equal_p(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !648 !PGOFuncName !649 {
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 65535
  %7 = load i32, ptr %3, align 8
  %8 = and i32 %7, 65535
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %113, !prof !650

10:                                               ; preds = %4
  %11 = xor i32 %7, %5
  %12 = and i32 %11, 16711680
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %113, !prof !651

14:                                               ; preds = %10
  %15 = trunc i32 %5 to i16
  switch i16 %15, label %56 [
    i16 30, label %16
    i16 32, label %16
    i16 31, label %16
    i16 45, label %16
    i16 35, label %16
    i16 44, label %16
    i16 37, label %19
  ], !prof !652

16:                                               ; preds = %14, %14, %14, %14, %14, %14
  %17 = tail call i32 @rtx_equal_p(ptr noundef nonnull %1, ptr noundef nonnull %3) #18
  %18 = trunc i32 %17 to i8
  br label %113

19:                                               ; preds = %14
  %20 = tail call ptr @df_find_use(ptr noundef %0, ptr noundef nonnull %1) #18
  %21 = tail call ptr @df_find_use(ptr noundef %2, ptr noundef nonnull %3) #18
  %22 = icmp eq ptr %20, null
  br i1 %22, label %25, label %23, !prof !653

23:                                               ; preds = %19
  %24 = tail call fastcc ptr @invariant_for_use(ptr noundef nonnull %20) #19
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %24, %23 ], [ null, %19 ]
  %27 = icmp eq ptr %21, null
  br i1 %27, label %30, label %28, !prof !653

28:                                               ; preds = %25
  %29 = tail call fastcc ptr @invariant_for_use(ptr noundef nonnull %21) #19
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi ptr [ %29, %28 ], [ null, %25 ]
  %32 = icmp ne ptr %26, null
  %33 = icmp ne ptr %31, null
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %38, label %35, !prof !654

35:                                               ; preds = %30
  %36 = tail call i32 @rtx_equal_p(ptr noundef nonnull %1, ptr noundef nonnull %3) #18
  %37 = trunc i32 %36 to i8
  br label %113

38:                                               ; preds = %30
  %39 = select i1 %32, i1 %33, i1 false
  br i1 %39, label %40, label %113, !prof !655

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.invariant, ptr %26, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !580
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45, !prof !656

44:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 388, ptr noundef nonnull @.str.8) #18
  br label %45

45:                                               ; preds = %40, %44
  %46 = getelementptr inbounds %struct.invariant, ptr %31, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !580
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %51, !prof !656

49:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 389, ptr noundef nonnull @.str.8) #18
  %50 = load i32, ptr %46, align 4, !tbaa !580
  br label %51

51:                                               ; preds = %45, %49
  %52 = phi i32 [ %47, %45 ], [ %50, %49 ]
  %53 = load i32, ptr %41, align 4, !tbaa !580
  %54 = icmp eq i32 %53, %52
  %55 = zext i1 %54 to i8
  br label %113

56:                                               ; preds = %14
  %57 = zext nneg i32 %6 to i64
  %58 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !249
  %60 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %57
  %61 = load i8, ptr %60, align 1, !tbaa !286
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %113, label %63, !prof !657

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %65 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %66 = zext i8 %61 to i64
  br label %67

67:                                               ; preds = %63, %111
  %68 = phi i64 [ %66, %63 ], [ %69, %111 ]
  %69 = add nsw i64 %68, -1
  %70 = getelementptr inbounds i8, ptr %59, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !286
  switch i8 %71, label %113 [
    i8 101, label %72
    i8 69, label %79
    i8 105, label %105
    i8 110, label %105
  ], !prof !658

72:                                               ; preds = %67
  %73 = getelementptr inbounds [1 x %union.rtunion_def], ptr %64, i64 0, i64 %69
  %74 = load ptr, ptr %73, align 8, !tbaa !286
  %75 = getelementptr inbounds [1 x %union.rtunion_def], ptr %65, i64 0, i64 %69
  %76 = load ptr, ptr %75, align 8, !tbaa !286
  %77 = tail call fastcc zeroext i8 @invariant_expr_equal_p(ptr noundef %0, ptr noundef %74, ptr noundef %2, ptr noundef %76) #19
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %113, label %111, !prof !659

79:                                               ; preds = %67
  %80 = getelementptr inbounds [1 x %union.rtunion_def], ptr %64, i64 0, i64 %69
  %81 = load ptr, ptr %80, align 8, !tbaa !286
  %82 = load i32, ptr %81, align 8, !tbaa !372
  %83 = getelementptr inbounds [1 x %union.rtunion_def], ptr %65, i64 0, i64 %69
  %84 = load ptr, ptr %83, align 8, !tbaa !286
  %85 = load i32, ptr %84, align 8, !tbaa !372
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %113

87:                                               ; preds = %79
  %88 = icmp sgt i32 %82, 0
  br i1 %88, label %95, label %111

89:                                               ; preds = %95
  %90 = add nuw nsw i64 %96, 1
  %91 = load ptr, ptr %80, align 8, !tbaa !286
  %92 = load i32, ptr %91, align 8, !tbaa !372
  %93 = sext i32 %92 to i64
  %94 = icmp slt i64 %90, %93
  br i1 %94, label %95, label %111, !llvm.loop !660

95:                                               ; preds = %87, %89
  %96 = phi i64 [ %90, %89 ], [ 0, %87 ]
  %97 = phi ptr [ %91, %89 ], [ %81, %87 ]
  %98 = getelementptr inbounds %struct.rtvec_def, ptr %97, i64 0, i32 1, i64 %96
  %99 = load ptr, ptr %98, align 8, !tbaa !249
  %100 = load ptr, ptr %83, align 8, !tbaa !286
  %101 = getelementptr inbounds %struct.rtvec_def, ptr %100, i64 0, i32 1, i64 %96
  %102 = load ptr, ptr %101, align 8, !tbaa !249
  %103 = tail call fastcc zeroext i8 @invariant_expr_equal_p(ptr noundef %0, ptr noundef %99, ptr noundef %2, ptr noundef %102) #19
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %113, label %89

105:                                              ; preds = %67, %67
  %106 = getelementptr inbounds [1 x %union.rtunion_def], ptr %64, i64 0, i64 %69
  %107 = load i32, ptr %106, align 8, !tbaa !286
  %108 = getelementptr inbounds [1 x %union.rtunion_def], ptr %65, i64 0, i64 %69
  %109 = load i32, ptr %108, align 8, !tbaa !286
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %89, %87, %72, %105
  %112 = icmp sgt i64 %68, 1
  br i1 %112, label %67, label %113, !prof !661, !llvm.loop !662

113:                                              ; preds = %72, %79, %105, %67, %111, %95, %56, %38, %4, %10, %51, %35, %16
  %114 = phi i8 [ %55, %51 ], [ %37, %35 ], [ %18, %16 ], [ 0, %10 ], [ 0, %4 ], [ 0, %38 ], [ 1, %56 ], [ 0, %95 ], [ 0, %72 ], [ 0, %79 ], [ 0, %105 ], [ 0, %67 ], [ 1, %111 ]
  ret i8 %114
}

; Function Attrs: optsize
declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @df_find_use(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_invariant_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !663 !PGOFuncName !664 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_invariant_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !249
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_or_insert_inv(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !prof !571 !PGOFuncName !665 {
  %5 = alloca %struct.invariant_expr_entry, align 8
  %6 = getelementptr inbounds %struct.invariant, ptr %3, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !579
  %8 = tail call fastcc i32 @hash_invariant_expr_1(ptr noundef %7, ptr noundef %1) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  %9 = getelementptr inbounds %struct.invariant_expr_entry, ptr %5, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !636
  store ptr %3, ptr %5, align 8, !tbaa !635
  %10 = getelementptr inbounds %struct.invariant_expr_entry, ptr %5, i64 0, i32 2
  store i32 %2, ptr %10, align 8, !tbaa !633
  %11 = call ptr @htab_find_slot_with_hash(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %8, i32 noundef 1) #18
  %12 = load ptr, ptr %11, align 8, !tbaa !249
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !666

14:                                               ; preds = %4
  %15 = load ptr, ptr %12, align 8, !tbaa !635
  br label %21

16:                                               ; preds = %4
  %17 = call ptr @xmalloc(i64 noundef 24) #18
  store ptr %3, ptr %17, align 8, !tbaa !635
  %18 = getelementptr inbounds %struct.invariant_expr_entry, ptr %17, i64 0, i32 1
  store ptr %1, ptr %18, align 8, !tbaa !636
  %19 = getelementptr inbounds %struct.invariant_expr_entry, ptr %17, i64 0, i32 2
  store i32 %2, ptr %19, align 8, !tbaa !633
  %20 = getelementptr inbounds %struct.invariant_expr_entry, ptr %17, i64 0, i32 3
  store i32 %8, ptr %20, align 4, !tbaa !629
  store ptr %17, ptr %11, align 8, !tbaa !249
  br label %21

21:                                               ; preds = %16, %14
  %22 = phi ptr [ %15, %14 ], [ %3, %16 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @hash_invariant_expr_1(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !667 !PGOFuncName !668 {
  %3 = alloca i32, align 4
  %4 = load i32, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %32 [
    i16 30, label %6
    i16 32, label %6
    i16 31, label %6
    i16 45, label %6
    i16 35, label %6
    i16 44, label %6
    i16 37, label %10
  ], !prof !669

6:                                                ; preds = %2, %2, %2, %2, %2, %2
  %7 = lshr i32 %4, 16
  %8 = and i32 %7, 255
  %9 = call i32 @hash_rtx(ptr noundef nonnull %1, i32 noundef %8, ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 0) #18
  br label %79

10:                                               ; preds = %2
  %11 = tail call ptr @df_find_use(ptr noundef %0, ptr noundef nonnull %1) #18
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18, !prof !670

13:                                               ; preds = %10
  %14 = load i32, ptr %1, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = call i32 @hash_rtx(ptr noundef nonnull %1, i32 noundef %16, ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 0) #18
  br label %79

18:                                               ; preds = %10
  %19 = tail call fastcc ptr @invariant_for_use(ptr noundef nonnull %11) #19
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %26, !prof !671

21:                                               ; preds = %18
  %22 = load i32, ptr %1, align 8
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  %25 = call i32 @hash_rtx(ptr noundef nonnull %1, i32 noundef %24, ptr noundef nonnull %3, ptr noundef null, i8 noundef zeroext 0) #18
  br label %79

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.invariant, ptr %19, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !580
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %79, !prof !672

30:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 321, ptr noundef nonnull @.str.8) #18
  %31 = load i32, ptr %27, align 4, !tbaa !580
  br label %79

32:                                               ; preds = %2
  %33 = and i32 %4, 65535
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !249
  %37 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %34
  %38 = load i8, ptr %37, align 1, !tbaa !286
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %79, label %40, !prof !673

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %42 = zext i8 %38 to i64
  br label %43

43:                                               ; preds = %40, %76
  %44 = phi i64 [ %42, %40 ], [ %46, %76 ]
  %45 = phi i32 [ %33, %40 ], [ %77, %76 ]
  %46 = add nsw i64 %44, -1
  %47 = getelementptr inbounds i8, ptr %36, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !286
  switch i8 %48, label %76 [
    i8 101, label %54
    i8 69, label %49
    i8 105, label %72
    i8 110, label %72
  ], !prof !674

49:                                               ; preds = %43
  %50 = getelementptr inbounds [1 x %union.rtunion_def], ptr %41, i64 0, i64 %46
  %51 = load ptr, ptr %50, align 8, !tbaa !286
  %52 = load i32, ptr %51, align 8, !tbaa !372
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %59, label %76

54:                                               ; preds = %43
  %55 = getelementptr inbounds [1 x %union.rtunion_def], ptr %41, i64 0, i64 %46
  %56 = load ptr, ptr %55, align 8, !tbaa !286
  %57 = tail call fastcc i32 @hash_invariant_expr_1(ptr noundef %0, ptr noundef %56) #19
  %58 = xor i32 %57, %45
  br label %76

59:                                               ; preds = %49, %59
  %60 = phi i64 [ %67, %59 ], [ 0, %49 ]
  %61 = phi ptr [ %68, %59 ], [ %51, %49 ]
  %62 = phi i32 [ %66, %59 ], [ %45, %49 ]
  %63 = getelementptr inbounds %struct.rtvec_def, ptr %61, i64 0, i32 1, i64 %60
  %64 = load ptr, ptr %63, align 8, !tbaa !249
  %65 = tail call fastcc i32 @hash_invariant_expr_1(ptr noundef %0, ptr noundef %64) #19
  %66 = xor i32 %65, %62
  %67 = add nuw nsw i64 %60, 1
  %68 = load ptr, ptr %50, align 8, !tbaa !286
  %69 = load i32, ptr %68, align 8, !tbaa !372
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %59, label %76, !llvm.loop !675

72:                                               ; preds = %43, %43
  %73 = getelementptr inbounds [1 x %union.rtunion_def], ptr %41, i64 0, i64 %46
  %74 = load i32, ptr %73, align 8, !tbaa !286
  %75 = xor i32 %74, %45
  br label %76

76:                                               ; preds = %59, %49, %43, %54, %72
  %77 = phi i32 [ %58, %54 ], [ %75, %72 ], [ %45, %43 ], [ %45, %49 ], [ %66, %59 ]
  %78 = icmp sgt i64 %44, 1
  br i1 %78, label %43, label %79, !prof !676, !llvm.loop !677

79:                                               ; preds = %76, %30, %26, %32, %21, %13, %6
  %80 = phi i32 [ %25, %21 ], [ %17, %13 ], [ %9, %6 ], [ %33, %32 ], [ %28, %26 ], [ %31, %30 ], [ %77, %76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i32 %80
}

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @hash_rtx(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @best_gain_for_invariant(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !678 !PGOFuncName !679 {
  %6 = alloca ptr, align 8
  %7 = alloca [27 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %7) #17
  %8 = load ptr, ptr @invariants, align 8
  %9 = call fastcc i32 @VEC_invariant_p_base_iterate(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %6) #19, !range !325
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %52, label %11, !prof !680

11:                                               ; preds = %5, %46
  %12 = phi i32 [ %48, %46 ], [ 0, %5 ]
  %13 = phi i32 [ %47, %46 ], [ 0, %5 ]
  %14 = load ptr, ptr %6, align 8, !tbaa !249
  %15 = getelementptr inbounds %struct.invariant, ptr %14, i64 0, i32 7
  %16 = load i8, ptr %15, align 1, !tbaa !577
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %46, !prof !681

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.invariant, ptr %14, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !580
  %21 = load i32, ptr %14, align 8, !tbaa !419
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %46, !prof !682

23:                                               ; preds = %18
  %24 = call fastcc i32 @gain_for_invariant(ptr noundef nonnull %14, ptr noundef nonnull %7, ptr noundef %2, i32 noundef %3, i8 noundef zeroext %4) #19
  %25 = icmp sgt i32 %24, %13
  br i1 %25, label %26, label %46, !prof !683

26:                                               ; preds = %23
  store ptr %14, ptr %0, align 8, !tbaa !249
  %27 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !244
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29, !prof !684

29:                                               ; preds = %26
  %30 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !244
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %34, label %46

32:                                               ; preds = %26
  %33 = load i32, ptr %7, align 16, !tbaa !244
  store i32 %33, ptr %1, align 4, !tbaa !244
  br label %46

34:                                               ; preds = %29, %34
  %35 = phi i64 [ %42, %34 ], [ 0, %29 ]
  %36 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !244
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [27 x i32], ptr %7, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !244
  %41 = getelementptr inbounds i32, ptr %1, i64 %38
  store i32 %40, ptr %41, align 4, !tbaa !244
  %42 = add nuw nsw i64 %35, 1
  %43 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !244
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %34, label %46, !llvm.loop !685

46:                                               ; preds = %34, %29, %23, %32, %18, %11
  %47 = phi i32 [ %13, %11 ], [ %13, %18 ], [ %24, %32 ], [ %13, %23 ], [ %24, %29 ], [ %24, %34 ]
  %48 = add i32 %12, 1
  %49 = load ptr, ptr @invariants, align 8
  %50 = call fastcc i32 @VEC_invariant_p_base_iterate(ptr noundef %49, i32 noundef %48, ptr noundef nonnull %6) #19, !range !325
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %11, !prof !686, !llvm.loop !687

52:                                               ; preds = %46, %5
  %53 = phi i32 [ 0, %5 ], [ %47, %46 ]
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  ret i32 %53
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @set_move_mark(i32 noundef %0, i32 noundef %1) unnamed_addr #14 !prof !688 !PGOFuncName !689 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  store i32 %0, ptr %3, align 4, !tbaa !244
  %5 = load ptr, ptr @invariants, align 8
  %6 = tail call fastcc ptr @VEC_invariant_p_base_index(ptr noundef %5, i32 noundef %0) #19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  %7 = getelementptr inbounds %struct.invariant, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !580
  %9 = tail call fastcc ptr @VEC_invariant_p_base_index(ptr noundef %5, i32 noundef %8) #19
  %10 = getelementptr inbounds %struct.invariant, ptr %9, i64 0, i32 7
  %11 = load i8, ptr %10, align 1, !tbaa !577
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %31, !prof !690

13:                                               ; preds = %2
  store i8 1, ptr %10, align 1, !tbaa !577
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16, !prof !691

16:                                               ; preds = %13
  %17 = icmp sgt i32 %1, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %14, ptr noundef nonnull @.str.15, i32 noundef %0, i32 noundef %1) #19
  br label %22

20:                                               ; preds = %16
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %14, ptr noundef nonnull @.str.16, i32 noundef %0) #19
  br label %22

22:                                               ; preds = %18, %20, %13
  %23 = getelementptr inbounds %struct.invariant, ptr %9, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !442
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %24, ptr noundef nonnull %3) #19
  %25 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #19, !range !284
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27, !prof !692

27:                                               ; preds = %22, %27
  %28 = load i32, ptr %3, align 4, !tbaa !244
  tail call fastcc void @set_move_mark(i32 noundef %28, i32 noundef -1) #19
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #19
  %29 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #19, !range !284
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %27, !prof !693, !llvm.loop !694

31:                                               ; preds = %27, %22, %2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gain_for_invariant(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !695 !PGOFuncName !696 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  %7 = load i32, ptr @actual_stamp, align 4, !tbaa !244
  %8 = add i32 %7, 1
  store i32 %8, ptr @actual_stamp, align 4, !tbaa !244
  call fastcc void @get_inv_cost(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %1) #19
  %9 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !244
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11, !prof !697

11:                                               ; preds = %5
  %12 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !244
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %11
  %15 = load ptr, ptr @curr_loop, align 8, !tbaa !249
  %16 = getelementptr inbounds %struct.loop, ptr %15, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !266
  %18 = load ptr, ptr @compiler_params, align 8, !tbaa !249
  %19 = getelementptr inbounds %struct.param_info, ptr %18, i64 107, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !257
  %21 = zext nneg i32 %12 to i64
  br label %33

22:                                               ; preds = %5
  %23 = load i32, ptr %2, align 4, !tbaa !244
  %24 = load i32, ptr %1, align 4, !tbaa !244
  %25 = add i32 %24, %23
  %26 = tail call i32 @estimate_reg_pressure_cost(i32 noundef %25, i32 noundef %3, i8 noundef zeroext %4) #18
  %27 = load i32, ptr %2, align 4, !tbaa !244
  %28 = tail call i32 @estimate_reg_pressure_cost(i32 noundef %27, i32 noundef %3, i8 noundef zeroext %4) #18
  %29 = sub i32 %28, %26
  br label %50

30:                                               ; preds = %33
  %31 = add nuw nsw i64 %34, 1
  %32 = icmp eq i64 %31, %21
  br i1 %32, label %50, label %33, !llvm.loop !698

33:                                               ; preds = %14, %30
  %34 = phi i64 [ 0, %14 ], [ %31, %30 ]
  %35 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !244
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %2, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !244
  %40 = getelementptr inbounds i32, ptr %1, i64 %37
  %41 = load i32, ptr %40, align 4, !tbaa !244
  %42 = add nsw i32 %41, %39
  %43 = getelementptr inbounds %struct.loop_data, ptr %17, i64 0, i32 2, i64 %37
  %44 = load i32, ptr %43, align 4, !tbaa !244
  %45 = add nsw i32 %42, %44
  %46 = add nsw i32 %45, %20
  %47 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %37
  %48 = load i32, ptr %47, align 4, !tbaa !244
  %49 = icmp sgt i32 %46, %48
  br i1 %49, label %54, label %30

50:                                               ; preds = %30, %11, %22
  %51 = phi i32 [ %29, %22 ], [ 0, %11 ], [ 0, %30 ]
  %52 = load i32, ptr %6, align 4, !tbaa !244
  %53 = add i32 %52, %51
  br label %54

54:                                               ; preds = %33, %50
  %55 = phi i32 [ %53, %50 ], [ -1, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  ret i32 %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_inv_cost(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !699 !PGOFuncName !700 {
  %4 = alloca i32, align 4
  %5 = alloca [27 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.bitmap_iterator, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #17
  %10 = load ptr, ptr @invariants, align 8
  %11 = getelementptr inbounds %struct.invariant, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !580
  %13 = tail call fastcc ptr @VEC_invariant_p_base_index(ptr noundef %10, i32 noundef %12) #19
  store i32 0, ptr %1, align 4, !tbaa !244
  %14 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !244
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16, !prof !701

16:                                               ; preds = %3
  %17 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !244
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %20, label %30

19:                                               ; preds = %3
  store i32 0, ptr %2, align 4, !tbaa !244
  br label %30

20:                                               ; preds = %16, %20
  %21 = phi i64 [ %26, %20 ], [ 0, %16 ]
  %22 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !244
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %2, i64 %24
  store i32 0, ptr %25, align 4, !tbaa !244
  %26 = add nuw nsw i64 %21, 1
  %27 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !244
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %20, label %30, !llvm.loop !702

30:                                               ; preds = %20, %16, %19
  %31 = getelementptr inbounds %struct.invariant, ptr %13, i64 0, i32 7
  %32 = load i8, ptr %31, align 1, !tbaa !577
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %207, !prof !703

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.invariant, ptr %13, i64 0, i32 11
  %36 = load i32, ptr %35, align 8, !tbaa !578
  %37 = load i32, ptr @actual_stamp, align 4, !tbaa !244
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %207, label %39, !prof !704

39:                                               ; preds = %34
  store i32 %37, ptr %35, align 8, !tbaa !578
  %40 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !244
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45, !prof !705

42:                                               ; preds = %39
  %43 = load i32, ptr %2, align 4, !tbaa !244
  %44 = add i32 %43, 1
  store i32 %44, ptr %2, align 4, !tbaa !244
  br label %54

45:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  %46 = getelementptr inbounds %struct.invariant, ptr %13, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !579
  %48 = call fastcc i32 @get_cover_class_and_nregs(ptr noundef %47, ptr noundef nonnull %8) #19
  %49 = load i32, ptr %8, align 4, !tbaa !244
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds i32, ptr %2, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !244
  %53 = add i32 %52, %49
  store i32 %53, ptr %51, align 4, !tbaa !244
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  br label %54

54:                                               ; preds = %45, %42
  %55 = getelementptr inbounds %struct.invariant, ptr %13, i64 0, i32 8
  %56 = load i8, ptr %55, align 2, !tbaa !706
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %66, label %58, !prof !707

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.invariant, ptr %13, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !436
  %61 = getelementptr inbounds %struct.def, ptr %60, i64 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !626
  %63 = getelementptr inbounds %struct.def, ptr %60, i64 0, i32 1
  %64 = load i32, ptr %63, align 8, !tbaa !624
  %65 = icmp ult i32 %62, %64
  br i1 %65, label %66, label %71, !prof !708

66:                                               ; preds = %58, %54
  %67 = getelementptr inbounds %struct.invariant, ptr %13, i64 0, i32 9
  %68 = load i32, ptr %67, align 4, !tbaa !576
  %69 = load i32, ptr %1, align 4, !tbaa !244
  %70 = add i32 %69, %68
  store i32 %70, ptr %1, align 4, !tbaa !244
  br label %71

71:                                               ; preds = %66, %58
  %72 = getelementptr inbounds %struct.invariant, ptr %13, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !579
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65535
  %76 = add nsw i32 %75, -7
  %77 = icmp ult i32 %76, 4
  br i1 %77, label %78, label %121, !prof !709

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !286
  %81 = load i32, ptr %80, align 8
  %82 = and i32 %81, 65535
  %83 = icmp eq i32 %82, 23
  br i1 %83, label %87, label %84, !prof !710

84:                                               ; preds = %78
  %85 = tail call ptr @single_set_2(ptr noundef nonnull %73, ptr noundef nonnull %80) #18
  %86 = icmp eq ptr %85, null
  br i1 %86, label %121, label %87, !prof !711

87:                                               ; preds = %78, %84
  %88 = phi ptr [ %85, %84 ], [ %80, %78 ]
  %89 = getelementptr inbounds %struct.rtx_def, ptr %88, i64 0, i32 1, i32 0, i32 0, i64 1
  %90 = load ptr, ptr %89, align 8, !tbaa !286
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 16711680
  switch i32 %92, label %121 [
    i32 2490368, label %93
    i32 2555904, label %101
    i32 2621440, label %109
  ], !prof !712

93:                                               ; preds = %87
  %94 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !244
  %95 = and i32 %94, 65536
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %109, label %97, !prof !713

97:                                               ; preds = %93
  %98 = load i32, ptr @ix86_fpmath, align 4, !tbaa !244
  %99 = and i32 %98, 2
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %109, label %121

101:                                              ; preds = %87
  %102 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !244
  %103 = and i32 %102, 131072
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105, !prof !714

105:                                              ; preds = %101
  %106 = load i32, ptr @ix86_fpmath, align 4, !tbaa !244
  %107 = and i32 %106, 2
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %87, %105, %101, %97, %93
  %110 = tail call zeroext i8 @constant_pool_constant_p(ptr noundef nonnull %90) #18
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %121, label %112, !prof !715

112:                                              ; preds = %109
  %113 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !244
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115, !prof !716

115:                                              ; preds = %112
  %116 = getelementptr inbounds i32, ptr %2, i64 16
  br label %117

117:                                              ; preds = %112, %115
  %118 = phi ptr [ %116, %115 ], [ %2, %112 ]
  %119 = load i32, ptr %118, align 4, !tbaa !244
  %120 = add i32 %119, 2
  store i32 %120, ptr %118, align 4, !tbaa !244
  br label %121

121:                                              ; preds = %117, %87, %97, %105, %71, %109, %84
  %122 = getelementptr inbounds %struct.invariant, ptr %13, i64 0, i32 10
  %123 = load ptr, ptr %122, align 8, !tbaa !442
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %7, ptr noundef %123, ptr noundef nonnull %6) #19
  %124 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %6) #19, !range !284
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %207, label %126, !prof !717

126:                                              ; preds = %121, %201
  %127 = load ptr, ptr @invariants, align 8
  %128 = load i32, ptr %6, align 4, !tbaa !244
  %129 = tail call fastcc ptr @VEC_invariant_p_base_index(ptr noundef %127, i32 noundef %128) #19
  call fastcc void @get_inv_cost(ptr noundef %129, ptr noundef nonnull %4, ptr noundef nonnull %5) #19
  %130 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !244
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %148, label %132, !prof !718

132:                                              ; preds = %126
  %133 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !244
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %201

135:                                              ; preds = %132
  %136 = zext nneg i32 %133 to i64
  br label %140

137:                                              ; preds = %140
  %138 = add nuw nsw i64 %141, 1
  %139 = icmp eq i64 %138, %136
  br i1 %139, label %180, label %140, !llvm.loop !719

140:                                              ; preds = %135, %137
  %141 = phi i64 [ 0, %135 ], [ %138, %137 ]
  %142 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !244
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds [27 x i32], ptr %5, i64 0, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !244
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %137, label %151

148:                                              ; preds = %126
  %149 = load i32, ptr %5, align 16, !tbaa !244
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %183, label %151, !prof !720

151:                                              ; preds = %140, %148
  %152 = getelementptr inbounds %struct.invariant, ptr %129, i64 0, i32 6
  %153 = load i8, ptr %152, align 8, !tbaa !575
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %175, label %155, !prof !721

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.invariant, ptr %129, i64 0, i32 4
  %157 = load ptr, ptr %156, align 8, !tbaa !436
  %158 = load ptr, ptr %157, align 8, !tbaa !438
  %159 = getelementptr inbounds %struct.use, ptr %158, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !623
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %175, !prof !722

162:                                              ; preds = %155
  br i1 %131, label %163, label %166, !prof !723

163:                                              ; preds = %162
  %164 = load i32, ptr %5, align 16, !tbaa !244
  %165 = add i32 %164, -1
  store i32 %165, ptr %5, align 16, !tbaa !244
  br label %178

166:                                              ; preds = %162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #17
  %167 = load ptr, ptr %72, align 8, !tbaa !579
  %168 = call fastcc i32 @get_cover_class_and_nregs(ptr noundef %167, ptr noundef nonnull %9) #19
  %169 = load i32, ptr %9, align 4, !tbaa !244
  %170 = zext i32 %168 to i64
  %171 = getelementptr inbounds [27 x i32], ptr %5, i64 0, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !244
  %173 = sub i32 %172, %169
  store i32 %173, ptr %171, align 4, !tbaa !244
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #17
  %174 = load i32, ptr @flag_ira_loop_pressure, align 4, !tbaa !244
  br label %175

175:                                              ; preds = %166, %155, %151
  %176 = phi i32 [ %174, %166 ], [ %130, %155 ], [ %130, %151 ]
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %180, !prof !415

178:                                              ; preds = %163, %175
  %179 = load i32, ptr %5, align 16, !tbaa !244
  br label %183

180:                                              ; preds = %137, %175
  %181 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !244
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %187, label %201

183:                                              ; preds = %178, %148
  %184 = phi i32 [ %179, %178 ], [ 0, %148 ]
  %185 = load i32, ptr %2, align 4, !tbaa !244
  %186 = add i32 %185, %184
  store i32 %186, ptr %2, align 4, !tbaa !244
  br label %201

187:                                              ; preds = %180, %187
  %188 = phi i64 [ %197, %187 ], [ 0, %180 ]
  %189 = getelementptr inbounds [27 x i32], ptr @ira_reg_class_cover, i64 0, i64 %188
  %190 = load i32, ptr %189, align 4, !tbaa !244
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds [27 x i32], ptr %5, i64 0, i64 %191
  %193 = load i32, ptr %192, align 4, !tbaa !244
  %194 = getelementptr inbounds i32, ptr %2, i64 %191
  %195 = load i32, ptr %194, align 4, !tbaa !244
  %196 = add i32 %195, %193
  store i32 %196, ptr %194, align 4, !tbaa !244
  %197 = add nuw nsw i64 %188, 1
  %198 = load i32, ptr @ira_reg_class_cover_size, align 4, !tbaa !244
  %199 = sext i32 %198 to i64
  %200 = icmp slt i64 %197, %199
  br i1 %200, label %187, label %201, !llvm.loop !724

201:                                              ; preds = %187, %132, %180, %183
  %202 = load i32, ptr %4, align 4, !tbaa !244
  %203 = load i32, ptr %1, align 4, !tbaa !244
  %204 = add nsw i32 %203, %202
  store i32 %204, ptr %1, align 4, !tbaa !244
  call fastcc void @bmp_iter_next(ptr noundef nonnull %7, ptr noundef nonnull %6) #19
  %205 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %7, ptr noundef nonnull %6) #19, !range !284
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %207, label %126, !prof !725, !llvm.loop !726

207:                                              ; preds = %201, %121, %30, %34
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  ret void
}

; Function Attrs: optsize
declare i32 @estimate_reg_pressure_cost(i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_cover_class_and_nregs(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !264 !PGOFuncName !727 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -7
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !286
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 65535
  %12 = icmp eq i32 %11, 23
  br i1 %12, label %17, label %13

13:                                               ; preds = %7
  %14 = tail call ptr @single_set_2(ptr noundef nonnull %0, ptr noundef nonnull %9) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2, %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1025, ptr noundef nonnull @.str.8) #18
  br label %17

17:                                               ; preds = %7, %13, %16
  %18 = phi ptr [ %14, %13 ], [ null, %16 ], [ %9, %7 ]
  %19 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !286
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %22, 39
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.rtx_def, ptr %20, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !286
  %27 = load i32, ptr %26, align 8
  br label %28

28:                                               ; preds = %24, %17
  %29 = phi i32 [ %27, %24 ], [ %21, %17 ]
  %30 = phi ptr [ %26, %24 ], [ %20, %17 ]
  %31 = trunc i32 %29 to i16
  switch i16 %31, label %35 [
    i16 43, label %46
    i16 37, label %32
  ]

32:                                               ; preds = %28
  %33 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %30) #19
  %34 = tail call i32 @reg_cover_class(i32 noundef %33) #18
  br label %35

35:                                               ; preds = %28, %32
  %36 = phi i32 [ %34, %32 ], [ 13, %28 ]
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !286
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [27 x [87 x i32]], ptr @ira_reg_class_nregs, i64 0, i64 %37, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !244
  br label %46

46:                                               ; preds = %28, %35
  %47 = phi i32 [ %45, %35 ], [ 0, %28 ]
  %48 = phi i32 [ %36, %35 ], [ 0, %28 ]
  store i32 %47, ptr %1, align 4, !tbaa !244
  ret i32 %48
}

; Function Attrs: optsize
declare zeroext i8 @constant_pool_constant_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @move_invariant_reg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !728 !PGOFuncName !729 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = load ptr, ptr @invariants, align 8
  %6 = tail call fastcc ptr @VEC_invariant_p_base_index(ptr noundef %5, i32 noundef %1) #19
  %7 = getelementptr inbounds %struct.invariant, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !580
  %9 = tail call fastcc ptr @VEC_invariant_p_base_index(ptr noundef %5, i32 noundef %8) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %10 = tail call ptr @loop_preheader_edge(ptr noundef %0) #18
  %11 = load ptr, ptr %10, align 8, !tbaa !730
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  %12 = getelementptr inbounds %struct.invariant, ptr %6, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !430
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %153, !prof !731

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.invariant, ptr %9, i64 0, i32 7
  %17 = load i8, ptr %16, align 1, !tbaa !577
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %153, label %19, !prof !732

19:                                               ; preds = %15
  %20 = icmp eq ptr %6, %9
  br i1 %20, label %21, label %99, !prof !733

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.invariant, ptr %6, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !442
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25, !prof !734

25:                                               ; preds = %21
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %23, ptr noundef nonnull %3) #19
  %26 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #19, !range !284
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %35, label %28, !prof !692

28:                                               ; preds = %25, %32
  %29 = load i32, ptr %3, align 4, !tbaa !244
  %30 = tail call fastcc zeroext i8 @move_invariant_reg(ptr noundef %0, i32 noundef %29) #19, !range !284
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %145, label %32, !prof !735

32:                                               ; preds = %28
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #19
  %33 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #19, !range !284
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %28, !prof !693, !llvm.loop !736

35:                                               ; preds = %32, %25, %21
  %36 = getelementptr inbounds %struct.invariant, ptr %6, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !579
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 65535
  %40 = add nsw i32 %39, -7
  %41 = icmp ult i32 %40, 4
  br i1 %41, label %42, label %50, !prof !737

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !286
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 23
  br i1 %47, label %50, label %48, !prof !738

48:                                               ; preds = %42
  %49 = tail call ptr @single_set_2(ptr noundef nonnull %37, ptr noundef nonnull %44) #18
  br label %50

50:                                               ; preds = %35, %42, %48
  %51 = phi ptr [ %49, %48 ], [ null, %35 ], [ %44, %42 ]
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !286
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65535
  %56 = icmp eq i32 %55, 39
  br i1 %56, label %57, label %61, !prof !734

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !286
  %60 = load i32, ptr %59, align 8
  br label %61

61:                                               ; preds = %57, %50
  %62 = phi i32 [ %60, %57 ], [ %54, %50 ]
  %63 = phi ptr [ %59, %57 ], [ %53, %50 ]
  %64 = and i32 %62, 65535
  %65 = icmp eq i32 %64, 37
  br i1 %65, label %66, label %68, !prof !691

66:                                               ; preds = %61
  %67 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %63) #19
  br label %68

68:                                               ; preds = %66, %61
  %69 = phi i32 [ %67, %66 ], [ -1, %61 ]
  %70 = tail call ptr @gen_reg_rtx_and_attrs(ptr noundef nonnull %53) #18
  %71 = load ptr, ptr %36, align 8, !tbaa !579
  %72 = tail call zeroext i8 @validate_change(ptr noundef %71, ptr noundef nonnull %52, ptr noundef %70, i8 noundef zeroext 0) #18
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %145, label %74, !prof !734

74:                                               ; preds = %68
  %75 = load ptr, ptr %36, align 8, !tbaa !579
  %76 = tail call zeroext i8 @df_insn_rescan(ptr noundef %75) #18
  %77 = tail call ptr @gen_move_insn(ptr noundef nonnull %53, ptr noundef %70) #18
  %78 = load ptr, ptr %36, align 8, !tbaa !579
  %79 = tail call ptr @emit_insn_after(ptr noundef %77, ptr noundef %78) #18
  %80 = load ptr, ptr %36, align 8, !tbaa !579
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 7
  %82 = load ptr, ptr %81, align 8, !tbaa !286
  %83 = getelementptr inbounds %struct.rtl_bb_info, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !287
  tail call void @reorder_insns(ptr noundef %80, ptr noundef %80, ptr noundef %84) #18
  %85 = load ptr, ptr %36, align 8, !tbaa !579
  %86 = tail call ptr @find_reg_note(ptr noundef %85, i32 noundef 4, ptr noundef null) #18
  %87 = icmp eq ptr %86, null
  br i1 %87, label %126, label %88, !prof !739

88:                                               ; preds = %74
  %89 = getelementptr inbounds %struct.invariant, ptr %6, i64 0, i32 6
  %90 = load i8, ptr %89, align 8, !tbaa !575
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %97, label %92, !prof !740

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !286
  %95 = tail call fastcc zeroext i8 @check_maybe_invariant(ptr noundef %94) #19, !range !284
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %126, !prof !741

97:                                               ; preds = %92, %88
  %98 = load ptr, ptr %36, align 8, !tbaa !579
  tail call void @remove_note(ptr noundef %98, ptr noundef nonnull %86) #18
  br label %126

99:                                               ; preds = %19
  %100 = load i32, ptr %9, align 8, !tbaa !419
  %101 = tail call fastcc zeroext i8 @move_invariant_reg(ptr noundef %0, i32 noundef %100) #19, !range !284
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %145, label %103, !prof !742

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.invariant, ptr %9, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !430
  %106 = getelementptr inbounds %struct.invariant, ptr %9, i64 0, i32 3
  %107 = load i32, ptr %106, align 8, !tbaa !431
  %108 = getelementptr inbounds %struct.invariant, ptr %6, i64 0, i32 5
  %109 = load ptr, ptr %108, align 8, !tbaa !579
  %110 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 1
  %111 = load ptr, ptr %110, align 8, !tbaa !286
  %112 = load i32, ptr %111, align 8
  %113 = and i32 %112, 65535
  %114 = icmp eq i32 %113, 23
  br i1 %114, label %117, label %115, !prof !743

115:                                              ; preds = %103
  %116 = tail call ptr @single_set_2(ptr noundef nonnull %109, ptr noundef nonnull %111) #18
  br label %117

117:                                              ; preds = %103, %115
  %118 = phi ptr [ %116, %115 ], [ %111, %103 ]
  %119 = getelementptr inbounds %struct.rtx_def, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !286
  %121 = tail call ptr @gen_move_insn(ptr noundef %120, ptr noundef %105) #18
  %122 = load ptr, ptr %108, align 8, !tbaa !579
  %123 = tail call ptr @emit_insn_after(ptr noundef %121, ptr noundef %122) #18
  %124 = load ptr, ptr %108, align 8, !tbaa !579
  %125 = tail call ptr @delete_insn(ptr noundef %124) #18
  br label %126

126:                                              ; preds = %74, %92, %97, %117
  %127 = phi ptr [ %70, %92 ], [ %70, %97 ], [ %70, %74 ], [ %105, %117 ]
  %128 = phi i32 [ %69, %92 ], [ %69, %97 ], [ %69, %74 ], [ %107, %117 ]
  store ptr %127, ptr %12, align 8, !tbaa !430
  %129 = getelementptr inbounds %struct.invariant, ptr %6, i64 0, i32 3
  store i32 %128, ptr %129, align 8, !tbaa !431
  %130 = getelementptr inbounds %struct.invariant, ptr %6, i64 0, i32 4
  %131 = load ptr, ptr %130, align 8, !tbaa !436
  %132 = icmp eq ptr %131, null
  br i1 %132, label %153, label %133, !prof !744

133:                                              ; preds = %126
  %134 = load ptr, ptr %131, align 8, !tbaa !249
  %135 = icmp eq ptr %134, null
  br i1 %135, label %153, label %136, !prof !745

136:                                              ; preds = %133, %136
  %137 = phi ptr [ %143, %136 ], [ %134, %133 ]
  %138 = load ptr, ptr %137, align 8, !tbaa !619
  store ptr %127, ptr %138, align 8, !tbaa !249
  %139 = getelementptr inbounds %struct.use, ptr %137, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !621
  %141 = tail call zeroext i8 @df_insn_rescan(ptr noundef %140) #18
  %142 = getelementptr inbounds %struct.use, ptr %137, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !249
  %144 = icmp eq ptr %143, null
  br i1 %144, label %153, label %136, !prof !746, !llvm.loop !747

145:                                              ; preds = %28, %99, %68
  %146 = load ptr, ptr @dump_file, align 8, !tbaa !249
  %147 = icmp eq ptr %146, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %145
  %149 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %146, ptr noundef nonnull @.str.17, i32 noundef %1) #19
  br label %150

150:                                              ; preds = %148, %145
  %151 = getelementptr inbounds %struct.invariant, ptr %6, i64 0, i32 7
  store i8 0, ptr %151, align 1, !tbaa !577
  store ptr null, ptr %12, align 8, !tbaa !430
  %152 = getelementptr inbounds %struct.invariant, ptr %6, i64 0, i32 3
  store i32 -1, ptr %152, align 8, !tbaa !431
  br label %153

153:                                              ; preds = %136, %133, %126, %15, %2, %150
  %154 = phi i8 [ 0, %150 ], [ 1, %2 ], [ 0, %15 ], [ 1, %126 ], [ 1, %133 ], [ 1, %136 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret i8 %154
}

; Function Attrs: optsize
declare zeroext i8 @resize_reg_info() local_unnamed_addr #2

; Function Attrs: optsize
declare void @setup_reg_classes(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_preferred_class(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @reg_alternate_class(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_reg_rtx_and_attrs(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gen_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @reorder_insns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_note(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_use_list(ptr noundef %0) unnamed_addr #0 !prof !748 !PGOFuncName !749 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3, !prof !750

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.use, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !623
  tail call void @free(ptr noundef nonnull %4) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !prof !751, !llvm.loop !752

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_invariant_p_heap_free() unnamed_addr #15 !prof !321 !PGOFuncName !753 {
  %1 = load ptr, ptr @invariants, align 8, !tbaa !249
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !259

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #19
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @invariants, align 8, !tbaa !249
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !prof !323 !PGOFuncName !754 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !755

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !399
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !756

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !244
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !244
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #5 !prof !330 !PGOFuncName !757 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !249
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !276
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !397
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #19
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #15 !prof !301 !PGOFuncName !758 {
  %2 = load ptr, ptr %0, align 8, !tbaa !249
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !305

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !249
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nounwind }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!242}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241}
!36 = !{ptr @move_loop_invariants, ptr @df_analyze, i64 1}
!37 = !{ptr @move_loop_invariants, ptr @ira_set_pseudo_classes, i64 1}
!38 = !{ptr @move_loop_invariants, ptr @calculate_loop_reg_pressure, i64 1}
!39 = !{ptr @move_loop_invariants, ptr @df_set_flags, i64 2535}
!40 = !{ptr @move_loop_invariants, ptr @fel_init, i64 5070}
!41 = !{ptr @move_loop_invariants, ptr @move_single_loop_invariants, i64 13961}
!42 = !{ptr @move_loop_invariants, ptr @fel_next, i64 27924}
!43 = !{ptr @move_loop_invariants, ptr @free_loop_data, i64 13962}
!44 = !{ptr @move_loop_invariants, ptr @free_reg_info, i64 1}
!45 = !{ptr @move_loop_invariants, ptr @free, i64 2535}
!46 = !{ptr @fel_init, ptr @number_of_loops, i64 5069}
!47 = !{ptr @fel_init, ptr @VEC_int_heap_alloc, i64 5069}
!48 = !{ptr @fel_init, ptr @VEC_int_base_quick_push, i64 41293}
!49 = !{ptr @fel_init, ptr @loop_outer, i64 26292}
!50 = !{ptr @fel_init, ptr @fel_next, i64 5069}
!51 = !{ptr @move_single_loop_invariants, ptr @init_inv_motion_data, i64 13967}
!52 = !{ptr @move_single_loop_invariants, ptr @find_invariants, i64 13967}
!53 = !{ptr @move_single_loop_invariants, ptr @optimize_loop_for_speed_p, i64 13967}
!54 = !{ptr @move_single_loop_invariants, ptr @find_invariants_to_move, i64 13967}
!55 = !{ptr @move_single_loop_invariants, ptr @move_invariants, i64 13967}
!56 = !{ptr @move_single_loop_invariants, ptr @free_inv_motion_data, i64 13967}
!57 = !{ptr @fel_next, ptr @VEC_int_base_iterate, i64 33005}
!58 = !{ptr @fel_next, ptr @get_loop, i64 27934}
!59 = !{ptr @fel_next, ptr @VEC_int_heap_free, i64 5071}
!60 = !{ptr @free_loop_data, ptr @bitmap_clear, i64 27932}
!61 = !{ptr @free_loop_data, ptr @free, i64 13966}
!62 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 26874}
!63 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 21803}
!64 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 5070}
!65 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 5069}
!66 = !{ptr @init_inv_motion_data, ptr @VEC_invariant_p_heap_alloc, i64 13967}
!67 = !{ptr @find_invariants, ptr @bitmap_obstack_alloc_stat, i64 55868}
!68 = !{ptr @find_invariants, ptr @get_loop_body_in_dom_order, i64 13967}
!69 = !{ptr @find_invariants, ptr @find_exits, i64 13967}
!70 = !{ptr @find_invariants, ptr @compute_always_reached, i64 27934}
!71 = !{ptr @find_invariants, ptr @find_defs, i64 13967}
!72 = !{ptr @find_invariants, ptr @find_invariants_body, i64 13967}
!73 = !{ptr @find_invariants, ptr @merge_identical_invariants, i64 13967}
!74 = !{ptr @find_invariants, ptr @bitmap_obstack_free, i64 55868}
!75 = !{ptr @find_invariants, ptr @free, i64 13967}
!76 = !{ptr @find_invariants_to_move, ptr @VEC_invariant_p_base_length, i64 13967}
!77 = !{ptr @find_invariants_to_move, ptr @best_gain_for_invariant, i64 9576}
!78 = !{ptr @find_invariants_to_move, ptr @set_move_mark, i64 2636}
!79 = !{ptr @move_invariants, ptr @VEC_invariant_p_base_iterate, i64 88764}
!80 = !{ptr @move_invariants, ptr @move_invariant_reg, i64 74784}
!81 = !{ptr @move_invariants, ptr @resize_reg_info, i64 1}
!82 = !{ptr @move_invariants, ptr @rhs_regno, i64 8}
!83 = !{ptr @move_invariants, ptr @reg_preferred_class, i64 5}
!84 = !{ptr @move_invariants, ptr @reg_alternate_class, i64 5}
!85 = !{ptr @move_invariants, ptr @reg_cover_class, i64 5}
!86 = !{ptr @move_invariants, ptr @setup_reg_classes, i64 8}
!87 = !{ptr @free_inv_motion_data, ptr @check_invariant_table_size, i64 13967}
!88 = !{ptr @free_inv_motion_data, ptr @VEC_invariant_p_base_iterate, i64 88751}
!89 = !{ptr @free_inv_motion_data, ptr @fancy_abort, i64 1}
!90 = !{ptr @free_inv_motion_data, ptr @free_use_list, i64 29878}
!91 = !{ptr @free_inv_motion_data, ptr @free, i64 104662}
!92 = !{ptr @free_inv_motion_data, ptr @bitmap_obstack_free, i64 74784}
!93 = !{ptr @free_inv_motion_data, ptr @VEC_invariant_p_heap_free, i64 13967}
!94 = !{ptr @VEC_invariant_p_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 13967}
!95 = !{ptr @find_exits, ptr @bitmap_set_bit, i64 117977}
!96 = !{ptr @find_exits, ptr @ei_start_1, i64 116286}
!97 = !{ptr @find_exits, ptr @ei_cond, i64 302837}
!98 = !{ptr @find_exits, ptr @flow_bb_inside_loop_p, i64 186551}
!99 = !{ptr @find_exits, ptr @find_common_loop, i64 24166}
!100 = !{ptr @find_exits, ptr @ei_next, i64 186551}
!101 = !{ptr @find_exits, ptr @flow_loop_nested_p, i64 17029}
!102 = !{ptr @find_exits, ptr @xcalloc, i64 13966}
!103 = !{ptr @find_exits, ptr @bitmap_initialize_stat, i64 27932}
!104 = !{ptr @compute_always_reached, ptr @dominated_by_p, i64 97843}
!105 = !{ptr @compute_always_reached, ptr @bitmap_set_bit, i64 33982}
!106 = !{ptr @compute_always_reached, ptr @bitmap_bit_p, i64 97843}
!107 = !{ptr @find_defs, ptr @bitmap_obstack_alloc_stat, i64 13967}
!108 = !{ptr @find_defs, ptr @bitmap_set_bit, i64 268555}
!109 = !{ptr @find_defs, ptr @df_remove_problem, i64 13967}
!110 = !{ptr @find_defs, ptr @df_process_deferred_rescans, i64 13967}
!111 = !{ptr @find_defs, ptr @df_chain_add_problem, i64 13967}
!112 = !{ptr @find_defs, ptr @df_set_blocks, i64 13967}
!113 = !{ptr @find_defs, ptr @df_analyze, i64 13967}
!114 = !{ptr @find_defs, ptr @df_dump_region, i64 1}
!115 = !{ptr @find_defs, ptr @fwrite, i64 2}
!116 = !{ptr @find_defs, ptr @get_insns, i64 1}
!117 = !{ptr @find_defs, ptr @print_rtl_with_bb, i64 1}
!118 = !{ptr @find_defs, ptr @check_invariant_table_size, i64 13967}
!119 = !{ptr @find_defs, ptr @bitmap_obstack_free, i64 13967}
!120 = !{ptr @find_invariants_body, ptr @bitmap_bit_p, i64 537110}
!121 = !{ptr @find_invariants_body, ptr @find_invariants_bb, i64 268555}
!122 = !{ptr @merge_identical_invariants, ptr @VEC_invariant_p_base_length, i64 13967}
!123 = !{ptr @merge_identical_invariants, ptr @htab_create, i64 13967}
!124 = !{ptr @merge_identical_invariants, ptr @VEC_invariant_p_base_iterate, i64 88751}
!125 = !{ptr @merge_identical_invariants, ptr @find_identical_invariants, i64 74784}
!126 = !{ptr @merge_identical_invariants, ptr @htab_delete, i64 13967}
!127 = !{ptr @ei_cond, ptr @ei_end_p, i64 302858}
!128 = !{ptr @ei_cond, ptr @ei_edge, i64 186564}
!129 = !{ptr @ei_next, ptr @ei_container, i64 373127}
!130 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 186564}
!131 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!132 = !{ptr @ei_end_p, ptr @ei_container, i64 605715}
!133 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 302858}
!134 = !{ptr @ei_edge, ptr @ei_container, i64 373127}
!135 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 186564}
!136 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!137 = !{ptr @check_invariant_table_size, ptr @xrealloc, i64 4929}
!138 = !{ptr @find_invariants_bb, ptr @find_invariants_insn, i64 909889}
!139 = !{ptr @find_invariants_insn, ptr @find_invariant_insn, i64 913883}
!140 = !{ptr @find_invariants_insn, ptr @record_uses, i64 913883}
!141 = !{ptr @find_invariant_insn, ptr @single_set_2, i64 1}
!142 = !{ptr @find_invariant_insn, ptr @rhs_regno, i64 611165}
!143 = !{ptr @find_invariant_insn, ptr @may_assign_reg_p, i64 913881}
!144 = !{ptr @find_invariant_insn, ptr @check_maybe_invariant, i64 588388}
!145 = !{ptr @find_invariant_insn, ptr @can_throw_internal, i64 365406}
!146 = !{ptr @find_invariant_insn, ptr @may_trap_or_fault_p, i64 365405}
!147 = !{ptr @find_invariant_insn, ptr @bitmap_obstack_alloc_stat, i64 319820}
!148 = !{ptr @find_invariant_insn, ptr @check_dependencies, i64 319820}
!149 = !{ptr @find_invariant_insn, ptr @bitmap_obstack_free, i64 243444}
!150 = !{ptr @find_invariant_insn, ptr @create_new_invariant, i64 76375}
!151 = !{ptr @find_invariant_insn, ptr @xcalloc, i64 30513}
!152 = !{ptr @find_invariant_insn, ptr @df_find_def, i64 30513}
!153 = !{ptr @find_invariant_insn, ptr @check_invariant_table_size, i64 30513}
!154 = !{ptr @record_uses, ptr @invariant_for_use, i64 1107608}
!155 = !{ptr @record_uses, ptr @record_use, i64 12562}
!156 = !{ptr @may_assign_reg_p, ptr @can_copy_p, i64 739260}
!157 = !{ptr @may_assign_reg_p, ptr @rhs_regno, i64 435358}
!158 = !{ptr @check_maybe_invariant, ptr @check_maybe_invariant, i64 298918}
!159 = !{ptr @check_dependencies, ptr @check_dependency, i64 426790}
!160 = !{ptr @create_new_invariant, ptr @xmalloc, i64 74788}
!161 = !{ptr @create_new_invariant, ptr @single_set_2, i64 1}
!162 = !{ptr @create_new_invariant, ptr @optimize_bb_for_speed_p, i64 74788}
!163 = !{ptr @create_new_invariant, ptr @rtx_cost, i64 74788}
!164 = !{ptr @create_new_invariant, ptr @address_cost, i64 29879}
!165 = !{ptr @create_new_invariant, ptr @VEC_invariant_p_base_length, i64 74788}
!166 = !{ptr @create_new_invariant, ptr @VEC_invariant_p_heap_safe_push, i64 74788}
!167 = !{ptr @create_new_invariant, ptr @fprintf, i64 1}
!168 = !{ptr @create_new_invariant, ptr @bitmap_print, i64 1}
!169 = !{ptr @check_dependency, ptr @check_invariant_table_size, i64 203230}
!170 = !{ptr @check_dependency, ptr @fancy_abort, i64 1}
!171 = !{ptr @check_dependency, ptr @dominated_by_p, i64 8043}
!172 = !{ptr @check_dependency, ptr @bitmap_set_bit, i64 8028}
!173 = !{ptr @VEC_invariant_p_heap_safe_push, ptr @VEC_invariant_p_heap_reserve, i64 74788}
!174 = !{ptr @VEC_invariant_p_heap_safe_push, ptr @VEC_invariant_p_base_quick_push, i64 74788}
!175 = !{ptr @VEC_invariant_p_heap_reserve, ptr @VEC_invariant_p_base_space, i64 74788}
!176 = !{ptr @VEC_invariant_p_heap_reserve, ptr @vec_heap_p_reserve, i64 143}
!177 = !{ptr @invariant_for_use, ptr @check_invariant_table_size, i64 758903}
!178 = !{ptr @invariant_for_use, ptr @dominated_by_p, i64 32255}
!179 = !{ptr @record_use, ptr @xmalloc, i64 12560}
!180 = !{ptr @eq_invariant_expr, ptr @invariant_expr_equal_p, i64 53427}
!181 = !{ptr @find_identical_invariants, ptr @bmp_iter_set_init, i64 74787}
!182 = !{ptr @find_identical_invariants, ptr @bmp_iter_set, i64 82695}
!183 = !{ptr @find_identical_invariants, ptr @VEC_invariant_p_base_index, i64 7908}
!184 = !{ptr @find_identical_invariants, ptr @find_identical_invariants, i64 7908}
!185 = !{ptr @find_identical_invariants, ptr @bmp_iter_next, i64 7908}
!186 = !{ptr @find_identical_invariants, ptr @single_set_2, i64 1}
!187 = !{ptr @find_identical_invariants, ptr @find_or_insert_inv, i64 74787}
!188 = !{ptr @invariant_expr_equal_p, ptr @rtx_equal_p, i64 44642}
!189 = !{ptr @invariant_expr_equal_p, ptr @df_find_use, i64 27740}
!190 = !{ptr @invariant_expr_equal_p, ptr @invariant_for_use, i64 27738}
!191 = !{ptr @invariant_expr_equal_p, ptr @fancy_abort, i64 2}
!192 = !{ptr @invariant_expr_equal_p, ptr @invariant_expr_equal_p, i64 1573}
!193 = !{ptr @find_or_insert_inv, ptr @hash_invariant_expr_1, i64 74788}
!194 = !{ptr @find_or_insert_inv, ptr @htab_find_slot_with_hash, i64 74788}
!195 = !{ptr @find_or_insert_inv, ptr @xmalloc, i64 26779}
!196 = !{ptr @hash_invariant_expr_1, ptr @hash_rtx, i64 69561}
!197 = !{ptr @hash_invariant_expr_1, ptr @df_find_use, i64 22659}
!198 = !{ptr @hash_invariant_expr_1, ptr @invariant_for_use, i64 22658}
!199 = !{ptr @hash_invariant_expr_1, ptr @fancy_abort, i64 1}
!200 = !{ptr @hash_invariant_expr_1, ptr @hash_invariant_expr_1, i64 5509}
!201 = !{ptr @best_gain_for_invariant, ptr @VEC_invariant_p_base_iterate, i64 164164}
!202 = !{ptr @best_gain_for_invariant, ptr @gain_for_invariant, i64 47223}
!203 = !{ptr @set_move_mark, ptr @VEC_invariant_p_base_index, i64 5592}
!204 = !{ptr @set_move_mark, ptr @fprintf, i64 1}
!205 = !{ptr @set_move_mark, ptr @bmp_iter_set_init, i64 2793}
!206 = !{ptr @set_move_mark, ptr @bmp_iter_set, i64 2955}
!207 = !{ptr @set_move_mark, ptr @set_move_mark, i64 162}
!208 = !{ptr @set_move_mark, ptr @bmp_iter_next, i64 162}
!209 = !{ptr @gain_for_invariant, ptr @get_inv_cost, i64 47228}
!210 = !{ptr @gain_for_invariant, ptr @estimate_reg_pressure_cost, i64 94454}
!211 = !{ptr @get_inv_cost, ptr @VEC_invariant_p_base_index, i64 61015}
!212 = !{ptr @get_inv_cost, ptr @get_cover_class_and_nregs, i64 2}
!213 = !{ptr @get_inv_cost, ptr @single_set_2, i64 1}
!214 = !{ptr @get_inv_cost, ptr @constant_pool_constant_p, i64 102}
!215 = !{ptr @get_inv_cost, ptr @bmp_iter_set_init, i64 51390}
!216 = !{ptr @get_inv_cost, ptr @bmp_iter_set, i64 58284}
!217 = !{ptr @get_inv_cost, ptr @get_inv_cost, i64 6894}
!218 = !{ptr @get_inv_cost, ptr @bmp_iter_next, i64 6894}
!219 = !{ptr @move_invariant_reg, ptr @VEC_invariant_p_base_index, i64 152412}
!220 = !{ptr @move_invariant_reg, ptr @loop_preheader_edge, i64 76206}
!221 = !{ptr @move_invariant_reg, ptr @bmp_iter_set_init, i64 2793}
!222 = !{ptr @move_invariant_reg, ptr @bmp_iter_set, i64 2954}
!223 = !{ptr @move_invariant_reg, ptr @move_invariant_reg, i64 1420}
!224 = !{ptr @move_invariant_reg, ptr @bmp_iter_next, i64 161}
!225 = !{ptr @move_invariant_reg, ptr @single_set_2, i64 4}
!226 = !{ptr @move_invariant_reg, ptr @rhs_regno, i64 2792}
!227 = !{ptr @move_invariant_reg, ptr @gen_reg_rtx_and_attrs, i64 2793}
!228 = !{ptr @move_invariant_reg, ptr @validate_change, i64 2793}
!229 = !{ptr @move_invariant_reg, ptr @df_insn_rescan, i64 12790}
!230 = !{ptr @move_invariant_reg, ptr @gen_move_insn, i64 4049}
!231 = !{ptr @move_invariant_reg, ptr @emit_insn_after, i64 4049}
!232 = !{ptr @move_invariant_reg, ptr @reorder_insns, i64 2792}
!233 = !{ptr @move_invariant_reg, ptr @find_reg_note, i64 2792}
!234 = !{ptr @move_invariant_reg, ptr @check_maybe_invariant, i64 22}
!235 = !{ptr @move_invariant_reg, ptr @remove_note, i64 43}
!236 = !{ptr @move_invariant_reg, ptr @delete_insn, i64 1257}
!237 = !{ptr @move_invariant_reg, ptr @fprintf, i64 2}
!238 = !{ptr @free_use_list, ptr @free, i64 12561}
!239 = !{ptr @VEC_invariant_p_heap_free, ptr @free, i64 13966}
!240 = !{ptr @get_loop, ptr @VEC_loop_p_base_index, i64 27934}
!241 = !{ptr @VEC_int_heap_free, ptr @free, i64 5069}
!242 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!243 = !{!"function_entry_count", i64 2535}
!244 = !{!245, !245, i64 0}
!245 = !{!"int", !246, i64 0}
!246 = !{!"omnipotent char", !247, i64 0}
!247 = !{!"Simple C/C++ TBAA"}
!248 = !{!"branch_weights", i32 2536, i32 1}
!249 = !{!250, !250, i64 0}
!250 = !{!"any pointer", !246, i64 0}
!251 = !{!"branch_weights", i32 1, i32 2535}
!252 = !{!253, !245, i64 36}
!253 = !{!"loop", !245, i64 0, !245, i64 4, !250, i64 8, !250, i64 16, !254, i64 24, !245, i64 32, !245, i64 36, !250, i64 40, !250, i64 48, !250, i64 56, !250, i64 64, !250, i64 72, !255, i64 80, !255, i64 96, !246, i64 112, !246, i64 113, !245, i64 116, !250, i64 120, !250, i64 128, !246, i64 136, !250, i64 144}
!254 = !{!"lpt_decision", !245, i64 0, !245, i64 4}
!255 = !{!"", !256, i64 0, !256, i64 8}
!256 = !{!"long", !246, i64 0}
!257 = !{!258, !245, i64 8}
!258 = !{!"param_info", !250, i64 0, !245, i64 8, !246, i64 12, !245, i64 16, !245, i64 20, !250, i64 24}
!259 = !{!"branch_weights", i32 1, i32 13968}
!260 = !{!"branch_weights", i32 2535, i32 11433}
!261 = distinct !{!261, !262}
!262 = !{!"llvm.loop.mustprogress"}
!263 = distinct !{!263, !262}
!264 = !{!"function_entry_count", i64 0}
!265 = !{!"loop-invariant.c:calculate_loop_reg_pressure"}
!266 = !{!253, !250, i64 64}
!267 = distinct !{!267, !262}
!268 = !{!269, !250, i64 8}
!269 = !{!"function", !250, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !250, i64 32, !250, i64 40, !250, i64 48, !250, i64 56, !250, i64 64, !250, i64 72, !250, i64 80, !250, i64 88, !250, i64 96, !245, i64 104, !245, i64 108, !245, i64 112, !245, i64 116, !245, i64 120, !245, i64 124, !250, i64 128, !245, i64 136, !245, i64 137, !245, i64 138, !245, i64 138, !245, i64 138, !245, i64 138, !245, i64 138, !245, i64 138, !245, i64 138, !245, i64 139, !245, i64 139, !245, i64 139, !245, i64 139, !245, i64 139, !245, i64 139, !245, i64 139}
!270 = !{!271, !250, i64 0}
!271 = !{!"control_flow_graph", !250, i64 0, !250, i64 8, !250, i64 16, !245, i64 24, !245, i64 28, !245, i64 32, !250, i64 40, !245, i64 48, !246, i64 52, !246, i64 60, !245, i64 68, !245, i64 72}
!272 = !{!273, !250, i64 56}
!273 = !{!"basic_block_def", !250, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !246, i64 32, !250, i64 48, !250, i64 56, !246, i64 64, !256, i64 72, !245, i64 80, !245, i64 84, !245, i64 88, !245, i64 92, !245, i64 96}
!274 = !{!271, !250, i64 8}
!275 = !{!273, !250, i64 24}
!276 = !{!269, !250, i64 32}
!277 = !{!278, !250, i64 24}
!278 = !{!"loops", !245, i64 0, !250, i64 8, !250, i64 16, !250, i64 24}
!279 = !{!273, !245, i64 80}
!280 = !{!281, !250, i64 16}
!281 = !{!"df_lr_bb_info", !250, i64 0, !250, i64 8, !250, i64 16, !250, i64 24}
!282 = distinct !{!282, !262}
!283 = distinct !{!283, !262}
!284 = !{i8 0, i8 2}
!285 = distinct !{!285, !262}
!286 = !{!246, !246, i64 0}
!287 = !{!288, !250, i64 8}
!288 = !{!"rtl_bb_info", !250, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !245, i64 32}
!289 = distinct !{!289, !262}
!290 = distinct !{!290, !262}
!291 = distinct !{!291, !262}
!292 = distinct !{!292, !262}
!293 = distinct !{!293, !262}
!294 = distinct !{!294, !262}
!295 = !{!253, !245, i64 0}
!296 = !{!253, !250, i64 8}
!297 = distinct !{!297, !262}
!298 = distinct !{!298, !262}
!299 = distinct !{!299, !262}
!300 = distinct !{!300, !262}
!301 = !{!"function_entry_count", i64 5070}
!302 = !{!"loop-invariant.c:fel_init"}
!303 = !{!304, !245, i64 8}
!304 = !{!"", !250, i64 0, !245, i64 8}
!305 = !{!"branch_weights", i32 1, i32 5071}
!306 = !{!304, !250, i64 0}
!307 = !{!"branch_weights", i32 2536, i32 2536}
!308 = !{!253, !250, i64 48}
!309 = !{!"branch_weights", i32 2536, i32 4304}
!310 = distinct !{!310, !262}
!311 = !{!"branch_weights", i32 2536, i32 13968}
!312 = !{!253, !250, i64 56}
!313 = !{!"branch_weights", i32 9804, i32 6700}
!314 = !{!"branch_weights", i32 6700, i32 2966}
!315 = distinct !{!315, !262}
!316 = !{!"branch_weights", i32 2536, i32 7269}
!317 = !{!"branch_weights", i32 9235, i32 7269}
!318 = !{!"branch_weights", i32 9804, i32 9235}
!319 = !{!"branch_weights", i32 2536, i32 13967}
!320 = distinct !{!320, !262}
!321 = !{!"function_entry_count", i64 13967}
!322 = !{!"loop-invariant.c:move_single_loop_invariants"}
!323 = !{!"function_entry_count", i64 33004}
!324 = !{!"loop-invariant.c:fel_next"}
!325 = !{i32 0, i32 2}
!326 = !{!"branch_weights", i32 5071, i32 27935}
!327 = !{!"branch_weights", i32 1, i32 27935}
!328 = distinct !{!328, !262}
!329 = !{!"loop-invariant.c:free_loop_data"}
!330 = !{!"function_entry_count", i64 27934}
!331 = !{!"loop-invariant.c:bitmap_initialize_stat"}
!332 = !{!333, !250, i64 24}
!333 = !{!"bitmap_head_def", !250, i64 0, !250, i64 8, !245, i64 16, !250, i64 24}
!334 = !{!"loop-invariant.c:df_lr_get_bb_info"}
!335 = !{!336, !245, i64 16}
!336 = !{!"dataflow", !250, i64 0, !250, i64 8, !245, i64 16, !250, i64 24, !250, i64 32, !250, i64 40, !245, i64 48, !246, i64 52, !246, i64 53, !246, i64 54}
!337 = !{!336, !250, i64 8}
!338 = !{!"function_entry_count", i64 26874}
!339 = !{!"loop-invariant.c:loop_outer"}
!340 = !{!253, !250, i64 40}
!341 = !{!"branch_weights", i32 5071, i32 21805}
!342 = !{!"function_entry_count", i64 131768}
!343 = !{!"loop-invariant.c:bmp_iter_set_init"}
!344 = !{!333, !250, i64 0}
!345 = !{!346, !250, i64 0}
!346 = !{!"", !250, i64 0, !250, i64 8, !245, i64 16, !256, i64 24}
!347 = !{!346, !250, i64 8}
!348 = !{!"branch_weights", i32 116694, i32 15076}
!349 = !{!350, !245, i64 16}
!350 = !{!"bitmap_element_def", !250, i64 0, !250, i64 8, !245, i64 16, !246, i64 24}
!351 = !{!"branch_weights", i32 131421, i32 349}
!352 = !{!346, !245, i64 16}
!353 = !{!256, !256, i64 0}
!354 = !{!346, !256, i64 24}
!355 = !{!"function_entry_count", i64 146890}
!356 = !{!"loop-invariant.c:bmp_iter_set"}
!357 = !{!"branch_weights", i32 132410, i32 14482}
!358 = !{!"branch_weights", i32 15122, i32 1}
!359 = !{!"branch_weights", i32 118415, i32 15122}
!360 = distinct !{!360, !262}
!361 = !{!"branch_weights", i32 1, i32 131768}
!362 = !{!"branch_weights", i32 131128, i32 642}
!363 = !{!"branch_weights", i32 131768, i32 1}
!364 = distinct !{!364, !262}
!365 = !{!350, !250, i64 0}
!366 = !{!"branch_weights", i32 131769, i32 1}
!367 = !{!"loop-invariant.c:change_pressure"}
!368 = !{!"function_entry_count", i64 15122}
!369 = !{!"loop-invariant.c:bmp_iter_next"}
!370 = !{!"loop-invariant.c:mark_ref_regs"}
!371 = distinct !{!371, !262}
!372 = !{!373, !245, i64 0}
!373 = !{!"rtvec_def", !245, i64 0, !246, i64 8}
!374 = distinct !{!374, !262}
!375 = distinct !{!375, !262}
!376 = !{!"loop-invariant.c:mark_reg_clobber"}
!377 = !{!"loop-invariant.c:mark_reg_death"}
!378 = distinct !{!378, !262}
!379 = !{!"loop-invariant.c:mark_reg_store"}
!380 = distinct !{!380, !262}
!381 = !{!"function_entry_count", i64 1088468}
!382 = !{!"loop-invariant.c:rhs_regno"}
!383 = !{!"loop-invariant.c:get_regno_cover_class"}
!384 = !{!"loop-invariant.c:loop_depth"}
!385 = !{!"function_entry_count", i64 31944}
!386 = !{!"loop-invariant.c:VEC_loop_p_base_length"}
!387 = !{!"branch_weights", i32 5071, i32 26875}
!388 = !{!389, !245, i64 0}
!389 = !{!"VEC_loop_p_base", !245, i64 0, !245, i64 4, !246, i64 8}
!390 = !{!"function_entry_count", i64 49738}
!391 = !{!"loop-invariant.c:VEC_loop_p_base_index"}
!392 = !{!"loop-invariant.c:mark_regno_death"}
!393 = !{!"loop-invariant.c:mark_regno_live"}
!394 = distinct !{!394, !262}
!395 = !{!"loop-invariant.c:VEC_int_heap_alloc"}
!396 = !{!"loop-invariant.c:number_of_loops"}
!397 = !{!278, !250, i64 8}
!398 = !{!"loop-invariant.c:VEC_int_base_quick_push"}
!399 = !{!400, !245, i64 0}
!400 = !{!"VEC_int_base", !245, i64 0, !245, i64 4, !246, i64 8}
!401 = !{!"loop-invariant.c:init_inv_motion_data"}
!402 = !{!"loop-invariant.c:find_invariants"}
!403 = !{!"loop-invariant.c:find_invariants_to_move"}
!404 = !{!"branch_weights", i32 7028, i32 6941}
!405 = !{!"branch_weights", i32 6941, i32 1}
!406 = !{!407, !245, i64 244}
!407 = !{!"df", !246, i64 0, !246, i64 64, !250, i64 128, !408, i64 136, !408, i64 176, !250, i64 216, !250, i64 224, !250, i64 232, !245, i64 240, !245, i64 244, !250, i64 248, !245, i64 256, !245, i64 260, !250, i64 264, !250, i64 272, !250, i64 280, !250, i64 288, !250, i64 296, !250, i64 304, !250, i64 312, !250, i64 320, !250, i64 328, !250, i64 336, !245, i64 344, !245, i64 348, !250, i64 352, !245, i64 360, !245, i64 364, !246, i64 365, !246, i64 366}
!408 = !{!"df_ref_info", !250, i64 0, !250, i64 8, !250, i64 16, !245, i64 24, !245, i64 28, !245, i64 32, !245, i64 36}
!409 = !{!"branch_weights", i32 1, i32 6940}
!410 = !{!407, !250, i64 216}
!411 = !{!"branch_weights", i32 10450660, i32 1}
!412 = !{!407, !250, i64 224}
!413 = !{!"branch_weights", i32 6940, i32 10443720}
!414 = distinct !{!414, !262}
!415 = !{!"branch_weights", i32 -2147483648, i32 0}
!416 = distinct !{!416, !262}
!417 = !{i32 0, i32 -2147483648}
!418 = !{!"branch_weights", i32 4305, i32 2636}
!419 = !{!420, !245, i64 0}
!420 = !{!"invariant", !245, i64 0, !245, i64 4, !250, i64 8, !245, i64 16, !250, i64 24, !250, i64 32, !246, i64 40, !246, i64 41, !246, i64 42, !245, i64 44, !250, i64 48, !245, i64 56}
!421 = !{!"branch_weights", i32 2636, i32 1}
!422 = distinct !{!422, !262}
!423 = !{!"branch_weights", i32 2636, i32 0}
!424 = distinct !{!424, !262}
!425 = !{!"loop-invariant.c:move_invariants"}
!426 = !{!"branch_weights", i32 1, i32 13967}
!427 = !{!"branch_weights", i32 13967, i32 60822}
!428 = distinct !{!428, !262}
!429 = !{!"branch_weights", i32 13968, i32 1}
!430 = !{!420, !250, i64 8}
!431 = !{!420, !245, i64 16}
!432 = distinct !{!432, !262}
!433 = !{!"loop-invariant.c:free_inv_motion_data"}
!434 = !{!407, !245, i64 164}
!435 = !{!"branch_weights", i32 3034973, i32 29880}
!436 = !{!420, !250, i64 24}
!437 = !{!"branch_weights", i32 1, i32 29880}
!438 = !{!439, !250, i64 0}
!439 = !{!"def", !250, i64 0, !245, i64 8, !245, i64 12, !245, i64 16}
!440 = !{!"branch_weights", i32 3050885, i32 13967}
!441 = distinct !{!441, !262}
!442 = !{!420, !250, i64 48}
!443 = distinct !{!443, !262}
!444 = !{!"loop-invariant.c:VEC_invariant_p_heap_alloc"}
!445 = !{!"loop-invariant.c:find_exits"}
!446 = !{!"branch_weights", i32 116295, i32 152280}
!447 = !{!"branch_weights", i32 1, i32 145}
!448 = !{!"branch_weights", i32 97545, i32 525025}
!449 = !{!"branch_weights", i32 19709, i32 505317}
!450 = !{!"branch_weights", i32 -1182410845, i32 159346183}
!451 = !{!"branch_weights", i32 145, i32 622279}
!452 = distinct !{!452, !262}
!453 = !{i64 0, i64 4, !244, i64 8, i64 8, !249}
!454 = !{i64 0, i64 8, !249}
!455 = !{!"branch_weights", i32 1, i32 116294}
!456 = !{!457, !250, i64 8}
!457 = !{!"edge_def", !250, i64 0, !250, i64 8, !246, i64 16, !250, i64 24, !250, i64 32, !245, i64 40, !245, i64 44, !245, i64 48, !245, i64 52, !256, i64 56}
!458 = !{!"branch_weights", i32 24168, i32 162398}
!459 = !{!"branch_weights", i32 116294, i32 70271}
!460 = distinct !{!460, !262}
!461 = !{!"branch_weights", i32 23612, i32 128669}
!462 = !{!463, !246, i64 8}
!463 = !{!"loop_data", !250, i64 0, !246, i64 8, !246, i64 12, !333, i64 120, !333, i64 152}
!464 = !{!"branch_weights", i32 6625, i32 16988}
!465 = !{!463, !250, i64 0}
!466 = !{!"branch_weights", i32 6582, i32 17031}
!467 = !{!"branch_weights", i32 16310, i32 722}
!468 = !{!"branch_weights", i32 254607, i32 13967}
!469 = distinct !{!469, !262}
!470 = !{!"loop-invariant.c:compute_always_reached"}
!471 = !{!"branch_weights", i32 1, i32 175}
!472 = !{!"branch_weights", i32 1574177, i32 175}
!473 = distinct !{!473, !262}
!474 = !{!253, !250, i64 16}
!475 = !{!"branch_weights", i32 64223, i32 34175}
!476 = !{!"branch_weights", i32 70473, i32 27925}
!477 = !{!"loop-invariant.c:find_defs"}
!478 = distinct !{!478, !262}
!479 = !{!"loop-invariant.c:find_invariants_body"}
!480 = distinct !{!480, !262}
!481 = !{!"loop-invariant.c:merge_identical_invariants"}
!482 = distinct !{!482, !262}
!483 = !{!"function_entry_count", i64 116294}
!484 = !{!"loop-invariant.c:ei_start_1"}
!485 = !{!"function_entry_count", i64 302858}
!486 = !{!"loop-invariant.c:ei_cond"}
!487 = !{!"branch_weights", i32 186565, i32 116295}
!488 = !{!"function_entry_count", i64 186564}
!489 = !{!"loop-invariant.c:ei_next"}
!490 = !{!"branch_weights", i32 1, i32 186565}
!491 = !{!"branch_weights", i32 186565, i32 1}
!492 = !{!493, !245, i64 0}
!493 = !{!"", !245, i64 0, !250, i64 8}
!494 = !{!"loop-invariant.c:ei_end_p"}
!495 = !{!"branch_weights", i32 1, i32 302859}
!496 = !{!"loop-invariant.c:ei_edge"}
!497 = !{!"function_entry_count", i64 489422}
!498 = !{!"loop-invariant.c:VEC_edge_base_length"}
!499 = !{!"branch_weights", i32 1, i32 489423}
!500 = !{!501, !245, i64 0}
!501 = !{!"VEC_edge_base", !245, i64 0, !245, i64 4, !246, i64 8}
!502 = !{!"function_entry_count", i64 1351972}
!503 = !{!"loop-invariant.c:ei_container"}
!504 = !{!"branch_weights", i32 1, i32 1351973}
!505 = !{!"loop-invariant.c:VEC_edge_base_index"}
!506 = !{!"function_entry_count", i64 1019950}
!507 = !{!"loop-invariant.c:check_invariant_table_size"}
!508 = !{!"branch_weights", i32 4929, i32 1015023}
!509 = !{!"function_entry_count", i64 268573}
!510 = !{!"loop-invariant.c:find_invariants_bb"}
!511 = !{!"branch_weights", i32 1, i32 286}
!512 = !{!"branch_weights", i32 268574, i32 1343488}
!513 = !{!"branch_weights", i32 1038808654, i32 -2085135840}
!514 = !{!"branch_weights", i32 854673, i32 59212}
!515 = !{!"branch_weights", i32 2197, i32 57016}
!516 = !{!"branch_weights", i32 -202422390, i32 329655253}
!517 = !{!"branch_weights", i32 286, i32 1611489}
!518 = distinct !{!518, !262}
!519 = !{!"function_entry_count", i64 913883}
!520 = !{!"loop-invariant.c:find_invariants_insn"}
!521 = !{!"loop-invariant.c:find_invariant_insn"}
!522 = !{!"branch_weights", i32 -602345543, i32 4040}
!523 = !{!"branch_weights", i32 773249, i32 1}
!524 = !{!"branch_weights", i32 598464, i32 296425}
!525 = !{!"branch_weights", i32 214955, i32 383510}
!526 = !{!"branch_weights", i32 318729, i32 576160}
!527 = !{!"branch_weights", i32 218348, i32 357813}
!528 = !{!"branch_weights", i32 357813, i32 1}
!529 = !{!"branch_weights", i32 -633079155, i32 521941507}
!530 = !{!"branch_weights", i32 238387, i32 74789}
!531 = !{!"branch_weights", i32 44910, i32 29880}
!532 = !{!"loop-invariant.c:record_uses"}
!533 = !{!407, !250, i64 248}
!534 = !{!535, !250, i64 16}
!535 = !{!"df_insn_info", !250, i64 0, !250, i64 8, !250, i64 16, !250, i64 24, !250, i64 32, !245, i64 40}
!536 = !{!"branch_weights", i32 1, i32 913883}
!537 = !{!"branch_weights", i32 1062517, i32 12503}
!538 = !{!"branch_weights", i32 913883, i32 161136}
!539 = distinct !{!539, !262}
!540 = !{!535, !250, i64 24}
!541 = !{!"branch_weights", i32 881294, i32 32590}
!542 = !{!"branch_weights", i32 32532, i32 59}
!543 = !{!"branch_weights", i32 32590, i32 0}
!544 = distinct !{!544, !262}
!545 = !{!"function_entry_count", i64 894887}
!546 = !{!"loop-invariant.c:may_assign_reg_p"}
!547 = !{!"branch_weights", i32 898850486, i32 -25232555}
!548 = !{!"branch_weights", i32 163104, i32 576160}
!549 = !{!"branch_weights", i32 435361, i32 140800}
!550 = !{!"branch_weights", i32 51852, i32 383510}
!551 = !{!"function_entry_count", i64 864801}
!552 = !{!"loop-invariant.c:check_maybe_invariant"}
!553 = !{!"branch_weights", i32 153029, i32 146857, i32 8, i32 1, i32 15535, i32 598, i32 845, i32 1, i32 1, i32 1, i32 32713, i32 322270, i32 192955, i32 1}
!554 = !{!"branch_weights", i32 53538489, i32 1358513519}
!555 = !{!"branch_weights", i32 1, i32 149215}
!556 = !{!"branch_weights", i32 148620481, i32 -776087872, i32 12191}
!557 = !{!"branch_weights", i32 11130, i32 277493}
!558 = distinct !{!558, !262}
!559 = !{!"branch_weights", i32 151597, i32 149215}
!560 = distinct !{!560, !262}
!561 = !{!"function_entry_count", i64 313174}
!562 = !{!"loop-invariant.c:check_dependencies"}
!563 = !{!"branch_weights", i32 1, i32 74788}
!564 = !{!"branch_weights", i32 74788, i32 282988}
!565 = distinct !{!565, !262}
!566 = !{!"branch_weights", i32 238387, i32 119390}
!567 = !{!"branch_weights", i32 71464, i32 3325}
!568 = !{!"branch_weights", i32 3325, i32 0}
!569 = distinct !{!569, !262}
!570 = !{!"branch_weights", i32 1, i32 3325}
!571 = !{!"function_entry_count", i64 74788}
!572 = !{!"loop-invariant.c:create_new_invariant"}
!573 = !{!"branch_weights", i32 598319, i32 1}
!574 = !{!"branch_weights", i32 72304, i32 1}
!575 = !{!420, !246, i64 40}
!576 = !{!420, !245, i64 44}
!577 = !{!420, !246, i64 41}
!578 = !{!420, !245, i64 56}
!579 = !{!420, !250, i64 32}
!580 = !{!420, !245, i64 4}
!581 = !{!439, !245, i64 16}
!582 = !{!"branch_weights", i32 74789, i32 1}
!583 = !{!"function_entry_count", i64 361099}
!584 = !{!"loop-invariant.c:check_dependency"}
!585 = !{!"branch_weights", i32 361091, i32 10}
!586 = !{!"branch_weights", i32 114686, i32 246406}
!587 = !{!588, !250, i64 8}
!588 = !{!"df_link", !250, i64 0, !250, i64 8}
!589 = !{!"branch_weights", i32 203233, i32 43174}
!590 = !{!588, !250, i64 0}
!591 = !{!"branch_weights", i32 195191, i32 8043}
!592 = !{!"branch_weights", i32 1, i32 8043}
!593 = !{!535, !250, i64 0}
!594 = !{!"branch_weights", i32 15, i32 8029}
!595 = !{!"function_entry_count", i64 102722}
!596 = !{!"loop-invariant.c:VEC_invariant_p_base_length"}
!597 = !{!"branch_weights", i32 1, i32 102723}
!598 = !{!599, !245, i64 0}
!599 = !{!"VEC_invariant_p_base", !245, i64 0, !245, i64 4, !246, i64 8}
!600 = !{!"loop-invariant.c:VEC_invariant_p_heap_safe_push"}
!601 = !{!"loop-invariant.c:VEC_invariant_p_heap_reserve"}
!602 = !{!"branch_weights", i32 143, i32 74647}
!603 = !{!"loop-invariant.c:VEC_invariant_p_base_quick_push"}
!604 = !{!"loop-invariant.c:VEC_invariant_p_base_space"}
!605 = !{!"branch_weights", i32 1, i32 74789}
!606 = !{!599, !245, i64 4}
!607 = !{!"function_entry_count", i64 1158011}
!608 = !{!"loop-invariant.c:invariant_for_use"}
!609 = !{!"branch_weights", i32 1, i32 1158012}
!610 = !{!"branch_weights", i32 1157968, i32 45}
!611 = !{!"branch_weights", i32 241896, i32 916073}
!612 = !{!"branch_weights", i32 758906, i32 157168}
!613 = !{!"branch_weights", i32 726652, i32 32255}
!614 = !{!"branch_weights", i32 1, i32 32255}
!615 = !{!"branch_weights", i32 69, i32 32187}
!616 = !{!"function_entry_count", i64 12560}
!617 = !{!"loop-invariant.c:record_use"}
!618 = !{!"branch_weights", i32 3, i32 12559}
!619 = !{!620, !250, i64 0}
!620 = !{!"use", !250, i64 0, !250, i64 8, !245, i64 16, !250, i64 24}
!621 = !{!620, !250, i64 8}
!622 = !{!620, !245, i64 16}
!623 = !{!620, !250, i64 24}
!624 = !{!439, !245, i64 8}
!625 = !{!"branch_weights", i32 958, i32 11604}
!626 = !{!439, !245, i64 12}
!627 = !{!"function_entry_count", i64 230}
!628 = !{!"loop-invariant.c:hash_invariant_expr"}
!629 = !{!630, !245, i64 20}
!630 = !{!"invariant_expr_entry", !250, i64 0, !250, i64 8, !245, i64 16, !245, i64 20}
!631 = !{!"function_entry_count", i64 56885}
!632 = !{!"loop-invariant.c:eq_invariant_expr"}
!633 = !{!630, !245, i64 16}
!634 = !{!"branch_weights", i32 53429, i32 3458}
!635 = !{!630, !250, i64 0}
!636 = !{!630, !250, i64 8}
!637 = !{!"function_entry_count", i64 430444}
!638 = !{!"loop-invariant.c:VEC_invariant_p_base_iterate"}
!639 = !{!"branch_weights", i32 1, i32 430445}
!640 = !{!"branch_weights", i32 378969, i32 51477}
!641 = !{!"function_entry_count", i64 82695}
!642 = !{!"loop-invariant.c:find_identical_invariants"}
!643 = !{!"branch_weights", i32 74789, i32 7908}
!644 = !{!"branch_weights", i32 66881, i32 7908}
!645 = !{!"branch_weights", i32 7908, i32 0}
!646 = distinct !{!646, !262}
!647 = !{!"branch_weights", i32 44100, i32 30690}
!648 = !{!"function_entry_count", i64 54885}
!649 = !{!"loop-invariant.c:invariant_expr_equal_p"}
!650 = !{!"branch_weights", i32 51400, i32 3487}
!651 = !{!"branch_weights", i32 51400, i32 1}
!652 = !{!"branch_weights", i32 829, i32 32688, i32 1, i32 1, i32 3999, i32 15, i32 1, i32 13873}
!653 = !{!"branch_weights", i32 1, i32 13873}
!654 = !{!"branch_weights", i32 47518779, i32 63695205}
!655 = !{!"branch_weights", i32 33958764, i32 779316}
!656 = !{!"branch_weights", i32 1, i32 5796}
!657 = !{!"branch_weights", i32 1, i32 706}
!658 = !{!"branch_weights", i32 33362176, i32 665625114, i32 450604, i32 444752, i32 438976}
!659 = !{!"branch_weights", i32 48, i32 1411}
!660 = distinct !{!660, !262}
!661 = !{!"branch_weights", i32 827, i32 706}
!662 = distinct !{!662, !262}
!663 = !{!"function_entry_count", i64 226925}
!664 = !{!"loop-invariant.c:VEC_invariant_p_base_index"}
!665 = !{!"loop-invariant.c:find_or_insert_inv"}
!666 = !{!"branch_weights", i32 26780, i32 48010}
!667 = !{!"function_entry_count", i64 80278}
!668 = !{!"loop-invariant.c:hash_invariant_expr_1"}
!669 = !{!"branch_weights", i32 2813, i32 46580, i32 1, i32 1, i32 8141, i32 88, i32 1, i32 22661}
!670 = !{!"branch_weights", i32 1, i32 22661}
!671 = !{!"branch_weights", i32 14756, i32 7906}
!672 = !{!"branch_weights", i32 1, i32 7906}
!673 = !{!"branch_weights", i32 1, i32 2812}
!674 = !{!"branch_weights", i32 20575296, i32 1872738496, i32 336384, i32 3317760, i32 326592}
!675 = distinct !{!675, !262}
!676 = !{!"branch_weights", i32 2750, i32 2812}
!677 = distinct !{!677, !262}
!678 = !{!"function_entry_count", i64 9575}
!679 = !{!"loop-invariant.c:best_gain_for_invariant"}
!680 = !{!"branch_weights", i32 1, i32 9575}
!681 = !{!"branch_weights", i32 150855, i32 3751}
!682 = !{!"branch_weights", i32 47229, i32 103627}
!683 = !{!"branch_weights", i32 2975, i32 44255}
!684 = !{!"branch_weights", i32 2975, i32 1}
!685 = distinct !{!685, !262}
!686 = !{!"branch_weights", i32 9575, i32 145030}
!687 = distinct !{!687, !262}
!688 = !{!"function_entry_count", i64 2796}
!689 = !{!"loop-invariant.c:set_move_mark"}
!690 = !{!"branch_weights", i32 2795, i32 3}
!691 = !{!"branch_weights", i32 2795, i32 1}
!692 = !{!"branch_weights", i32 2633, i32 162}
!693 = !{!"branch_weights", i32 162, i32 0}
!694 = distinct !{!694, !262}
!695 = !{!"function_entry_count", i64 47228}
!696 = !{!"loop-invariant.c:gain_for_invariant"}
!697 = !{!"branch_weights", i32 47229, i32 1}
!698 = distinct !{!698, !262}
!699 = !{!"function_entry_count", i64 54121}
!700 = !{!"loop-invariant.c:get_inv_cost"}
!701 = !{!"branch_weights", i32 54122, i32 1}
!702 = distinct !{!702, !262}
!703 = !{!"branch_weights", i32 51401, i32 2722}
!704 = !{!"branch_weights", i32 9, i32 51393}
!705 = !{!"branch_weights", i32 51393, i32 1}
!706 = !{!420, !246, i64 42}
!707 = !{!"branch_weights", i32 30317, i32 21077}
!708 = !{!"branch_weights", i32 7090, i32 13988}
!709 = !{!"branch_weights", i32 411151, i32 1}
!710 = !{!"branch_weights", i32 45485, i32 1}
!711 = !{!"branch_weights", i32 1663058060, i32 484425588}
!712 = !{!"branch_weights", i32 -933560307, i32 5701632, i32 983028, i32 65533}
!713 = !{!"branch_weights", i32 87, i32 1}
!714 = !{!"branch_weights", i32 15, i32 1}
!715 = !{!"branch_weights", i32 2, i32 100}
!716 = !{!"branch_weights", i32 100, i32 1}
!717 = !{!"branch_weights", i32 44499, i32 6894}
!718 = !{!"branch_weights", i32 6894, i32 1}
!719 = distinct !{!719, !262}
!720 = !{!"branch_weights", i32 850237825, i32 1297245823}
!721 = !{!"branch_weights", i32 3900, i32 266}
!722 = !{!"branch_weights", i32 60, i32 207}
!723 = !{!"branch_weights", i32 60, i32 1}
!724 = distinct !{!724, !262}
!725 = !{!"branch_weights", i32 6894, i32 0}
!726 = distinct !{!726, !262}
!727 = !{!"loop-invariant.c:get_cover_class_and_nregs"}
!728 = !{!"function_entry_count", i64 76206}
!729 = !{!"loop-invariant.c:move_invariant_reg"}
!730 = !{!457, !250, i64 0}
!731 = !{!"branch_weights", i32 74789, i32 1419}
!732 = !{!"branch_weights", i32 70738, i32 4052}
!733 = !{!"branch_weights", i32 2795, i32 1258}
!734 = !{!"branch_weights", i32 1, i32 2795}
!735 = !{!"branch_weights", i32 1, i32 162}
!736 = distinct !{!736, !262}
!737 = !{!"branch_weights", i32 22367, i32 1}
!738 = !{!"branch_weights", i32 1381, i32 1}
!739 = !{!"branch_weights", i32 2735, i32 61}
!740 = !{!"branch_weights", i32 40, i32 22}
!741 = !{!"branch_weights", i32 4, i32 19}
!742 = !{!"branch_weights", i32 1, i32 1258}
!743 = !{!"branch_weights", i32 815, i32 1}
!744 = !{!"branch_weights", i32 185, i32 3868}
!745 = !{!"branch_weights", i32 1, i32 3867}
!746 = !{!"branch_weights", i32 3867, i32 6141}
!747 = distinct !{!747, !262}
!748 = !{!"function_entry_count", i64 29879}
!749 = !{!"loop-invariant.c:free_use_list"}
!750 = !{!"branch_weights", i32 17319, i32 12561}
!751 = !{!"branch_weights", i32 12561, i32 0}
!752 = distinct !{!752, !262}
!753 = !{!"loop-invariant.c:VEC_invariant_p_heap_free"}
!754 = !{!"loop-invariant.c:VEC_int_base_iterate"}
!755 = !{!"branch_weights", i32 1, i32 33005}
!756 = !{!"branch_weights", i32 27935, i32 5071}
!757 = !{!"loop-invariant.c:get_loop"}
!758 = !{!"loop-invariant.c:VEC_int_heap_free"}
