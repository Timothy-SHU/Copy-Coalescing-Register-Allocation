; ModuleID = 'ira-emit.c'
source_filename = "ira-emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.ira_allocno = type { i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i64, i64, i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32 }
%struct.move = type { ptr, ptr, ptr, i8, i32, ptr, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.ira_allocno_iterator = type { i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.ira_loop_tree_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, i8, [27 x i32], ptr, ptr, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.df_lr_bb_info = type { ptr, ptr, ptr, ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.VEC_move_t_base = type { i32, i32, [1 x ptr] }
%struct.ira_allocno_copy = type { i32, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ira_allocno_live_range = type { ptr, i32, i32, ptr, ptr, ptr }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c" a%dr%d->a%dr%d\00", align 1
@regno_reg_rtx = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@at_bb_start = internal unnamed_addr global ptr null, align 8
@at_bb_end = internal unnamed_addr global ptr null, align 8
@local_allocno_bitmap = internal unnamed_addr global ptr null, align 8
@used_regno_bitmap = internal unnamed_addr global ptr null, align 8
@renamed_regno_bitmap = internal unnamed_addr global ptr null, align 8
@max_regno_before_changing = internal unnamed_addr global i32 0, align 4
@ira_loop_tree_root = external local_unnamed_addr global ptr, align 8
@allocno_last_set = internal unnamed_addr global ptr null, align 8
@allocno_last_set_check = internal unnamed_addr global ptr null, align 8
@hard_regno_last_set_check = internal unnamed_addr global [53 x i32] zeroinitializer, align 16
@curr_tick = internal unnamed_addr global i32 0, align 4
@ira_allocnos_num = external local_unnamed_addr global i32, align 4
@move_vec = internal unnamed_addr global ptr null, align 8
@ira_allocnos = external local_unnamed_addr global ptr, align 8
@internal_flag_ira_verbose = external local_unnamed_addr global i32, align 4
@ira_dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"      Changing RTL for loop %d (header bb%d)\0A\00", align 1
@ira_curr_loop_tree_node = external local_unnamed_addr global ptr, align 8
@ira_available_class_regs = external local_unnamed_addr global [27 x i32], align 16
@ira_prohibited_mode_move_regs = external local_unnamed_addr global [87 x i64], align 16
@ira_reg_equiv_invariant_p = external local_unnamed_addr global ptr, align 8
@ira_reg_equiv_const = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"  %i vs parent %i:\00", align 1
@ira_curr_regno_allocno_map = external local_unnamed_addr global ptr, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@ira_regno_allocno_map = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"      Creating newreg=%i from oldreg=%i\0A\00", align 1
@ira_loops = external local_unnamed_addr global %struct.loops, align 8
@ira_loop_nodes = external local_unnamed_addr global ptr, align 8
@ira_bb_nodes = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"      Remove r%d:a%d->a%d(mem)\0A\00", align 1
@df = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"ira-emit.c\00", align 1
@optimize_size = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@ira_additional_jumps_num = external local_unnamed_addr global i32, align 4
@hard_regno_nregs = external local_unnamed_addr global [53 x [87 x i8]], align 16
@hard_regno_last_set = internal unnamed_addr global [53 x ptr] zeroinitializer, align 16
@ira_move_loops_num = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"    Creating temporary allocno a%dr%d\0A\00", align 1
@ira_memory_move_cost = external local_unnamed_addr global [87 x [27 x [2 x i16]]], align 16
@ira_store_cost = external local_unnamed_addr global i32, align 4
@ira_load_cost = external local_unnamed_addr global i32, align 4
@ira_shuffle_cost = external local_unnamed_addr global i32, align 4
@ira_overall_cost = external local_unnamed_addr global i32, align 4
@ira_register_move_cost = external local_unnamed_addr global [87 x ptr], align 16
@ira_max_point = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"    Allocate conflicts for a%dr%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"    Adding cp%d:a%dr%d-a%dr%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"    Adding range [%d..%d] to allocno a%dr%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"    Adding range [%d..%d] to live through %s allocno a%dr%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"upper level\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @ira_debug_move_list(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call fastcc void @print_move_list(ptr noundef %2, ptr noundef %0) #19
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_move_list(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %17, %4 ], [ %1, %2 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !10
  %7 = load i32, ptr %6, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !16
  %10 = getelementptr inbounds %struct.move, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = load i32, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !16
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %7, i32 noundef %9, i32 noundef %12, i32 noundef %14) #19
  %16 = getelementptr inbounds %struct.move, ptr %5, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %4, !llvm.loop !19

19:                                               ; preds = %4, %2
  %20 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_emit(i8 noundef zeroext %0) local_unnamed_addr #2 {
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %5) #19
  %6 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #19, !range !21
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %8, %10
  %11 = load ptr, ptr %4, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !16
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %9, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 4
  store ptr %16, ptr %17, align 8, !tbaa !22
  %18 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #19, !range !21
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %10, !llvm.loop !23

20:                                               ; preds = %10, %1
  %21 = icmp eq i8 %0, 0
  br i1 %21, label %255, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr @cfun, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !24
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !26
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 3
  %30 = tail call ptr @ira_allocate(i64 noundef %29) #21
  store ptr %30, ptr @at_bb_start, align 8, !tbaa !6
  %31 = load ptr, ptr @cfun, align 8, !tbaa !6
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !24
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %33, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !26
  %36 = sext i32 %35 to i64
  %37 = shl nsw i64 %36, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %30, i8 0, i64 %37, i1 false)
  %38 = load ptr, ptr @cfun, align 8, !tbaa !6
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !24
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %40, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !26
  %43 = sext i32 %42 to i64
  %44 = shl nsw i64 %43, 3
  %45 = tail call ptr @ira_allocate(i64 noundef %44) #21
  store ptr %45, ptr @at_bb_end, align 8, !tbaa !6
  %46 = load ptr, ptr @cfun, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !24
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !26
  %51 = sext i32 %50 to i64
  %52 = shl nsw i64 %51, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %45, i8 0, i64 %52, i1 false)
  %53 = tail call ptr @ira_allocate_bitmap() #21
  store ptr %53, ptr @local_allocno_bitmap, align 8, !tbaa !6
  %54 = tail call ptr @ira_allocate_bitmap() #21
  store ptr %54, ptr @used_regno_bitmap, align 8, !tbaa !6
  %55 = tail call ptr @ira_allocate_bitmap() #21
  store ptr %55, ptr @renamed_regno_bitmap, align 8, !tbaa !6
  %56 = tail call i32 @max_reg_num() #21
  store i32 %56, ptr @max_regno_before_changing, align 4, !tbaa !28
  %57 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !6
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 1, ptr noundef %57, ptr noundef nonnull @change_loop, ptr noundef null) #21
  tail call fastcc void @set_allocno_somewhere_renamed_p() #19
  %58 = load ptr, ptr @used_regno_bitmap, align 8, !tbaa !6
  tail call void @ira_free_bitmap(ptr noundef %58) #21
  %59 = load ptr, ptr @renamed_regno_bitmap, align 8, !tbaa !6
  tail call void @ira_free_bitmap(ptr noundef %59) #21
  %60 = load ptr, ptr @local_allocno_bitmap, align 8, !tbaa !6
  tail call void @ira_free_bitmap(ptr noundef %60) #21
  tail call fastcc void @setup_entered_from_non_parent_p() #19
  %61 = load ptr, ptr @cfun, align 8, !tbaa !6
  %62 = getelementptr inbounds %struct.function, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !24
  %64 = load ptr, ptr %63, align 8, !tbaa !29
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !30
  %67 = getelementptr inbounds %struct.control_flow_graph, ptr %63, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !32
  %69 = icmp eq ptr %66, %68
  br i1 %69, label %110, label %70

70:                                               ; preds = %22
  %71 = getelementptr inbounds i8, ptr %2, i64 8
  br label %81

72:                                               ; preds = %105, %81
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !30
  %75 = load ptr, ptr @cfun, align 8, !tbaa !6
  %76 = getelementptr inbounds %struct.function, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !24
  %78 = getelementptr inbounds %struct.control_flow_graph, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !32
  %80 = icmp eq ptr %74, %79
  br i1 %80, label %110, label %81, !llvm.loop !33

81:                                               ; preds = %70, %72
  %82 = phi ptr [ %66, %70 ], [ %74, %72 ]
  %83 = load ptr, ptr @at_bb_start, align 8, !tbaa !6
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 9
  %85 = load i32, ptr %84, align 8, !tbaa !34
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds ptr, ptr %83, i64 %86
  store ptr null, ptr %87, align 8, !tbaa !6
  %88 = load ptr, ptr @at_bb_end, align 8, !tbaa !6
  %89 = getelementptr inbounds ptr, ptr %88, i64 %86
  store ptr null, ptr %89, align 8, !tbaa !6
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 1
  %91 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %90) #19
  store i32 0, ptr %2, align 8, !tbaa.struct !35
  store ptr %91, ptr %71, align 8, !tbaa.struct !36
  %92 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %91, ptr noundef nonnull %3) #19, !range !21
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %72, label %94

94:                                               ; preds = %81, %105
  %95 = load ptr, ptr %3, align 8, !tbaa !6
  %96 = getelementptr inbounds %struct.edge_def, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !37
  %98 = load ptr, ptr @cfun, align 8, !tbaa !6
  %99 = getelementptr inbounds %struct.function, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !24
  %101 = getelementptr inbounds %struct.control_flow_graph, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !32
  %103 = icmp eq ptr %97, %102
  br i1 %103, label %105, label %104

104:                                              ; preds = %94
  tail call fastcc void @generate_edge_moves(ptr noundef nonnull %95) #19
  br label %105

105:                                              ; preds = %94, %104
  call fastcc void @ei_next(ptr noundef nonnull %2) #19
  %106 = load i32, ptr %2, align 8
  %107 = load ptr, ptr %71, align 8
  %108 = call fastcc zeroext i8 @ei_cond(i32 %106, ptr %107, ptr noundef nonnull %3) #19, !range !21
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %72, label %94, !llvm.loop !39

110:                                              ; preds = %72, %22
  %111 = tail call i32 @max_reg_num() #21
  %112 = sext i32 %111 to i64
  %113 = shl nsw i64 %112, 3
  %114 = tail call ptr @ira_allocate(i64 noundef %113) #21
  store ptr %114, ptr @allocno_last_set, align 8, !tbaa !6
  %115 = tail call i32 @max_reg_num() #21
  %116 = sext i32 %115 to i64
  %117 = shl nsw i64 %116, 2
  %118 = tail call ptr @ira_allocate(i64 noundef %117) #21
  store ptr %118, ptr @allocno_last_set_check, align 8, !tbaa !6
  %119 = tail call i32 @max_reg_num() #21
  %120 = sext i32 %119 to i64
  %121 = shl nsw i64 %120, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %118, i8 0, i64 %121, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) @hard_regno_last_set_check, i8 0, i64 212, i1 false)
  store i32 0, ptr @curr_tick, align 4, !tbaa !28
  %122 = load ptr, ptr @cfun, align 8, !tbaa !6
  %123 = getelementptr inbounds %struct.function, ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !24
  %125 = load ptr, ptr %124, align 8, !tbaa !29
  %126 = getelementptr inbounds %struct.basic_block_def, ptr %125, i64 0, i32 6
  %127 = load ptr, ptr %126, align 8, !tbaa !30
  %128 = getelementptr inbounds %struct.control_flow_graph, ptr %124, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !32
  %130 = icmp eq ptr %127, %129
  br i1 %130, label %156, label %131

131:                                              ; preds = %110, %131
  %132 = phi ptr [ %134, %131 ], [ %127, %110 ]
  tail call fastcc void @unify_moves(ptr noundef %132, i8 noundef zeroext 1) #19
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %132, i64 0, i32 6
  %134 = load ptr, ptr %133, align 8, !tbaa !30
  %135 = load ptr, ptr @cfun, align 8, !tbaa !6
  %136 = getelementptr inbounds %struct.function, ptr %135, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !24
  %138 = getelementptr inbounds %struct.control_flow_graph, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !32
  %140 = icmp eq ptr %134, %139
  br i1 %140, label %141, label %131, !llvm.loop !40

141:                                              ; preds = %131
  %142 = load ptr, ptr %137, align 8, !tbaa !29
  %143 = getelementptr inbounds %struct.basic_block_def, ptr %142, i64 0, i32 6
  %144 = load ptr, ptr %143, align 8, !tbaa !30
  %145 = icmp eq ptr %144, %134
  br i1 %145, label %156, label %146

146:                                              ; preds = %141, %146
  %147 = phi ptr [ %149, %146 ], [ %144, %141 ]
  tail call fastcc void @unify_moves(ptr noundef %147, i8 noundef zeroext 0) #19
  %148 = getelementptr inbounds %struct.basic_block_def, ptr %147, i64 0, i32 6
  %149 = load ptr, ptr %148, align 8, !tbaa !30
  %150 = load ptr, ptr @cfun, align 8, !tbaa !6
  %151 = getelementptr inbounds %struct.function, ptr %150, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !24
  %153 = getelementptr inbounds %struct.control_flow_graph, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !32
  %155 = icmp eq ptr %149, %154
  br i1 %155, label %156, label %146, !llvm.loop !41

156:                                              ; preds = %146, %110, %141
  %157 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !28
  %158 = tail call fastcc ptr @VEC_move_t_heap_alloc(i32 noundef %157) #19
  store ptr %158, ptr @move_vec, align 8, !tbaa !6
  tail call fastcc void @emit_moves() #19
  tail call fastcc void @add_ranges_and_copies() #19
  %159 = load ptr, ptr @cfun, align 8, !tbaa !6
  %160 = getelementptr inbounds %struct.function, ptr %159, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !24
  %162 = load ptr, ptr %161, align 8, !tbaa !29
  %163 = getelementptr inbounds %struct.basic_block_def, ptr %162, i64 0, i32 6
  %164 = load ptr, ptr %163, align 8, !tbaa !30
  %165 = getelementptr inbounds %struct.control_flow_graph, ptr %161, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !32
  %167 = icmp eq ptr %164, %166
  br i1 %167, label %204, label %168

168:                                              ; preds = %156
  %169 = getelementptr inbounds i8, ptr %2, i64 8
  br label %179

170:                                              ; preds = %196, %179
  %171 = getelementptr inbounds %struct.basic_block_def, ptr %180, i64 0, i32 6
  %172 = load ptr, ptr %171, align 8, !tbaa !30
  %173 = load ptr, ptr @cfun, align 8, !tbaa !6
  %174 = getelementptr inbounds %struct.function, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !24
  %176 = getelementptr inbounds %struct.control_flow_graph, ptr %175, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !32
  %178 = icmp eq ptr %172, %177
  br i1 %178, label %204, label %179, !llvm.loop !42

179:                                              ; preds = %168, %170
  %180 = phi ptr [ %164, %168 ], [ %172, %170 ]
  %181 = load ptr, ptr @at_bb_start, align 8, !tbaa !6
  %182 = getelementptr inbounds %struct.basic_block_def, ptr %180, i64 0, i32 9
  %183 = load i32, ptr %182, align 8, !tbaa !34
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds ptr, ptr %181, i64 %184
  %186 = load ptr, ptr %185, align 8, !tbaa !6
  tail call fastcc void @free_move_list(ptr noundef %186) #19
  %187 = load ptr, ptr @at_bb_end, align 8, !tbaa !6
  %188 = load i32, ptr %182, align 8, !tbaa !34
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds ptr, ptr %187, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !6
  tail call fastcc void @free_move_list(ptr noundef %191) #19
  %192 = getelementptr inbounds %struct.basic_block_def, ptr %180, i64 0, i32 1
  %193 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %192) #19
  store i32 0, ptr %2, align 8, !tbaa.struct !35
  store ptr %193, ptr %169, align 8, !tbaa.struct !36
  %194 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %193, ptr noundef nonnull %3) #19, !range !21
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %170, label %196

196:                                              ; preds = %179, %196
  %197 = load ptr, ptr %3, align 8, !tbaa !6
  %198 = getelementptr inbounds %struct.edge_def, ptr %197, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !43
  tail call fastcc void @free_move_list(ptr noundef %199) #19
  store ptr null, ptr %198, align 8, !tbaa !43
  call fastcc void @ei_next(ptr noundef nonnull %2) #19
  %200 = load i32, ptr %2, align 8
  %201 = load ptr, ptr %169, align 8
  %202 = call fastcc zeroext i8 @ei_cond(i32 %200, ptr %201, ptr noundef nonnull %3) #19, !range !21
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %170, label %196, !llvm.loop !44

204:                                              ; preds = %170, %156
  tail call fastcc void @VEC_move_t_heap_free() #19
  %205 = load ptr, ptr @allocno_last_set_check, align 8, !tbaa !6
  tail call void @ira_free(ptr noundef %205) #21
  %206 = load ptr, ptr @allocno_last_set, align 8, !tbaa !6
  tail call void @ira_free(ptr noundef %206) #21
  tail call void @commit_edge_insertions() #21
  %207 = load ptr, ptr @cfun, align 8, !tbaa !6
  %208 = getelementptr inbounds %struct.function, ptr %207, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !24
  %210 = load ptr, ptr %209, align 8, !tbaa !29
  %211 = getelementptr inbounds %struct.basic_block_def, ptr %210, i64 0, i32 6
  %212 = load ptr, ptr %211, align 8, !tbaa !30
  %213 = getelementptr inbounds %struct.control_flow_graph, ptr %209, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !32
  %215 = icmp eq ptr %212, %214
  br i1 %215, label %252, label %216

216:                                              ; preds = %204, %243
  %217 = phi ptr [ %244, %243 ], [ %207, %204 ]
  %218 = phi ptr [ %246, %243 ], [ %212, %204 ]
  %219 = getelementptr inbounds %struct.basic_block_def, ptr %218, i64 0, i32 7
  %220 = load ptr, ptr %219, align 8, !tbaa !45
  %221 = getelementptr inbounds %struct.rtl_bb_info, ptr %220, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !45
  %223 = icmp eq ptr %222, null
  br i1 %223, label %243, label %224

224:                                              ; preds = %216, %237
  %225 = phi ptr [ %239, %237 ], [ %222, %216 ]
  %226 = load ptr, ptr %219, align 8, !tbaa !45
  %227 = load ptr, ptr %226, align 8, !tbaa !46
  %228 = getelementptr inbounds %struct.rtx_def, ptr %227, i64 0, i32 1, i32 0, i32 0, i64 1
  %229 = load ptr, ptr %228, align 8, !tbaa !45
  %230 = icmp eq ptr %225, %229
  br i1 %230, label %241, label %231

231:                                              ; preds = %224
  %232 = load i32, ptr %225, align 8
  %233 = and i32 %232, 65535
  %234 = add nsw i32 %233, -7
  %235 = icmp ult i32 %234, 4
  br i1 %235, label %236, label %237

236:                                              ; preds = %231
  tail call fastcc void @recog_memoized(ptr noundef nonnull %225) #19
  br label %237

237:                                              ; preds = %231, %236
  %238 = getelementptr inbounds %struct.rtx_def, ptr %225, i64 0, i32 1, i32 0, i32 0, i64 1
  %239 = load ptr, ptr %238, align 8, !tbaa !45
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %224, !llvm.loop !48

241:                                              ; preds = %224, %237
  %242 = load ptr, ptr @cfun, align 8, !tbaa !6
  br label %243

243:                                              ; preds = %241, %216
  %244 = phi ptr [ %242, %241 ], [ %217, %216 ]
  %245 = getelementptr inbounds %struct.basic_block_def, ptr %218, i64 0, i32 6
  %246 = load ptr, ptr %245, align 8, !tbaa !30
  %247 = getelementptr inbounds %struct.function, ptr %244, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !24
  %249 = getelementptr inbounds %struct.control_flow_graph, ptr %248, i64 0, i32 1
  %250 = load ptr, ptr %249, align 8, !tbaa !32
  %251 = icmp eq ptr %246, %250
  br i1 %251, label %252, label %216, !llvm.loop !49

252:                                              ; preds = %243, %204
  %253 = load ptr, ptr @at_bb_end, align 8, !tbaa !6
  tail call void @ira_free(ptr noundef %253) #21
  %254 = load ptr, ptr @at_bb_start, align 8, !tbaa !6
  tail call void @ira_free(ptr noundef %254) #21
  br label %255

255:                                              ; preds = %20, %252
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @ira_allocno_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #4 {
  store i32 0, ptr %0, align 4, !tbaa !50
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 {
  %3 = load i32, ptr %0, align 4, !tbaa !50
  %4 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !28
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = load ptr, ptr @ira_allocnos, align 8, !tbaa !6
  %8 = sext i32 %3 to i64
  %9 = sext i32 %4 to i64
  br label %10

10:                                               ; preds = %6, %18
  %11 = phi i64 [ %8, %6 ], [ %19, %18 ]
  %12 = getelementptr inbounds ptr, ptr %7, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = trunc i64 %11 to i32
  store ptr %13, ptr %1, align 8, !tbaa !6
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %0, align 4, !tbaa !50
  br label %21

18:                                               ; preds = %10
  %19 = add nsw i64 %11, 1
  %20 = icmp eq i64 %19, %9
  br i1 %20, label %21, label %10, !llvm.loop !52

21:                                               ; preds = %18, %2, %15
  %22 = phi i8 [ 1, %15 ], [ 0, %2 ], [ 0, %18 ]
  ret i8 %22
}

; Function Attrs: optsize
declare ptr @ira_allocate(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare ptr @ira_allocate_bitmap() local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @max_reg_num() local_unnamed_addr #6

; Function Attrs: optsize
declare void @ira_traverse_loop_tree(i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal void @change_loop(ptr noundef readonly %0) #2 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !6
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %148, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !53
  %9 = icmp eq ptr %8, null
  br i1 %9, label %41, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !45
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  store ptr %13, ptr %4, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %189, label %15

15:                                               ; preds = %10, %36
  %16 = phi ptr [ %39, %36 ], [ %13, %10 ]
  %17 = load ptr, ptr %0, align 8, !tbaa !53
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = getelementptr inbounds %struct.rtl_bb_info, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !55
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = icmp eq ptr %16, %23
  br i1 %24, label %189, label %25

25:                                               ; preds = %15
  %26 = load i32, ptr %16, align 8
  %27 = and i32 %26, 65535
  %28 = add nsw i32 %27, -7
  %29 = icmp ult i32 %28, 4
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = call fastcc zeroext i8 @change_regs(ptr noundef nonnull %4) #19, !range !21
  %32 = icmp eq i8 %31, 0
  %33 = load ptr, ptr %4, align 8, !tbaa !6
  br i1 %32, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call zeroext i8 @df_insn_rescan(ptr noundef %33) #21
  tail call void @df_notes_rescan(ptr noundef %33) #21
  br label %36

36:                                               ; preds = %25, %30, %34
  %37 = phi ptr [ %16, %25 ], [ %33, %30 ], [ %33, %34 ]
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !45
  store ptr %39, ptr %4, align 8, !tbaa !6
  %40 = icmp eq ptr %39, null
  br i1 %40, label %189, label %15, !llvm.loop !56

41:                                               ; preds = %7
  %42 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !28
  %43 = icmp sgt i32 %42, 3
  %44 = load ptr, ptr @ira_dump_file, align 8
  %45 = icmp ne ptr %44, null
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !57
  %50 = load i32, ptr %49, align 8, !tbaa !58
  %51 = getelementptr inbounds %struct.loop, ptr %49, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !62
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 9
  %54 = load i32, ptr %53, align 8, !tbaa !34
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %44, ptr noundef nonnull @.str.2, i32 noundef %50, i32 noundef %54) #19
  br label %56

56:                                               ; preds = %47, %41
  %57 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !6
  %58 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %57, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !63
  %60 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %59, i64 0, i32 9
  %61 = load ptr, ptr %60, align 8, !tbaa !64
  %62 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %57, i64 0, i32 13
  %63 = load ptr, ptr %62, align 8, !tbaa !65
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %63, i32 noundef 0, ptr noundef nonnull %3) #19
  %64 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #19, !range !21
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %148, label %66

66:                                               ; preds = %56
  %67 = load ptr, ptr @ira_allocnos, align 8, !tbaa !6
  br label %68

68:                                               ; preds = %66, %144
  %69 = phi ptr [ %67, %66 ], [ %145, %144 ]
  %70 = load i32, ptr %3, align 4, !tbaa !28
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %69, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !6
  %74 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !16
  %76 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 9
  %77 = load i32, ptr %76, align 8, !tbaa !66
  %78 = sext i32 %75 to i64
  %79 = getelementptr inbounds ptr, ptr %61, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !6
  %81 = icmp eq ptr %80, null
  br i1 %81, label %117, label %82

82:                                               ; preds = %68
  %83 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 3
  %84 = load i32, ptr %83, align 4, !tbaa !67
  %85 = getelementptr inbounds %struct.ira_allocno, ptr %80, i64 0, i32 3
  %86 = load i32, ptr %85, align 4, !tbaa !67
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %120

88:                                               ; preds = %82
  %89 = icmp slt i32 %84, 0
  br i1 %89, label %144, label %90

90:                                               ; preds = %88
  %91 = zext i32 %77 to i64
  %92 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %59, i64 0, i32 11, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !28
  %94 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %91
  %95 = load i32, ptr %94, align 4, !tbaa !28
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %144, label %97

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 2
  %99 = load i32, ptr %98, align 8, !tbaa !68
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [87 x i64], ptr @ira_prohibited_mode_move_regs, i64 0, i64 %100
  %102 = load i64, ptr %101, align 8, !tbaa !69
  %103 = zext nneg i32 %84 to i64
  %104 = shl nuw i64 1, %103
  %105 = and i64 %102, %104
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %144

107:                                              ; preds = %97
  %108 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !6
  %109 = getelementptr inbounds i8, ptr %108, i64 %78
  %110 = load i8, ptr %109, align 1, !tbaa !45
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %144

112:                                              ; preds = %107
  %113 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !6
  %114 = getelementptr inbounds ptr, ptr %113, i64 %78
  %115 = load ptr, ptr %114, align 8, !tbaa !6
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %144

117:                                              ; preds = %68
  %118 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 4
  %119 = load ptr, ptr %118, align 8, !tbaa !22
  br label %128

120:                                              ; preds = %112, %82
  %121 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 4
  %122 = load ptr, ptr %121, align 8, !tbaa !22
  %123 = getelementptr inbounds %struct.ira_allocno, ptr %80, i64 0, i32 4
  %124 = load ptr, ptr %123, align 8, !tbaa !22
  %125 = tail call fastcc i32 @rhs_regno(ptr noundef %124) #19
  %126 = tail call fastcc i32 @rhs_regno(ptr noundef %122) #19
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %144

128:                                              ; preds = %117, %120
  %129 = phi ptr [ %122, %120 ], [ %119, %117 ]
  %130 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !28
  %131 = icmp sgt i32 %130, 3
  %132 = load ptr, ptr @ira_dump_file, align 8
  %133 = icmp ne ptr %132, null
  %134 = select i1 %131, i1 %133, i1 false
  br i1 %134, label %135, label %141

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 3
  %137 = load i32, ptr %136, align 4, !tbaa !67
  %138 = getelementptr inbounds %struct.ira_allocno, ptr %80, i64 0, i32 3
  %139 = load i32, ptr %138, align 4, !tbaa !67
  %140 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %132, ptr noundef nonnull @.str.3, i32 noundef %137, i32 noundef %139) #19
  br label %141

141:                                              ; preds = %135, %128
  %142 = tail call fastcc ptr @create_new_reg(ptr noundef %129) #19
  tail call fastcc void @set_allocno_reg(ptr noundef nonnull %73, ptr noundef %142) #19
  %143 = load ptr, ptr @ira_allocnos, align 8, !tbaa !6
  br label %144

144:                                              ; preds = %120, %141, %88, %90, %97, %107, %112
  %145 = phi ptr [ %69, %120 ], [ %143, %141 ], [ %69, %88 ], [ %69, %90 ], [ %69, %97 ], [ %69, %107 ], [ %69, %112 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #19
  %146 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #19, !range !21
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %68, !llvm.loop !70

148:                                              ; preds = %144, %56, %1
  %149 = load ptr, ptr @local_allocno_bitmap, align 8, !tbaa !6
  %150 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !6
  %151 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %150, i64 0, i32 12
  %152 = load ptr, ptr %151, align 8, !tbaa !71
  %153 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %150, i64 0, i32 13
  %154 = load ptr, ptr %153, align 8, !tbaa !65
  %155 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %149, ptr noundef %152, ptr noundef %154) #21
  %156 = load ptr, ptr @local_allocno_bitmap, align 8, !tbaa !6
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %156, i32 noundef 0, ptr noundef nonnull %3) #19
  %157 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #19, !range !21
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %189, label %159

159:                                              ; preds = %148, %186
  %160 = load ptr, ptr @ira_allocnos, align 8, !tbaa !6
  %161 = load i32, ptr %3, align 4, !tbaa !28
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds ptr, ptr %160, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !6
  %165 = getelementptr inbounds %struct.ira_allocno, ptr %164, i64 0, i32 1
  %166 = load i32, ptr %165, align 4, !tbaa !16
  %167 = getelementptr inbounds %struct.ira_allocno, ptr %164, i64 0, i32 17
  %168 = load ptr, ptr %167, align 8, !tbaa !72
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %186

170:                                              ; preds = %159
  %171 = load ptr, ptr @used_regno_bitmap, align 8, !tbaa !6
  %172 = tail call i32 @bitmap_bit_p(ptr noundef %171, i32 noundef %166) #21
  %173 = load ptr, ptr @used_regno_bitmap, align 8, !tbaa !6
  %174 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %173, i32 noundef %166) #21
  %175 = getelementptr inbounds %struct.ira_allocno, ptr %164, i64 0, i32 31
  %176 = load i16, ptr %175, align 4
  %177 = or i16 %176, 2
  store i16 %177, ptr %175, align 4
  %178 = and i32 %172, 255
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %170
  %181 = load ptr, ptr @renamed_regno_bitmap, align 8, !tbaa !6
  %182 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %181, i32 noundef %166) #21
  %183 = getelementptr inbounds %struct.ira_allocno, ptr %164, i64 0, i32 4
  %184 = load ptr, ptr %183, align 8, !tbaa !22
  %185 = tail call fastcc ptr @create_new_reg(ptr noundef %184) #19
  tail call fastcc void @set_allocno_reg(ptr noundef nonnull %164, ptr noundef %185) #19
  br label %186

186:                                              ; preds = %170, %159, %180
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #19
  %187 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #19, !range !21
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %189, label %159, !llvm.loop !73

189:                                              ; preds = %36, %15, %186, %10, %148
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_allocno_somewhere_renamed_p() unnamed_addr #2 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #19
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #19, !range !21
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %0, %21
  %6 = load ptr, ptr %1, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !16
  %9 = load ptr, ptr @renamed_regno_bitmap, align 8, !tbaa !6
  %10 = tail call i32 @bitmap_bit_p(ptr noundef %9, i32 noundef %8) #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef %14) #19
  %16 = icmp eq i32 %15, %8
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 31
  %19 = load i16, ptr %18, align 4
  %20 = or i16 %19, 2
  store i16 %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %17, %12, %5
  %22 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #19, !range !21
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %5, !llvm.loop !74

24:                                               ; preds = %21, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  ret void
}

; Function Attrs: optsize
declare void @ira_free_bitmap(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_entered_from_non_parent_p() unnamed_addr #2 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  %2 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %3 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #19, !range !75
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %0
  %6 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !6
  br label %7

7:                                                ; preds = %5, %21
  %8 = phi ptr [ %22, %21 ], [ %2, %5 ]
  %9 = phi ptr [ %23, %21 ], [ %6, %5 ]
  %10 = phi i32 [ %24, %21 ], [ 0, %5 ]
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %9, i64 %11, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %9, i64 %11
  %17 = tail call fastcc zeroext i8 @entered_from_non_parent_p(ptr noundef %16) #19, !range !21
  %18 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %18, i64 %11, i32 10
  store i8 %17, ptr %19, align 8, !tbaa !76
  %20 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  br label %21

21:                                               ; preds = %7, %15
  %22 = phi ptr [ %8, %7 ], [ %20, %15 ]
  %23 = phi ptr [ %9, %7 ], [ %18, %15 ]
  %24 = add i32 %10, 1
  %25 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %22, i32 noundef %24, ptr noundef nonnull %1) #19, !range !75
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %7, !llvm.loop !77

27:                                               ; preds = %21, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #8 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !6
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @generate_edge_moves(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %4 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !6
  %5 = load ptr, ptr %0, align 8, !tbaa !78
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !34
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %4, i64 %8, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !34
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %4, i64 %15, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  %18 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 3
  store ptr null, ptr %18, align 8, !tbaa !43
  %19 = icmp eq ptr %10, %17
  br i1 %19, label %83, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %10, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !64
  %23 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %17, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  %25 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %14) #19
  %26 = getelementptr inbounds %struct.df_lr_bb_info, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !79
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %27, i32 noundef 53, ptr noundef nonnull %2) #19
  %28 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !21
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %83, label %30

30:                                               ; preds = %20, %80
  %31 = load ptr, ptr %0, align 8, !tbaa !78
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !34
  %34 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %33) #19
  %35 = getelementptr inbounds %struct.df_lr_bb_info, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !81
  %37 = load i32, ptr %2, align 4, !tbaa !28
  %38 = tail call i32 @bitmap_bit_p(ptr noundef %36, i32 noundef %37) #21
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %80, label %40

40:                                               ; preds = %30
  %41 = zext i32 %37 to i64
  %42 = getelementptr inbounds ptr, ptr %22, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = getelementptr inbounds ptr, ptr %24, i64 %41
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %43, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !22
  %48 = tail call fastcc i32 @rhs_regno(ptr noundef %47) #19
  %49 = getelementptr inbounds %struct.ira_allocno, ptr %45, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !22
  %51 = tail call fastcc i32 @rhs_regno(ptr noundef %50) #19
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %80, label %53

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.ira_allocno, ptr %45, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !67
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.ira_allocno, ptr %43, i64 0, i32 3
  %59 = load i32, ptr %58, align 4, !tbaa !67
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %78

61:                                               ; preds = %57
  %62 = tail call fastcc zeroext i8 @store_can_be_removed_p(ptr noundef nonnull %43, ptr noundef nonnull %45) #19, !range !21
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %43, i64 0, i32 32
  store ptr %45, ptr %65, align 8, !tbaa !82
  %66 = getelementptr inbounds %struct.ira_allocno, ptr %45, i64 0, i32 31
  %67 = load i16, ptr %66, align 4
  %68 = or i16 %67, 1
  store i16 %68, ptr %66, align 4
  %69 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !28
  %70 = icmp sgt i32 %69, 3
  %71 = load ptr, ptr @ira_dump_file, align 8
  %72 = icmp ne ptr %71, null
  %73 = select i1 %70, i1 %72, i1 false
  br i1 %73, label %74, label %80

74:                                               ; preds = %64
  %75 = load i32, ptr %43, align 8, !tbaa !13
  %76 = load i32, ptr %45, align 8, !tbaa !13
  %77 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %71, ptr noundef nonnull @.str.7, i32 noundef %37, i32 noundef %75, i32 noundef %76) #19
  br label %80

78:                                               ; preds = %61, %57, %53
  %79 = tail call fastcc ptr @create_move(ptr noundef nonnull %45, ptr noundef nonnull %43) #19
  tail call fastcc void @add_to_edge_list(ptr noundef nonnull %0, ptr noundef %79) #19
  br label %80

80:                                               ; preds = %30, %78, %64, %74, %40
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %81 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !21
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %30, !llvm.loop !83

83:                                               ; preds = %80, %20, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #19
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #19
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.6) #21
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !84
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !84
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unify_moves(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #2 {
  %3 = icmp eq i8 %1, 0
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = select i1 %3, ptr %4, ptr %0
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %6) #19
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %42, label %9

9:                                                ; preds = %2
  %10 = tail call fastcc zeroext i8 @eq_edge_move_lists_p(ptr noundef %6) #19, !range !21
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #19
  %14 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  br i1 %3, label %16, label %23

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !55
  %21 = tail call zeroext i8 @control_flow_insn_p(ptr noundef %20) #21
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %16, %12
  store ptr null, ptr %14, align 8, !tbaa !43
  %24 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %6) #19
  %25 = add i32 %24, -1
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %23, %27
  %28 = phi i32 [ %32, %27 ], [ %25, %23 ]
  %29 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef %28) #19
  %30 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  tail call fastcc void @free_move_list(ptr noundef %31) #19
  store ptr null, ptr %30, align 8, !tbaa !43
  %32 = add nsw i32 %28, -1
  %33 = icmp ugt i32 %28, 1
  br i1 %33, label %27, label %34, !llvm.loop !86

34:                                               ; preds = %27, %23
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !34
  %37 = sext i32 %36 to i64
  %38 = load ptr, ptr @at_bb_end, align 8
  %39 = load ptr, ptr @at_bb_start, align 8
  %40 = select i1 %3, ptr %38, ptr %39
  %41 = getelementptr inbounds ptr, ptr %40, i64 %37
  store ptr %15, ptr %41, align 8, !tbaa !6
  br label %42

42:                                               ; preds = %34, %16, %2, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_move_t_heap_alloc(i32 noundef %0) unnamed_addr #2 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_moves() unnamed_addr #2 {
  %1 = alloca %struct.edge_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %3 = load ptr, ptr @cfun, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = load ptr, ptr %5, align 8, !tbaa !29
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !32
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %192, label %12

12:                                               ; preds = %0
  %13 = getelementptr inbounds i8, ptr %1, i64 8
  br label %23

14:                                               ; preds = %187, %138
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !30
  %17 = load ptr, ptr @cfun, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !24
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !32
  %22 = icmp eq ptr %16, %21
  br i1 %22, label %192, label %23, !llvm.loop !87

23:                                               ; preds = %12, %14
  %24 = phi ptr [ %8, %12 ], [ %16, %14 ]
  %25 = load ptr, ptr @at_bb_start, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !34
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %25, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %97, label %32

32:                                               ; preds = %23
  %33 = tail call fastcc ptr @modify_move_list(ptr noundef nonnull %30) #19
  %34 = load ptr, ptr @at_bb_start, align 8, !tbaa !6
  %35 = load i32, ptr %26, align 8, !tbaa !34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  store ptr %33, ptr %37, align 8, !tbaa !6
  %38 = load i32, ptr @optimize_size, align 4, !tbaa !28
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %32
  %41 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !28
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr @cfun, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !24
  %47 = load ptr, ptr %46, align 8, !tbaa !29
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 8
  %49 = load i64, ptr %48, align 8, !tbaa !88
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %43, %40
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 11
  %53 = load i32, ptr %52, align 8, !tbaa !89
  %54 = add i32 %53, 9
  %55 = icmp ult i32 %54, 19
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = sdiv i32 %53, 10
  br label %58

58:                                               ; preds = %56, %51, %32, %43
  %59 = phi i32 [ 1000, %43 ], [ 1000, %32 ], [ %57, %56 ], [ 1, %51 ]
  %60 = tail call fastcc ptr @emit_move_list(ptr noundef %33, i32 noundef %59) #19
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !45
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 12
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 0, i64 2
  %69 = load ptr, ptr %68, align 8, !tbaa !45
  %70 = load i32, ptr %69, align 8
  br label %71

71:                                               ; preds = %67, %58
  %72 = phi i32 [ %70, %67 ], [ %64, %58 ]
  %73 = phi ptr [ %69, %67 ], [ %63, %58 ]
  %74 = and i32 %72, 65535
  %75 = icmp eq i32 %74, 13
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 1
  %78 = load i32, ptr %77, align 8, !tbaa !45
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 0, i64 2
  %82 = load ptr, ptr %81, align 8, !tbaa !45
  br label %83

83:                                               ; preds = %80, %76, %71
  %84 = phi ptr [ %82, %80 ], [ %73, %76 ], [ %73, %71 ]
  %85 = icmp eq ptr %84, %63
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = tail call ptr @emit_insn_before(ptr noundef %60, ptr noundef nonnull %63) #21
  br label %97

88:                                               ; preds = %83
  %89 = icmp eq ptr %84, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1, i32 0, i32 0, i64 1
  %92 = load ptr, ptr %91, align 8, !tbaa !45
  %93 = tail call ptr @emit_insn_after(ptr noundef %60, ptr noundef %92) #21
  br label %97

94:                                               ; preds = %88
  %95 = tail call ptr @get_last_insn() #21
  %96 = tail call ptr @emit_insn_after(ptr noundef %60, ptr noundef %95) #21
  br label %97

97:                                               ; preds = %86, %94, %90, %23
  %98 = load ptr, ptr @at_bb_end, align 8, !tbaa !6
  %99 = load i32, ptr %26, align 8, !tbaa !34
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %98, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !6
  %103 = icmp eq ptr %102, null
  br i1 %103, label %138, label %104

104:                                              ; preds = %97
  %105 = tail call fastcc ptr @modify_move_list(ptr noundef nonnull %102) #19
  %106 = load ptr, ptr @at_bb_end, align 8, !tbaa !6
  %107 = load i32, ptr %26, align 8, !tbaa !34
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds ptr, ptr %106, i64 %108
  store ptr %105, ptr %109, align 8, !tbaa !6
  %110 = load i32, ptr @optimize_size, align 4, !tbaa !28
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %130

112:                                              ; preds = %104
  %113 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !28
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr @cfun, align 8, !tbaa !6
  %117 = getelementptr inbounds %struct.function, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !24
  %119 = load ptr, ptr %118, align 8, !tbaa !29
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 8
  %121 = load i64, ptr %120, align 8, !tbaa !88
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %115, %112
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 11
  %125 = load i32, ptr %124, align 8, !tbaa !89
  %126 = add i32 %125, 9
  %127 = icmp ult i32 %126, 19
  br i1 %127, label %130, label %128

128:                                              ; preds = %123
  %129 = sdiv i32 %125, 10
  br label %130

130:                                              ; preds = %128, %123, %104, %115
  %131 = phi i32 [ 1000, %115 ], [ 1000, %104 ], [ %129, %128 ], [ 1, %123 ]
  %132 = tail call fastcc ptr @emit_move_list(ptr noundef %105, i32 noundef %131) #19
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 7
  %134 = load ptr, ptr %133, align 8, !tbaa !45
  %135 = getelementptr inbounds %struct.rtl_bb_info, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !55
  %137 = tail call ptr @emit_insn_after(ptr noundef %132, ptr noundef %136) #21
  br label %138

138:                                              ; preds = %130, %97
  %139 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 1
  %140 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %139) #19
  store i32 0, ptr %1, align 8, !tbaa.struct !35
  store ptr %140, ptr %13, align 8, !tbaa.struct !36
  %141 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %140, ptr noundef nonnull %2) #19, !range !21
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %14, label %143

143:                                              ; preds = %138, %187
  %144 = load ptr, ptr %2, align 8, !tbaa !6
  %145 = getelementptr inbounds %struct.edge_def, ptr %144, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !43
  %147 = icmp eq ptr %146, null
  br i1 %147, label %187, label %148

148:                                              ; preds = %143
  %149 = tail call fastcc ptr @modify_move_list(ptr noundef nonnull %146) #19
  store ptr %149, ptr %145, align 8, !tbaa !43
  %150 = load i32, ptr @optimize_size, align 4, !tbaa !28
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %175

152:                                              ; preds = %148
  %153 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !28
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %163, label %155

155:                                              ; preds = %152
  %156 = load ptr, ptr @cfun, align 8, !tbaa !6
  %157 = getelementptr inbounds %struct.function, ptr %156, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !24
  %159 = load ptr, ptr %158, align 8, !tbaa !29
  %160 = getelementptr inbounds %struct.basic_block_def, ptr %159, i64 0, i32 8
  %161 = load i64, ptr %160, align 8, !tbaa !88
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %175, label %163

163:                                              ; preds = %155, %152
  %164 = load ptr, ptr %144, align 8, !tbaa !78
  %165 = getelementptr inbounds %struct.basic_block_def, ptr %164, i64 0, i32 11
  %166 = load i32, ptr %165, align 8, !tbaa !89
  %167 = getelementptr inbounds %struct.edge_def, ptr %144, i64 0, i32 8
  %168 = load i32, ptr %167, align 4, !tbaa !90
  %169 = mul nsw i32 %168, %166
  %170 = add i32 %169, 104999
  %171 = icmp ult i32 %170, 199999
  br i1 %171, label %175, label %172

172:                                              ; preds = %163
  %173 = add nuw nsw i32 %169, 5000
  %174 = sdiv i32 %173, 100000
  br label %175

175:                                              ; preds = %172, %163, %148, %155
  %176 = phi i32 [ 1000, %155 ], [ 1000, %148 ], [ %174, %172 ], [ 1, %163 ]
  %177 = tail call fastcc ptr @emit_move_list(ptr noundef %149, i32 noundef %176) #19
  tail call void @insert_insn_on_edge(ptr noundef %177, ptr noundef nonnull %144) #21
  %178 = load ptr, ptr %144, align 8, !tbaa !78
  %179 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 6
  %180 = load ptr, ptr %179, align 8, !tbaa !30
  %181 = getelementptr inbounds %struct.edge_def, ptr %144, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !37
  %183 = icmp eq ptr %180, %182
  br i1 %183, label %187, label %184

184:                                              ; preds = %175
  %185 = load i32, ptr @ira_additional_jumps_num, align 4, !tbaa !28
  %186 = add nsw i32 %185, 1
  store i32 %186, ptr @ira_additional_jumps_num, align 4, !tbaa !28
  br label %187

187:                                              ; preds = %175, %184, %143
  call fastcc void @ei_next(ptr noundef nonnull %1) #19
  %188 = load i32, ptr %1, align 8
  %189 = load ptr, ptr %13, align 8
  %190 = call fastcc zeroext i8 @ei_cond(i32 %188, ptr %189, ptr noundef nonnull %2) #19, !range !21
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %14, label %143, !llvm.loop !91

192:                                              ; preds = %14, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_ranges_and_copies() unnamed_addr #2 {
  %1 = alloca %struct.edge_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %3 = tail call ptr @ira_allocate_bitmap() #21
  %4 = load ptr, ptr @cfun, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = load ptr, ptr %6, align 8, !tbaa !29
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !30
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !32
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %143, label %13

13:                                               ; preds = %0
  %14 = getelementptr inbounds i8, ptr %1, i64 8
  br label %24

15:                                               ; preds = %137, %91
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !30
  %18 = load ptr, ptr @cfun, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !24
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !32
  %23 = icmp eq ptr %17, %22
  br i1 %23, label %143, label %24, !llvm.loop !92

24:                                               ; preds = %13, %15
  %25 = phi ptr [ %9, %13 ], [ %17, %15 ]
  %26 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !6
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !34
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %26, i64 %29, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !63
  %32 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %28) #19
  %33 = getelementptr inbounds %struct.df_lr_bb_info, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !79
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %34) #21
  %35 = load ptr, ptr @at_bb_start, align 8, !tbaa !6
  %36 = load i32, ptr %27, align 8, !tbaa !34
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %35, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !6
  %40 = load i32, ptr @optimize_size, align 4, !tbaa !28
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %24
  %43 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !28
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr @cfun, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !24
  %49 = load ptr, ptr %48, align 8, !tbaa !29
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 8
  %51 = load i64, ptr %50, align 8, !tbaa !88
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %45, %42
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 11
  %55 = load i32, ptr %54, align 8, !tbaa !89
  %56 = add i32 %55, 9
  %57 = icmp ult i32 %56, 19
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = sdiv i32 %55, 10
  br label %60

60:                                               ; preds = %58, %53, %24, %45
  %61 = phi i32 [ 1000, %45 ], [ 1000, %24 ], [ %59, %58 ], [ 1, %53 ]
  tail call fastcc void @add_range_and_copies_from_move_list(ptr noundef %39, ptr noundef %31, ptr noundef %3, i32 noundef %61) #19
  %62 = load i32, ptr %27, align 8, !tbaa !34
  %63 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %62) #19
  %64 = getelementptr inbounds %struct.df_lr_bb_info, ptr %63, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !81
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %65) #21
  %66 = load ptr, ptr @at_bb_end, align 8, !tbaa !6
  %67 = load i32, ptr %27, align 8, !tbaa !34
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds ptr, ptr %66, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = load i32, ptr @optimize_size, align 4, !tbaa !28
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %60
  %74 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !28
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr @cfun, align 8, !tbaa !6
  %78 = getelementptr inbounds %struct.function, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !24
  %80 = load ptr, ptr %79, align 8, !tbaa !29
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 8
  %82 = load i64, ptr %81, align 8, !tbaa !88
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %76, %73
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 11
  %86 = load i32, ptr %85, align 8, !tbaa !89
  %87 = add i32 %86, 9
  %88 = icmp ult i32 %87, 19
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = sdiv i32 %86, 10
  br label %91

91:                                               ; preds = %89, %84, %60, %76
  %92 = phi i32 [ 1000, %76 ], [ 1000, %60 ], [ %90, %89 ], [ 1, %84 ]
  tail call fastcc void @add_range_and_copies_from_move_list(ptr noundef %70, ptr noundef %31, ptr noundef %3, i32 noundef %92) #19
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 1
  %94 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %93) #19
  store i32 0, ptr %1, align 8, !tbaa.struct !35
  store ptr %94, ptr %14, align 8, !tbaa.struct !36
  %95 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %94, ptr noundef nonnull %2) #19, !range !21
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %15, label %97

97:                                               ; preds = %91, %137
  %98 = load ptr, ptr %2, align 8, !tbaa !6
  %99 = getelementptr inbounds %struct.edge_def, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !37
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %100, i64 0, i32 9
  %102 = load i32, ptr %101, align 8, !tbaa !34
  %103 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %102) #19
  %104 = getelementptr inbounds %struct.df_lr_bb_info, ptr %103, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !79
  %106 = load i32, ptr %27, align 8, !tbaa !34
  %107 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %106) #19
  %108 = getelementptr inbounds %struct.df_lr_bb_info, ptr %107, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !81
  tail call void @bitmap_and(ptr noundef %3, ptr noundef %105, ptr noundef %109) #21
  %110 = getelementptr inbounds %struct.edge_def, ptr %98, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !43
  %112 = load i32, ptr @optimize_size, align 4, !tbaa !28
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %137

114:                                              ; preds = %97
  %115 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !28
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr @cfun, align 8, !tbaa !6
  %119 = getelementptr inbounds %struct.function, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !24
  %121 = load ptr, ptr %120, align 8, !tbaa !29
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %121, i64 0, i32 8
  %123 = load i64, ptr %122, align 8, !tbaa !88
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %137, label %125

125:                                              ; preds = %117, %114
  %126 = load ptr, ptr %98, align 8, !tbaa !78
  %127 = getelementptr inbounds %struct.basic_block_def, ptr %126, i64 0, i32 11
  %128 = load i32, ptr %127, align 8, !tbaa !89
  %129 = getelementptr inbounds %struct.edge_def, ptr %98, i64 0, i32 8
  %130 = load i32, ptr %129, align 4, !tbaa !90
  %131 = mul nsw i32 %130, %128
  %132 = add i32 %131, 104999
  %133 = icmp ult i32 %132, 199999
  br i1 %133, label %137, label %134

134:                                              ; preds = %125
  %135 = add nuw nsw i32 %131, 5000
  %136 = sdiv i32 %135, 100000
  br label %137

137:                                              ; preds = %134, %125, %97, %117
  %138 = phi i32 [ 1000, %117 ], [ 1000, %97 ], [ %136, %134 ], [ 1, %125 ]
  tail call fastcc void @add_range_and_copies_from_move_list(ptr noundef %111, ptr noundef %31, ptr noundef %3, i32 noundef %138) #19
  call fastcc void @ei_next(ptr noundef nonnull %1) #19
  %139 = load i32, ptr %1, align 8
  %140 = load ptr, ptr %14, align 8
  %141 = call fastcc zeroext i8 @ei_cond(i32 %139, ptr %140, ptr noundef nonnull %2) #19, !range !21
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %15, label %97, !llvm.loop !93

143:                                              ; preds = %15, %0
  tail call void @ira_free_bitmap(ptr noundef %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_move_list(ptr noundef %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.move, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  tail call fastcc void @free_move(ptr noundef nonnull %4) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !94

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_move_t_heap_free() unnamed_addr #9 {
  %1 = load ptr, ptr @move_vec, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #19
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @move_vec, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare void @ira_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @commit_edge_insertions() local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recog_memoized(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !45
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #21
  store i32 %8, ptr %2, align 8, !tbaa !45
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @change_regs(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %78, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 37
  br i1 %7, label %8, label %25

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #19
  %10 = icmp sgt i32 %9, 52
  %11 = load i32, ptr @max_regno_before_changing, align 4
  %12 = icmp slt i32 %9, %11
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %78

14:                                               ; preds = %8
  %15 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !6
  %16 = zext nneg i32 %9 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %78, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %18, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  %23 = icmp eq ptr %22, %2
  br i1 %23, label %78, label %24

24:                                               ; preds = %20
  store ptr %22, ptr %0, align 8, !tbaa !6
  br label %78

25:                                               ; preds = %4
  %26 = zext nneg i32 %6 to i64
  %27 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %26
  %30 = load i8, ptr %29, align 1, !tbaa !45
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %78, label %32

32:                                               ; preds = %25
  %33 = zext i8 %30 to i64
  br label %34

34:                                               ; preds = %32, %73
  %35 = phi i64 [ %33, %32 ], [ %37, %73 ]
  %36 = phi i32 [ 0, %32 ], [ %74, %73 ]
  %37 = add nsw i64 %35, -1
  %38 = getelementptr inbounds i8, ptr %28, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !45
  switch i8 %39, label %73 [
    i8 101, label %40
    i8 69, label %49
  ]

40:                                               ; preds = %34
  %41 = load ptr, ptr %0, align 8, !tbaa !6
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = getelementptr inbounds [1 x %union.rtunion_def], ptr %42, i64 0, i64 %37
  %44 = tail call fastcc zeroext i8 @change_regs(ptr noundef nonnull %43) #19, !range !21
  %45 = icmp ne i8 %44, 0
  %46 = icmp ne i32 %36, 0
  %47 = select i1 %45, i1 true, i1 %46
  %48 = zext i1 %47 to i32
  br label %73

49:                                               ; preds = %34
  %50 = load ptr, ptr %0, align 8, !tbaa !6
  %51 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %52 = getelementptr inbounds [1 x %union.rtunion_def], ptr %51, i64 0, i64 %37
  %53 = load ptr, ptr %52, align 8, !tbaa !45
  %54 = load i32, ptr %53, align 8, !tbaa !95
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %49
  %57 = zext nneg i32 %54 to i64
  br label %58

58:                                               ; preds = %56, %58
  %59 = phi i64 [ %57, %56 ], [ %61, %58 ]
  %60 = phi i32 [ %36, %56 ], [ %71, %58 ]
  %61 = add nsw i64 %59, -1
  %62 = load ptr, ptr %0, align 8, !tbaa !6
  %63 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1
  %64 = getelementptr inbounds [1 x %union.rtunion_def], ptr %63, i64 0, i64 %37
  %65 = load ptr, ptr %64, align 8, !tbaa !45
  %66 = getelementptr inbounds %struct.rtvec_def, ptr %65, i64 0, i32 1, i64 %61
  %67 = tail call fastcc zeroext i8 @change_regs(ptr noundef nonnull %66) #19, !range !21
  %68 = icmp ne i8 %67, 0
  %69 = icmp ne i32 %60, 0
  %70 = select i1 %68, i1 true, i1 %69
  %71 = zext i1 %70 to i32
  %72 = icmp ugt i64 %59, 1
  br i1 %72, label %58, label %73, !llvm.loop !97

73:                                               ; preds = %58, %49, %34, %40
  %74 = phi i32 [ %48, %40 ], [ %36, %34 ], [ %36, %49 ], [ %71, %58 ]
  %75 = icmp sgt i64 %35, 1
  br i1 %75, label %34, label %76, !llvm.loop !98

76:                                               ; preds = %73
  %77 = trunc i32 %74 to i8
  br label %78

78:                                               ; preds = %25, %76, %20, %14, %8, %1, %24
  %79 = phi i8 [ 1, %24 ], [ 0, %1 ], [ 0, %8 ], [ 0, %14 ], [ 0, %20 ], [ 0, %25 ], [ %77, %76 ]
  ret i8 %79
}

; Function Attrs: optsize
declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @df_notes_rescan(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 {
  %5 = load ptr, ptr %1, align 8, !tbaa !99
  store ptr %5, ptr %0, align 8, !tbaa !101
  %6 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !103
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !101
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi ptr [ %5, %4 ], [ @bitmap_zero_bits, %8 ]
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !104
  %13 = icmp eq i32 %12, 0
  %14 = shl i32 %12, 7
  %15 = select i1 %13, i32 %2, i32 %14
  %16 = lshr i32 %15, 6
  %17 = and i32 %16, 1
  %18 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 %17, ptr %18, align 8, !tbaa !106
  %19 = zext nneg i32 %17 to i64
  %20 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !69
  %22 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %23 = and i32 %15, 63
  %24 = zext nneg i32 %23 to i64
  %25 = lshr i64 %21, %24
  store i64 %25, ptr %22, align 8, !tbaa !107
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = add i32 %15, %27
  store i32 %28, ptr %3, align 4, !tbaa !28
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !107
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !28
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !108

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !28
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !28
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !106
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !101
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !106
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !69
  store i64 %35, ptr %3, align 8, !tbaa !107
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !28
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !28
  %40 = load i32, ptr %23, align 8, !tbaa !106
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !106
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !109

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !110
  store ptr %44, ptr %0, align 8, !tbaa !101
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !104
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !28
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !107
  store i32 %16, ptr %1, align 4, !tbaa !28
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !45
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_allocno_reg(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !111
  %5 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !16
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %24, %2
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 16
  %14 = load ptr, ptr %13, align 8, !tbaa !112
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %28

16:                                               ; preds = %2, %24
  %17 = phi ptr [ %26, %24 ], [ %10, %2 ]
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !111
  %20 = tail call fastcc zeroext i8 @subloop_tree_node_p(ptr noundef %19, ptr noundef %4) #19, !range !21
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 4
  store ptr %1, ptr %23, align 8, !tbaa !22
  br label %24

24:                                               ; preds = %16, %22
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = icmp eq ptr %26, null
  br i1 %27, label %12, label %16, !llvm.loop !113

28:                                               ; preds = %12, %28
  %29 = phi ptr [ %32, %28 ], [ %14, %12 ]
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 4
  store ptr %1, ptr %30, align 8, !tbaa !22
  %31 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 16
  %32 = load ptr, ptr %31, align 8, !tbaa !112
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %28, !llvm.loop !114

34:                                               ; preds = %28, %12
  br label %35

35:                                               ; preds = %62, %34
  %36 = phi ptr [ %0, %34 ], [ %63, %62 ]
  %37 = phi ptr [ %4, %34 ], [ %64, %62 ]
  %38 = icmp eq ptr %36, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ira_allocno, ptr %36, i64 0, i32 16
  %41 = load ptr, ptr %40, align 8, !tbaa !112
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %39, %35
  %44 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %37, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !63
  %46 = icmp eq ptr %45, null
  br i1 %46, label %65, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %45, i64 0, i32 9
  %49 = load ptr, ptr %48, align 8, !tbaa !64
  %50 = getelementptr inbounds ptr, ptr %49, i64 %8
  %51 = load ptr, ptr %50, align 8, !tbaa !6
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %39, %47
  %54 = phi ptr [ %45, %47 ], [ %37, %39 ]
  %55 = phi ptr [ %51, %47 ], [ %41, %39 ]
  %56 = getelementptr inbounds %struct.ira_allocno, ptr %55, i64 0, i32 31
  %57 = load i16, ptr %56, align 4
  %58 = and i16 %57, 4
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = or disjoint i16 %57, 4
  store i16 %61, ptr %56, align 4
  br label %62

62:                                               ; preds = %60, %47
  %63 = phi ptr [ null, %47 ], [ %55, %60 ]
  %64 = phi ptr [ %45, %47 ], [ %54, %60 ]
  br label %35

65:                                               ; preds = %53, %43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_new_reg(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 255
  %5 = tail call ptr @gen_reg_rtx(i32 noundef %4) #21
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load i32, ptr %6, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %7, ptr %8, align 8, !tbaa !45
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 134217728
  %11 = load i32, ptr %5, align 8
  %12 = and i32 %11, -134217729
  %13 = or disjoint i32 %12, %10
  store i32 %13, ptr %5, align 8
  %14 = load i32, ptr %0, align 8
  %15 = and i32 %14, 1073741824
  %16 = and i32 %13, -1073741825
  %17 = or disjoint i32 %16, %15
  store i32 %17, ptr %5, align 8
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %19, ptr %20, align 8, !tbaa !45
  %21 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !28
  %22 = icmp sgt i32 %21, 3
  %23 = load ptr, ptr @ira_dump_file, align 8
  %24 = icmp ne ptr %23, null
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #19
  %28 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #19
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %23, ptr noundef nonnull @.str.4, i32 noundef %27, i32 noundef %28) #19
  br label %30

30:                                               ; preds = %26, %1
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !107
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !107
  %6 = load i32, ptr %1, align 4, !tbaa !28
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !28
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @subloop_tree_node_p(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #15 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %5, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !llvm.loop !115

11:                                               ; preds = %4, %7, %2
  %12 = phi i8 [ 0, %2 ], [ 0, %7 ], [ 1, %4 ]
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_loop_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #14 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !116
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !6
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @entered_from_non_parent_p(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %4 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %58, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %3, i64 8
  br label %9

9:                                                ; preds = %7, %54
  %10 = phi ptr [ %5, %7 ], [ %56, %54 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = icmp eq ptr %11, null
  br i1 %12, label %54, label %13

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %11) #19
  store i32 0, ptr %3, align 8, !tbaa.struct !35
  store ptr %14, ptr %8, align 8, !tbaa.struct !36
  %15 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %14, ptr noundef nonnull %2) #19, !range !21
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %54, label %17

17:                                               ; preds = %13, %49
  %18 = load ptr, ptr %2, align 8, !tbaa !6
  %19 = load ptr, ptr %18, align 8, !tbaa !78
  %20 = load ptr, ptr @cfun, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !24
  %23 = load ptr, ptr %22, align 8, !tbaa !29
  %24 = icmp eq ptr %19, %23
  br i1 %24, label %49, label %25

25:                                               ; preds = %17
  %26 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !6
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !34
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %26, i64 %29, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !63
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %49, label %33

33:                                               ; preds = %25, %33
  %34 = phi ptr [ %36, %33 ], [ %31, %25 ]
  %35 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %34, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !63
  %37 = icmp eq ptr %36, null
  %38 = icmp eq ptr %36, %0
  %39 = or i1 %37, %38
  br i1 %39, label %40, label %33, !llvm.loop !118

40:                                               ; preds = %33
  br i1 %37, label %41, label %49

41:                                               ; preds = %40, %41
  %42 = phi ptr [ %44, %41 ], [ %0, %40 ]
  %43 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %42, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !63
  %45 = icmp eq ptr %44, null
  %46 = icmp eq ptr %31, %44
  %47 = or i1 %45, %46
  br i1 %47, label %48, label %41, !llvm.loop !119

48:                                               ; preds = %41
  br i1 %45, label %58, label %49

49:                                               ; preds = %17, %25, %48, %40
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  %50 = load i32, ptr %3, align 8
  %51 = load ptr, ptr %8, align 8
  %52 = call fastcc zeroext i8 @ei_cond(i32 %50, ptr %51, ptr noundef nonnull %2) #19, !range !21
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %17, !llvm.loop !120

54:                                               ; preds = %49, %13, %9
  %55 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %10, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !6
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %9, !llvm.loop !121

58:                                               ; preds = %54, %48, %1
  %59 = phi i8 [ 0, %1 ], [ 1, %48 ], [ 0, %54 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i8 %59
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #2 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #2 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #19
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #12 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !122
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 687, ptr noundef nonnull @.str.6) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #12 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #16 {
  %2 = load ptr, ptr @df, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !124
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !126
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @store_can_be_removed_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !16
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef %6) #19
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %2
  %12 = sext i32 %4 to i64
  br label %17

13:                                               ; preds = %32
  %14 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %18, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17, !llvm.loop !127

17:                                               ; preds = %11, %13
  %18 = phi ptr [ %9, %11 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %18, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !64
  %21 = getelementptr inbounds ptr, ptr %20, i64 %12
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !22
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef %24) #19
  %26 = icmp eq i32 %25, %7
  br i1 %26, label %37, label %27

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %18, i64 0, i32 14
  %29 = load ptr, ptr %28, align 8, !tbaa !128
  %30 = tail call i32 @bitmap_bit_p(ptr noundef %29, i32 noundef %4) #21
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %18, i64 0, i32 10
  %34 = load i8, ptr %33, align 8, !tbaa !76
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %13, label %37

36:                                               ; preds = %13, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 371, ptr noundef nonnull @.str.6) #21
  br label %37

37:                                               ; preds = %32, %27, %17, %36
  %38 = phi i8 [ 0, %36 ], [ 0, %32 ], [ 0, %27 ], [ 1, %17 ]
  ret i8 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_move(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = tail call ptr @ira_allocate(i64 noundef 48) #21
  %4 = getelementptr inbounds %struct.move, ptr %3, i64 0, i32 5
  store ptr null, ptr %4, align 8, !tbaa !129
  %5 = getelementptr inbounds %struct.move, ptr %3, i64 0, i32 4
  store i32 0, ptr %5, align 4, !tbaa !130
  %6 = getelementptr inbounds %struct.move, ptr %3, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !17
  store ptr %1, ptr %3, align 8, !tbaa !10
  %7 = getelementptr inbounds %struct.move, ptr %3, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !18
  %8 = getelementptr inbounds %struct.move, ptr %3, i64 0, i32 6
  store ptr null, ptr %8, align 8, !tbaa !131
  %9 = getelementptr inbounds %struct.move, ptr %3, i64 0, i32 3
  store i8 0, ptr %9, align 8, !tbaa !132
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_to_edge_list(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.move, ptr %1, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !18
  store ptr %1, ptr %3, align 8, !tbaa !43
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @eq_edge_move_lists_p(ptr noundef %0) unnamed_addr #15 {
  %2 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %0, i32 noundef 0) #19
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %0) #19
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi i32 [ %5, %1 ], [ %8, %10 ]
  %8 = add i32 %7, -1
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %0, i32 noundef %8) #19
  %12 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  %14 = tail call fastcc zeroext i8 @eq_move_lists_p(ptr noundef %4, ptr noundef %13) #19, !range !21
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %6, !llvm.loop !133

16:                                               ; preds = %6, %10
  %17 = phi i8 [ 0, %10 ], [ 1, %6 ]
  ret i8 %17
}

; Function Attrs: optsize
declare zeroext i8 @control_flow_insn_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @eq_move_lists_p(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #15 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %26

6:                                                ; preds = %2, %18
  %7 = phi ptr [ %22, %18 ], [ %1, %2 ]
  %8 = phi ptr [ %20, %18 ], [ %0, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  %10 = load ptr, ptr %7, align 8, !tbaa !10
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.move, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = getelementptr inbounds %struct.move, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !17
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.move, ptr %8, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !18
  %21 = getelementptr inbounds %struct.move, ptr %7, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !18
  %23 = icmp ne ptr %20, null
  %24 = icmp ne ptr %22, null
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %6, label %26, !llvm.loop !134

26:                                               ; preds = %18, %2
  %27 = phi ptr [ %0, %2 ], [ %20, %18 ]
  %28 = phi ptr [ %1, %2 ], [ %22, %18 ]
  %29 = icmp eq ptr %27, %28
  %30 = zext i1 %29 to i8
  br label %31

31:                                               ; preds = %6, %12, %26
  %32 = phi i8 [ %30, %26 ], [ 0, %12 ], [ 0, %6 ]
  ret i8 %32
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @modify_move_list(ptr noundef %0) unnamed_addr #2 {
  %2 = load i32, ptr @curr_tick, align 4, !tbaa !28
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @curr_tick, align 4, !tbaa !28
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load ptr, ptr @move_vec, align 8
  tail call fastcc void @VEC_move_t_base_truncate(ptr noundef %6) #19
  br label %124

7:                                                ; preds = %1, %31
  %8 = phi ptr [ %33, %31 ], [ %0, %1 ]
  %9 = getelementptr inbounds %struct.move, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !67
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %7
  %15 = zext nneg i32 %12 to i64
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !68
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %15, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !45
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %14
  %23 = zext i8 %20 to i64
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ 0, %22 ], [ %29, %24 ]
  %26 = add nuw nsw i64 %25, %15
  %27 = getelementptr inbounds [53 x ptr], ptr @hard_regno_last_set, i64 0, i64 %26
  store ptr %8, ptr %27, align 8, !tbaa !6
  %28 = getelementptr inbounds [53 x i32], ptr @hard_regno_last_set_check, i64 0, i64 %26
  store i32 %3, ptr %28, align 4, !tbaa !28
  %29 = add nuw nsw i64 %25, 1
  %30 = icmp eq i64 %29, %23
  br i1 %30, label %31, label %24, !llvm.loop !135

31:                                               ; preds = %24, %14, %7
  %32 = getelementptr inbounds %struct.move, ptr %8, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %7, !llvm.loop !136

35:                                               ; preds = %31, %113
  %36 = phi ptr [ %115, %113 ], [ %0, %31 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !10
  %38 = getelementptr inbounds %struct.ira_allocno, ptr %37, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !67
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %41, label %113

41:                                               ; preds = %35
  %42 = zext nneg i32 %39 to i64
  %43 = getelementptr inbounds %struct.ira_allocno, ptr %37, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !68
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %42, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !45
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %75, label %49

49:                                               ; preds = %41
  %50 = load i32, ptr @curr_tick, align 4, !tbaa !28
  %51 = getelementptr inbounds %struct.ira_allocno, ptr %37, i64 0, i32 1
  %52 = zext i8 %47 to i64
  br label %53

53:                                               ; preds = %49, %71
  %54 = phi i64 [ 0, %49 ], [ %73, %71 ]
  %55 = phi i32 [ 0, %49 ], [ %72, %71 ]
  %56 = add nuw nsw i64 %54, %42
  %57 = getelementptr inbounds [53 x i32], ptr @hard_regno_last_set_check, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !28
  %59 = icmp eq i32 %58, %50
  br i1 %59, label %60, label %71

60:                                               ; preds = %53
  %61 = getelementptr inbounds [53 x ptr], ptr @hard_regno_last_set, i64 0, i64 %56
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = getelementptr inbounds %struct.move, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !17
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %64, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !16
  %67 = load i32, ptr %51, align 4, !tbaa !16
  %68 = icmp ne i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = add nsw i32 %55, %69
  br label %71

71:                                               ; preds = %60, %53
  %72 = phi i32 [ %55, %53 ], [ %70, %60 ]
  %73 = add nuw nsw i64 %54, 1
  %74 = icmp eq i64 %73, %52
  br i1 %74, label %75, label %53, !llvm.loop !137

75:                                               ; preds = %71, %41
  %76 = phi i32 [ 0, %41 ], [ %72, %71 ]
  %77 = sext i32 %76 to i64
  %78 = shl nsw i64 %77, 3
  %79 = tail call ptr @ira_allocate(i64 noundef %78) #21
  %80 = getelementptr inbounds %struct.move, ptr %36, i64 0, i32 5
  store ptr %79, ptr %80, align 8, !tbaa !129
  br i1 %48, label %110, label %81

81:                                               ; preds = %75
  %82 = load i32, ptr @curr_tick, align 4, !tbaa !28
  %83 = getelementptr inbounds %struct.ira_allocno, ptr %37, i64 0, i32 1
  %84 = zext i8 %47 to i64
  br label %85

85:                                               ; preds = %81, %106
  %86 = phi i64 [ 0, %81 ], [ %108, %106 ]
  %87 = phi i32 [ 0, %81 ], [ %107, %106 ]
  %88 = add nuw nsw i64 %86, %42
  %89 = getelementptr inbounds [53 x i32], ptr @hard_regno_last_set_check, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !28
  %91 = icmp eq i32 %90, %82
  br i1 %91, label %92, label %106

92:                                               ; preds = %85
  %93 = getelementptr inbounds [53 x ptr], ptr @hard_regno_last_set, i64 0, i64 %88
  %94 = load ptr, ptr %93, align 8, !tbaa !6
  %95 = getelementptr inbounds %struct.move, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !17
  %97 = getelementptr inbounds %struct.ira_allocno, ptr %96, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !16
  %99 = load i32, ptr %83, align 4, !tbaa !16
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %106, label %101

101:                                              ; preds = %92
  %102 = load ptr, ptr %80, align 8, !tbaa !129
  %103 = add nsw i32 %87, 1
  %104 = sext i32 %87 to i64
  %105 = getelementptr inbounds ptr, ptr %102, i64 %104
  store ptr %94, ptr %105, align 8, !tbaa !6
  br label %106

106:                                              ; preds = %85, %92, %101
  %107 = phi i32 [ %103, %101 ], [ %87, %92 ], [ %87, %85 ]
  %108 = add nuw nsw i64 %86, 1
  %109 = icmp eq i64 %108, %84
  br i1 %109, label %110, label %85, !llvm.loop !138

110:                                              ; preds = %106, %75
  %111 = phi i32 [ 0, %75 ], [ %107, %106 ]
  %112 = getelementptr inbounds %struct.move, ptr %36, i64 0, i32 4
  store i32 %111, ptr %112, align 4, !tbaa !130
  br label %113

113:                                              ; preds = %35, %110
  %114 = getelementptr inbounds %struct.move, ptr %36, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !18
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %35, !llvm.loop !139

117:                                              ; preds = %113
  %118 = load ptr, ptr @move_vec, align 8
  tail call fastcc void @VEC_move_t_base_truncate(ptr noundef %118) #19
  br i1 %4, label %124, label %119

119:                                              ; preds = %117, %119
  %120 = phi ptr [ %122, %119 ], [ %0, %117 ]
  tail call fastcc void @traverse_moves(ptr noundef nonnull %120) #19
  %121 = getelementptr inbounds %struct.move, ptr %120, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !18
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %119, !llvm.loop !140

124:                                              ; preds = %119, %5, %117
  %125 = load ptr, ptr @move_vec, align 8
  %126 = tail call fastcc i32 @VEC_move_t_base_length(ptr noundef %125) #19
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %124, %137
  %129 = phi i32 [ %131, %137 ], [ %126, %124 ]
  %130 = phi ptr [ %132, %137 ], [ null, %124 ]
  %131 = add nsw i32 %129, -1
  %132 = tail call fastcc ptr @VEC_move_t_base_index(ptr noundef %125, i32 noundef %131) #19
  %133 = getelementptr inbounds %struct.move, ptr %132, i64 0, i32 2
  store ptr null, ptr %133, align 8, !tbaa !18
  %134 = icmp eq ptr %130, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.move, ptr %130, i64 0, i32 2
  store ptr %132, ptr %136, align 8, !tbaa !18
  br label %137

137:                                              ; preds = %135, %128
  %138 = icmp ugt i32 %129, 1
  br i1 %138, label %128, label %139, !llvm.loop !141

139:                                              ; preds = %137, %124
  %140 = phi ptr [ null, %124 ], [ %132, %137 ]
  %141 = tail call fastcc ptr @VEC_move_t_base_last(ptr noundef %125) #19
  %142 = load i32, ptr @curr_tick, align 4, !tbaa !28
  %143 = add nsw i32 %142, 1
  store i32 %143, ptr @curr_tick, align 4, !tbaa !28
  tail call fastcc void @VEC_move_t_base_truncate(ptr noundef %125) #19
  %144 = icmp eq ptr %141, null
  br i1 %144, label %248, label %145

145:                                              ; preds = %139, %244
  %146 = phi ptr [ %246, %244 ], [ %141, %139 ]
  %147 = load ptr, ptr %146, align 8, !tbaa !10
  %148 = getelementptr inbounds %struct.move, ptr %146, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !17
  %150 = getelementptr inbounds %struct.ira_allocno, ptr %147, i64 0, i32 3
  %151 = load i32, ptr %150, align 4, !tbaa !67
  %152 = icmp sgt i32 %151, -1
  br i1 %152, label %153, label %222

153:                                              ; preds = %145
  %154 = zext nneg i32 %151 to i64
  %155 = getelementptr inbounds %struct.ira_allocno, ptr %147, i64 0, i32 2
  %156 = load i32, ptr %155, align 8, !tbaa !68
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %154, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !45
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %222, label %161

161:                                              ; preds = %153
  %162 = zext i8 %159 to i64
  br label %163

163:                                              ; preds = %161, %219
  %164 = phi i64 [ 0, %161 ], [ %220, %219 ]
  %165 = add nuw nsw i64 %164, %154
  %166 = getelementptr inbounds [53 x i32], ptr @hard_regno_last_set_check, i64 0, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !28
  %168 = load i32, ptr @curr_tick, align 4, !tbaa !28
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %219

170:                                              ; preds = %163
  %171 = getelementptr inbounds [53 x ptr], ptr @hard_regno_last_set, i64 0, i64 %165
  %172 = load ptr, ptr %171, align 8, !tbaa !6
  %173 = getelementptr inbounds %struct.move, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !17
  %175 = getelementptr inbounds %struct.ira_allocno, ptr %174, i64 0, i32 3
  %176 = load i32, ptr %175, align 4, !tbaa !67
  %177 = icmp sgt i32 %176, -1
  br i1 %177, label %178, label %219

178:                                              ; preds = %170
  %179 = getelementptr inbounds %struct.ira_allocno, ptr %174, i64 0, i32 1
  %180 = load i32, ptr %179, align 4, !tbaa !16
  %181 = getelementptr inbounds %struct.ira_allocno, ptr %174, i64 0, i32 6
  %182 = load ptr, ptr %181, align 8, !tbaa !111
  %183 = tail call ptr @ira_create_allocno(i32 noundef %180, i8 noundef zeroext 0, ptr noundef %182) #21
  %184 = load ptr, ptr %173, align 8, !tbaa !17
  %185 = getelementptr inbounds %struct.ira_allocno, ptr %184, i64 0, i32 2
  %186 = load i32, ptr %185, align 8, !tbaa !68
  %187 = getelementptr inbounds %struct.ira_allocno, ptr %183, i64 0, i32 2
  store i32 %186, ptr %187, align 8, !tbaa !68
  %188 = getelementptr inbounds %struct.ira_allocno, ptr %184, i64 0, i32 9
  %189 = load i32, ptr %188, align 8, !tbaa !66
  tail call void @ira_set_allocno_cover_class(ptr noundef %183, i32 noundef %189) #21
  %190 = getelementptr inbounds %struct.ira_allocno, ptr %183, i64 0, i32 31
  %191 = load i16, ptr %190, align 4
  %192 = or i16 %191, 256
  store i16 %192, ptr %190, align 4
  %193 = getelementptr inbounds %struct.ira_allocno, ptr %183, i64 0, i32 3
  store i32 -1, ptr %193, align 4, !tbaa !67
  %194 = load ptr, ptr %173, align 8, !tbaa !17
  %195 = getelementptr inbounds %struct.ira_allocno, ptr %194, i64 0, i32 4
  %196 = load ptr, ptr %195, align 8, !tbaa !22
  %197 = tail call fastcc ptr @create_new_reg(ptr noundef %196) #19
  %198 = getelementptr inbounds %struct.ira_allocno, ptr %183, i64 0, i32 4
  store ptr %197, ptr %198, align 8, !tbaa !22
  %199 = load i32, ptr %183, align 8, !tbaa !13
  %200 = getelementptr inbounds %struct.ira_allocno, ptr %183, i64 0, i32 24
  store i32 %199, ptr %200, align 8, !tbaa !142
  %201 = getelementptr inbounds %struct.ira_allocno, ptr %183, i64 0, i32 21
  store i32 0, ptr %201, align 8, !tbaa !143
  %202 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !28
  %203 = add nsw i32 %202, -1
  %204 = getelementptr inbounds %struct.ira_allocno, ptr %183, i64 0, i32 22
  store i32 %203, ptr %204, align 4, !tbaa !144
  %205 = load ptr, ptr %173, align 8, !tbaa !17
  %206 = tail call fastcc ptr @create_move(ptr noundef %205, ptr noundef nonnull %183) #19
  store ptr %183, ptr %173, align 8, !tbaa !17
  tail call fastcc void @VEC_move_t_heap_safe_push(ptr noundef %206) #19
  %207 = load i32, ptr @ira_move_loops_num, align 4, !tbaa !28
  %208 = add nsw i32 %207, 1
  store i32 %208, ptr @ira_move_loops_num, align 4, !tbaa !28
  %209 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !28
  %210 = icmp sgt i32 %209, 2
  %211 = load ptr, ptr @ira_dump_file, align 8
  %212 = icmp ne ptr %211, null
  %213 = select i1 %210, i1 %212, i1 false
  br i1 %213, label %214, label %219

214:                                              ; preds = %178
  %215 = load i32, ptr %183, align 8, !tbaa !13
  %216 = load ptr, ptr %198, align 8, !tbaa !22
  %217 = tail call fastcc i32 @rhs_regno(ptr noundef %216) #19
  %218 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %211, ptr noundef nonnull @.str.9, i32 noundef %215, i32 noundef %217) #19
  br label %219

219:                                              ; preds = %163, %170, %214, %178
  %220 = add nuw nsw i64 %164, 1
  %221 = icmp eq i64 %220, %162
  br i1 %221, label %222, label %163, !llvm.loop !145

222:                                              ; preds = %219, %153, %145
  %223 = getelementptr inbounds %struct.ira_allocno, ptr %149, i64 0, i32 3
  %224 = load i32, ptr %223, align 4, !tbaa !67
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %244, label %226

226:                                              ; preds = %222
  %227 = zext nneg i32 %224 to i64
  %228 = getelementptr inbounds %struct.ira_allocno, ptr %149, i64 0, i32 2
  %229 = load i32, ptr %228, align 8, !tbaa !68
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %227, i64 %230
  %232 = load i8, ptr %231, align 1, !tbaa !45
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %244, label %234

234:                                              ; preds = %226
  %235 = load i32, ptr @curr_tick, align 4, !tbaa !28
  %236 = zext i8 %232 to i64
  br label %237

237:                                              ; preds = %234, %237
  %238 = phi i64 [ 0, %234 ], [ %242, %237 ]
  %239 = add nuw nsw i64 %238, %227
  %240 = getelementptr inbounds [53 x ptr], ptr @hard_regno_last_set, i64 0, i64 %239
  store ptr %146, ptr %240, align 8, !tbaa !6
  %241 = getelementptr inbounds [53 x i32], ptr @hard_regno_last_set_check, i64 0, i64 %239
  store i32 %235, ptr %241, align 4, !tbaa !28
  %242 = add nuw nsw i64 %238, 1
  %243 = icmp eq i64 %242, %236
  br i1 %243, label %244, label %237, !llvm.loop !146

244:                                              ; preds = %237, %226, %222
  %245 = getelementptr inbounds %struct.move, ptr %146, i64 0, i32 2
  %246 = load ptr, ptr %245, align 8, !tbaa !18
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %145, !llvm.loop !147

248:                                              ; preds = %244, %139
  %249 = load ptr, ptr @move_vec, align 8
  %250 = tail call fastcc i32 @VEC_move_t_base_length(ptr noundef %249) #19
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %260

252:                                              ; preds = %248, %252
  %253 = phi ptr [ %256, %252 ], [ %140, %248 ]
  %254 = phi i32 [ %255, %252 ], [ %250, %248 ]
  %255 = add nsw i32 %254, -1
  %256 = tail call fastcc ptr @VEC_move_t_base_index(ptr noundef %249, i32 noundef %255) #19
  %257 = getelementptr inbounds %struct.move, ptr %256, i64 0, i32 2
  store ptr null, ptr %257, align 8, !tbaa !18
  %258 = getelementptr inbounds %struct.move, ptr %253, i64 0, i32 2
  store ptr %256, ptr %258, align 8, !tbaa !18
  %259 = icmp ugt i32 %254, 1
  br i1 %259, label %252, label %260, !llvm.loop !148

260:                                              ; preds = %252, %248
  ret ptr %141
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emit_move_list(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  tail call void @start_sequence() #21
  %3 = icmp eq ptr %0, null
  br i1 %3, label %76, label %4

4:                                                ; preds = %2, %69
  %5 = phi ptr [ %74, %69 ], [ %0, %2 ]
  tail call void @start_sequence() #21
  %6 = getelementptr inbounds %struct.move, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = load ptr, ptr %5, align 8, !tbaa !10
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = tail call ptr @emit_move_insn(ptr noundef %9, ptr noundef %12) #21
  %14 = tail call ptr @get_insns() #21
  %15 = getelementptr inbounds %struct.move, ptr %5, i64 0, i32 6
  store ptr %14, ptr %15, align 8, !tbaa !131
  tail call void @end_sequence() #21
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %4, %18
  %19 = phi ptr [ %21, %18 ], [ %16, %4 ]
  tail call fastcc void @recog_memoized(ptr noundef nonnull %19) #19
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %18, !llvm.loop !149

23:                                               ; preds = %18
  %24 = load ptr, ptr %15, align 8, !tbaa !131
  br label %25

25:                                               ; preds = %23, %4
  %26 = phi ptr [ %24, %23 ], [ null, %4 ]
  %27 = tail call ptr @emit_insn(ptr noundef %26) #21
  %28 = load ptr, ptr %6, align 8, !tbaa !17
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !68
  %31 = getelementptr inbounds %struct.ira_allocno, ptr %28, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !66
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %28, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !67
  %35 = icmp slt i32 %34, 0
  %36 = load ptr, ptr %5, align 8, !tbaa !10
  %37 = getelementptr inbounds %struct.ira_allocno, ptr %36, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !67
  br i1 %35, label %39, label %49

39:                                               ; preds = %25
  %40 = icmp sgt i32 %38, -1
  br i1 %40, label %41, label %69

41:                                               ; preds = %39
  %42 = zext i32 %30 to i64
  %43 = zext i32 %32 to i64
  %44 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %42, i64 %43
  %45 = load i16, ptr %44, align 4, !tbaa !150
  %46 = sext i16 %45 to i32
  %47 = mul nsw i32 %46, %1
  %48 = load i32, ptr @ira_store_cost, align 4, !tbaa !28
  br label %63

49:                                               ; preds = %25
  %50 = icmp slt i32 %38, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %49
  %52 = zext i32 %30 to i64
  %53 = zext i32 %32 to i64
  %54 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %52, i64 %53
  %55 = load i16, ptr %54, align 4, !tbaa !150
  %56 = sext i16 %55 to i32
  %57 = mul nsw i32 %56, %1
  %58 = load i32, ptr @ira_load_cost, align 4, !tbaa !28
  br label %63

59:                                               ; preds = %49
  %60 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %30, i32 noundef %32, i32 noundef %32) #19, !range !152
  %61 = mul nsw i32 %60, %1
  %62 = load i32, ptr @ira_shuffle_cost, align 4, !tbaa !28
  br label %63

63:                                               ; preds = %41, %51, %59
  %64 = phi i32 [ %61, %59 ], [ %58, %51 ], [ %48, %41 ]
  %65 = phi i32 [ %62, %59 ], [ %57, %51 ], [ %47, %41 ]
  %66 = phi ptr [ @ira_shuffle_cost, %59 ], [ @ira_load_cost, %51 ], [ @ira_store_cost, %41 ]
  %67 = phi i32 [ %61, %59 ], [ %57, %51 ], [ %47, %41 ]
  %68 = add nsw i32 %65, %64
  store i32 %68, ptr %66, align 4, !tbaa !28
  br label %69

69:                                               ; preds = %63, %39
  %70 = phi i32 [ 0, %39 ], [ %67, %63 ]
  %71 = load i32, ptr @ira_overall_cost, align 4, !tbaa !28
  %72 = add nsw i32 %71, %70
  store i32 %72, ptr @ira_overall_cost, align 4, !tbaa !28
  %73 = getelementptr inbounds %struct.move, ptr %5, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !18
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %4, !llvm.loop !153

76:                                               ; preds = %69, %2
  %77 = tail call ptr @get_insns() #21
  tail call void @end_sequence() #21
  ret ptr %77
}

; Function Attrs: optsize
declare ptr @emit_insn_before(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #6

; Function Attrs: optsize
declare void @insert_insn_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_move_t_base_truncate(ptr noundef writeonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !154
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @traverse_moves(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.move, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 8, !tbaa !132
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  store i8 1, ptr %2, align 8, !tbaa !132
  %6 = getelementptr inbounds %struct.move, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !130
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.move, ptr %0, i64 0, i32 5
  %11 = zext nneg i32 %7 to i64
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ %11, %9 ], [ %14, %12 ]
  %14 = add nsw i64 %13, -1
  %15 = load ptr, ptr %10, align 8, !tbaa !129
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  tail call fastcc void @traverse_moves(ptr noundef %17) #19
  %18 = icmp ugt i64 %13, 1
  br i1 %18, label %12, label %19, !llvm.loop !156

19:                                               ; preds = %12, %5
  tail call fastcc void @VEC_move_t_heap_safe_push(ptr noundef nonnull %0) #19
  br label %20

20:                                               ; preds = %1, %19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_move_t_base_length(ptr noundef readonly %0) unnamed_addr #12 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !154
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_move_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #12 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_move_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_move_t_base_last(ptr nocapture noundef readonly %0) unnamed_addr #12 {
  %2 = load i32, ptr %0, align 8, !tbaa !154
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_move_t_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @ira_create_allocno(i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @ira_set_allocno_cover_class(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_move_t_heap_safe_push(ptr noundef %0) unnamed_addr #2 {
  tail call fastcc void @VEC_move_t_heap_reserve() #19
  %2 = load ptr, ptr @move_vec, align 8, !tbaa !6
  tail call fastcc void @VEC_move_t_base_quick_push(ptr noundef %2, ptr noundef %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_move_t_heap_reserve() unnamed_addr #2 {
  %1 = load ptr, ptr @move_vec, align 8, !tbaa !6
  %2 = tail call fastcc i32 @VEC_move_t_base_space(ptr noundef %1) #19
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #21
  store ptr %5, ptr @move_vec, align 8, !tbaa !6
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_move_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #14 {
  %3 = load i32, ptr %0, align 8, !tbaa !154
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !154
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_move_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_move_t_base_space(ptr noundef readonly %0) unnamed_addr #12 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_move_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !157
  %6 = load i32, ptr %0, align 8, !tbaa !154
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #6

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @emit_insn(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ira_get_register_move_cost(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @ira_init_register_move_cost(i32 noundef %0) #21
  %9 = load ptr, ptr %5, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = zext i32 %1 to i64
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds [27 x i16], ptr %11, i64 %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !150
  %16 = zext i16 %15 to i32
  ret i32 %16
}

; Function Attrs: optsize
declare void @ira_init_register_move_cost(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_range_and_copies_from_move_list(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bitmap_iterator, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  %8 = icmp eq ptr %0, null
  br i1 %8, label %196, label %9

9:                                                ; preds = %4
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %6, ptr noundef %2, i32 noundef 53, ptr noundef nonnull %5) #19
  %10 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #19, !range !21
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9, %12
  %13 = phi i32 [ %14, %12 ], [ 0, %9 ]
  %14 = add nuw nsw i32 %13, 1
  call fastcc void @bmp_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %5) #19
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #19, !range !21
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %12, !llvm.loop !158

17:                                               ; preds = %12, %9
  %18 = phi i32 [ 0, %9 ], [ %14, %12 ]
  store i64 0, ptr %7, align 8, !tbaa !69
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %7, ptr noundef %2) #21
  %19 = load i32, ptr @ira_max_point, align 4, !tbaa !28
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr @ira_max_point, align 4, !tbaa !28
  br label %21

21:                                               ; preds = %17, %119
  %22 = phi ptr [ %0, %17 ], [ %128, %119 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !10
  %24 = getelementptr inbounds %struct.move, ptr %22, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !17
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %25, i64 0, i32 23
  %27 = load ptr, ptr %26, align 8, !tbaa !159
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %21
  %30 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !28
  %31 = icmp sgt i32 %30, 2
  %32 = load ptr, ptr @ira_dump_file, align 8
  %33 = icmp ne ptr %32, null
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i32, ptr %25, align 8, !tbaa !13
  %37 = getelementptr inbounds %struct.ira_allocno, ptr %25, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !22
  %39 = call fastcc i32 @rhs_regno(ptr noundef %38) #19
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %32, ptr noundef nonnull @.str.10, i32 noundef %36, i32 noundef %39) #19
  br label %41

41:                                               ; preds = %35, %29
  call void @ira_allocate_allocno_conflicts(ptr noundef nonnull %25, i32 noundef %18) #21
  br label %42

42:                                               ; preds = %41, %21
  %43 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !16
  %45 = call zeroext i8 @bitmap_clear_bit(ptr noundef %2, i32 noundef %44) #21
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %25, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !16
  %48 = call zeroext i8 @bitmap_clear_bit(ptr noundef %2, i32 noundef %47) #21
  %49 = load i64, ptr %7, align 8, !tbaa !69
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 26
  %51 = getelementptr inbounds %struct.ira_allocno, ptr %25, i64 0, i32 26
  %52 = load <2 x i64>, ptr %50, align 8, !tbaa !69
  %53 = insertelement <2 x i64> poison, i64 %49, i64 0
  %54 = shufflevector <2 x i64> %53, <2 x i64> poison, <2 x i32> zeroinitializer
  %55 = or <2 x i64> %52, %54
  store <2 x i64> %55, ptr %50, align 8, !tbaa !69
  %56 = load <2 x i64>, ptr %51, align 8, !tbaa !69
  %57 = or <2 x i64> %56, %54
  store <2 x i64> %57, ptr %51, align 8, !tbaa !69
  call fastcc void @update_costs(ptr noundef %23, i8 noundef zeroext 1, i32 noundef %3) #19
  call fastcc void @update_costs(ptr noundef nonnull %25, i8 noundef zeroext 0, i32 noundef %3) #19
  %58 = getelementptr inbounds %struct.move, ptr %22, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !131
  %60 = call ptr @ira_add_allocno_copy(ptr noundef %23, ptr noundef nonnull %25, i32 noundef %3, i8 noundef zeroext 0, ptr noundef %59, ptr noundef null) #21
  %61 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !28
  %62 = icmp sgt i32 %61, 2
  %63 = load ptr, ptr @ira_dump_file, align 8
  %64 = icmp ne ptr %63, null
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %81

66:                                               ; preds = %42
  %67 = load i32, ptr %60, align 8, !tbaa !160
  %68 = getelementptr inbounds %struct.ira_allocno_copy, ptr %60, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !162
  %70 = load i32, ptr %69, align 8, !tbaa !13
  %71 = getelementptr inbounds %struct.ira_allocno, ptr %69, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !22
  %73 = call fastcc i32 @rhs_regno(ptr noundef %72) #19
  %74 = getelementptr inbounds %struct.ira_allocno_copy, ptr %60, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !163
  %76 = load i32, ptr %75, align 8, !tbaa !13
  %77 = getelementptr inbounds %struct.ira_allocno, ptr %75, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !22
  %79 = call fastcc i32 @rhs_regno(ptr noundef %78) #19
  %80 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %63, ptr noundef nonnull @.str.11, i32 noundef %67, i32 noundef %70, i32 noundef %73, i32 noundef %76, i32 noundef %79) #19
  br label %81

81:                                               ; preds = %66, %42
  %82 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 20
  %83 = load ptr, ptr %82, align 8, !tbaa !164
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %83, i64 0, i32 2
  %87 = load i32, ptr %86, align 4, !tbaa !165
  %88 = icmp sgt i32 %87, -1
  br i1 %88, label %89, label %104

89:                                               ; preds = %85, %81
  %90 = load i32, ptr @ira_max_point, align 4, !tbaa !28
  %91 = call ptr @ira_create_allocno_live_range(ptr noundef nonnull %23, i32 noundef %20, i32 noundef %90, ptr noundef %83) #21
  store ptr %91, ptr %82, align 8, !tbaa !164
  %92 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !28
  %93 = icmp sgt i32 %92, 2
  %94 = load ptr, ptr @ira_dump_file, align 8
  %95 = icmp ne ptr %94, null
  %96 = select i1 %93, i1 %95, i1 false
  br i1 %96, label %97, label %119

97:                                               ; preds = %89
  %98 = load i32, ptr @ira_max_point, align 4, !tbaa !28
  %99 = load i32, ptr %23, align 8, !tbaa !13
  %100 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !22
  %102 = call fastcc i32 @rhs_regno(ptr noundef %101) #19
  %103 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %94, ptr noundef nonnull @.str.12, i32 noundef %20, i32 noundef %98, i32 noundef %99, i32 noundef %102) #19
  br label %119

104:                                              ; preds = %85
  %105 = load i32, ptr @ira_max_point, align 4, !tbaa !28
  store i32 %105, ptr %86, align 4, !tbaa !165
  %106 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !28
  %107 = icmp sgt i32 %106, 2
  %108 = load ptr, ptr @ira_dump_file, align 8
  %109 = icmp ne ptr %108, null
  %110 = select i1 %107, i1 %109, i1 false
  br i1 %110, label %111, label %119

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %83, i64 0, i32 1
  %113 = load i32, ptr %112, align 8, !tbaa !167
  %114 = load i32, ptr %23, align 8, !tbaa !13
  %115 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 4
  %116 = load ptr, ptr %115, align 8, !tbaa !22
  %117 = call fastcc i32 @rhs_regno(ptr noundef %116) #19
  %118 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %108, ptr noundef nonnull @.str.12, i32 noundef %113, i32 noundef %105, i32 noundef %114, i32 noundef %117) #19
  br label %119

119:                                              ; preds = %104, %111, %89, %97
  %120 = load i32, ptr @ira_max_point, align 4, !tbaa !28
  %121 = add nsw i32 %120, 1
  store i32 %121, ptr @ira_max_point, align 4, !tbaa !28
  %122 = getelementptr inbounds %struct.ira_allocno, ptr %25, i64 0, i32 20
  %123 = load ptr, ptr %122, align 8, !tbaa !164
  %124 = call ptr @ira_create_allocno_live_range(ptr noundef nonnull %25, i32 noundef %121, i32 noundef -1, ptr noundef %123) #21
  store ptr %124, ptr %122, align 8, !tbaa !164
  %125 = load i32, ptr @ira_max_point, align 4, !tbaa !28
  %126 = add nsw i32 %125, 1
  store i32 %126, ptr @ira_max_point, align 4, !tbaa !28
  %127 = getelementptr inbounds %struct.move, ptr %22, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !18
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %21, !llvm.loop !168

130:                                              ; preds = %119, %155
  %131 = phi ptr [ %157, %155 ], [ %0, %119 ]
  %132 = getelementptr inbounds %struct.move, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !17
  %134 = getelementptr inbounds %struct.ira_allocno, ptr %133, i64 0, i32 20
  %135 = load ptr, ptr %134, align 8, !tbaa !164
  %136 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %135, i64 0, i32 2
  %137 = load i32, ptr %136, align 4, !tbaa !165
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %130
  %140 = load i32, ptr @ira_max_point, align 4, !tbaa !28
  %141 = add nsw i32 %140, -1
  store i32 %141, ptr %136, align 4, !tbaa !165
  %142 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !28
  %143 = icmp sgt i32 %142, 2
  %144 = load ptr, ptr @ira_dump_file, align 8
  %145 = icmp ne ptr %144, null
  %146 = select i1 %143, i1 %145, i1 false
  br i1 %146, label %147, label %155

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %135, i64 0, i32 1
  %149 = load i32, ptr %148, align 8, !tbaa !167
  %150 = load i32, ptr %133, align 8, !tbaa !13
  %151 = getelementptr inbounds %struct.ira_allocno, ptr %133, i64 0, i32 4
  %152 = load ptr, ptr %151, align 8, !tbaa !22
  %153 = call fastcc i32 @rhs_regno(ptr noundef %152) #19
  %154 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %144, ptr noundef nonnull @.str.12, i32 noundef %149, i32 noundef %141, i32 noundef %150, i32 noundef %153) #19
  br label %155

155:                                              ; preds = %130, %147, %139
  %156 = getelementptr inbounds %struct.move, ptr %131, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !18
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %130, !llvm.loop !169

159:                                              ; preds = %155
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %6, ptr noundef %2, i32 noundef 53, ptr noundef nonnull %5) #19
  %160 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #19, !range !21
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %196, label %162

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1, i64 0, i32 9
  br label %164

164:                                              ; preds = %162, %193
  %165 = load ptr, ptr %163, align 8, !tbaa !64
  %166 = load i32, ptr %5, align 4, !tbaa !28
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds ptr, ptr %165, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !6
  %170 = getelementptr inbounds %struct.ira_allocno, ptr %169, i64 0, i32 32
  %171 = load ptr, ptr %170, align 8, !tbaa !82
  %172 = icmp eq ptr %171, null
  %173 = select i1 %172, ptr %169, ptr %171
  %174 = load i32, ptr @ira_max_point, align 4, !tbaa !28
  %175 = add nsw i32 %174, -1
  %176 = getelementptr inbounds %struct.ira_allocno, ptr %173, i64 0, i32 20
  %177 = load ptr, ptr %176, align 8, !tbaa !164
  %178 = call ptr @ira_create_allocno_live_range(ptr noundef %173, i32 noundef %20, i32 noundef %175, ptr noundef %177) #21
  store ptr %178, ptr %176, align 8, !tbaa !164
  %179 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !28
  %180 = icmp sgt i32 %179, 2
  %181 = load ptr, ptr @ira_dump_file, align 8
  %182 = icmp ne ptr %181, null
  %183 = select i1 %180, i1 %182, i1 false
  br i1 %183, label %184, label %193

184:                                              ; preds = %164
  %185 = load i32, ptr @ira_max_point, align 4, !tbaa !28
  %186 = add nsw i32 %185, -1
  %187 = select i1 %172, ptr @.str.15, ptr @.str.14
  %188 = load i32, ptr %173, align 8, !tbaa !13
  %189 = getelementptr inbounds %struct.ira_allocno, ptr %173, i64 0, i32 4
  %190 = load ptr, ptr %189, align 8, !tbaa !22
  %191 = call fastcc i32 @rhs_regno(ptr noundef %190) #19
  %192 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %181, ptr noundef nonnull @.str.13, i32 noundef %20, i32 noundef %186, ptr noundef nonnull %187, i32 noundef %188, i32 noundef %191) #19
  br label %193

193:                                              ; preds = %164, %184
  call fastcc void @bmp_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %5) #19
  %194 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #19, !range !21
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %196, label %164, !llvm.loop !170

196:                                              ; preds = %193, %159, %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #20
  ret void
}

; Function Attrs: optsize
declare void @bitmap_and(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @reg_set_to_hard_reg_set(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @ira_allocate_allocno_conflicts(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @update_costs(ptr nocapture noundef %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #13 {
  %4 = icmp ne i8 %1, 0
  %5 = zext i1 %4 to i64
  %6 = insertelement <2 x i32> <i32 1, i32 poison>, i32 %2, i64 1
  br label %7

7:                                                ; preds = %28, %3
  %8 = phi ptr [ %0, %3 ], [ %29, %28 ]
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 7
  %10 = load <2 x i32>, ptr %9, align 8, !tbaa !28
  %11 = add nsw <2 x i32> %10, %6
  store <2 x i32> %11, ptr %9, align 8, !tbaa !28
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !68
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !66
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %14, i64 %17, i64 %5
  %19 = load i16, ptr %18, align 2, !tbaa !150
  %20 = sext i16 %19 to i32
  %21 = mul nsw i32 %20, %2
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 12
  %23 = load i32, ptr %22, align 4, !tbaa !171
  %24 = add nsw i32 %21, %23
  store i32 %24, ptr %22, align 4, !tbaa !171
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 16
  %26 = load ptr, ptr %25, align 8, !tbaa !112
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %7, %36
  %29 = phi ptr [ %43, %36 ], [ %26, %7 ]
  br label %7

30:                                               ; preds = %7
  %31 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !111
  %33 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %32, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !63
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %34, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !64
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !16
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %38, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %28

45:                                               ; preds = %30, %36
  ret void
}

; Function Attrs: optsize
declare ptr @ira_add_allocno_copy(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @ira_create_allocno_live_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_move(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.move, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @ira_free(ptr noundef nonnull %3) #21
  br label %6

6:                                                ; preds = %5, %1
  tail call void @ira_free(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #18

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { optsize }
attributes #20 = { nounwind }
attributes #21 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 0}
!11 = !{!"move", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !12, i64 28, !7, i64 32, !7, i64 40}
!12 = !{!"int", !8, i64 0}
!13 = !{!14, !12, i64 0}
!14 = !{!"ira_allocno", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !7, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !12, i64 120, !12, i64 124, !7, i64 128, !12, i64 136, !12, i64 140, !15, i64 144, !15, i64 152, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 172, !12, i64 172, !12, i64 172, !12, i64 172, !12, i64 172, !12, i64 172, !12, i64 172, !12, i64 173, !12, i64 173, !12, i64 173, !12, i64 173, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !12, i64 216, !12, i64 220, !7, i64 224, !7, i64 232, !12, i64 240}
!15 = !{!"long", !8, i64 0}
!16 = !{!14, !12, i64 4}
!17 = !{!11, !7, i64 8}
!18 = !{!11, !7, i64 16}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{i8 0, i8 2}
!22 = !{!14, !7, i64 16}
!23 = distinct !{!23, !20}
!24 = !{!25, !7, i64 8}
!25 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !7, i64 128, !12, i64 136, !12, i64 137, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139}
!26 = !{!27, !12, i64 32}
!27 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !7, i64 40, !12, i64 48, !8, i64 52, !8, i64 60, !12, i64 68, !12, i64 72}
!28 = !{!12, !12, i64 0}
!29 = !{!27, !7, i64 0}
!30 = !{!31, !7, i64 56}
!31 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !15, i64 72, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96}
!32 = !{!27, !7, i64 8}
!33 = distinct !{!33, !20}
!34 = !{!31, !12, i64 80}
!35 = !{i64 0, i64 4, !28, i64 8, i64 8, !6}
!36 = !{i64 0, i64 8, !6}
!37 = !{!38, !7, i64 8}
!38 = !{!"edge_def", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !15, i64 56}
!39 = distinct !{!39, !20}
!40 = distinct !{!40, !20}
!41 = distinct !{!41, !20}
!42 = distinct !{!42, !20}
!43 = !{!38, !7, i64 24}
!44 = distinct !{!44, !20}
!45 = !{!8, !8, i64 0}
!46 = !{!47, !7, i64 0}
!47 = !{!"rtl_bb_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !12, i64 32}
!48 = distinct !{!48, !20}
!49 = distinct !{!49, !20}
!50 = !{!51, !12, i64 0}
!51 = !{!"", !12, i64 0}
!52 = distinct !{!52, !20}
!53 = !{!54, !7, i64 0}
!54 = !{!"ira_loop_tree_node", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !12, i64 56, !8, i64 60, !7, i64 64, !8, i64 72, !8, i64 76, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208}
!55 = !{!47, !7, i64 8}
!56 = distinct !{!56, !20}
!57 = !{!54, !7, i64 8}
!58 = !{!59, !12, i64 0}
!59 = !{!"loop", !12, i64 0, !12, i64 4, !7, i64 8, !7, i64 16, !60, i64 24, !12, i64 32, !12, i64 36, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !61, i64 80, !61, i64 96, !8, i64 112, !8, i64 113, !12, i64 116, !7, i64 120, !7, i64 128, !8, i64 136, !7, i64 144}
!60 = !{!"lpt_decision", !12, i64 0, !12, i64 4}
!61 = !{!"", !15, i64 0, !15, i64 8}
!62 = !{!59, !7, i64 8}
!63 = !{!54, !7, i64 48}
!64 = !{!54, !7, i64 64}
!65 = !{!54, !7, i64 192}
!66 = !{!14, !12, i64 48}
!67 = !{!14, !12, i64 12}
!68 = !{!14, !12, i64 8}
!69 = !{!15, !15, i64 0}
!70 = distinct !{!70, !20}
!71 = !{!54, !7, i64 184}
!72 = !{!14, !7, i64 88}
!73 = distinct !{!73, !20}
!74 = distinct !{!74, !20}
!75 = !{i32 0, i32 2}
!76 = !{!54, !8, i64 72}
!77 = distinct !{!77, !20}
!78 = !{!38, !7, i64 0}
!79 = !{!80, !7, i64 16}
!80 = !{!"df_lr_bb_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!81 = !{!80, !7, i64 24}
!82 = !{!14, !7, i64 176}
!83 = distinct !{!83, !20}
!84 = !{!85, !12, i64 0}
!85 = !{!"", !12, i64 0, !7, i64 8}
!86 = distinct !{!86, !20}
!87 = distinct !{!87, !20}
!88 = !{!31, !15, i64 72}
!89 = !{!31, !12, i64 88}
!90 = !{!38, !12, i64 52}
!91 = distinct !{!91, !20}
!92 = distinct !{!92, !20}
!93 = distinct !{!93, !20}
!94 = distinct !{!94, !20}
!95 = !{!96, !12, i64 0}
!96 = !{!"rtvec_def", !12, i64 0, !8, i64 8}
!97 = distinct !{!97, !20}
!98 = distinct !{!98, !20}
!99 = !{!100, !7, i64 0}
!100 = !{!"bitmap_head_def", !7, i64 0, !7, i64 8, !12, i64 16, !7, i64 24}
!101 = !{!102, !7, i64 0}
!102 = !{!"", !7, i64 0, !7, i64 8, !12, i64 16, !15, i64 24}
!103 = !{!102, !7, i64 8}
!104 = !{!105, !12, i64 16}
!105 = !{!"bitmap_element_def", !7, i64 0, !7, i64 8, !12, i64 16, !8, i64 24}
!106 = !{!102, !12, i64 16}
!107 = !{!102, !15, i64 24}
!108 = distinct !{!108, !20}
!109 = distinct !{!109, !20}
!110 = !{!105, !7, i64 0}
!111 = !{!14, !7, i64 32}
!112 = !{!14, !7, i64 80}
!113 = distinct !{!113, !20}
!114 = distinct !{!114, !20}
!115 = distinct !{!115, !20}
!116 = !{!117, !12, i64 0}
!117 = !{!"VEC_loop_p_base", !12, i64 0, !12, i64 4, !8, i64 8}
!118 = distinct !{!118, !20}
!119 = distinct !{!119, !20}
!120 = distinct !{!120, !20}
!121 = distinct !{!121, !20}
!122 = !{!123, !12, i64 0}
!123 = !{!"VEC_edge_base", !12, i64 0, !12, i64 4, !8, i64 8}
!124 = !{!125, !12, i64 16}
!125 = !{!"dataflow", !7, i64 0, !7, i64 8, !12, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !12, i64 48, !8, i64 52, !8, i64 53, !8, i64 54}
!126 = !{!125, !7, i64 8}
!127 = distinct !{!127, !20}
!128 = !{!54, !7, i64 200}
!129 = !{!11, !7, i64 32}
!130 = !{!11, !12, i64 28}
!131 = !{!11, !7, i64 40}
!132 = !{!11, !8, i64 24}
!133 = distinct !{!133, !20}
!134 = distinct !{!134, !20}
!135 = distinct !{!135, !20}
!136 = distinct !{!136, !20}
!137 = distinct !{!137, !20}
!138 = distinct !{!138, !20}
!139 = distinct !{!139, !20}
!140 = distinct !{!140, !20}
!141 = distinct !{!141, !20}
!142 = !{!14, !12, i64 136}
!143 = !{!14, !12, i64 120}
!144 = !{!14, !12, i64 124}
!145 = distinct !{!145, !20}
!146 = distinct !{!146, !20}
!147 = distinct !{!147, !20}
!148 = distinct !{!148, !20}
!149 = distinct !{!149, !20}
!150 = !{!151, !151, i64 0}
!151 = !{!"short", !8, i64 0}
!152 = !{i32 0, i32 65536}
!153 = distinct !{!153, !20}
!154 = !{!155, !12, i64 0}
!155 = !{!"VEC_move_t_base", !12, i64 0, !12, i64 4, !8, i64 8}
!156 = distinct !{!156, !20}
!157 = !{!155, !12, i64 4}
!158 = distinct !{!158, !20}
!159 = !{!14, !7, i64 128}
!160 = !{!161, !12, i64 0}
!161 = !{!"ira_allocno_copy", !12, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !8, i64 28, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!162 = !{!161, !7, i64 8}
!163 = !{!161, !7, i64 16}
!164 = !{!14, !7, i64 112}
!165 = !{!166, !12, i64 12}
!166 = !{!"ira_allocno_live_range", !7, i64 0, !12, i64 8, !12, i64 12, !7, i64 16, !7, i64 24, !7, i64 32}
!167 = !{!166, !12, i64 8}
!168 = distinct !{!168, !20}
!169 = distinct !{!169, !20}
!170 = distinct !{!170, !20}
!171 = !{!14, !12, i64 60}
