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
define dso_local void @ira_debug_move_list(ptr noundef %0) local_unnamed_addr #0 !prof !180 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !181
  tail call fastcc void @print_move_list(ptr noundef %2, ptr noundef %0) #19
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_move_list(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #0 !prof !180 !PGOFuncName !185 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %17, %4 ], [ %1, %2 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !186
  %7 = load i32, ptr %6, align 8, !tbaa !189
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !192
  %10 = getelementptr inbounds %struct.move, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !193
  %12 = load i32, ptr %11, align 8, !tbaa !189
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !192
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %7, i32 noundef %9, i32 noundef %12, i32 noundef %14) #19
  %16 = getelementptr inbounds %struct.move, ptr %5, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !194
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %4, !llvm.loop !195

19:                                               ; preds = %4, %2
  %20 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ira_emit(i8 noundef zeroext %0) local_unnamed_addr #2 !prof !197 {
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %5) #19
  %6 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #19, !range !198
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %20, label %8, !prof !199

8:                                                ; preds = %1
  %9 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !181
  br label %10

10:                                               ; preds = %8, %10
  %11 = load ptr, ptr %4, align 8, !tbaa !181
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !192
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %9, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !181
  %17 = getelementptr inbounds %struct.ira_allocno, ptr %11, i64 0, i32 4
  store ptr %16, ptr %17, align 8, !tbaa !200
  %18 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #19, !range !198
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %10, !prof !201, !llvm.loop !202

20:                                               ; preds = %10, %1
  %21 = icmp eq i8 %0, 0
  br i1 %21, label %255, label %22, !prof !203

22:                                               ; preds = %20
  %23 = load ptr, ptr @cfun, align 8, !tbaa !181
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !204
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !206
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 3
  %30 = tail call ptr @ira_allocate(i64 noundef %29) #21
  store ptr %30, ptr @at_bb_start, align 8, !tbaa !181
  %31 = load ptr, ptr @cfun, align 8, !tbaa !181
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !204
  %34 = getelementptr inbounds %struct.control_flow_graph, ptr %33, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !206
  %36 = sext i32 %35 to i64
  %37 = shl nsw i64 %36, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %30, i8 0, i64 %37, i1 false)
  %38 = load ptr, ptr @cfun, align 8, !tbaa !181
  %39 = getelementptr inbounds %struct.function, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !204
  %41 = getelementptr inbounds %struct.control_flow_graph, ptr %40, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !206
  %43 = sext i32 %42 to i64
  %44 = shl nsw i64 %43, 3
  %45 = tail call ptr @ira_allocate(i64 noundef %44) #21
  store ptr %45, ptr @at_bb_end, align 8, !tbaa !181
  %46 = load ptr, ptr @cfun, align 8, !tbaa !181
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !204
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !206
  %51 = sext i32 %50 to i64
  %52 = shl nsw i64 %51, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %45, i8 0, i64 %52, i1 false)
  %53 = tail call ptr @ira_allocate_bitmap() #21
  store ptr %53, ptr @local_allocno_bitmap, align 8, !tbaa !181
  %54 = tail call ptr @ira_allocate_bitmap() #21
  store ptr %54, ptr @used_regno_bitmap, align 8, !tbaa !181
  %55 = tail call ptr @ira_allocate_bitmap() #21
  store ptr %55, ptr @renamed_regno_bitmap, align 8, !tbaa !181
  %56 = tail call i32 @max_reg_num() #21
  store i32 %56, ptr @max_regno_before_changing, align 4, !tbaa !208
  %57 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !181
  tail call void @ira_traverse_loop_tree(i8 noundef zeroext 1, ptr noundef %57, ptr noundef nonnull @change_loop, ptr noundef null) #21
  tail call fastcc void @set_allocno_somewhere_renamed_p() #19
  %58 = load ptr, ptr @used_regno_bitmap, align 8, !tbaa !181
  tail call void @ira_free_bitmap(ptr noundef %58) #21
  %59 = load ptr, ptr @renamed_regno_bitmap, align 8, !tbaa !181
  tail call void @ira_free_bitmap(ptr noundef %59) #21
  %60 = load ptr, ptr @local_allocno_bitmap, align 8, !tbaa !181
  tail call void @ira_free_bitmap(ptr noundef %60) #21
  tail call fastcc void @setup_entered_from_non_parent_p() #19
  %61 = load ptr, ptr @cfun, align 8, !tbaa !181
  %62 = getelementptr inbounds %struct.function, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !204
  %64 = load ptr, ptr %63, align 8, !tbaa !209
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !210
  %67 = getelementptr inbounds %struct.control_flow_graph, ptr %63, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !212
  %69 = icmp eq ptr %66, %68
  br i1 %69, label %110, label %70, !prof !213

70:                                               ; preds = %22
  %71 = getelementptr inbounds i8, ptr %2, i64 8
  br label %81

72:                                               ; preds = %105, %81
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !210
  %75 = load ptr, ptr @cfun, align 8, !tbaa !181
  %76 = getelementptr inbounds %struct.function, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !204
  %78 = getelementptr inbounds %struct.control_flow_graph, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !212
  %80 = icmp eq ptr %74, %79
  br i1 %80, label %110, label %81, !prof !214, !llvm.loop !215

81:                                               ; preds = %70, %72
  %82 = phi ptr [ %66, %70 ], [ %74, %72 ]
  %83 = load ptr, ptr @at_bb_start, align 8, !tbaa !181
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 9
  %85 = load i32, ptr %84, align 8, !tbaa !216
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds ptr, ptr %83, i64 %86
  store ptr null, ptr %87, align 8, !tbaa !181
  %88 = load ptr, ptr @at_bb_end, align 8, !tbaa !181
  %89 = getelementptr inbounds ptr, ptr %88, i64 %86
  store ptr null, ptr %89, align 8, !tbaa !181
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 1
  %91 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %90) #19
  store i32 0, ptr %2, align 8, !tbaa.struct !217
  store ptr %91, ptr %71, align 8, !tbaa.struct !218
  %92 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %91, ptr noundef nonnull %3) #19, !range !198
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %72, label %94, !prof !219

94:                                               ; preds = %81, %105
  %95 = load ptr, ptr %3, align 8, !tbaa !181
  %96 = getelementptr inbounds %struct.edge_def, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !220
  %98 = load ptr, ptr @cfun, align 8, !tbaa !181
  %99 = getelementptr inbounds %struct.function, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !204
  %101 = getelementptr inbounds %struct.control_flow_graph, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !212
  %103 = icmp eq ptr %97, %102
  br i1 %103, label %105, label %104, !prof !222

104:                                              ; preds = %94
  tail call fastcc void @generate_edge_moves(ptr noundef nonnull %95) #19
  br label %105

105:                                              ; preds = %94, %104
  call fastcc void @ei_next(ptr noundef nonnull %2) #19
  %106 = load i32, ptr %2, align 8
  %107 = load ptr, ptr %71, align 8
  %108 = call fastcc zeroext i8 @ei_cond(i32 %106, ptr %107, ptr noundef nonnull %3) #19, !range !198
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %72, label %94, !prof !223, !llvm.loop !224

110:                                              ; preds = %72, %22
  %111 = tail call i32 @max_reg_num() #21
  %112 = sext i32 %111 to i64
  %113 = shl nsw i64 %112, 3
  %114 = tail call ptr @ira_allocate(i64 noundef %113) #21
  store ptr %114, ptr @allocno_last_set, align 8, !tbaa !181
  %115 = tail call i32 @max_reg_num() #21
  %116 = sext i32 %115 to i64
  %117 = shl nsw i64 %116, 2
  %118 = tail call ptr @ira_allocate(i64 noundef %117) #21
  store ptr %118, ptr @allocno_last_set_check, align 8, !tbaa !181
  %119 = tail call i32 @max_reg_num() #21
  %120 = sext i32 %119 to i64
  %121 = shl nsw i64 %120, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %118, i8 0, i64 %121, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(212) @hard_regno_last_set_check, i8 0, i64 212, i1 false)
  store i32 0, ptr @curr_tick, align 4, !tbaa !208
  %122 = load ptr, ptr @cfun, align 8, !tbaa !181
  %123 = getelementptr inbounds %struct.function, ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !204
  %125 = load ptr, ptr %124, align 8, !tbaa !209
  %126 = getelementptr inbounds %struct.basic_block_def, ptr %125, i64 0, i32 6
  %127 = load ptr, ptr %126, align 8, !tbaa !210
  %128 = getelementptr inbounds %struct.control_flow_graph, ptr %124, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !212
  %130 = icmp eq ptr %127, %129
  br i1 %130, label %156, label %131, !prof !213

131:                                              ; preds = %110, %131
  %132 = phi ptr [ %134, %131 ], [ %127, %110 ]
  tail call fastcc void @unify_moves(ptr noundef %132, i8 noundef zeroext 1) #19
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %132, i64 0, i32 6
  %134 = load ptr, ptr %133, align 8, !tbaa !210
  %135 = load ptr, ptr @cfun, align 8, !tbaa !181
  %136 = getelementptr inbounds %struct.function, ptr %135, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !204
  %138 = getelementptr inbounds %struct.control_flow_graph, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !212
  %140 = icmp eq ptr %134, %139
  br i1 %140, label %141, label %131, !prof !214, !llvm.loop !225

141:                                              ; preds = %131
  %142 = load ptr, ptr %137, align 8, !tbaa !209
  %143 = getelementptr inbounds %struct.basic_block_def, ptr %142, i64 0, i32 6
  %144 = load ptr, ptr %143, align 8, !tbaa !210
  %145 = icmp eq ptr %144, %134
  br i1 %145, label %156, label %146, !prof !226

146:                                              ; preds = %141, %146
  %147 = phi ptr [ %149, %146 ], [ %144, %141 ]
  tail call fastcc void @unify_moves(ptr noundef %147, i8 noundef zeroext 0) #19
  %148 = getelementptr inbounds %struct.basic_block_def, ptr %147, i64 0, i32 6
  %149 = load ptr, ptr %148, align 8, !tbaa !210
  %150 = load ptr, ptr @cfun, align 8, !tbaa !181
  %151 = getelementptr inbounds %struct.function, ptr %150, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !204
  %153 = getelementptr inbounds %struct.control_flow_graph, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !212
  %155 = icmp eq ptr %149, %154
  br i1 %155, label %156, label %146, !prof !214, !llvm.loop !227

156:                                              ; preds = %146, %110, %141
  %157 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !208
  %158 = tail call fastcc ptr @VEC_move_t_heap_alloc(i32 noundef %157) #19
  store ptr %158, ptr @move_vec, align 8, !tbaa !181
  tail call fastcc void @emit_moves() #19
  tail call fastcc void @add_ranges_and_copies() #19
  %159 = load ptr, ptr @cfun, align 8, !tbaa !181
  %160 = getelementptr inbounds %struct.function, ptr %159, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !204
  %162 = load ptr, ptr %161, align 8, !tbaa !209
  %163 = getelementptr inbounds %struct.basic_block_def, ptr %162, i64 0, i32 6
  %164 = load ptr, ptr %163, align 8, !tbaa !210
  %165 = getelementptr inbounds %struct.control_flow_graph, ptr %161, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !212
  %167 = icmp eq ptr %164, %166
  br i1 %167, label %204, label %168, !prof !213

168:                                              ; preds = %156
  %169 = getelementptr inbounds i8, ptr %2, i64 8
  br label %179

170:                                              ; preds = %196, %179
  %171 = getelementptr inbounds %struct.basic_block_def, ptr %180, i64 0, i32 6
  %172 = load ptr, ptr %171, align 8, !tbaa !210
  %173 = load ptr, ptr @cfun, align 8, !tbaa !181
  %174 = getelementptr inbounds %struct.function, ptr %173, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !204
  %176 = getelementptr inbounds %struct.control_flow_graph, ptr %175, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !212
  %178 = icmp eq ptr %172, %177
  br i1 %178, label %204, label %179, !prof !214, !llvm.loop !228

179:                                              ; preds = %168, %170
  %180 = phi ptr [ %164, %168 ], [ %172, %170 ]
  %181 = load ptr, ptr @at_bb_start, align 8, !tbaa !181
  %182 = getelementptr inbounds %struct.basic_block_def, ptr %180, i64 0, i32 9
  %183 = load i32, ptr %182, align 8, !tbaa !216
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds ptr, ptr %181, i64 %184
  %186 = load ptr, ptr %185, align 8, !tbaa !181
  tail call fastcc void @free_move_list(ptr noundef %186) #19
  %187 = load ptr, ptr @at_bb_end, align 8, !tbaa !181
  %188 = load i32, ptr %182, align 8, !tbaa !216
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds ptr, ptr %187, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !181
  tail call fastcc void @free_move_list(ptr noundef %191) #19
  %192 = getelementptr inbounds %struct.basic_block_def, ptr %180, i64 0, i32 1
  %193 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %192) #19
  store i32 0, ptr %2, align 8, !tbaa.struct !217
  store ptr %193, ptr %169, align 8, !tbaa.struct !218
  %194 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %193, ptr noundef nonnull %3) #19, !range !198
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %170, label %196, !prof !219

196:                                              ; preds = %179, %196
  %197 = load ptr, ptr %3, align 8, !tbaa !181
  %198 = getelementptr inbounds %struct.edge_def, ptr %197, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !229
  tail call fastcc void @free_move_list(ptr noundef %199) #19
  store ptr null, ptr %198, align 8, !tbaa !229
  call fastcc void @ei_next(ptr noundef nonnull %2) #19
  %200 = load i32, ptr %2, align 8
  %201 = load ptr, ptr %169, align 8
  %202 = call fastcc zeroext i8 @ei_cond(i32 %200, ptr %201, ptr noundef nonnull %3) #19, !range !198
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %170, label %196, !prof !223, !llvm.loop !230

204:                                              ; preds = %170, %156
  tail call fastcc void @VEC_move_t_heap_free() #19
  %205 = load ptr, ptr @allocno_last_set_check, align 8, !tbaa !181
  tail call void @ira_free(ptr noundef %205) #21
  %206 = load ptr, ptr @allocno_last_set, align 8, !tbaa !181
  tail call void @ira_free(ptr noundef %206) #21
  tail call void @commit_edge_insertions() #21
  %207 = load ptr, ptr @cfun, align 8, !tbaa !181
  %208 = getelementptr inbounds %struct.function, ptr %207, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !204
  %210 = load ptr, ptr %209, align 8, !tbaa !209
  %211 = getelementptr inbounds %struct.basic_block_def, ptr %210, i64 0, i32 6
  %212 = load ptr, ptr %211, align 8, !tbaa !210
  %213 = getelementptr inbounds %struct.control_flow_graph, ptr %209, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !212
  %215 = icmp eq ptr %212, %214
  br i1 %215, label %252, label %216, !prof !213

216:                                              ; preds = %204, %243
  %217 = phi ptr [ %244, %243 ], [ %207, %204 ]
  %218 = phi ptr [ %246, %243 ], [ %212, %204 ]
  %219 = getelementptr inbounds %struct.basic_block_def, ptr %218, i64 0, i32 7
  %220 = load ptr, ptr %219, align 8, !tbaa !231
  %221 = getelementptr inbounds %struct.rtl_bb_info, ptr %220, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !231
  %223 = icmp eq ptr %222, null
  br i1 %223, label %243, label %224, !prof !232

224:                                              ; preds = %216, %237
  %225 = phi ptr [ %239, %237 ], [ %222, %216 ]
  %226 = load ptr, ptr %219, align 8, !tbaa !231
  %227 = load ptr, ptr %226, align 8, !tbaa !233
  %228 = getelementptr inbounds %struct.rtx_def, ptr %227, i64 0, i32 1, i32 0, i32 0, i64 1
  %229 = load ptr, ptr %228, align 8, !tbaa !231
  %230 = icmp eq ptr %225, %229
  br i1 %230, label %241, label %231, !prof !235

231:                                              ; preds = %224
  %232 = load i32, ptr %225, align 8
  %233 = and i32 %232, 65535
  %234 = add nsw i32 %233, -7
  %235 = icmp ult i32 %234, 4
  br i1 %235, label %236, label %237, !prof !236

236:                                              ; preds = %231
  tail call fastcc void @recog_memoized(ptr noundef nonnull %225) #19
  br label %237

237:                                              ; preds = %231, %236
  %238 = getelementptr inbounds %struct.rtx_def, ptr %225, i64 0, i32 1, i32 0, i32 0, i64 1
  %239 = load ptr, ptr %238, align 8, !tbaa !231
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %224, !prof !237, !llvm.loop !238

241:                                              ; preds = %224, %237
  %242 = load ptr, ptr @cfun, align 8, !tbaa !181
  br label %243

243:                                              ; preds = %241, %216
  %244 = phi ptr [ %242, %241 ], [ %217, %216 ]
  %245 = getelementptr inbounds %struct.basic_block_def, ptr %218, i64 0, i32 6
  %246 = load ptr, ptr %245, align 8, !tbaa !210
  %247 = getelementptr inbounds %struct.function, ptr %244, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !204
  %249 = getelementptr inbounds %struct.control_flow_graph, ptr %248, i64 0, i32 1
  %250 = load ptr, ptr %249, align 8, !tbaa !212
  %251 = icmp eq ptr %246, %250
  br i1 %251, label %252, label %216, !prof !239, !llvm.loop !240

252:                                              ; preds = %243, %204
  %253 = load ptr, ptr @at_bb_end, align 8, !tbaa !181
  tail call void @ira_free(ptr noundef %253) #21
  %254 = load ptr, ptr @at_bb_start, align 8, !tbaa !181
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
define internal fastcc void @ira_allocno_iter_init(ptr nocapture noundef writeonly %0) unnamed_addr #4 !prof !241 !PGOFuncName !242 {
  store i32 0, ptr %0, align 4, !tbaa !243
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ira_allocno_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !prof !245 !PGOFuncName !246 {
  %3 = load i32, ptr %0, align 4, !tbaa !243
  %4 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !208
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %21, !prof !247

6:                                                ; preds = %2
  %7 = load ptr, ptr @ira_allocnos, align 8, !tbaa !181
  %8 = sext i32 %3 to i64
  br label %9

9:                                                ; preds = %6, %17
  %10 = phi i64 [ %8, %6 ], [ %19, %17 ]
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !181
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !248

14:                                               ; preds = %9
  %15 = trunc i64 %10 to i32
  store ptr %12, ptr %1, align 8, !tbaa !181
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %0, align 4, !tbaa !243
  br label %21

17:                                               ; preds = %9
  %18 = sext i32 %4 to i64
  %19 = add nsw i64 %10, 1
  %20 = icmp eq i64 %19, %18
  br i1 %20, label %21, label %9, !prof !249, !llvm.loop !250

21:                                               ; preds = %17, %2, %14
  %22 = phi i8 [ 1, %14 ], [ 0, %2 ], [ 0, %17 ]
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
define internal void @change_loop(ptr noundef readonly %0) #2 !prof !251 !PGOFuncName !252 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = load ptr, ptr @ira_loop_tree_root, align 8, !tbaa !181
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %148, label %7, !prof !253

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !254
  %9 = icmp eq ptr %8, null
  br i1 %9, label %41, label %10, !prof !256

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %8, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !231
  %13 = load ptr, ptr %12, align 8, !tbaa !231
  store ptr %13, ptr %4, align 8, !tbaa !181
  %14 = icmp eq ptr %13, null
  br i1 %14, label %189, label %15, !prof !257

15:                                               ; preds = %10, %36
  %16 = phi ptr [ %39, %36 ], [ %13, %10 ]
  %17 = load ptr, ptr %0, align 8, !tbaa !254
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !231
  %20 = getelementptr inbounds %struct.rtl_bb_info, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !258
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 2
  %23 = load ptr, ptr %22, align 8, !tbaa !231
  %24 = icmp eq ptr %16, %23
  br i1 %24, label %189, label %25, !prof !259

25:                                               ; preds = %15
  %26 = load i32, ptr %16, align 8
  %27 = and i32 %26, 65535
  %28 = add nsw i32 %27, -7
  %29 = icmp ult i32 %28, 4
  br i1 %29, label %30, label %36, !prof !260

30:                                               ; preds = %25
  %31 = call fastcc zeroext i8 @change_regs(ptr noundef nonnull %4) #19, !range !198
  %32 = icmp eq i8 %31, 0
  %33 = load ptr, ptr %4, align 8, !tbaa !181
  br i1 %32, label %36, label %34, !prof !261

34:                                               ; preds = %30
  %35 = tail call zeroext i8 @df_insn_rescan(ptr noundef %33) #21
  tail call void @df_notes_rescan(ptr noundef %33) #21
  br label %36

36:                                               ; preds = %25, %30, %34
  %37 = phi ptr [ %16, %25 ], [ %33, %30 ], [ %33, %34 ]
  %38 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !231
  store ptr %39, ptr %4, align 8, !tbaa !181
  %40 = icmp eq ptr %39, null
  br i1 %40, label %189, label %15, !prof !262, !llvm.loop !263

41:                                               ; preds = %7
  %42 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !208
  %43 = icmp sgt i32 %42, 3
  %44 = load ptr, ptr @ira_dump_file, align 8
  %45 = icmp ne ptr %44, null
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %56, !prof !264

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !265
  %50 = load i32, ptr %49, align 8, !tbaa !266
  %51 = getelementptr inbounds %struct.loop, ptr %49, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !270
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 9
  %54 = load i32, ptr %53, align 8, !tbaa !216
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %44, ptr noundef nonnull @.str.2, i32 noundef %50, i32 noundef %54) #19
  br label %56

56:                                               ; preds = %47, %41
  %57 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !181
  %58 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %57, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !271
  %60 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %59, i64 0, i32 9
  %61 = load ptr, ptr %60, align 8, !tbaa !272
  %62 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %57, i64 0, i32 13
  %63 = load ptr, ptr %62, align 8, !tbaa !273
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %63, i32 noundef 0, ptr noundef nonnull %3) #19
  %64 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #19, !range !198
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %148, label %66, !prof !274

66:                                               ; preds = %56
  %67 = load ptr, ptr @ira_allocnos, align 8, !tbaa !181
  br label %68

68:                                               ; preds = %66, %144
  %69 = phi ptr [ %67, %66 ], [ %145, %144 ]
  %70 = load i32, ptr %3, align 4, !tbaa !208
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %69, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !181
  %74 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !192
  %76 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 9
  %77 = load i32, ptr %76, align 8, !tbaa !275
  %78 = sext i32 %75 to i64
  %79 = getelementptr inbounds ptr, ptr %61, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !181
  %81 = icmp eq ptr %80, null
  br i1 %81, label %117, label %82, !prof !276

82:                                               ; preds = %68
  %83 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 3
  %84 = load i32, ptr %83, align 4, !tbaa !277
  %85 = getelementptr inbounds %struct.ira_allocno, ptr %80, i64 0, i32 3
  %86 = load i32, ptr %85, align 4, !tbaa !277
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %120, !prof !278

88:                                               ; preds = %82
  %89 = icmp slt i32 %84, 0
  br i1 %89, label %144, label %90, !prof !279

90:                                               ; preds = %88
  %91 = zext i32 %77 to i64
  %92 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %59, i64 0, i32 11, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !208
  %94 = getelementptr inbounds [27 x i32], ptr @ira_available_class_regs, i64 0, i64 %91
  %95 = load i32, ptr %94, align 4, !tbaa !208
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %144, label %97, !prof !280

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 2
  %99 = load i32, ptr %98, align 8, !tbaa !281
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [87 x i64], ptr @ira_prohibited_mode_move_regs, i64 0, i64 %100
  %102 = load i64, ptr %101, align 8, !tbaa !282
  %103 = zext nneg i32 %84 to i64
  %104 = shl nuw i64 1, %103
  %105 = and i64 %102, %104
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %144, !prof !283

107:                                              ; preds = %97
  %108 = load ptr, ptr @ira_reg_equiv_invariant_p, align 8, !tbaa !181
  %109 = getelementptr inbounds i8, ptr %108, i64 %78
  %110 = load i8, ptr %109, align 1, !tbaa !231
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %144, !prof !284

112:                                              ; preds = %107
  %113 = load ptr, ptr @ira_reg_equiv_const, align 8, !tbaa !181
  %114 = getelementptr inbounds ptr, ptr %113, i64 %78
  %115 = load ptr, ptr %114, align 8, !tbaa !181
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %144, !prof !285

117:                                              ; preds = %68
  %118 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 4
  %119 = load ptr, ptr %118, align 8, !tbaa !200
  br label %128

120:                                              ; preds = %112, %82
  %121 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 4
  %122 = load ptr, ptr %121, align 8, !tbaa !200
  %123 = getelementptr inbounds %struct.ira_allocno, ptr %80, i64 0, i32 4
  %124 = load ptr, ptr %123, align 8, !tbaa !200
  %125 = tail call fastcc i32 @rhs_regno(ptr noundef %124) #19
  %126 = tail call fastcc i32 @rhs_regno(ptr noundef %122) #19
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %144, !prof !286

128:                                              ; preds = %117, %120
  %129 = phi ptr [ %122, %120 ], [ %119, %117 ]
  %130 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !208
  %131 = icmp sgt i32 %130, 3
  %132 = load ptr, ptr @ira_dump_file, align 8
  %133 = icmp ne ptr %132, null
  %134 = select i1 %131, i1 %133, i1 false
  br i1 %134, label %135, label %141, !prof !287

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.ira_allocno, ptr %73, i64 0, i32 3
  %137 = load i32, ptr %136, align 4, !tbaa !277
  %138 = getelementptr inbounds %struct.ira_allocno, ptr %80, i64 0, i32 3
  %139 = load i32, ptr %138, align 4, !tbaa !277
  %140 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %132, ptr noundef nonnull @.str.3, i32 noundef %137, i32 noundef %139) #19
  br label %141

141:                                              ; preds = %135, %128
  %142 = tail call fastcc ptr @create_new_reg(ptr noundef %129) #19
  tail call fastcc void @set_allocno_reg(ptr noundef nonnull %73, ptr noundef %142) #19
  %143 = load ptr, ptr @ira_allocnos, align 8, !tbaa !181
  br label %144

144:                                              ; preds = %120, %141, %88, %90, %97, %107, %112
  %145 = phi ptr [ %69, %120 ], [ %143, %141 ], [ %69, %88 ], [ %69, %90 ], [ %69, %97 ], [ %69, %107 ], [ %69, %112 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #19
  %146 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #19, !range !198
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %68, !prof !288, !llvm.loop !289

148:                                              ; preds = %144, %56, %1
  %149 = load ptr, ptr @local_allocno_bitmap, align 8, !tbaa !181
  %150 = load ptr, ptr @ira_curr_loop_tree_node, align 8, !tbaa !181
  %151 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %150, i64 0, i32 12
  %152 = load ptr, ptr %151, align 8, !tbaa !290
  %153 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %150, i64 0, i32 13
  %154 = load ptr, ptr %153, align 8, !tbaa !273
  %155 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %149, ptr noundef %152, ptr noundef %154) #21
  %156 = load ptr, ptr @local_allocno_bitmap, align 8, !tbaa !181
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %156, i32 noundef 0, ptr noundef nonnull %3) #19
  %157 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #19, !range !198
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %189, label %159, !prof !291

159:                                              ; preds = %148, %186
  %160 = load ptr, ptr @ira_allocnos, align 8, !tbaa !181
  %161 = load i32, ptr %3, align 4, !tbaa !208
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds ptr, ptr %160, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !181
  %165 = getelementptr inbounds %struct.ira_allocno, ptr %164, i64 0, i32 1
  %166 = load i32, ptr %165, align 4, !tbaa !192
  %167 = getelementptr inbounds %struct.ira_allocno, ptr %164, i64 0, i32 17
  %168 = load ptr, ptr %167, align 8, !tbaa !292
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %186, !prof !293

170:                                              ; preds = %159
  %171 = load ptr, ptr @used_regno_bitmap, align 8, !tbaa !181
  %172 = tail call i32 @bitmap_bit_p(ptr noundef %171, i32 noundef %166) #21
  %173 = load ptr, ptr @used_regno_bitmap, align 8, !tbaa !181
  %174 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %173, i32 noundef %166) #21
  %175 = getelementptr inbounds %struct.ira_allocno, ptr %164, i64 0, i32 31
  %176 = load i16, ptr %175, align 4
  %177 = or i16 %176, 2
  store i16 %177, ptr %175, align 4
  %178 = and i32 %172, 255
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %186, label %180, !prof !294

180:                                              ; preds = %170
  %181 = load ptr, ptr @renamed_regno_bitmap, align 8, !tbaa !181
  %182 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %181, i32 noundef %166) #21
  %183 = getelementptr inbounds %struct.ira_allocno, ptr %164, i64 0, i32 4
  %184 = load ptr, ptr %183, align 8, !tbaa !200
  %185 = tail call fastcc ptr @create_new_reg(ptr noundef %184) #19
  tail call fastcc void @set_allocno_reg(ptr noundef nonnull %164, ptr noundef %185) #19
  br label %186

186:                                              ; preds = %170, %159, %180
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #19
  %187 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #19, !range !198
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %189, label %159, !prof !295, !llvm.loop !296

189:                                              ; preds = %36, %15, %186, %10, %148
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_allocno_somewhere_renamed_p() unnamed_addr #2 !prof !297 !PGOFuncName !298 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.ira_allocno_iterator, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  call fastcc void @ira_allocno_iter_init(ptr noundef nonnull %2) #19
  %3 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #19, !range !198
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %24, label %5, !prof !213

5:                                                ; preds = %0, %21
  %6 = load ptr, ptr %1, align 8, !tbaa !181
  %7 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !192
  %9 = load ptr, ptr @renamed_regno_bitmap, align 8, !tbaa !181
  %10 = tail call i32 @bitmap_bit_p(ptr noundef %9, i32 noundef %8) #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12, !prof !299

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !200
  %15 = tail call fastcc i32 @rhs_regno(ptr noundef %14) #19
  %16 = icmp eq i32 %15, %8
  br i1 %16, label %17, label %21, !prof !300

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %6, i64 0, i32 31
  %19 = load i16, ptr %18, align 4
  %20 = or i16 %19, 2
  store i16 %20, ptr %18, align 4
  br label %21

21:                                               ; preds = %17, %12, %5
  %22 = call fastcc zeroext i8 @ira_allocno_iter_cond(ptr noundef nonnull %2, ptr noundef nonnull %1) #19, !range !198
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %5, !prof !301, !llvm.loop !302

24:                                               ; preds = %21, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  ret void
}

; Function Attrs: optsize
declare void @ira_free_bitmap(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_entered_from_non_parent_p() unnamed_addr #2 !prof !297 !PGOFuncName !303 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  %2 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  %3 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #19, !range !304
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %27, label %5, !prof !213

5:                                                ; preds = %0
  %6 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !181
  br label %7

7:                                                ; preds = %5, %21
  %8 = phi ptr [ %22, %21 ], [ %2, %5 ]
  %9 = phi ptr [ %23, %21 ], [ %6, %5 ]
  %10 = phi i32 [ %24, %21 ], [ 0, %5 ]
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %9, i64 %11, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !272
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15, !prof !305

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %9, i64 %11
  %17 = tail call fastcc zeroext i8 @entered_from_non_parent_p(ptr noundef %16) #19, !range !198
  %18 = load ptr, ptr @ira_loop_nodes, align 8, !tbaa !181
  %19 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %18, i64 %11, i32 10
  store i8 %17, ptr %19, align 8, !tbaa !306
  %20 = load ptr, ptr getelementptr inbounds (%struct.loops, ptr @ira_loops, i64 0, i32 1), align 8
  br label %21

21:                                               ; preds = %7, %15
  %22 = phi ptr [ %8, %7 ], [ %20, %15 ]
  %23 = phi ptr [ %9, %7 ], [ %18, %15 ]
  %24 = add i32 %10, 1
  %25 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %22, i32 noundef %24, ptr noundef nonnull %1) #19, !range !304
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %7, !prof !307, !llvm.loop !308

27:                                               ; preds = %21, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #8 !prof !309 !PGOFuncName !310 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 !prof !311 !PGOFuncName !312 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !198
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !313

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !181
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @generate_edge_moves(ptr nocapture noundef %0) unnamed_addr #2 !prof !314 !PGOFuncName !315 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %4 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !181
  %5 = load ptr, ptr %0, align 8, !tbaa !316
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !216
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %4, i64 %8, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !271
  %11 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !220
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !216
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %4, i64 %15, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !271
  %18 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 3
  store ptr null, ptr %18, align 8, !tbaa !229
  %19 = icmp eq ptr %10, %17
  br i1 %19, label %83, label %20, !prof !317

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %10, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !272
  %23 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %17, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !272
  %25 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %14) #19
  %26 = getelementptr inbounds %struct.df_lr_bb_info, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !318
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %27, i32 noundef 53, ptr noundef nonnull %2) #19
  %28 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !198
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %83, label %30, !prof !320

30:                                               ; preds = %20, %80
  %31 = load ptr, ptr %0, align 8, !tbaa !316
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !216
  %34 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %33) #19
  %35 = getelementptr inbounds %struct.df_lr_bb_info, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !321
  %37 = load i32, ptr %2, align 4, !tbaa !208
  %38 = tail call i32 @bitmap_bit_p(ptr noundef %36, i32 noundef %37) #21
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %80, label %40, !prof !322

40:                                               ; preds = %30
  %41 = zext i32 %37 to i64
  %42 = getelementptr inbounds ptr, ptr %22, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !181
  %44 = getelementptr inbounds ptr, ptr %24, i64 %41
  %45 = load ptr, ptr %44, align 8, !tbaa !181
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %43, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !200
  %48 = tail call fastcc i32 @rhs_regno(ptr noundef %47) #19
  %49 = getelementptr inbounds %struct.ira_allocno, ptr %45, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !200
  %51 = tail call fastcc i32 @rhs_regno(ptr noundef %50) #19
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %80, label %53, !prof !323

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.ira_allocno, ptr %45, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !277
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %78, !prof !324

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.ira_allocno, ptr %43, i64 0, i32 3
  %59 = load i32, ptr %58, align 4, !tbaa !277
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %78, !prof !325

61:                                               ; preds = %57
  %62 = tail call fastcc zeroext i8 @store_can_be_removed_p(ptr noundef nonnull %43, ptr noundef nonnull %45) #19, !range !198
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %78, label %64, !prof !326

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %43, i64 0, i32 32
  store ptr %45, ptr %65, align 8, !tbaa !327
  %66 = getelementptr inbounds %struct.ira_allocno, ptr %45, i64 0, i32 31
  %67 = load i16, ptr %66, align 4
  %68 = or i16 %67, 1
  store i16 %68, ptr %66, align 4
  %69 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !208
  %70 = icmp sgt i32 %69, 3
  %71 = load ptr, ptr @ira_dump_file, align 8
  %72 = icmp ne ptr %71, null
  %73 = select i1 %70, i1 %72, i1 false
  br i1 %73, label %74, label %80, !prof !328

74:                                               ; preds = %64
  %75 = load i32, ptr %43, align 8, !tbaa !189
  %76 = load i32, ptr %45, align 8, !tbaa !189
  %77 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %71, ptr noundef nonnull @.str.7, i32 noundef %37, i32 noundef %75, i32 noundef %76) #19
  br label %80

78:                                               ; preds = %61, %57, %53
  %79 = tail call fastcc ptr @create_move(ptr noundef nonnull %45, ptr noundef nonnull %43) #19
  tail call fastcc void @add_to_edge_list(ptr noundef nonnull %0, ptr noundef %79) #19
  br label %80

80:                                               ; preds = %30, %78, %64, %74, %40
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %81 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #19, !range !198
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %30, !prof !329, !llvm.loop !330

83:                                               ; preds = %80, %20, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #2 !prof !331 !PGOFuncName !332 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !333

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #19
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #19
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !334

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 738, ptr noundef nonnull @.str.6) #21
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !335
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !335
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unify_moves(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #2 !prof !337 !PGOFuncName !338 {
  %3 = icmp eq i8 %1, 0
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = select i1 %3, ptr %4, ptr %0, !prof !339
  %6 = load ptr, ptr %5, align 8, !tbaa !181
  %7 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %6) #19
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %42, label %9, !prof !340

9:                                                ; preds = %2
  %10 = tail call fastcc zeroext i8 @eq_edge_move_lists_p(ptr noundef %6) #19, !range !198
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %42, label %12, !prof !341

12:                                               ; preds = %9
  %13 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #19
  %14 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !229
  br i1 %3, label %16, label %23, !prof !342

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !231
  %19 = getelementptr inbounds %struct.rtl_bb_info, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !258
  %21 = tail call zeroext i8 @control_flow_insn_p(ptr noundef %20) #21
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %42, !prof !343

23:                                               ; preds = %16, %12
  store ptr null, ptr %14, align 8, !tbaa !229
  %24 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %6) #19
  %25 = add i32 %24, -1
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %34, !prof !344

27:                                               ; preds = %23, %27
  %28 = phi i32 [ %32, %27 ], [ %25, %23 ]
  %29 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef %28) #19
  %30 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !229
  tail call fastcc void @free_move_list(ptr noundef %31) #19
  store ptr null, ptr %30, align 8, !tbaa !229
  %32 = add nsw i32 %28, -1
  %33 = icmp ugt i32 %28, 1
  br i1 %33, label %27, label %34, !prof !345, !llvm.loop !346

34:                                               ; preds = %27, %23
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !216
  %37 = sext i32 %36 to i64
  %38 = load ptr, ptr @at_bb_end, align 8
  %39 = load ptr, ptr @at_bb_start, align 8
  %40 = select i1 %3, ptr %38, ptr %39
  %41 = getelementptr inbounds ptr, ptr %40, i64 %37
  store ptr %15, ptr %41, align 8, !tbaa !181
  br label %42

42:                                               ; preds = %34, %16, %2, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_move_t_heap_alloc(i32 noundef %0) unnamed_addr #2 !prof !297 !PGOFuncName !347 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_moves() unnamed_addr #2 !prof !297 !PGOFuncName !348 {
  %1 = alloca %struct.edge_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %3 = load ptr, ptr @cfun, align 8, !tbaa !181
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !204
  %6 = load ptr, ptr %5, align 8, !tbaa !209
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !210
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !212
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %192, label %12, !prof !213

12:                                               ; preds = %0
  %13 = getelementptr inbounds i8, ptr %1, i64 8
  br label %23

14:                                               ; preds = %187, %138
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !210
  %17 = load ptr, ptr @cfun, align 8, !tbaa !181
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !204
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !212
  %22 = icmp eq ptr %16, %21
  br i1 %22, label %192, label %23, !prof !214, !llvm.loop !349

23:                                               ; preds = %12, %14
  %24 = phi ptr [ %8, %12 ], [ %16, %14 ]
  %25 = load ptr, ptr @at_bb_start, align 8, !tbaa !181
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !216
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %25, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !181
  %31 = icmp eq ptr %30, null
  br i1 %31, label %97, label %32, !prof !350

32:                                               ; preds = %23
  %33 = tail call fastcc ptr @modify_move_list(ptr noundef nonnull %30) #19
  %34 = load ptr, ptr @at_bb_start, align 8, !tbaa !181
  %35 = load i32, ptr %26, align 8, !tbaa !216
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  store ptr %33, ptr %37, align 8, !tbaa !181
  %38 = load i32, ptr @optimize_size, align 4, !tbaa !208
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %58, !prof !351

40:                                               ; preds = %32
  %41 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !208
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43, !prof !351

43:                                               ; preds = %40
  %44 = load ptr, ptr @cfun, align 8, !tbaa !181
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !204
  %47 = load ptr, ptr %46, align 8, !tbaa !209
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 8
  %49 = load i64, ptr %48, align 8, !tbaa !352
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %43, %40
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 11
  %53 = load i32, ptr %52, align 8, !tbaa !353
  %54 = add i32 %53, 9
  %55 = icmp ult i32 %54, 19
  br i1 %55, label %58, label %56, !prof !354

56:                                               ; preds = %51
  %57 = sdiv i32 %53, 10
  br label %58

58:                                               ; preds = %56, %51, %32, %43
  %59 = phi i32 [ 1000, %43 ], [ 1000, %32 ], [ %57, %56 ], [ 1, %51 ]
  %60 = tail call fastcc ptr @emit_move_list(ptr noundef %33, i32 noundef %59) #19
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !231
  %63 = load ptr, ptr %62, align 8, !tbaa !233
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 65535
  %66 = icmp eq i32 %65, 12
  br i1 %66, label %67, label %71, !prof !355

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.rtx_def, ptr %63, i64 0, i32 1, i32 0, i32 0, i64 2
  %69 = load ptr, ptr %68, align 8, !tbaa !231
  %70 = load i32, ptr %69, align 8
  br label %71

71:                                               ; preds = %67, %58
  %72 = phi i32 [ %70, %67 ], [ %64, %58 ]
  %73 = phi ptr [ %69, %67 ], [ %63, %58 ]
  %74 = and i32 %72, 65535
  %75 = icmp eq i32 %74, 13
  br i1 %75, label %76, label %83, !prof !351

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 1
  %78 = load i32, ptr %77, align 8, !tbaa !231
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %80, label %83, !prof !351

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 0, i64 2
  %82 = load ptr, ptr %81, align 8, !tbaa !231
  br label %83

83:                                               ; preds = %80, %76, %71
  %84 = phi ptr [ %82, %80 ], [ %73, %76 ], [ %73, %71 ]
  %85 = icmp eq ptr %84, %63
  br i1 %85, label %86, label %88, !prof !356

86:                                               ; preds = %83
  %87 = tail call ptr @emit_insn_before(ptr noundef %60, ptr noundef nonnull %63) #21
  br label %97

88:                                               ; preds = %83
  %89 = icmp eq ptr %84, null
  br i1 %89, label %94, label %90, !prof !356

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1, i32 0, i32 0, i64 1
  %92 = load ptr, ptr %91, align 8, !tbaa !231
  %93 = tail call ptr @emit_insn_after(ptr noundef %60, ptr noundef %92) #21
  br label %97

94:                                               ; preds = %88
  %95 = tail call ptr @get_last_insn() #21
  %96 = tail call ptr @emit_insn_after(ptr noundef %60, ptr noundef %95) #21
  br label %97

97:                                               ; preds = %86, %94, %90, %23
  %98 = load ptr, ptr @at_bb_end, align 8, !tbaa !181
  %99 = load i32, ptr %26, align 8, !tbaa !216
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %98, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !181
  %103 = icmp eq ptr %102, null
  br i1 %103, label %138, label %104, !prof !357

104:                                              ; preds = %97
  %105 = tail call fastcc ptr @modify_move_list(ptr noundef nonnull %102) #19
  %106 = load ptr, ptr @at_bb_end, align 8, !tbaa !181
  %107 = load i32, ptr %26, align 8, !tbaa !216
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds ptr, ptr %106, i64 %108
  store ptr %105, ptr %109, align 8, !tbaa !181
  %110 = load i32, ptr @optimize_size, align 4, !tbaa !208
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %130, !prof !358

112:                                              ; preds = %104
  %113 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !208
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %123, label %115, !prof !358

115:                                              ; preds = %112
  %116 = load ptr, ptr @cfun, align 8, !tbaa !181
  %117 = getelementptr inbounds %struct.function, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !204
  %119 = load ptr, ptr %118, align 8, !tbaa !209
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 8
  %121 = load i64, ptr %120, align 8, !tbaa !352
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %115, %112
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 11
  %125 = load i32, ptr %124, align 8, !tbaa !353
  %126 = add i32 %125, 9
  %127 = icmp ult i32 %126, 19
  br i1 %127, label %130, label %128, !prof !359

128:                                              ; preds = %123
  %129 = sdiv i32 %125, 10
  br label %130

130:                                              ; preds = %128, %123, %104, %115
  %131 = phi i32 [ 1000, %115 ], [ 1000, %104 ], [ %129, %128 ], [ 1, %123 ]
  %132 = tail call fastcc ptr @emit_move_list(ptr noundef %105, i32 noundef %131) #19
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 7
  %134 = load ptr, ptr %133, align 8, !tbaa !231
  %135 = getelementptr inbounds %struct.rtl_bb_info, ptr %134, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !258
  %137 = tail call ptr @emit_insn_after(ptr noundef %132, ptr noundef %136) #21
  br label %138

138:                                              ; preds = %130, %97
  %139 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 1
  %140 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %139) #19
  store i32 0, ptr %1, align 8, !tbaa.struct !217
  store ptr %140, ptr %13, align 8, !tbaa.struct !218
  %141 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %140, ptr noundef nonnull %2) #19, !range !198
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %14, label %143, !prof !219

143:                                              ; preds = %138, %187
  %144 = load ptr, ptr %2, align 8, !tbaa !181
  %145 = getelementptr inbounds %struct.edge_def, ptr %144, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !229
  %147 = icmp eq ptr %146, null
  br i1 %147, label %187, label %148, !prof !360

148:                                              ; preds = %143
  %149 = tail call fastcc ptr @modify_move_list(ptr noundef nonnull %146) #19
  store ptr %149, ptr %145, align 8, !tbaa !229
  %150 = load i32, ptr @optimize_size, align 4, !tbaa !208
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %175, !prof !361

152:                                              ; preds = %148
  %153 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !208
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %163, label %155, !prof !361

155:                                              ; preds = %152
  %156 = load ptr, ptr @cfun, align 8, !tbaa !181
  %157 = getelementptr inbounds %struct.function, ptr %156, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !204
  %159 = load ptr, ptr %158, align 8, !tbaa !209
  %160 = getelementptr inbounds %struct.basic_block_def, ptr %159, i64 0, i32 8
  %161 = load i64, ptr %160, align 8, !tbaa !352
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %175, label %163

163:                                              ; preds = %155, %152
  %164 = load ptr, ptr %144, align 8, !tbaa !316
  %165 = getelementptr inbounds %struct.basic_block_def, ptr %164, i64 0, i32 11
  %166 = load i32, ptr %165, align 8, !tbaa !353
  %167 = getelementptr inbounds %struct.edge_def, ptr %144, i64 0, i32 8
  %168 = load i32, ptr %167, align 4, !tbaa !362
  %169 = mul nsw i32 %168, %166
  %170 = add i32 %169, 104999
  %171 = icmp ult i32 %170, 199999
  br i1 %171, label %175, label %172, !prof !363

172:                                              ; preds = %163
  %173 = add nuw nsw i32 %169, 5000
  %174 = sdiv i32 %173, 100000
  br label %175

175:                                              ; preds = %172, %163, %148, %155
  %176 = phi i32 [ 1000, %155 ], [ 1000, %148 ], [ %174, %172 ], [ 1, %163 ]
  %177 = tail call fastcc ptr @emit_move_list(ptr noundef %149, i32 noundef %176) #19
  tail call void @insert_insn_on_edge(ptr noundef %177, ptr noundef nonnull %144) #21
  %178 = load ptr, ptr %144, align 8, !tbaa !316
  %179 = getelementptr inbounds %struct.basic_block_def, ptr %178, i64 0, i32 6
  %180 = load ptr, ptr %179, align 8, !tbaa !210
  %181 = getelementptr inbounds %struct.edge_def, ptr %144, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !220
  %183 = icmp eq ptr %180, %182
  br i1 %183, label %187, label %184, !prof !364

184:                                              ; preds = %175
  %185 = load i32, ptr @ira_additional_jumps_num, align 4, !tbaa !208
  %186 = add nsw i32 %185, 1
  store i32 %186, ptr @ira_additional_jumps_num, align 4, !tbaa !208
  br label %187

187:                                              ; preds = %175, %184, %143
  call fastcc void @ei_next(ptr noundef nonnull %1) #19
  %188 = load i32, ptr %1, align 8
  %189 = load ptr, ptr %13, align 8
  %190 = call fastcc zeroext i8 @ei_cond(i32 %188, ptr %189, ptr noundef nonnull %2) #19, !range !198
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %14, label %143, !prof !223, !llvm.loop !365

192:                                              ; preds = %14, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_ranges_and_copies() unnamed_addr #2 !prof !297 !PGOFuncName !366 {
  %1 = alloca %struct.edge_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %3 = tail call ptr @ira_allocate_bitmap() #21
  %4 = load ptr, ptr @cfun, align 8, !tbaa !181
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !204
  %7 = load ptr, ptr %6, align 8, !tbaa !209
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !210
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !212
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %143, label %13, !prof !213

13:                                               ; preds = %0
  %14 = getelementptr inbounds i8, ptr %1, i64 8
  br label %24

15:                                               ; preds = %137, %91
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !210
  %18 = load ptr, ptr @cfun, align 8, !tbaa !181
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !204
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !212
  %23 = icmp eq ptr %17, %22
  br i1 %23, label %143, label %24, !prof !214, !llvm.loop !367

24:                                               ; preds = %13, %15
  %25 = phi ptr [ %9, %13 ], [ %17, %15 ]
  %26 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !181
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !216
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %26, i64 %29, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !271
  %32 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %28) #19
  %33 = getelementptr inbounds %struct.df_lr_bb_info, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !318
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %34) #21
  %35 = load ptr, ptr @at_bb_start, align 8, !tbaa !181
  %36 = load i32, ptr %27, align 8, !tbaa !216
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %35, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !181
  %40 = load i32, ptr @optimize_size, align 4, !tbaa !208
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %60, !prof !368

42:                                               ; preds = %24
  %43 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !208
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %53, label %45, !prof !368

45:                                               ; preds = %42
  %46 = load ptr, ptr @cfun, align 8, !tbaa !181
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !204
  %49 = load ptr, ptr %48, align 8, !tbaa !209
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 8
  %51 = load i64, ptr %50, align 8, !tbaa !352
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %45, %42
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 11
  %55 = load i32, ptr %54, align 8, !tbaa !353
  %56 = add i32 %55, 9
  %57 = icmp ult i32 %56, 19
  br i1 %57, label %60, label %58, !prof !369

58:                                               ; preds = %53
  %59 = sdiv i32 %55, 10
  br label %60

60:                                               ; preds = %58, %53, %24, %45
  %61 = phi i32 [ 1000, %45 ], [ 1000, %24 ], [ %59, %58 ], [ 1, %53 ]
  tail call fastcc void @add_range_and_copies_from_move_list(ptr noundef %39, ptr noundef %31, ptr noundef %3, i32 noundef %61) #19
  %62 = load i32, ptr %27, align 8, !tbaa !216
  %63 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %62) #19
  %64 = getelementptr inbounds %struct.df_lr_bb_info, ptr %63, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !321
  tail call void @bitmap_copy(ptr noundef %3, ptr noundef %65) #21
  %66 = load ptr, ptr @at_bb_end, align 8, !tbaa !181
  %67 = load i32, ptr %27, align 8, !tbaa !216
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds ptr, ptr %66, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !181
  %71 = load i32, ptr @optimize_size, align 4, !tbaa !208
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %91, !prof !368

73:                                               ; preds = %60
  %74 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !208
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %84, label %76, !prof !368

76:                                               ; preds = %73
  %77 = load ptr, ptr @cfun, align 8, !tbaa !181
  %78 = getelementptr inbounds %struct.function, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !204
  %80 = load ptr, ptr %79, align 8, !tbaa !209
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 8
  %82 = load i64, ptr %81, align 8, !tbaa !352
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %76, %73
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 11
  %86 = load i32, ptr %85, align 8, !tbaa !353
  %87 = add i32 %86, 9
  %88 = icmp ult i32 %87, 19
  br i1 %88, label %91, label %89, !prof !369

89:                                               ; preds = %84
  %90 = sdiv i32 %86, 10
  br label %91

91:                                               ; preds = %89, %84, %60, %76
  %92 = phi i32 [ 1000, %76 ], [ 1000, %60 ], [ %90, %89 ], [ 1, %84 ]
  tail call fastcc void @add_range_and_copies_from_move_list(ptr noundef %70, ptr noundef %31, ptr noundef %3, i32 noundef %92) #19
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 1
  %94 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %93) #19
  store i32 0, ptr %1, align 8, !tbaa.struct !217
  store ptr %94, ptr %14, align 8, !tbaa.struct !218
  %95 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %94, ptr noundef nonnull %2) #19, !range !198
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %15, label %97, !prof !219

97:                                               ; preds = %91, %137
  %98 = load ptr, ptr %2, align 8, !tbaa !181
  %99 = getelementptr inbounds %struct.edge_def, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !220
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %100, i64 0, i32 9
  %102 = load i32, ptr %101, align 8, !tbaa !216
  %103 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %102) #19
  %104 = getelementptr inbounds %struct.df_lr_bb_info, ptr %103, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !318
  %106 = load i32, ptr %27, align 8, !tbaa !216
  %107 = tail call fastcc ptr @df_lr_get_bb_info(i32 noundef %106) #19
  %108 = getelementptr inbounds %struct.df_lr_bb_info, ptr %107, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !321
  tail call void @bitmap_and(ptr noundef %3, ptr noundef %105, ptr noundef %109) #21
  %110 = getelementptr inbounds %struct.edge_def, ptr %98, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !229
  %112 = load i32, ptr @optimize_size, align 4, !tbaa !208
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %137, !prof !370

114:                                              ; preds = %97
  %115 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !208
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %125, label %117, !prof !370

117:                                              ; preds = %114
  %118 = load ptr, ptr @cfun, align 8, !tbaa !181
  %119 = getelementptr inbounds %struct.function, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !204
  %121 = load ptr, ptr %120, align 8, !tbaa !209
  %122 = getelementptr inbounds %struct.basic_block_def, ptr %121, i64 0, i32 8
  %123 = load i64, ptr %122, align 8, !tbaa !352
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %137, label %125

125:                                              ; preds = %117, %114
  %126 = load ptr, ptr %98, align 8, !tbaa !316
  %127 = getelementptr inbounds %struct.basic_block_def, ptr %126, i64 0, i32 11
  %128 = load i32, ptr %127, align 8, !tbaa !353
  %129 = getelementptr inbounds %struct.edge_def, ptr %98, i64 0, i32 8
  %130 = load i32, ptr %129, align 4, !tbaa !362
  %131 = mul nsw i32 %130, %128
  %132 = add i32 %131, 104999
  %133 = icmp ult i32 %132, 199999
  br i1 %133, label %137, label %134, !prof !371

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
  %141 = call fastcc zeroext i8 @ei_cond(i32 %139, ptr %140, ptr noundef nonnull %2) #19, !range !198
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %15, label %97, !prof !223, !llvm.loop !372

143:                                              ; preds = %15, %0
  tail call void @ira_free_bitmap(ptr noundef %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_move_list(ptr noundef %0) unnamed_addr #2 !prof !373 !PGOFuncName !374 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3, !prof !375

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.move, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !194
  tail call fastcc void @free_move(ptr noundef nonnull %4) #19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !prof !376, !llvm.loop !377

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_move_t_heap_free() unnamed_addr #9 !prof !297 !PGOFuncName !378 {
  %1 = load ptr, ptr @move_vec, align 8, !tbaa !181
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !379

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #19
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @move_vec, align 8, !tbaa !181
  ret void
}

; Function Attrs: optsize
declare void @ira_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @commit_edge_insertions() local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @recog_memoized(ptr noundef %0) unnamed_addr #2 !prof !380 !PGOFuncName !381 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !231
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9, !prof !382

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !231
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #21
  store i32 %8, ptr %2, align 8, !tbaa !231
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @change_regs(ptr nocapture noundef %0) unnamed_addr #10 !prof !383 !PGOFuncName !384 {
  %2 = load ptr, ptr %0, align 8, !tbaa !181
  %3 = icmp eq ptr %2, null
  br i1 %3, label %78, label %4, !prof !385

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 37
  br i1 %7, label %8, label %25, !prof !386

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %2) #19
  %10 = icmp sgt i32 %9, 52
  %11 = load i32, ptr @max_regno_before_changing, align 4
  %12 = icmp slt i32 %9, %11
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %78, !prof !387

14:                                               ; preds = %8
  %15 = load ptr, ptr @ira_curr_regno_allocno_map, align 8, !tbaa !181
  %16 = zext nneg i32 %9 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !181
  %19 = icmp eq ptr %18, null
  br i1 %19, label %78, label %20, !prof !388

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.ira_allocno, ptr %18, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !200
  %23 = icmp eq ptr %22, %2
  br i1 %23, label %78, label %24, !prof !389

24:                                               ; preds = %20
  store ptr %22, ptr %0, align 8, !tbaa !181
  br label %78

25:                                               ; preds = %4
  %26 = zext nneg i32 %6 to i64
  %27 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !181
  %29 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %26
  %30 = load i8, ptr %29, align 1, !tbaa !231
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %78, label %32, !prof !390

32:                                               ; preds = %25
  %33 = zext i8 %30 to i64
  br label %34

34:                                               ; preds = %32, %73
  %35 = phi i64 [ %33, %32 ], [ %37, %73 ]
  %36 = phi i32 [ 0, %32 ], [ %74, %73 ]
  %37 = add nsw i64 %35, -1
  %38 = getelementptr inbounds i8, ptr %28, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !231
  switch i8 %39, label %73 [
    i8 101, label %40
    i8 69, label %49
  ], !prof !391

40:                                               ; preds = %34
  %41 = load ptr, ptr %0, align 8, !tbaa !181
  %42 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %43 = getelementptr inbounds [1 x %union.rtunion_def], ptr %42, i64 0, i64 %37
  %44 = tail call fastcc zeroext i8 @change_regs(ptr noundef nonnull %43) #19, !range !198
  %45 = icmp ne i8 %44, 0
  %46 = icmp ne i32 %36, 0
  %47 = select i1 %45, i1 true, i1 %46, !prof !392
  %48 = zext i1 %47 to i32
  br label %73

49:                                               ; preds = %34
  %50 = load ptr, ptr %0, align 8, !tbaa !181
  %51 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %52 = getelementptr inbounds [1 x %union.rtunion_def], ptr %51, i64 0, i64 %37
  %53 = load ptr, ptr %52, align 8, !tbaa !231
  %54 = load i32, ptr %53, align 8, !tbaa !393
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %73, !prof !395

56:                                               ; preds = %49
  %57 = zext nneg i32 %54 to i64
  br label %58

58:                                               ; preds = %56, %58
  %59 = phi i64 [ %57, %56 ], [ %61, %58 ]
  %60 = phi i32 [ %36, %56 ], [ %71, %58 ]
  %61 = add nsw i64 %59, -1
  %62 = load ptr, ptr %0, align 8, !tbaa !181
  %63 = getelementptr inbounds %struct.rtx_def, ptr %62, i64 0, i32 1
  %64 = getelementptr inbounds [1 x %union.rtunion_def], ptr %63, i64 0, i64 %37
  %65 = load ptr, ptr %64, align 8, !tbaa !231
  %66 = getelementptr inbounds %struct.rtvec_def, ptr %65, i64 0, i32 1, i64 %61
  %67 = tail call fastcc zeroext i8 @change_regs(ptr noundef nonnull %66) #19, !range !198
  %68 = icmp ne i8 %67, 0
  %69 = icmp ne i32 %60, 0
  %70 = select i1 %68, i1 true, i1 %69, !prof !396
  %71 = zext i1 %70 to i32
  %72 = icmp ugt i64 %59, 1
  br i1 %72, label %58, label %73, !prof !397, !llvm.loop !398

73:                                               ; preds = %58, %49, %34, %40
  %74 = phi i32 [ %48, %40 ], [ %36, %34 ], [ %36, %49 ], [ %71, %58 ]
  %75 = icmp sgt i64 %35, 1
  br i1 %75, label %34, label %76, !prof !399, !llvm.loop !400

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
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 !prof !401 !PGOFuncName !402 {
  %5 = load ptr, ptr %1, align 8, !tbaa !403
  store ptr %5, ptr %0, align 8, !tbaa !405
  %6 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !407
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %9, !prof !408

8:                                                ; preds = %4
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !405
  br label %9

9:                                                ; preds = %4, %8
  %10 = phi ptr [ %5, %4 ], [ @bitmap_zero_bits, %8 ]
  %11 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !409
  %13 = icmp eq i32 %12, 0
  %14 = shl i32 %12, 7
  %15 = select i1 %13, i32 %2, i32 %14, !prof !411
  %16 = lshr i32 %15, 6
  %17 = and i32 %16, 1
  %18 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 %17, ptr %18, align 8, !tbaa !412
  %19 = zext nneg i32 %17 to i64
  %20 = getelementptr inbounds %struct.bitmap_element_def, ptr %10, i64 0, i32 3, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !282
  %22 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %23 = and i32 %15, 63
  %24 = zext nneg i32 %23 to i64
  %25 = lshr i64 %21, %24
  store i64 %25, ptr %22, align 8, !tbaa !413
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = add i32 %15, %27
  store i32 %28, ptr %3, align 4, !tbaa !208
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #5 !prof !414 !PGOFuncName !415 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !413
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !416

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !417

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !208
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !418, !llvm.loop !419

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !208
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !208
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !412
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !405
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !412
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !420

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !282
  store i64 %35, ptr %3, align 8, !tbaa !413
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !421

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !208
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !208
  %40 = load i32, ptr %23, align 8, !tbaa !412
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !412
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !422, !llvm.loop !423

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !424
  store ptr %44, ptr %0, align 8, !tbaa !405
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !425

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !409
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !208
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !413
  store i32 %16, ptr %1, align 4, !tbaa !208
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !426 !PGOFuncName !427 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !231
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_allocno_reg(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #13 !prof !428 !PGOFuncName !429 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !430
  %5 = load ptr, ptr @ira_regno_allocno_map, align 8, !tbaa !181
  %6 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !192
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %5, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !181
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16, !prof !431

12:                                               ; preds = %24, %2
  %13 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 16
  %14 = load ptr, ptr %13, align 8, !tbaa !432
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %28, !prof !433

16:                                               ; preds = %2, %24
  %17 = phi ptr [ %26, %24 ], [ %10, %2 ]
  %18 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !430
  %20 = tail call fastcc zeroext i8 @subloop_tree_node_p(ptr noundef %19, ptr noundef %4) #19, !range !198
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22, !prof !434

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 4
  store ptr %1, ptr %23, align 8, !tbaa !200
  br label %24

24:                                               ; preds = %16, %22
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %17, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !181
  %27 = icmp eq ptr %26, null
  br i1 %27, label %12, label %16, !prof !435, !llvm.loop !436

28:                                               ; preds = %12, %28
  %29 = phi ptr [ %32, %28 ], [ %14, %12 ]
  %30 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 4
  store ptr %1, ptr %30, align 8, !tbaa !200
  %31 = getelementptr inbounds %struct.ira_allocno, ptr %29, i64 0, i32 16
  %32 = load ptr, ptr %31, align 8, !tbaa !432
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %28, !prof !437, !llvm.loop !438

34:                                               ; preds = %28, %12
  br label %35

35:                                               ; preds = %62, %34
  %36 = phi ptr [ %0, %34 ], [ %63, %62 ]
  %37 = phi ptr [ %4, %34 ], [ %64, %62 ]
  %38 = icmp eq ptr %36, null
  br i1 %38, label %43, label %39, !prof !439

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.ira_allocno, ptr %36, i64 0, i32 16
  %41 = load ptr, ptr %40, align 8, !tbaa !432
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %53, !prof !440

43:                                               ; preds = %39, %35
  %44 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %37, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !271
  %46 = icmp eq ptr %45, null
  br i1 %46, label %65, label %47, !prof !441

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %45, i64 0, i32 9
  %49 = load ptr, ptr %48, align 8, !tbaa !272
  %50 = getelementptr inbounds ptr, ptr %49, i64 %8
  %51 = load ptr, ptr %50, align 8, !tbaa !181
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53, !prof !442

53:                                               ; preds = %39, %47
  %54 = phi ptr [ %45, %47 ], [ %37, %39 ]
  %55 = phi ptr [ %51, %47 ], [ %41, %39 ]
  %56 = getelementptr inbounds %struct.ira_allocno, ptr %55, i64 0, i32 31
  %57 = load i16, ptr %56, align 4
  %58 = and i16 %57, 4
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %65, !prof !443

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
define internal fastcc noundef ptr @create_new_reg(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !444 !PGOFuncName !445 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 255
  %5 = tail call ptr @gen_reg_rtx(i32 noundef %4) #21
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load i32, ptr %6, align 8, !tbaa !231
  %8 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  store i32 %7, ptr %8, align 8, !tbaa !231
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
  %19 = load ptr, ptr %18, align 8, !tbaa !231
  %20 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %19, ptr %20, align 8, !tbaa !231
  %21 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !208
  %22 = icmp sgt i32 %21, 3
  %23 = load ptr, ptr @ira_dump_file, align 8
  %24 = icmp ne ptr %23, null
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %30, !prof !446

26:                                               ; preds = %1
  %27 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %5) #19
  %28 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %0) #19
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %23, ptr noundef nonnull @.str.4, i32 noundef %27, i32 noundef %28) #19
  br label %30

30:                                               ; preds = %26, %1
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #14 !prof !447 !PGOFuncName !448 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !413
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !413
  %6 = load i32, ptr %1, align 4, !tbaa !208
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !208
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @subloop_tree_node_p(ptr noundef readonly %0, ptr noundef readnone %1) unnamed_addr #15 !prof !449 !PGOFuncName !450 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4, !prof !451

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %11, label %7, !prof !452

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %5, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !271
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !prof !453, !llvm.loop !454

11:                                               ; preds = %4, %7, %2
  %12 = phi i8 [ 0, %2 ], [ 0, %7 ], [ 1, %4 ]
  ret i8 %12
}

; Function Attrs: optsize
declare ptr @gen_reg_rtx(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_loop_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #14 !prof !455 !PGOFuncName !456 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !457

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !458
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !460

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !181
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !181
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @entered_from_non_parent_p(ptr noundef readonly %0) unnamed_addr #2 !prof !461 !PGOFuncName !462 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %4 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !181
  %6 = icmp eq ptr %5, null
  br i1 %6, label %58, label %7, !prof !463

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %3, i64 8
  br label %9

9:                                                ; preds = %7, %54
  %10 = phi ptr [ %5, %7 ], [ %56, %54 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !254
  %12 = icmp eq ptr %11, null
  br i1 %12, label %54, label %13, !prof !464

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %11) #19
  store i32 0, ptr %3, align 8, !tbaa.struct !217
  store ptr %14, ptr %8, align 8, !tbaa.struct !218
  %15 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %14, ptr noundef nonnull %2) #19, !range !198
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %54, label %17, !prof !465

17:                                               ; preds = %13, %49
  %18 = load ptr, ptr %2, align 8, !tbaa !181
  %19 = load ptr, ptr %18, align 8, !tbaa !316
  %20 = load ptr, ptr @cfun, align 8, !tbaa !181
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !204
  %23 = load ptr, ptr %22, align 8, !tbaa !209
  %24 = icmp eq ptr %19, %23
  br i1 %24, label %49, label %25, !prof !466

25:                                               ; preds = %17
  %26 = load ptr, ptr @ira_bb_nodes, align 8, !tbaa !181
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 9
  %28 = load i32, ptr %27, align 8, !tbaa !216
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %26, i64 %29, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !271
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %49, label %33, !prof !467

33:                                               ; preds = %25, %33
  %34 = phi ptr [ %36, %33 ], [ %31, %25 ]
  %35 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %34, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !271
  %37 = icmp eq ptr %36, null
  %38 = icmp eq ptr %36, %0
  %39 = or i1 %37, %38
  br i1 %39, label %40, label %33, !prof !468, !llvm.loop !469

40:                                               ; preds = %33
  br i1 %37, label %41, label %49, !prof !470

41:                                               ; preds = %40, %41
  %42 = phi ptr [ %44, %41 ], [ %0, %40 ]
  %43 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %42, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !271
  %45 = icmp eq ptr %44, null
  %46 = icmp eq ptr %31, %44
  %47 = or i1 %45, %46
  br i1 %47, label %48, label %41, !prof !471, !llvm.loop !472

48:                                               ; preds = %41
  br i1 %45, label %58, label %49, !prof !473

49:                                               ; preds = %17, %25, %48, %40
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  %50 = load i32, ptr %3, align 8
  %51 = load ptr, ptr %8, align 8
  %52 = call fastcc zeroext i8 @ei_cond(i32 %50, ptr %51, ptr noundef nonnull %2) #19, !range !198
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %17, !prof !474, !llvm.loop !475

54:                                               ; preds = %49, %13, %9
  %55 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %10, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !181
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %9, !prof !476, !llvm.loop !477

58:                                               ; preds = %54, %48, %1
  %59 = phi i8 [ 0, %1 ], [ 1, %48 ], [ 0, %54 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret i8 %59
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #2 !prof !311 !PGOFuncName !478 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !479

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #2 !prof !480 !PGOFuncName !481 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !482

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #19
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #12 !prof !483 !PGOFuncName !484 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !485

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !486
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #2 !prof !488 !PGOFuncName !489 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !490

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 687, ptr noundef nonnull @.str.6) #21
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !181
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #12 !prof !491 !PGOFuncName !492 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !181
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_lr_get_bb_info(i32 noundef %0) unnamed_addr #16 !prof !493 !PGOFuncName !494 {
  %2 = load ptr, ptr @df, align 8, !tbaa !181
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !181
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !495
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14, !prof !497

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !498
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !181
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @store_can_be_removed_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #2 !prof !499 !PGOFuncName !500 {
  %3 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !192
  %5 = getelementptr inbounds %struct.ira_allocno, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !200
  %7 = tail call fastcc i32 @rhs_regno(ptr noundef %6) #19
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !181
  %10 = icmp eq ptr %9, null
  br i1 %10, label %36, label %11, !prof !232

11:                                               ; preds = %2
  %12 = sext i32 %4 to i64
  br label %17

13:                                               ; preds = %32
  %14 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %18, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !181
  %16 = icmp eq ptr %15, null
  br i1 %16, label %36, label %17, !prof !501, !llvm.loop !502

17:                                               ; preds = %11, %13
  %18 = phi ptr [ %9, %11 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %18, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !272
  %21 = getelementptr inbounds ptr, ptr %20, i64 %12
  %22 = load ptr, ptr %21, align 8, !tbaa !181
  %23 = getelementptr inbounds %struct.ira_allocno, ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !200
  %25 = tail call fastcc i32 @rhs_regno(ptr noundef %24) #19
  %26 = icmp eq i32 %25, %7
  br i1 %26, label %37, label %27, !prof !503

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %18, i64 0, i32 14
  %29 = load ptr, ptr %28, align 8, !tbaa !504
  %30 = tail call i32 @bitmap_bit_p(ptr noundef %29, i32 noundef %4) #21
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %37, !prof !505

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %18, i64 0, i32 10
  %34 = load i8, ptr %33, align 8, !tbaa !306
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %13, label %37, !prof !506

36:                                               ; preds = %13, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 371, ptr noundef nonnull @.str.6) #21
  br label %37

37:                                               ; preds = %32, %27, %17, %36
  %38 = phi i8 [ 0, %36 ], [ 0, %32 ], [ 0, %27 ], [ 1, %17 ]
  ret i8 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_move(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !507 !PGOFuncName !508 {
  %3 = tail call ptr @ira_allocate(i64 noundef 48) #21
  %4 = getelementptr inbounds %struct.move, ptr %3, i64 0, i32 5
  store ptr null, ptr %4, align 8, !tbaa !509
  %5 = getelementptr inbounds %struct.move, ptr %3, i64 0, i32 4
  store i32 0, ptr %5, align 4, !tbaa !510
  %6 = getelementptr inbounds %struct.move, ptr %3, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !193
  store ptr %1, ptr %3, align 8, !tbaa !186
  %7 = getelementptr inbounds %struct.move, ptr %3, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !194
  %8 = getelementptr inbounds %struct.move, ptr %3, i64 0, i32 6
  store ptr null, ptr %8, align 8, !tbaa !511
  %9 = getelementptr inbounds %struct.move, ptr %3, i64 0, i32 3
  store i8 0, ptr %9, align 8, !tbaa !512
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_to_edge_list(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #14 !prof !513 !PGOFuncName !514 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !229
  %5 = getelementptr inbounds %struct.move, ptr %1, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !194
  store ptr %1, ptr %3, align 8, !tbaa !229
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @eq_edge_move_lists_p(ptr noundef %0) unnamed_addr #15 !prof !515 !PGOFuncName !516 {
  %2 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %0) #19
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi i32 [ %2, %1 ], [ %5, %7 ]
  %5 = add i32 %4, -1
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %16, !prof !517

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %0, i32 noundef 0) #19
  %9 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !229
  %11 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %0, i32 noundef %5) #19
  %12 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !229
  %14 = tail call fastcc zeroext i8 @eq_move_lists_p(ptr noundef %10, ptr noundef %13) #19, !range !198
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %3, !prof !518, !llvm.loop !519

16:                                               ; preds = %3, %7
  %17 = phi i8 [ 0, %7 ], [ 1, %3 ]
  ret i8 %17
}

; Function Attrs: optsize
declare zeroext i8 @control_flow_insn_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @eq_move_lists_p(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #15 !prof !520 !PGOFuncName !521 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %26, !prof !522

6:                                                ; preds = %2, %18
  %7 = phi ptr [ %22, %18 ], [ %1, %2 ]
  %8 = phi ptr [ %20, %18 ], [ %0, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !186
  %10 = load ptr, ptr %7, align 8, !tbaa !186
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %31, !prof !523

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.move, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !193
  %15 = getelementptr inbounds %struct.move, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !193
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %18, label %31, !prof !524

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.move, ptr %8, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !194
  %21 = getelementptr inbounds %struct.move, ptr %7, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !194
  %23 = icmp ne ptr %20, null
  %24 = icmp ne ptr %22, null
  %25 = select i1 %23, i1 %24, i1 false, !prof !525
  br i1 %25, label %6, label %26, !prof !526, !llvm.loop !527

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
define internal fastcc ptr @modify_move_list(ptr noundef %0) unnamed_addr #2 !prof !528 !PGOFuncName !529 {
  %2 = load i32, ptr @curr_tick, align 4, !tbaa !208
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @curr_tick, align 4, !tbaa !208
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7, !prof !530

5:                                                ; preds = %1
  %6 = load ptr, ptr @move_vec, align 8
  tail call fastcc void @VEC_move_t_base_truncate(ptr noundef %6) #19
  br label %124

7:                                                ; preds = %1, %31
  %8 = phi ptr [ %33, %31 ], [ %0, %1 ]
  %9 = getelementptr inbounds %struct.move, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !193
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !277
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %31, label %14, !prof !531

14:                                               ; preds = %7
  %15 = zext nneg i32 %12 to i64
  %16 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !281
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %15, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !231
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %31, label %22, !prof !532

22:                                               ; preds = %14
  %23 = zext i8 %20 to i64
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i64 [ 0, %22 ], [ %29, %24 ]
  %26 = add nuw nsw i64 %25, %15
  %27 = getelementptr inbounds [53 x ptr], ptr @hard_regno_last_set, i64 0, i64 %26
  store ptr %8, ptr %27, align 8, !tbaa !181
  %28 = getelementptr inbounds [53 x i32], ptr @hard_regno_last_set_check, i64 0, i64 %26
  store i32 %3, ptr %28, align 4, !tbaa !208
  %29 = add nuw nsw i64 %25, 1
  %30 = icmp eq i64 %29, %23
  br i1 %30, label %31, label %24, !prof !533, !llvm.loop !534

31:                                               ; preds = %24, %14, %7
  %32 = getelementptr inbounds %struct.move, ptr %8, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !194
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %7, !prof !535, !llvm.loop !536

35:                                               ; preds = %31, %113
  %36 = phi ptr [ %115, %113 ], [ %0, %31 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !186
  %38 = getelementptr inbounds %struct.ira_allocno, ptr %37, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !277
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %41, label %113, !prof !537

41:                                               ; preds = %35
  %42 = zext nneg i32 %39 to i64
  %43 = getelementptr inbounds %struct.ira_allocno, ptr %37, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !281
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %42, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !231
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %75, label %49, !prof !538

49:                                               ; preds = %41
  %50 = load i32, ptr @curr_tick, align 4, !tbaa !208
  %51 = zext i8 %47 to i64
  br label %52

52:                                               ; preds = %49, %71
  %53 = phi i64 [ 0, %49 ], [ %73, %71 ]
  %54 = phi i32 [ 0, %49 ], [ %72, %71 ]
  %55 = add nuw nsw i64 %53, %42
  %56 = getelementptr inbounds [53 x i32], ptr @hard_regno_last_set_check, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !208
  %58 = icmp eq i32 %57, %50
  br i1 %58, label %59, label %71, !prof !539

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.ira_allocno, ptr %37, i64 0, i32 1
  %61 = getelementptr inbounds [53 x ptr], ptr @hard_regno_last_set, i64 0, i64 %55
  %62 = load ptr, ptr %61, align 8, !tbaa !181
  %63 = getelementptr inbounds %struct.move, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !193
  %65 = getelementptr inbounds %struct.ira_allocno, ptr %64, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !192
  %67 = load i32, ptr %60, align 4, !tbaa !192
  %68 = icmp ne i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = add nsw i32 %54, %69
  br label %71

71:                                               ; preds = %59, %52
  %72 = phi i32 [ %54, %52 ], [ %70, %59 ]
  %73 = add nuw nsw i64 %53, 1
  %74 = icmp eq i64 %73, %51
  br i1 %74, label %75, label %52, !prof !540, !llvm.loop !541

75:                                               ; preds = %71, %41
  %76 = phi i32 [ 0, %41 ], [ %72, %71 ]
  %77 = sext i32 %76 to i64
  %78 = shl nsw i64 %77, 3
  %79 = tail call ptr @ira_allocate(i64 noundef %78) #21
  %80 = getelementptr inbounds %struct.move, ptr %36, i64 0, i32 5
  store ptr %79, ptr %80, align 8, !tbaa !509
  br i1 %48, label %110, label %81, !prof !538

81:                                               ; preds = %75
  %82 = load i32, ptr @curr_tick, align 4, !tbaa !208
  %83 = zext i8 %47 to i64
  br label %84

84:                                               ; preds = %81, %106
  %85 = phi i64 [ 0, %81 ], [ %108, %106 ]
  %86 = phi i32 [ 0, %81 ], [ %107, %106 ]
  %87 = add nuw nsw i64 %85, %42
  %88 = getelementptr inbounds [53 x i32], ptr @hard_regno_last_set_check, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !208
  %90 = icmp eq i32 %89, %82
  br i1 %90, label %91, label %106, !prof !539

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.ira_allocno, ptr %37, i64 0, i32 1
  %93 = getelementptr inbounds [53 x ptr], ptr @hard_regno_last_set, i64 0, i64 %87
  %94 = load ptr, ptr %93, align 8, !tbaa !181
  %95 = getelementptr inbounds %struct.move, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !193
  %97 = getelementptr inbounds %struct.ira_allocno, ptr %96, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !192
  %99 = load i32, ptr %92, align 4, !tbaa !192
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %106, label %101, !prof !542

101:                                              ; preds = %91
  %102 = load ptr, ptr %80, align 8, !tbaa !509
  %103 = add nsw i32 %86, 1
  %104 = sext i32 %86 to i64
  %105 = getelementptr inbounds ptr, ptr %102, i64 %104
  store ptr %94, ptr %105, align 8, !tbaa !181
  br label %106

106:                                              ; preds = %84, %91, %101
  %107 = phi i32 [ %103, %101 ], [ %86, %91 ], [ %86, %84 ]
  %108 = add nuw nsw i64 %85, 1
  %109 = icmp eq i64 %108, %83
  br i1 %109, label %110, label %84, !prof !540, !llvm.loop !543

110:                                              ; preds = %106, %75
  %111 = phi i32 [ 0, %75 ], [ %107, %106 ]
  %112 = getelementptr inbounds %struct.move, ptr %36, i64 0, i32 4
  store i32 %111, ptr %112, align 4, !tbaa !510
  br label %113

113:                                              ; preds = %35, %110
  %114 = getelementptr inbounds %struct.move, ptr %36, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !194
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %35, !prof !535, !llvm.loop !544

117:                                              ; preds = %113
  %118 = load ptr, ptr @move_vec, align 8
  tail call fastcc void @VEC_move_t_base_truncate(ptr noundef %118) #19
  br i1 %4, label %124, label %119, !prof !226

119:                                              ; preds = %117, %119
  %120 = phi ptr [ %122, %119 ], [ %0, %117 ]
  tail call fastcc void @traverse_moves(ptr noundef nonnull %120) #19
  %121 = getelementptr inbounds %struct.move, ptr %120, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !194
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %119, !prof !535, !llvm.loop !545

124:                                              ; preds = %119, %5, %117
  %125 = load ptr, ptr @move_vec, align 8
  %126 = tail call fastcc i32 @VEC_move_t_base_length(ptr noundef %125) #19
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %139, !prof !546

128:                                              ; preds = %124, %137
  %129 = phi i32 [ %131, %137 ], [ %126, %124 ]
  %130 = phi ptr [ %132, %137 ], [ null, %124 ]
  %131 = add nsw i32 %129, -1
  %132 = tail call fastcc ptr @VEC_move_t_base_index(ptr noundef %125, i32 noundef %131) #19
  %133 = getelementptr inbounds %struct.move, ptr %132, i64 0, i32 2
  store ptr null, ptr %133, align 8, !tbaa !194
  %134 = icmp eq ptr %130, null
  br i1 %134, label %137, label %135, !prof !547

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.move, ptr %130, i64 0, i32 2
  store ptr %132, ptr %136, align 8, !tbaa !194
  br label %137

137:                                              ; preds = %135, %128
  %138 = icmp ugt i32 %129, 1
  br i1 %138, label %128, label %139, !prof !548, !llvm.loop !549

139:                                              ; preds = %137, %124
  %140 = phi ptr [ null, %124 ], [ %132, %137 ]
  %141 = tail call fastcc ptr @VEC_move_t_base_last(ptr noundef %125) #19
  %142 = load i32, ptr @curr_tick, align 4, !tbaa !208
  %143 = add nsw i32 %142, 1
  store i32 %143, ptr @curr_tick, align 4, !tbaa !208
  tail call fastcc void @VEC_move_t_base_truncate(ptr noundef %125) #19
  %144 = icmp eq ptr %141, null
  br i1 %144, label %248, label %145, !prof !530

145:                                              ; preds = %139, %244
  %146 = phi ptr [ %246, %244 ], [ %141, %139 ]
  %147 = load ptr, ptr %146, align 8, !tbaa !186
  %148 = getelementptr inbounds %struct.move, ptr %146, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !193
  %150 = getelementptr inbounds %struct.ira_allocno, ptr %147, i64 0, i32 3
  %151 = load i32, ptr %150, align 4, !tbaa !277
  %152 = icmp sgt i32 %151, -1
  br i1 %152, label %153, label %222, !prof !537

153:                                              ; preds = %145
  %154 = zext nneg i32 %151 to i64
  %155 = getelementptr inbounds %struct.ira_allocno, ptr %147, i64 0, i32 2
  %156 = load i32, ptr %155, align 8, !tbaa !281
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %154, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !231
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %222, label %161, !prof !538

161:                                              ; preds = %153
  %162 = zext i8 %159 to i64
  br label %163

163:                                              ; preds = %161, %219
  %164 = phi i64 [ 0, %161 ], [ %220, %219 ]
  %165 = add nuw nsw i64 %164, %154
  %166 = getelementptr inbounds [53 x i32], ptr @hard_regno_last_set_check, i64 0, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !208
  %168 = load i32, ptr @curr_tick, align 4, !tbaa !208
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %219, !prof !550

170:                                              ; preds = %163
  %171 = getelementptr inbounds [53 x ptr], ptr @hard_regno_last_set, i64 0, i64 %165
  %172 = load ptr, ptr %171, align 8, !tbaa !181
  %173 = getelementptr inbounds %struct.move, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !193
  %175 = getelementptr inbounds %struct.ira_allocno, ptr %174, i64 0, i32 3
  %176 = load i32, ptr %175, align 4, !tbaa !277
  %177 = icmp sgt i32 %176, -1
  br i1 %177, label %178, label %219, !prof !551

178:                                              ; preds = %170
  %179 = getelementptr inbounds %struct.ira_allocno, ptr %174, i64 0, i32 1
  %180 = load i32, ptr %179, align 4, !tbaa !192
  %181 = getelementptr inbounds %struct.ira_allocno, ptr %174, i64 0, i32 6
  %182 = load ptr, ptr %181, align 8, !tbaa !430
  %183 = tail call ptr @ira_create_allocno(i32 noundef %180, i8 noundef zeroext 0, ptr noundef %182) #21
  %184 = load ptr, ptr %173, align 8, !tbaa !193
  %185 = getelementptr inbounds %struct.ira_allocno, ptr %184, i64 0, i32 2
  %186 = load i32, ptr %185, align 8, !tbaa !281
  %187 = getelementptr inbounds %struct.ira_allocno, ptr %183, i64 0, i32 2
  store i32 %186, ptr %187, align 8, !tbaa !281
  %188 = getelementptr inbounds %struct.ira_allocno, ptr %184, i64 0, i32 9
  %189 = load i32, ptr %188, align 8, !tbaa !275
  tail call void @ira_set_allocno_cover_class(ptr noundef %183, i32 noundef %189) #21
  %190 = getelementptr inbounds %struct.ira_allocno, ptr %183, i64 0, i32 31
  %191 = load i16, ptr %190, align 4
  %192 = or i16 %191, 256
  store i16 %192, ptr %190, align 4
  %193 = getelementptr inbounds %struct.ira_allocno, ptr %183, i64 0, i32 3
  store i32 -1, ptr %193, align 4, !tbaa !277
  %194 = load ptr, ptr %173, align 8, !tbaa !193
  %195 = getelementptr inbounds %struct.ira_allocno, ptr %194, i64 0, i32 4
  %196 = load ptr, ptr %195, align 8, !tbaa !200
  %197 = tail call fastcc ptr @create_new_reg(ptr noundef %196) #19
  %198 = getelementptr inbounds %struct.ira_allocno, ptr %183, i64 0, i32 4
  store ptr %197, ptr %198, align 8, !tbaa !200
  %199 = load i32, ptr %183, align 8, !tbaa !189
  %200 = getelementptr inbounds %struct.ira_allocno, ptr %183, i64 0, i32 24
  store i32 %199, ptr %200, align 8, !tbaa !552
  %201 = getelementptr inbounds %struct.ira_allocno, ptr %183, i64 0, i32 21
  store i32 0, ptr %201, align 8, !tbaa !553
  %202 = load i32, ptr @ira_allocnos_num, align 4, !tbaa !208
  %203 = add nsw i32 %202, -1
  %204 = getelementptr inbounds %struct.ira_allocno, ptr %183, i64 0, i32 22
  store i32 %203, ptr %204, align 4, !tbaa !554
  %205 = load ptr, ptr %173, align 8, !tbaa !193
  %206 = tail call fastcc ptr @create_move(ptr noundef %205, ptr noundef nonnull %183) #19
  store ptr %183, ptr %173, align 8, !tbaa !193
  tail call fastcc void @VEC_move_t_heap_safe_push(ptr noundef %206) #19
  %207 = load i32, ptr @ira_move_loops_num, align 4, !tbaa !208
  %208 = add nsw i32 %207, 1
  store i32 %208, ptr @ira_move_loops_num, align 4, !tbaa !208
  %209 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !208
  %210 = icmp sgt i32 %209, 2
  %211 = load ptr, ptr @ira_dump_file, align 8
  %212 = icmp ne ptr %211, null
  %213 = select i1 %210, i1 %212, i1 false
  br i1 %213, label %214, label %219, !prof !555

214:                                              ; preds = %178
  %215 = load i32, ptr %183, align 8, !tbaa !189
  %216 = load ptr, ptr %198, align 8, !tbaa !200
  %217 = tail call fastcc i32 @rhs_regno(ptr noundef %216) #19
  %218 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %211, ptr noundef nonnull @.str.9, i32 noundef %215, i32 noundef %217) #19
  br label %219

219:                                              ; preds = %163, %170, %214, %178
  %220 = add nuw nsw i64 %164, 1
  %221 = icmp eq i64 %220, %162
  br i1 %221, label %222, label %163, !prof !540, !llvm.loop !556

222:                                              ; preds = %219, %153, %145
  %223 = getelementptr inbounds %struct.ira_allocno, ptr %149, i64 0, i32 3
  %224 = load i32, ptr %223, align 4, !tbaa !277
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %244, label %226, !prof !531

226:                                              ; preds = %222
  %227 = zext nneg i32 %224 to i64
  %228 = getelementptr inbounds %struct.ira_allocno, ptr %149, i64 0, i32 2
  %229 = load i32, ptr %228, align 8, !tbaa !281
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %227, i64 %230
  %232 = load i8, ptr %231, align 1, !tbaa !231
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %244, label %234, !prof !532

234:                                              ; preds = %226
  %235 = load i32, ptr @curr_tick, align 4, !tbaa !208
  %236 = zext i8 %232 to i64
  br label %237

237:                                              ; preds = %234, %237
  %238 = phi i64 [ 0, %234 ], [ %242, %237 ]
  %239 = add nuw nsw i64 %238, %227
  %240 = getelementptr inbounds [53 x ptr], ptr @hard_regno_last_set, i64 0, i64 %239
  store ptr %146, ptr %240, align 8, !tbaa !181
  %241 = getelementptr inbounds [53 x i32], ptr @hard_regno_last_set_check, i64 0, i64 %239
  store i32 %235, ptr %241, align 4, !tbaa !208
  %242 = add nuw nsw i64 %238, 1
  %243 = icmp eq i64 %242, %236
  br i1 %243, label %244, label %237, !prof !533, !llvm.loop !557

244:                                              ; preds = %237, %226, %222
  %245 = getelementptr inbounds %struct.move, ptr %146, i64 0, i32 2
  %246 = load ptr, ptr %245, align 8, !tbaa !194
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %145, !prof !535, !llvm.loop !558

248:                                              ; preds = %244, %139
  %249 = load ptr, ptr @move_vec, align 8
  %250 = tail call fastcc i32 @VEC_move_t_base_length(ptr noundef %249) #19
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %260, !prof !559

252:                                              ; preds = %248, %252
  %253 = phi ptr [ %256, %252 ], [ %140, %248 ]
  %254 = phi i32 [ %255, %252 ], [ %250, %248 ]
  %255 = add nsw i32 %254, -1
  %256 = tail call fastcc ptr @VEC_move_t_base_index(ptr noundef %249, i32 noundef %255) #19
  %257 = getelementptr inbounds %struct.move, ptr %256, i64 0, i32 2
  store ptr null, ptr %257, align 8, !tbaa !194
  %258 = getelementptr inbounds %struct.move, ptr %253, i64 0, i32 2
  store ptr %256, ptr %258, align 8, !tbaa !194
  %259 = icmp ugt i32 %254, 1
  br i1 %259, label %252, label %260, !prof !560, !llvm.loop !561

260:                                              ; preds = %252, %248
  ret ptr %141
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @emit_move_list(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !528 !PGOFuncName !562 {
  tail call void @start_sequence() #21
  %3 = icmp eq ptr %0, null
  br i1 %3, label %76, label %4, !prof !530

4:                                                ; preds = %2, %69
  %5 = phi ptr [ %74, %69 ], [ %0, %2 ]
  tail call void @start_sequence() #21
  %6 = getelementptr inbounds %struct.move, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !193
  %8 = getelementptr inbounds %struct.ira_allocno, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !200
  %10 = load ptr, ptr %5, align 8, !tbaa !186
  %11 = getelementptr inbounds %struct.ira_allocno, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !200
  %13 = tail call ptr @emit_move_insn(ptr noundef %9, ptr noundef %12) #21
  %14 = tail call ptr @get_insns() #21
  %15 = getelementptr inbounds %struct.move, ptr %5, i64 0, i32 6
  store ptr %14, ptr %15, align 8, !tbaa !511
  tail call void @end_sequence() #21
  %16 = load ptr, ptr %15, align 8, !tbaa !231
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18, !prof !563

18:                                               ; preds = %4, %18
  %19 = phi ptr [ %21, %18 ], [ %16, %4 ]
  tail call fastcc void @recog_memoized(ptr noundef nonnull %19) #19
  %20 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !231
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %18, !prof !564, !llvm.loop !565

23:                                               ; preds = %18
  %24 = load ptr, ptr %15, align 8, !tbaa !511
  br label %25

25:                                               ; preds = %23, %4
  %26 = phi ptr [ %24, %23 ], [ null, %4 ]
  %27 = tail call ptr @emit_insn(ptr noundef %26) #21
  %28 = load ptr, ptr %6, align 8, !tbaa !193
  %29 = getelementptr inbounds %struct.ira_allocno, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !281
  %31 = getelementptr inbounds %struct.ira_allocno, ptr %28, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !275
  %33 = getelementptr inbounds %struct.ira_allocno, ptr %28, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !277
  %35 = icmp slt i32 %34, 0
  %36 = load ptr, ptr %5, align 8, !tbaa !186
  %37 = getelementptr inbounds %struct.ira_allocno, ptr %36, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !277
  br i1 %35, label %39, label %49, !prof !566

39:                                               ; preds = %25
  %40 = icmp sgt i32 %38, -1
  br i1 %40, label %41, label %69, !prof !567

41:                                               ; preds = %39
  %42 = zext i32 %30 to i64
  %43 = zext i32 %32 to i64
  %44 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %42, i64 %43
  %45 = load i16, ptr %44, align 4, !tbaa !568
  %46 = sext i16 %45 to i32
  %47 = mul nsw i32 %46, %1
  %48 = load i32, ptr @ira_store_cost, align 4, !tbaa !208
  br label %63

49:                                               ; preds = %25
  %50 = icmp slt i32 %38, 0
  br i1 %50, label %51, label %59, !prof !570

51:                                               ; preds = %49
  %52 = zext i32 %30 to i64
  %53 = zext i32 %32 to i64
  %54 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %52, i64 %53
  %55 = load i16, ptr %54, align 4, !tbaa !568
  %56 = sext i16 %55 to i32
  %57 = mul nsw i32 %56, %1
  %58 = load i32, ptr @ira_load_cost, align 4, !tbaa !208
  br label %63

59:                                               ; preds = %49
  %60 = tail call fastcc i32 @ira_get_register_move_cost(i32 noundef %30, i32 noundef %32, i32 noundef %32) #19, !range !571
  %61 = mul nsw i32 %60, %1
  %62 = load i32, ptr @ira_shuffle_cost, align 4, !tbaa !208
  br label %63

63:                                               ; preds = %41, %51, %59
  %64 = phi i32 [ %61, %59 ], [ %58, %51 ], [ %48, %41 ]
  %65 = phi i32 [ %62, %59 ], [ %57, %51 ], [ %47, %41 ]
  %66 = phi ptr [ @ira_shuffle_cost, %59 ], [ @ira_load_cost, %51 ], [ @ira_store_cost, %41 ]
  %67 = phi i32 [ %61, %59 ], [ %57, %51 ], [ %47, %41 ]
  %68 = add nsw i32 %65, %64
  store i32 %68, ptr %66, align 4, !tbaa !208
  br label %69

69:                                               ; preds = %63, %39
  %70 = phi i32 [ 0, %39 ], [ %67, %63 ]
  %71 = load i32, ptr @ira_overall_cost, align 4, !tbaa !208
  %72 = add nsw i32 %71, %70
  store i32 %72, ptr @ira_overall_cost, align 4, !tbaa !208
  %73 = getelementptr inbounds %struct.move, ptr %5, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !194
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %4, !prof !572, !llvm.loop !573

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
define internal fastcc void @VEC_move_t_base_truncate(ptr noundef writeonly %0) unnamed_addr #4 !prof !574 !PGOFuncName !575 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3, !prof !576

3:                                                ; preds = %1
  store i32 0, ptr %0, align 8, !tbaa !577
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @traverse_moves(ptr noundef %0) unnamed_addr #2 !prof !579 !PGOFuncName !580 {
  %2 = getelementptr inbounds %struct.move, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 8, !tbaa !512
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %20, !prof !581

5:                                                ; preds = %1
  store i8 1, ptr %2, align 8, !tbaa !512
  %6 = getelementptr inbounds %struct.move, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !510
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %19, !prof !582

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.move, ptr %0, i64 0, i32 5
  %11 = zext nneg i32 %7 to i64
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ %11, %9 ], [ %14, %12 ]
  %14 = add nsw i64 %13, -1
  %15 = load ptr, ptr %10, align 8, !tbaa !509
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !181
  tail call fastcc void @traverse_moves(ptr noundef %17) #19
  %18 = icmp ugt i64 %13, 1
  br i1 %18, label %12, label %19, !prof !583, !llvm.loop !584

19:                                               ; preds = %12, %5
  tail call fastcc void @VEC_move_t_heap_safe_push(ptr noundef nonnull %0) #19
  br label %20

20:                                               ; preds = %1, %19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_move_t_base_length(ptr noundef readonly %0) unnamed_addr #12 !prof !574 !PGOFuncName !585 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !576

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !577
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_move_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #12 !prof !586 !PGOFuncName !587 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_move_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !181
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_move_t_base_last(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !528 !PGOFuncName !588 {
  %2 = load i32, ptr %0, align 8, !tbaa !577
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_move_t_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !181
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @ira_create_allocno(i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @ira_set_allocno_cover_class(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_move_t_heap_safe_push(ptr noundef %0) unnamed_addr #2 !prof !586 !PGOFuncName !589 {
  tail call fastcc void @VEC_move_t_heap_reserve() #19
  %2 = load ptr, ptr @move_vec, align 8, !tbaa !181
  tail call fastcc void @VEC_move_t_base_quick_push(ptr noundef %2, ptr noundef %0) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_move_t_heap_reserve() unnamed_addr #2 !prof !586 !PGOFuncName !590 {
  %1 = load ptr, ptr @move_vec, align 8, !tbaa !181
  %2 = tail call fastcc i32 @VEC_move_t_base_space(ptr noundef %1) #19
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !591

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #21
  store ptr %5, ptr @move_vec, align 8, !tbaa !181
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_move_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #14 !prof !586 !PGOFuncName !592 {
  %3 = load i32, ptr %0, align 8, !tbaa !577
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !577
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_move_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !181
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_move_t_base_space(ptr noundef readonly %0) unnamed_addr #12 !prof !586 !PGOFuncName !593 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !591

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_move_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !594
  %6 = load i32, ptr %0, align 8, !tbaa !577
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
define internal fastcc i32 @ira_get_register_move_cost(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 !prof !595 !PGOFuncName !596 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x ptr], ptr @ira_register_move_cost, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !181
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !597

8:                                                ; preds = %3
  tail call void @ira_init_register_move_cost(i32 noundef %0) #21
  %9 = load ptr, ptr %5, align 8, !tbaa !181
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = zext i32 %1 to i64
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds [27 x i16], ptr %11, i64 %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !568
  %16 = zext i16 %15 to i32
  ret i32 %16
}

; Function Attrs: optsize
declare void @ira_init_register_move_cost(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_range_and_copies_from_move_list(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #2 !prof !598 !PGOFuncName !599 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bitmap_iterator, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  %8 = icmp eq ptr %0, null
  br i1 %8, label %198, label %9, !prof !600

9:                                                ; preds = %4
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %6, ptr noundef %2, i32 noundef 53, ptr noundef nonnull %5) #19
  %10 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #19, !range !198
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12, !prof !530

12:                                               ; preds = %9, %12
  %13 = phi i32 [ %14, %12 ], [ 0, %9 ]
  %14 = add nuw nsw i32 %13, 1
  call fastcc void @bmp_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %5) #19
  %15 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #19, !range !198
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %12, !prof !601, !llvm.loop !602

17:                                               ; preds = %12, %9
  %18 = phi i32 [ 0, %9 ], [ %14, %12 ]
  store i64 0, ptr %7, align 8, !tbaa !282
  call void @reg_set_to_hard_reg_set(ptr noundef nonnull %7, ptr noundef %2) #21
  %19 = load i32, ptr @ira_max_point, align 4, !tbaa !208
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr @ira_max_point, align 4, !tbaa !208
  br label %21

21:                                               ; preds = %17, %119
  %22 = phi ptr [ %0, %17 ], [ %128, %119 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !186
  %24 = getelementptr inbounds %struct.move, ptr %22, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !193
  %26 = getelementptr inbounds %struct.ira_allocno, ptr %25, i64 0, i32 23
  %27 = load ptr, ptr %26, align 8, !tbaa !603
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %42, !prof !604

29:                                               ; preds = %21
  %30 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !208
  %31 = icmp sgt i32 %30, 2
  %32 = load ptr, ptr @ira_dump_file, align 8
  %33 = icmp ne ptr %32, null
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %41, !prof !555

35:                                               ; preds = %29
  %36 = load i32, ptr %25, align 8, !tbaa !189
  %37 = getelementptr inbounds %struct.ira_allocno, ptr %25, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !200
  %39 = call fastcc i32 @rhs_regno(ptr noundef %38) #19
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %32, ptr noundef nonnull @.str.10, i32 noundef %36, i32 noundef %39) #19
  br label %41

41:                                               ; preds = %35, %29
  call void @ira_allocate_allocno_conflicts(ptr noundef nonnull %25, i32 noundef %18) #21
  br label %42

42:                                               ; preds = %41, %21
  %43 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !192
  %45 = call zeroext i8 @bitmap_clear_bit(ptr noundef %2, i32 noundef %44) #21
  %46 = getelementptr inbounds %struct.ira_allocno, ptr %25, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !192
  %48 = call zeroext i8 @bitmap_clear_bit(ptr noundef %2, i32 noundef %47) #21
  %49 = load i64, ptr %7, align 8, !tbaa !282
  %50 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 26
  %51 = getelementptr inbounds %struct.ira_allocno, ptr %25, i64 0, i32 26
  %52 = load <2 x i64>, ptr %50, align 8, !tbaa !282
  %53 = insertelement <2 x i64> poison, i64 %49, i64 0
  %54 = shufflevector <2 x i64> %53, <2 x i64> poison, <2 x i32> zeroinitializer
  %55 = or <2 x i64> %52, %54
  store <2 x i64> %55, ptr %50, align 8, !tbaa !282
  %56 = load <2 x i64>, ptr %51, align 8, !tbaa !282
  %57 = or <2 x i64> %56, %54
  store <2 x i64> %57, ptr %51, align 8, !tbaa !282
  call fastcc void @update_costs(ptr noundef %23, i8 noundef zeroext 1, i32 noundef %3) #19
  call fastcc void @update_costs(ptr noundef nonnull %25, i8 noundef zeroext 0, i32 noundef %3) #19
  %58 = getelementptr inbounds %struct.move, ptr %22, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !511
  %60 = call ptr @ira_add_allocno_copy(ptr noundef %23, ptr noundef nonnull %25, i32 noundef %3, i8 noundef zeroext 0, ptr noundef %59, ptr noundef null) #21
  %61 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !208
  %62 = icmp sgt i32 %61, 2
  %63 = load ptr, ptr @ira_dump_file, align 8
  %64 = icmp ne ptr %63, null
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %81, !prof !605

66:                                               ; preds = %42
  %67 = load i32, ptr %60, align 8, !tbaa !606
  %68 = getelementptr inbounds %struct.ira_allocno_copy, ptr %60, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !608
  %70 = load i32, ptr %69, align 8, !tbaa !189
  %71 = getelementptr inbounds %struct.ira_allocno, ptr %69, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !200
  %73 = call fastcc i32 @rhs_regno(ptr noundef %72) #19
  %74 = getelementptr inbounds %struct.ira_allocno_copy, ptr %60, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !609
  %76 = load i32, ptr %75, align 8, !tbaa !189
  %77 = getelementptr inbounds %struct.ira_allocno, ptr %75, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !200
  %79 = call fastcc i32 @rhs_regno(ptr noundef %78) #19
  %80 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %63, ptr noundef nonnull @.str.11, i32 noundef %67, i32 noundef %70, i32 noundef %73, i32 noundef %76, i32 noundef %79) #19
  br label %81

81:                                               ; preds = %66, %42
  %82 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 20
  %83 = load ptr, ptr %82, align 8, !tbaa !610
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85, !prof !591

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %83, i64 0, i32 2
  %87 = load i32, ptr %86, align 4, !tbaa !611
  %88 = icmp sgt i32 %87, -1
  br i1 %88, label %89, label %104, !prof !613

89:                                               ; preds = %85, %81
  %90 = load i32, ptr @ira_max_point, align 4, !tbaa !208
  %91 = call ptr @ira_create_allocno_live_range(ptr noundef nonnull %23, i32 noundef %20, i32 noundef %90, ptr noundef %83) #21
  store ptr %91, ptr %82, align 8, !tbaa !610
  %92 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !208
  %93 = icmp sgt i32 %92, 2
  %94 = load ptr, ptr @ira_dump_file, align 8
  %95 = icmp ne ptr %94, null
  %96 = select i1 %93, i1 %95, i1 false
  br i1 %96, label %97, label %119, !prof !614

97:                                               ; preds = %89
  %98 = load i32, ptr @ira_max_point, align 4, !tbaa !208
  %99 = load i32, ptr %23, align 8, !tbaa !189
  %100 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !200
  %102 = call fastcc i32 @rhs_regno(ptr noundef %101) #19
  %103 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %94, ptr noundef nonnull @.str.12, i32 noundef %20, i32 noundef %98, i32 noundef %99, i32 noundef %102) #19
  br label %119

104:                                              ; preds = %85
  %105 = load i32, ptr @ira_max_point, align 4, !tbaa !208
  store i32 %105, ptr %86, align 4, !tbaa !611
  %106 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !208
  %107 = icmp sgt i32 %106, 2
  %108 = load ptr, ptr @ira_dump_file, align 8
  %109 = icmp ne ptr %108, null
  %110 = select i1 %107, i1 %109, i1 false
  br i1 %110, label %111, label %119, !prof !555

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %83, i64 0, i32 1
  %113 = load i32, ptr %112, align 8, !tbaa !615
  %114 = load i32, ptr %23, align 8, !tbaa !189
  %115 = getelementptr inbounds %struct.ira_allocno, ptr %23, i64 0, i32 4
  %116 = load ptr, ptr %115, align 8, !tbaa !200
  %117 = call fastcc i32 @rhs_regno(ptr noundef %116) #19
  %118 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %108, ptr noundef nonnull @.str.12, i32 noundef %113, i32 noundef %105, i32 noundef %114, i32 noundef %117) #19
  br label %119

119:                                              ; preds = %104, %111, %89, %97
  %120 = load i32, ptr @ira_max_point, align 4, !tbaa !208
  %121 = add nsw i32 %120, 1
  store i32 %121, ptr @ira_max_point, align 4, !tbaa !208
  %122 = getelementptr inbounds %struct.ira_allocno, ptr %25, i64 0, i32 20
  %123 = load ptr, ptr %122, align 8, !tbaa !610
  %124 = call ptr @ira_create_allocno_live_range(ptr noundef nonnull %25, i32 noundef %121, i32 noundef -1, ptr noundef %123) #21
  store ptr %124, ptr %122, align 8, !tbaa !610
  %125 = load i32, ptr @ira_max_point, align 4, !tbaa !208
  %126 = add nsw i32 %125, 1
  store i32 %126, ptr @ira_max_point, align 4, !tbaa !208
  %127 = getelementptr inbounds %struct.move, ptr %22, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !194
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %21, !prof !616, !llvm.loop !617

130:                                              ; preds = %119, %155
  %131 = phi ptr [ %157, %155 ], [ %0, %119 ]
  %132 = getelementptr inbounds %struct.move, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !193
  %134 = getelementptr inbounds %struct.ira_allocno, ptr %133, i64 0, i32 20
  %135 = load ptr, ptr %134, align 8, !tbaa !610
  %136 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %135, i64 0, i32 2
  %137 = load i32, ptr %136, align 4, !tbaa !611
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %155, !prof !613

139:                                              ; preds = %130
  %140 = load i32, ptr @ira_max_point, align 4, !tbaa !208
  %141 = add nsw i32 %140, -1
  store i32 %141, ptr %136, align 4, !tbaa !611
  %142 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !208
  %143 = icmp sgt i32 %142, 2
  %144 = load ptr, ptr @ira_dump_file, align 8
  %145 = icmp ne ptr %144, null
  %146 = select i1 %143, i1 %145, i1 false
  br i1 %146, label %147, label %155, !prof !614

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.ira_allocno_live_range, ptr %135, i64 0, i32 1
  %149 = load i32, ptr %148, align 8, !tbaa !615
  %150 = load i32, ptr %133, align 8, !tbaa !189
  %151 = getelementptr inbounds %struct.ira_allocno, ptr %133, i64 0, i32 4
  %152 = load ptr, ptr %151, align 8, !tbaa !200
  %153 = call fastcc i32 @rhs_regno(ptr noundef %152) #19
  %154 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %144, ptr noundef nonnull @.str.12, i32 noundef %149, i32 noundef %141, i32 noundef %150, i32 noundef %153) #19
  br label %155

155:                                              ; preds = %130, %147, %139
  %156 = getelementptr inbounds %struct.move, ptr %131, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !194
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %130, !prof !616, !llvm.loop !618

159:                                              ; preds = %155
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %6, ptr noundef %2, i32 noundef 53, ptr noundef nonnull %5) #19
  %160 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #19, !range !198
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %198, label %162, !prof !530

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %1, i64 0, i32 9
  br label %164

164:                                              ; preds = %162, %195
  %165 = load ptr, ptr %163, align 8, !tbaa !272
  %166 = load i32, ptr %5, align 4, !tbaa !208
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds ptr, ptr %165, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !181
  %170 = getelementptr inbounds %struct.ira_allocno, ptr %169, i64 0, i32 32
  %171 = load ptr, ptr %170, align 8, !tbaa !327
  %172 = icmp eq ptr %171, null
  br i1 %172, label %174, label %173, !prof !619

173:                                              ; preds = %164
  br label %174

174:                                              ; preds = %173, %164
  %175 = phi ptr [ %171, %173 ], [ %169, %164 ]
  %176 = load i32, ptr @ira_max_point, align 4, !tbaa !208
  %177 = add nsw i32 %176, -1
  %178 = getelementptr inbounds %struct.ira_allocno, ptr %175, i64 0, i32 20
  %179 = load ptr, ptr %178, align 8, !tbaa !610
  %180 = call ptr @ira_create_allocno_live_range(ptr noundef nonnull %175, i32 noundef %20, i32 noundef %177, ptr noundef %179) #21
  store ptr %180, ptr %178, align 8, !tbaa !610
  %181 = load i32, ptr @internal_flag_ira_verbose, align 4, !tbaa !208
  %182 = icmp sgt i32 %181, 2
  %183 = load ptr, ptr @ira_dump_file, align 8
  %184 = icmp ne ptr %183, null
  %185 = select i1 %182, i1 %184, i1 false
  br i1 %185, label %186, label %195, !prof !620

186:                                              ; preds = %174
  %187 = load i32, ptr @ira_max_point, align 4, !tbaa !208
  %188 = add nsw i32 %187, -1
  %189 = select i1 %172, ptr @.str.15, ptr @.str.14
  %190 = load i32, ptr %175, align 8, !tbaa !189
  %191 = getelementptr inbounds %struct.ira_allocno, ptr %175, i64 0, i32 4
  %192 = load ptr, ptr %191, align 8, !tbaa !200
  %193 = call fastcc i32 @rhs_regno(ptr noundef %192) #19
  %194 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %183, ptr noundef nonnull @.str.13, i32 noundef %20, i32 noundef %188, ptr noundef nonnull %189, i32 noundef %190, i32 noundef %193) #19
  br label %195

195:                                              ; preds = %174, %186
  call fastcc void @bmp_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %5) #19
  %196 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %5) #19, !range !198
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %164, !prof !621, !llvm.loop !622

198:                                              ; preds = %195, %159, %4
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
define internal fastcc void @update_costs(ptr nocapture noundef %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #13 !prof !623 !PGOFuncName !624 {
  %4 = icmp ne i8 %1, 0
  %5 = zext i1 %4 to i64
  %6 = insertelement <2 x i32> <i32 1, i32 poison>, i32 %2, i64 1
  br label %7

7:                                                ; preds = %28, %3
  %8 = phi ptr [ %0, %3 ], [ %29, %28 ]
  %9 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 7
  %10 = load <2 x i32>, ptr %9, align 8, !tbaa !208
  %11 = add nsw <2 x i32> %10, %6
  store <2 x i32> %11, ptr %9, align 8, !tbaa !208
  %12 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !281
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !275
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [87 x [27 x [2 x i16]]], ptr @ira_memory_move_cost, i64 0, i64 %14, i64 %17, i64 %5
  %19 = load i16, ptr %18, align 2, !tbaa !568
  %20 = sext i16 %19 to i32
  %21 = mul nsw i32 %20, %2
  %22 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 12
  %23 = load i32, ptr %22, align 4, !tbaa !625
  %24 = add nsw i32 %21, %23
  store i32 %24, ptr %22, align 4, !tbaa !625
  %25 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 16
  %26 = load ptr, ptr %25, align 8, !tbaa !432
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28, !prof !626

28:                                               ; preds = %7, %36
  %29 = phi ptr [ %43, %36 ], [ %26, %7 ]
  br label %7

30:                                               ; preds = %7
  %31 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !430
  %33 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %32, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !271
  %35 = icmp eq ptr %34, null
  br i1 %35, label %45, label %36, !prof !627

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.ira_loop_tree_node, ptr %34, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !272
  %39 = getelementptr inbounds %struct.ira_allocno, ptr %8, i64 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !192
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %38, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !181
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %28, !prof !628

45:                                               ; preds = %30, %36
  ret void
}

; Function Attrs: optsize
declare ptr @ira_add_allocno_copy(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @ira_create_allocno_live_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_move(ptr noundef %0) unnamed_addr #2 !prof !507 !PGOFuncName !629 {
  %2 = getelementptr inbounds %struct.move, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !509
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !630

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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!179}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178}
!36 = !{ptr @ira_emit, ptr @ira_allocno_iter_init, i64 6652}
!37 = !{ptr @ira_emit, ptr @ira_allocno_iter_cond, i64 584898}
!38 = !{ptr @ira_emit, ptr @ira_allocate, i64 5904}
!39 = !{ptr @ira_emit, ptr @ira_allocate_bitmap, i64 4428}
!40 = !{ptr @ira_emit, ptr @max_reg_num, i64 5904}
!41 = !{ptr @ira_emit, ptr @ira_traverse_loop_tree, i64 1476}
!42 = !{ptr @ira_emit, ptr @set_allocno_somewhere_renamed_p, i64 1476}
!43 = !{ptr @ira_emit, ptr @ira_free_bitmap, i64 4428}
!44 = !{ptr @ira_emit, ptr @setup_entered_from_non_parent_p, i64 1476}
!45 = !{ptr @ira_emit, ptr @ei_start_1, i64 310724}
!46 = !{ptr @ira_emit, ptr @ei_cond, i64 804648}
!47 = !{ptr @ira_emit, ptr @generate_edge_moves, i64 245127}
!48 = !{ptr @ira_emit, ptr @ei_next, i64 493924}
!49 = !{ptr @ira_emit, ptr @unify_moves, i64 310724}
!50 = !{ptr @ira_emit, ptr @VEC_move_t_heap_alloc, i64 1476}
!51 = !{ptr @ira_emit, ptr @emit_moves, i64 1476}
!52 = !{ptr @ira_emit, ptr @add_ranges_and_copies, i64 1476}
!53 = !{ptr @ira_emit, ptr @free_move_list, i64 557686}
!54 = !{ptr @ira_emit, ptr @VEC_move_t_heap_free, i64 1476}
!55 = !{ptr @ira_emit, ptr @ira_free, i64 5904}
!56 = !{ptr @ira_emit, ptr @commit_edge_insertions, i64 1476}
!57 = !{ptr @ira_emit, ptr @recog_memoized, i64 685570}
!58 = !{ptr @change_loop, ptr @change_regs, i64 624554}
!59 = !{ptr @change_loop, ptr @df_insn_rescan, i64 70077}
!60 = !{ptr @change_loop, ptr @df_notes_rescan, i64 70077}
!61 = !{ptr @change_loop, ptr @fprintf, i64 2}
!62 = !{ptr @change_loop, ptr @bmp_iter_set_init, i64 24960}
!63 = !{ptr @change_loop, ptr @bmp_iter_set, i64 504033}
!64 = !{ptr @change_loop, ptr @rhs_regno, i64 67578}
!65 = !{ptr @change_loop, ptr @create_new_reg, i64 34110}
!66 = !{ptr @change_loop, ptr @set_allocno_reg, i64 34110}
!67 = !{ptr @change_loop, ptr @bmp_iter_next, i64 479073}
!68 = !{ptr @change_loop, ptr @bitmap_and_compl, i64 13218}
!69 = !{ptr @change_loop, ptr @bitmap_bit_p, i64 154286}
!70 = !{ptr @change_loop, ptr @bitmap_set_bit, i64 154607}
!71 = !{ptr @set_allocno_somewhere_renamed_p, ptr @ira_allocno_iter_init, i64 1475}
!72 = !{ptr @set_allocno_somewhere_renamed_p, ptr @ira_allocno_iter_cond, i64 480203}
!73 = !{ptr @set_allocno_somewhere_renamed_p, ptr @bitmap_bit_p, i64 478728}
!74 = !{ptr @set_allocno_somewhere_renamed_p, ptr @rhs_regno, i64 1649}
!75 = !{ptr @setup_entered_from_non_parent_p, ptr @VEC_loop_p_base_iterate, i64 15173}
!76 = !{ptr @setup_entered_from_non_parent_p, ptr @entered_from_non_parent_p, i64 13207}
!77 = !{ptr @ei_cond, ptr @ei_end_p, i64 2011230}
!78 = !{ptr @ei_cond, ptr @ei_edge, i64 1234439}
!79 = !{ptr @generate_edge_moves, ptr @df_lr_get_bb_info, i64 302793}
!80 = !{ptr @generate_edge_moves, ptr @bmp_iter_set_init, i64 32359}
!81 = !{ptr @generate_edge_moves, ptr @bmp_iter_set, i64 302793}
!82 = !{ptr @generate_edge_moves, ptr @bitmap_bit_p, i64 270434}
!83 = !{ptr @generate_edge_moves, ptr @rhs_regno, i64 540866}
!84 = !{ptr @generate_edge_moves, ptr @store_can_be_removed_p, i64 3670}
!85 = !{ptr @generate_edge_moves, ptr @fprintf, i64 1}
!86 = !{ptr @generate_edge_moves, ptr @create_move, i64 60786}
!87 = !{ptr @generate_edge_moves, ptr @add_to_edge_list, i64 60786}
!88 = !{ptr @generate_edge_moves, ptr @bmp_iter_next, i64 270434}
!89 = !{ptr @ei_next, ptr @ei_container, i64 2468755}
!90 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 1234378}
!91 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!92 = !{ptr @unify_moves, ptr @VEC_edge_base_length, i64 481329}
!93 = !{ptr @unify_moves, ptr @eq_edge_move_lists_p, i64 308491}
!94 = !{ptr @unify_moves, ptr @VEC_edge_base_index, i64 352843}
!95 = !{ptr @unify_moves, ptr @control_flow_insn_p, i64 143443}
!96 = !{ptr @unify_moves, ptr @free_move_list, i64 68767}
!97 = !{ptr @VEC_move_t_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 1475}
!98 = !{ptr @emit_moves, ptr @modify_move_list, i64 22541}
!99 = !{ptr @emit_moves, ptr @emit_move_list, i64 22541}
!100 = !{ptr @emit_moves, ptr @emit_insn_before, i64 1}
!101 = !{ptr @emit_moves, ptr @emit_insn_after, i64 9808}
!102 = !{ptr @emit_moves, ptr @get_last_insn, i64 1}
!103 = !{ptr @emit_moves, ptr @ei_start_1, i64 155304}
!104 = !{ptr @emit_moves, ptr @ei_cond, i64 402173}
!105 = !{ptr @emit_moves, ptr @insert_insn_on_edge, i64 12732}
!106 = !{ptr @emit_moves, ptr @ei_next, i64 246869}
!107 = !{ptr @add_ranges_and_copies, ptr @ira_allocate_bitmap, i64 1475}
!108 = !{ptr @add_ranges_and_copies, ptr @df_lr_get_bb_info, i64 804346}
!109 = !{ptr @add_ranges_and_copies, ptr @bitmap_copy, i64 310608}
!110 = !{ptr @add_ranges_and_copies, ptr @add_range_and_copies_from_move_list, i64 557477}
!111 = !{ptr @add_ranges_and_copies, ptr @ei_start_1, i64 155304}
!112 = !{ptr @add_ranges_and_copies, ptr @ei_cond, i64 402173}
!113 = !{ptr @add_ranges_and_copies, ptr @bitmap_and, i64 246869}
!114 = !{ptr @add_ranges_and_copies, ptr @ei_next, i64 246869}
!115 = !{ptr @add_ranges_and_copies, ptr @ira_free_bitmap, i64 1475}
!116 = !{ptr @free_move_list, ptr @free_move, i64 60831}
!117 = !{ptr @VEC_move_t_heap_free, ptr @free, i64 1474}
!118 = !{ptr @recog_memoized, ptr @recog, i64 62927}
!119 = !{ptr @change_regs, ptr @rhs_regno, i64 1461117}
!120 = !{ptr @change_regs, ptr @change_regs, i64 5636707}
!121 = !{ptr @set_allocno_reg, ptr @subloop_tree_node_p, i64 205115}
!122 = !{ptr @create_new_reg, ptr @gen_reg_rtx, i64 34156}
!123 = !{ptr @create_new_reg, ptr @rhs_regno, i64 2}
!124 = !{ptr @create_new_reg, ptr @fprintf, i64 1}
!125 = !{ptr @entered_from_non_parent_p, ptr @ei_start_1, i64 155254}
!126 = !{ptr @entered_from_non_parent_p, ptr @ei_cond, i64 401605}
!127 = !{ptr @entered_from_non_parent_p, ptr @ei_next, i64 246351}
!128 = !{ptr @ei_end_p, ptr @ei_container, i64 4022459}
!129 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 2011230}
!130 = !{ptr @ei_edge, ptr @ei_container, i64 2468877}
!131 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 1234439}
!132 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!133 = !{ptr @store_can_be_removed_p, ptr @rhs_regno, i64 8546}
!134 = !{ptr @store_can_be_removed_p, ptr @bitmap_bit_p, i64 4003}
!135 = !{ptr @store_can_be_removed_p, ptr @fancy_abort, i64 29}
!136 = !{ptr @create_move, ptr @ira_allocate, i64 60830}
!137 = !{ptr @eq_edge_move_lists_p, ptr @VEC_edge_base_length, i64 308492}
!138 = !{ptr @eq_edge_move_lists_p, ptr @VEC_edge_base_index, i64 360836}
!139 = !{ptr @eq_edge_move_lists_p, ptr @eq_move_lists_p, i64 180418}
!140 = !{ptr @modify_move_list, ptr @VEC_move_t_base_truncate, i64 45108}
!141 = !{ptr @modify_move_list, ptr @ira_allocate, i64 54892}
!142 = !{ptr @modify_move_list, ptr @traverse_moves, i64 59347}
!143 = !{ptr @modify_move_list, ptr @VEC_move_t_base_length, i64 45108}
!144 = !{ptr @modify_move_list, ptr @VEC_move_t_base_index, i64 59392}
!145 = !{ptr @modify_move_list, ptr @VEC_move_t_base_last, i64 22554}
!146 = !{ptr @modify_move_list, ptr @ira_create_allocno, i64 44}
!147 = !{ptr @modify_move_list, ptr @ira_set_allocno_cover_class, i64 44}
!148 = !{ptr @modify_move_list, ptr @create_new_reg, i64 44}
!149 = !{ptr @modify_move_list, ptr @create_move, i64 44}
!150 = !{ptr @modify_move_list, ptr @VEC_move_t_heap_safe_push, i64 44}
!151 = !{ptr @modify_move_list, ptr @rhs_regno, i64 1}
!152 = !{ptr @modify_move_list, ptr @fprintf, i64 1}
!153 = !{ptr @emit_move_list, ptr @start_sequence, i64 81945}
!154 = !{ptr @emit_move_list, ptr @emit_move_insn, i64 59391}
!155 = !{ptr @emit_move_list, ptr @get_insns, i64 81945}
!156 = !{ptr @emit_move_list, ptr @end_sequence, i64 81945}
!157 = !{ptr @emit_move_list, ptr @recog_memoized, i64 59391}
!158 = !{ptr @emit_move_list, ptr @emit_insn, i64 59391}
!159 = !{ptr @emit_move_list, ptr @ira_get_register_move_cost, i64 52138}
!160 = !{ptr @traverse_moves, ptr @traverse_moves, i64 2117}
!161 = !{ptr @traverse_moves, ptr @VEC_move_t_heap_safe_push, i64 59348}
!162 = !{ptr @VEC_move_t_heap_safe_push, ptr @VEC_move_t_heap_reserve, i64 59393}
!163 = !{ptr @VEC_move_t_heap_safe_push, ptr @VEC_move_t_base_quick_push, i64 59393}
!164 = !{ptr @VEC_move_t_heap_reserve, ptr @VEC_move_t_base_space, i64 59393}
!165 = !{ptr @VEC_move_t_heap_reserve, ptr @vec_heap_p_reserve, i64 1}
!166 = !{ptr @ira_get_register_move_cost, ptr @ira_init_register_move_cost, i64 1}
!167 = !{ptr @add_range_and_copies_from_move_list, ptr @bmp_iter_set_init, i64 45110}
!168 = !{ptr @add_range_and_copies_from_move_list, ptr @bmp_iter_set, i64 419445}
!169 = !{ptr @add_range_and_copies_from_move_list, ptr @bmp_iter_next, i64 374335}
!170 = !{ptr @add_range_and_copies_from_move_list, ptr @reg_set_to_hard_reg_set, i64 22555}
!171 = !{ptr @add_range_and_copies_from_move_list, ptr @rhs_regno, i64 7}
!172 = !{ptr @add_range_and_copies_from_move_list, ptr @fprintf, i64 6}
!173 = !{ptr @add_range_and_copies_from_move_list, ptr @ira_allocate_allocno_conflicts, i64 45}
!174 = !{ptr @add_range_and_copies_from_move_list, ptr @bitmap_clear_bit, i64 118788}
!175 = !{ptr @add_range_and_copies_from_move_list, ptr @update_costs, i64 118788}
!176 = !{ptr @add_range_and_copies_from_move_list, ptr @ira_add_allocno_copy, i64 59394}
!177 = !{ptr @add_range_and_copies_from_move_list, ptr @ira_create_allocno_live_range, i64 276236}
!178 = !{ptr @free_move, ptr @ira_free, i64 115723}
!179 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!180 = !{!"function_entry_count", i64 0}
!181 = !{!182, !182, i64 0}
!182 = !{!"any pointer", !183, i64 0}
!183 = !{!"omnipotent char", !184, i64 0}
!184 = !{!"Simple C/C++ TBAA"}
!185 = !{!"ira-emit.c:print_move_list"}
!186 = !{!187, !182, i64 0}
!187 = !{!"move", !182, i64 0, !182, i64 8, !182, i64 16, !183, i64 24, !188, i64 28, !182, i64 32, !182, i64 40}
!188 = !{!"int", !183, i64 0}
!189 = !{!190, !188, i64 0}
!190 = !{!"ira_allocno", !188, i64 0, !188, i64 4, !188, i64 8, !188, i64 12, !182, i64 16, !182, i64 24, !182, i64 32, !188, i64 40, !188, i64 44, !188, i64 48, !188, i64 52, !188, i64 56, !188, i64 60, !188, i64 64, !188, i64 68, !182, i64 72, !182, i64 80, !182, i64 88, !182, i64 96, !182, i64 104, !182, i64 112, !188, i64 120, !188, i64 124, !182, i64 128, !188, i64 136, !188, i64 140, !191, i64 144, !191, i64 152, !188, i64 160, !188, i64 164, !188, i64 168, !188, i64 172, !188, i64 172, !188, i64 172, !188, i64 172, !188, i64 172, !188, i64 172, !188, i64 172, !188, i64 172, !188, i64 173, !188, i64 173, !188, i64 173, !188, i64 173, !182, i64 176, !182, i64 184, !182, i64 192, !182, i64 200, !182, i64 208, !188, i64 216, !188, i64 220, !182, i64 224, !182, i64 232, !188, i64 240}
!191 = !{!"long", !183, i64 0}
!192 = !{!190, !188, i64 4}
!193 = !{!187, !182, i64 8}
!194 = !{!187, !182, i64 16}
!195 = distinct !{!195, !196}
!196 = !{!"llvm.loop.mustprogress"}
!197 = !{!"function_entry_count", i64 6652}
!198 = !{i8 0, i8 2}
!199 = !{!"branch_weights", i32 1, i32 6652}
!200 = !{!190, !182, i64 16}
!201 = !{!"branch_weights", i32 6652, i32 571681}
!202 = distinct !{!202, !196}
!203 = !{!"branch_weights", i32 5178, i32 1476}
!204 = !{!205, !182, i64 8}
!205 = !{!"function", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !182, i64 32, !182, i64 40, !182, i64 48, !182, i64 56, !182, i64 64, !182, i64 72, !182, i64 80, !182, i64 88, !182, i64 96, !188, i64 104, !188, i64 108, !188, i64 112, !188, i64 116, !188, i64 120, !188, i64 124, !182, i64 128, !188, i64 136, !188, i64 137, !188, i64 138, !188, i64 138, !188, i64 138, !188, i64 138, !188, i64 138, !188, i64 138, !188, i64 138, !188, i64 139, !188, i64 139, !188, i64 139, !188, i64 139, !188, i64 139, !188, i64 139, !188, i64 139}
!206 = !{!207, !188, i64 32}
!207 = !{!"control_flow_graph", !182, i64 0, !182, i64 8, !182, i64 16, !188, i64 24, !188, i64 28, !188, i64 32, !182, i64 40, !188, i64 48, !183, i64 52, !183, i64 60, !188, i64 68, !188, i64 72}
!208 = !{!188, !188, i64 0}
!209 = !{!207, !182, i64 0}
!210 = !{!211, !182, i64 56}
!211 = !{!"basic_block_def", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !183, i64 32, !182, i64 48, !182, i64 56, !183, i64 64, !191, i64 72, !188, i64 80, !188, i64 84, !188, i64 88, !188, i64 92, !188, i64 96}
!212 = !{!207, !182, i64 8}
!213 = !{!"branch_weights", i32 1, i32 1475}
!214 = !{!"branch_weights", i32 1475, i32 153934}
!215 = distinct !{!215, !196}
!216 = !{!211, !188, i64 80}
!217 = !{i64 0, i64 4, !208, i64 8, i64 8, !181}
!218 = !{i64 0, i64 8, !181}
!219 = !{!"branch_weights", i32 1, i32 155408}
!220 = !{!221, !182, i64 8}
!221 = !{!"edge_def", !182, i64 0, !182, i64 8, !183, i64 16, !182, i64 24, !182, i64 32, !188, i64 40, !188, i64 44, !188, i64 48, !188, i64 52, !191, i64 56}
!222 = !{!"branch_weights", i32 1835, i32 245202}
!223 = !{!"branch_weights", i32 155408, i32 91628}
!224 = distinct !{!224, !196}
!225 = distinct !{!225, !196}
!226 = !{!"branch_weights", i32 0, i32 -2147483648}
!227 = distinct !{!227, !196}
!228 = distinct !{!228, !196}
!229 = !{!221, !182, i64 24}
!230 = distinct !{!230, !196}
!231 = !{!183, !183, i64 0}
!232 = !{!"branch_weights", i32 1, i32 127}
!233 = !{!234, !182, i64 0}
!234 = !{!"rtl_bb_info", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !188, i64 32}
!235 = !{!"branch_weights", i32 165591, i32 980423}
!236 = !{!"branch_weights", i32 -1469204333, i32 1182520528}
!237 = !{!"branch_weights", i32 127, i32 146689537}
!238 = distinct !{!238, !196}
!239 = !{!"branch_weights", i32 1475, i32 164116}
!240 = distinct !{!240, !196}
!241 = !{!"function_entry_count", i64 8127}
!242 = !{!"ira-emit.c:ira_allocno_iter_init"}
!243 = !{!244, !188, i64 0}
!244 = !{!"", !188, i64 0}
!245 = !{!"function_entry_count", i64 1065511}
!246 = !{!"ira-emit.c:ira_allocno_iter_cond"}
!247 = !{!"branch_weights", i32 8127, i32 1}
!248 = !{!"branch_weights", i32 15679, i32 1057385}
!249 = !{!"branch_weights", i32 8127, i32 1064936}
!250 = distinct !{!250, !196}
!251 = !{!"function_entry_count", i64 168624}
!252 = !{!"ira-emit.c:change_loop"}
!253 = !{!"branch_weights", i32 1476, i32 167150}
!254 = !{!255, !182, i64 0}
!255 = !{!"ira_loop_tree_node", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24, !182, i64 32, !182, i64 40, !182, i64 48, !188, i64 56, !183, i64 60, !182, i64 64, !183, i64 72, !183, i64 76, !182, i64 184, !182, i64 192, !182, i64 200, !182, i64 208}
!256 = !{!"branch_weights", i32 11742, i32 155409}
!257 = !{!"branch_weights", i32 1, i32 1111}
!258 = !{!234, !182, i64 8}
!259 = !{!"branch_weights", i32 155409, i32 903848}
!260 = !{!"branch_weights", i32 -2012795680, i32 997508234}
!261 = !{!"branch_weights", i32 558374, i32 70570}
!262 = !{!"branch_weights", i32 1111, i32 1057034}
!263 = distinct !{!263, !196}
!264 = !{!"branch_weights", i32 11742, i32 137886307}
!265 = !{!255, !182, i64 8}
!266 = !{!267, !188, i64 0}
!267 = !{!"loop", !188, i64 0, !188, i64 4, !182, i64 8, !182, i64 16, !268, i64 24, !188, i64 32, !188, i64 36, !182, i64 40, !182, i64 48, !182, i64 56, !182, i64 64, !182, i64 72, !269, i64 80, !269, i64 96, !183, i64 112, !183, i64 113, !188, i64 116, !182, i64 120, !182, i64 128, !183, i64 136, !182, i64 144}
!268 = !{!"lpt_decision", !188, i64 0, !188, i64 4}
!269 = !{!"", !191, i64 0, !191, i64 8}
!270 = !{!267, !182, i64 8}
!271 = !{!255, !182, i64 48}
!272 = !{!255, !182, i64 64}
!273 = !{!255, !182, i64 192}
!274 = !{!"branch_weights", i32 1, i32 11741}
!275 = !{!190, !188, i64 48}
!276 = !{!"branch_weights", i32 1, i32 125847}
!277 = !{!190, !188, i64 12}
!278 = !{!"branch_weights", i32 120783, i32 5065}
!279 = !{!"branch_weights", i32 91454, i32 29330}
!280 = !{!"branch_weights", i32 12, i32 29319}
!281 = !{!190, !188, i64 8}
!282 = !{!191, !191, i64 0}
!283 = !{!"branch_weights", i32 29319, i32 1}
!284 = !{!"branch_weights", i32 28999, i32 321}
!285 = !{!"branch_weights", i32 28729, i32 271}
!286 = !{!"branch_weights", i32 33793, i32 1}
!287 = !{!"branch_weights", i32 33793, i32 1142000643}
!288 = !{!"branch_weights", i32 11741, i32 114106}
!289 = distinct !{!289, !196}
!290 = !{!255, !182, i64 184}
!291 = !{!"branch_weights", i32 1, i32 13216}
!292 = !{!190, !182, i64 88}
!293 = !{!"branch_weights", i32 154277, i32 198931}
!294 = !{!"branch_weights", i32 153957, i32 321}
!295 = !{!"branch_weights", i32 13216, i32 339991}
!296 = distinct !{!296, !196}
!297 = !{!"function_entry_count", i64 1475}
!298 = !{!"ira-emit.c:set_allocno_somewhere_renamed_p"}
!299 = !{!"branch_weights", i32 477404, i32 1650}
!300 = !{!"branch_weights", i32 645, i32 1006}
!301 = !{!"branch_weights", i32 1475, i32 477578}
!302 = distinct !{!302, !196}
!303 = !{!"ira-emit.c:setup_entered_from_non_parent_p"}
!304 = !{i32 0, i32 2}
!305 = !{!"branch_weights", i32 491, i32 13217}
!306 = !{!255, !183, i64 72}
!307 = !{!"branch_weights", i32 1475, i32 12232}
!308 = distinct !{!308, !196}
!309 = !{!"function_entry_count", i64 776852}
!310 = !{!"ira-emit.c:ei_start_1"}
!311 = !{!"function_entry_count", i64 2011230}
!312 = !{!"ira-emit.c:ei_cond"}
!313 = !{!"branch_weights", i32 1234440, i32 776792}
!314 = !{!"function_entry_count", i64 245201}
!315 = !{!"ira-emit.c:generate_edge_moves"}
!316 = !{!221, !182, i64 0}
!317 = !{!"branch_weights", i32 212844, i32 32359}
!318 = !{!319, !182, i64 16}
!319 = !{!"df_lr_bb_info", !182, i64 0, !182, i64 8, !182, i64 16, !182, i64 24}
!320 = !{!"branch_weights", i32 1, i32 32358}
!321 = !{!319, !182, i64 24}
!322 = !{!"branch_weights", i32 1, i32 270436}
!323 = !{!"branch_weights", i32 208770, i32 61667}
!324 = !{!"branch_weights", i32 3674, i32 57994}
!325 = !{!"branch_weights", i32 3671, i32 4}
!326 = !{!"branch_weights", i32 2791, i32 881}
!327 = !{!190, !182, i64 176}
!328 = !{!"branch_weights", i32 881, i32 777043}
!329 = !{!"branch_weights", i32 32358, i32 238078}
!330 = distinct !{!330, !196}
!331 = !{!"function_entry_count", i64 1234378}
!332 = !{!"ira-emit.c:ei_next"}
!333 = !{!"branch_weights", i32 1, i32 1234379}
!334 = !{!"branch_weights", i32 1234379, i32 1}
!335 = !{!336, !188, i64 0}
!336 = !{!"", !188, i64 0, !182, i64 8}
!337 = !{!"function_entry_count", i64 310816}
!338 = !{!"ira-emit.c:unify_moves"}
!339 = !{!"branch_weights", i32 155409, i32 155409}
!340 = !{!"branch_weights", i32 2325, i32 308493}
!341 = !{!"branch_weights", i32 24415, i32 284079}
!342 = !{!"branch_weights", i32 143445, i32 140635}
!343 = !{!"branch_weights", i32 29880, i32 113566}
!344 = !{!"branch_weights", i32 68768, i32 101746}
!345 = !{!"branch_weights", i32 0, i32 68768}
!346 = distinct !{!346, !196}
!347 = !{!"ira-emit.c:VEC_move_t_heap_alloc"}
!348 = !{!"ira-emit.c:emit_moves"}
!349 = distinct !{!349, !196}
!350 = !{!"branch_weights", i32 149353, i32 6057}
!351 = !{!"branch_weights", i32 6057, i32 1}
!352 = !{!211, !191, i64 72}
!353 = !{!211, !188, i64 88}
!354 = !{!"branch_weights", i32 1, i32 3464}
!355 = !{!"branch_weights", i32 1477, i32 4581}
!356 = !{!"branch_weights", i32 1, i32 6057}
!357 = !{!"branch_weights", i32 151651, i32 3759}
!358 = !{!"branch_weights", i32 3759, i32 1}
!359 = !{!"branch_weights", i32 1, i32 2700}
!360 = !{!"branch_weights", i32 234296, i32 12741}
!361 = !{!"branch_weights", i32 12741, i32 1}
!362 = !{!221, !188, i64 52}
!363 = !{!"branch_weights", i32 1, i32 7961}
!364 = !{!"branch_weights", i32 5614, i32 7128}
!365 = distinct !{!365, !196}
!366 = !{!"ira-emit.c:add_ranges_and_copies"}
!367 = distinct !{!367, !196}
!368 = !{!"branch_weights", i32 155409, i32 1}
!369 = !{!"branch_weights", i32 1, i32 97883}
!370 = !{!"branch_weights", i32 247036, i32 1}
!371 = !{!"branch_weights", i32 1, i32 142264}
!372 = distinct !{!372, !196}
!373 = !{!"function_entry_count", i64 626618}
!374 = !{!"ira-emit.c:free_move_list"}
!375 = !{!"branch_weights", i32 565788, i32 60831}
!376 = !{!"branch_weights", i32 60831, i32 0}
!377 = distinct !{!377, !196}
!378 = !{!"ira-emit.c:VEC_move_t_heap_free"}
!379 = !{!"branch_weights", i32 1, i32 1476}
!380 = !{!"function_entry_count", i64 750570}
!381 = !{!"ira-emit.c:recog_memoized"}
!382 = !{!"branch_weights", i32 62927, i32 687645}
!383 = !{!"function_entry_count", i64 6265650}
!384 = !{!"ira-emit.c:change_regs"}
!385 = !{!"branch_weights", i32 676299, i32 5589353}
!386 = !{!"branch_weights", i32 1461118, i32 4128236}
!387 = !{!"branch_weights", i32 -1712021732, i32 2058184788}
!388 = !{!"branch_weights", i32 859, i32 812305}
!389 = !{!"branch_weights", i32 708557, i32 103749}
!390 = !{!"branch_weights", i32 1, i32 4128235}
!391 = !{!"branch_weights", i32 -683147740, i32 -606181317, i32 35994177}
!392 = !{!"branch_weights", i32 300835, i32 5227090}
!393 = !{!394, !188, i64 0}
!394 = !{!"rtvec_def", !188, i64 0, !183, i64 8}
!395 = !{!"branch_weights", i32 53939, i32 1}
!396 = !{!"branch_weights", i32 11077, i32 97710}
!397 = !{!"branch_weights", i32 54847, i32 53939}
!398 = distinct !{!398, !196}
!399 = !{!"branch_weights", i32 6866212, i32 4128235}
!400 = distinct !{!400, !196}
!401 = !{!"function_entry_count", i64 102423}
!402 = !{!"ira-emit.c:bmp_iter_set_init"}
!403 = !{!404, !182, i64 0}
!404 = !{!"bitmap_head_def", !182, i64 0, !182, i64 8, !188, i64 16, !182, i64 24}
!405 = !{!406, !182, i64 0}
!406 = !{!"", !182, i64 0, !182, i64 8, !188, i64 16, !191, i64 24}
!407 = !{!406, !182, i64 8}
!408 = !{!"branch_weights", i32 1616, i32 100809}
!409 = !{!410, !188, i64 16}
!410 = !{!"bitmap_element_def", !182, i64 0, !182, i64 8, !188, i64 16, !183, i64 24}
!411 = !{!"branch_weights", i32 90356, i32 12069}
!412 = !{!406, !188, i64 16}
!413 = !{!406, !191, i64 24}
!414 = !{!"function_entry_count", i64 1226245}
!415 = !{!"ira-emit.c:bmp_iter_set"}
!416 = !{!"branch_weights", i32 403204, i32 823043}
!417 = !{!"branch_weights", i32 1123822, i32 1}
!418 = !{!"branch_weights", i32 9131531, i32 1123822}
!419 = distinct !{!419, !196}
!420 = !{!"branch_weights", i32 1, i32 314249}
!421 = !{!"branch_weights", i32 225296, i32 300781}
!422 = !{!"branch_weights", i32 314249, i32 211827}
!423 = distinct !{!423, !196}
!424 = !{!410, !182, i64 0}
!425 = !{!"branch_weights", i32 102424, i32 211827}
!426 = !{!"function_entry_count", i64 2079806}
!427 = !{!"ira-emit.c:rhs_regno"}
!428 = !{!"function_entry_count", i64 34112}
!429 = !{!"ira-emit.c:set_allocno_reg"}
!430 = !{!190, !182, i64 32}
!431 = !{!"branch_weights", i32 1, i32 34112}
!432 = !{!190, !182, i64 80}
!433 = !{!"branch_weights", i32 33653, i32 460}
!434 = !{!"branch_weights", i32 156507, i32 48615}
!435 = !{!"branch_weights", i32 34112, i32 171009}
!436 = distinct !{!436, !196}
!437 = !{!"branch_weights", i32 460, i32 0}
!438 = distinct !{!438, !196}
!439 = !{!"branch_weights", i32 27910, i32 88392}
!440 = !{!"branch_weights", i32 60262, i32 28131}
!441 = !{!"branch_weights", i32 20949, i32 67223}
!442 = !{!"branch_weights", i32 891602656, i32 1255880992}
!443 = !{!"branch_weights", i32 54280, i32 13165}
!444 = !{!"function_entry_count", i64 34156}
!445 = !{!"ira-emit.c:create_new_reg"}
!446 = !{!"branch_weights", i32 34157, i32 1166734807}
!447 = !{!"function_entry_count", i64 1123822}
!448 = !{!"ira-emit.c:bmp_iter_next"}
!449 = !{!"function_entry_count", i64 205120}
!450 = !{!"ira-emit.c:subloop_tree_node_p"}
!451 = !{!"branch_weights", i32 1, i32 156506}
!452 = !{!"branch_weights", i32 48615, i32 552648}
!453 = !{!"branch_weights", i32 156506, i32 444756}
!454 = distinct !{!454, !196}
!455 = !{!"function_entry_count", i64 15181}
!456 = !{!"ira-emit.c:VEC_loop_p_base_iterate"}
!457 = !{!"branch_weights", i32 1, i32 15182}
!458 = !{!459, !188, i64 0}
!459 = !{!"VEC_loop_p_base", !188, i64 0, !188, i64 4, !183, i64 8}
!460 = !{!"branch_weights", i32 13707, i32 1476}
!461 = !{!"function_entry_count", i64 13216}
!462 = !{!"ira-emit.c:entered_from_non_parent_p"}
!463 = !{!"branch_weights", i32 1, i32 13155}
!464 = !{!"branch_weights", i32 11705, i32 155221}
!465 = !{!"branch_weights", i32 1, i32 155159}
!466 = !{!"branch_weights", i32 1476, i32 244825}
!467 = !{!"branch_weights", i32 212571, i32 32255}
!468 = !{!"branch_weights", i32 1513689430, i32 1257174330}
!469 = distinct !{!469, !196}
!470 = !{!"branch_weights", i32 12118, i32 20138}
!471 = !{!"branch_weights", i32 147597363, i32 1498017}
!472 = distinct !{!472, !196}
!473 = !{!"branch_weights", i32 62, i32 12057}
!474 = !{!"branch_weights", i32 155159, i32 91141}
!475 = distinct !{!475, !196}
!476 = !{!"branch_weights", i32 13155, i32 153770}
!477 = distinct !{!477, !196}
!478 = !{!"ira-emit.c:ei_end_p"}
!479 = !{!"branch_weights", i32 1, i32 2011231}
!480 = !{!"function_entry_count", i64 1234439}
!481 = !{!"ira-emit.c:ei_edge"}
!482 = !{!"branch_weights", i32 1, i32 1234440}
!483 = !{!"function_entry_count", i64 4035429}
!484 = !{!"ira-emit.c:VEC_edge_base_length"}
!485 = !{!"branch_weights", i32 1, i32 4035430}
!486 = !{!487, !188, i64 0}
!487 = !{!"VEC_edge_base", !188, i64 0, !188, i64 4, !183, i64 8}
!488 = !{!"function_entry_count", i64 8960094}
!489 = !{!"ira-emit.c:ei_container"}
!490 = !{!"branch_weights", i32 1, i32 8960095}
!491 = !{!"function_entry_count", i64 2076194}
!492 = !{!"ira-emit.c:VEC_edge_base_index"}
!493 = !{!"function_entry_count", i64 1107679}
!494 = !{!"ira-emit.c:df_lr_get_bb_info"}
!495 = !{!496, !188, i64 16}
!496 = !{!"dataflow", !182, i64 0, !182, i64 8, !188, i64 16, !182, i64 24, !182, i64 32, !182, i64 40, !188, i64 48, !183, i64 52, !183, i64 53, !183, i64 54}
!497 = !{!"branch_weights", i32 1107680, i32 1}
!498 = !{!496, !182, i64 8}
!499 = !{!"function_entry_count", i64 3670}
!500 = !{!"ira-emit.c:store_can_be_removed_p"}
!501 = !{!"branch_weights", i32 127, i32 629249}
!502 = distinct !{!502, !196}
!503 = !{!"branch_weights", i32 881, i32 4037}
!504 = !{!255, !182, i64 200}
!505 = !{!"branch_weights", i32 1249, i32 2789}
!506 = !{!"branch_weights", i32 1247, i32 3}
!507 = !{!"function_entry_count", i64 60830}
!508 = !{!"ira-emit.c:create_move"}
!509 = !{!187, !182, i64 32}
!510 = !{!187, !188, i64 28}
!511 = !{!187, !182, i64 40}
!512 = !{!187, !183, i64 24}
!513 = !{!"function_entry_count", i64 60786}
!514 = !{!"ira-emit.c:add_to_edge_list"}
!515 = !{!"function_entry_count", i64 308492}
!516 = !{!"ira-emit.c:eq_edge_move_lists_p"}
!517 = !{!"branch_weights", i32 180419, i32 284079}
!518 = !{!"branch_weights", i32 24415, i32 156005}
!519 = distinct !{!519, !196}
!520 = !{!"function_entry_count", i64 180418}
!521 = !{!"ira-emit.c:eq_move_lists_p"}
!522 = !{!"branch_weights", i32 2435, i32 177803}
!523 = !{!"branch_weights", i32 2313, i32 123}
!524 = !{!"branch_weights", i32 2254, i32 60}
!525 = !{!"branch_weights", i32 15754, i32 166919}
!526 = !{!"branch_weights", i32 0, i32 2435}
!527 = distinct !{!527, !196}
!528 = !{!"function_entry_count", i64 22554}
!529 = !{!"ira-emit.c:modify_move_list"}
!530 = !{!"branch_weights", i32 1, i32 22554}
!531 = !{!"branch_weights", i32 2713, i32 56638}
!532 = !{!"branch_weights", i32 1, i32 56637}
!533 = !{!"branch_weights", i32 56637, i32 37}
!534 = distinct !{!534, !196}
!535 = !{!"branch_weights", i32 22554, i32 36796}
!536 = distinct !{!536, !196}
!537 = !{!"branch_weights", i32 54895, i32 4456}
!538 = !{!"branch_weights", i32 1, i32 54894}
!539 = !{!"branch_weights", i32 52526, i32 2405}
!540 = !{!"branch_weights", i32 54894, i32 36}
!541 = distinct !{!541, !196}
!542 = !{!"branch_weights", i32 50410, i32 2117}
!543 = distinct !{!543, !196}
!544 = distinct !{!544, !196}
!545 = distinct !{!545, !196}
!546 = !{!"branch_weights", i32 22554, i32 1}
!547 = !{!"branch_weights", i32 22555, i32 36796}
!548 = !{!"branch_weights", i32 36796, i32 22554}
!549 = distinct !{!549, !196}
!550 = !{!"branch_weights", i32 45, i32 54886}
!551 = !{!"branch_weights", i32 45, i32 1}
!552 = !{!190, !188, i64 136}
!553 = !{!190, !188, i64 120}
!554 = !{!190, !188, i64 124}
!555 = !{!"branch_weights", i32 45, i32 2071}
!556 = distinct !{!556, !196}
!557 = distinct !{!557, !196}
!558 = distinct !{!558, !196}
!559 = !{!"branch_weights", i32 45, i32 22510}
!560 = !{!"branch_weights", i32 0, i32 45}
!561 = distinct !{!561, !196}
!562 = !{!"ira-emit.c:emit_move_list"}
!563 = !{!"branch_weights", i32 1, i32 59393}
!564 = !{!"branch_weights", i32 59393, i32 1}
!565 = distinct !{!565, !196}
!566 = !{!"branch_weights", i32 2757, i32 56638}
!567 = !{!"branch_weights", i32 2754, i32 4}
!568 = !{!569, !569, i64 0}
!569 = !{!"short", !183, i64 0}
!570 = !{!"branch_weights", i32 4497, i32 52142}
!571 = !{i32 0, i32 65536}
!572 = !{!"branch_weights", i32 22554, i32 36840}
!573 = distinct !{!573, !196}
!574 = !{!"function_entry_count", i64 45108}
!575 = !{!"ira-emit.c:VEC_move_t_base_truncate"}
!576 = !{!"branch_weights", i32 1, i32 45109}
!577 = !{!578, !188, i64 0}
!578 = !{!"VEC_move_t_base", !188, i64 0, !188, i64 4, !183, i64 8}
!579 = !{!"function_entry_count", i64 61465}
!580 = !{!"ira-emit.c:traverse_moves"}
!581 = !{!"branch_weights", i32 59350, i32 2117}
!582 = !{!"branch_weights", i32 2117, i32 57233}
!583 = !{!"branch_weights", i32 0, i32 2117}
!584 = distinct !{!584, !196}
!585 = !{!"ira-emit.c:VEC_move_t_base_length"}
!586 = !{!"function_entry_count", i64 59393}
!587 = !{!"ira-emit.c:VEC_move_t_base_index"}
!588 = !{!"ira-emit.c:VEC_move_t_base_last"}
!589 = !{!"ira-emit.c:VEC_move_t_heap_safe_push"}
!590 = !{!"ira-emit.c:VEC_move_t_heap_reserve"}
!591 = !{!"branch_weights", i32 1, i32 59394}
!592 = !{!"ira-emit.c:VEC_move_t_base_quick_push"}
!593 = !{!"ira-emit.c:VEC_move_t_base_space"}
!594 = !{!578, !188, i64 4}
!595 = !{!"function_entry_count", i64 52141}
!596 = !{!"ira-emit.c:ira_get_register_move_cost"}
!597 = !{!"branch_weights", i32 1, i32 52142}
!598 = !{!"function_entry_count", i64 557851}
!599 = !{!"ira-emit.c:add_range_and_copies_from_move_list"}
!600 = !{!"branch_weights", i32 535298, i32 22555}
!601 = !{!"branch_weights", i32 22554, i32 194289}
!602 = distinct !{!602, !196}
!603 = !{!190, !182, i64 128}
!604 = !{!"branch_weights", i32 45, i32 59350}
!605 = !{!"branch_weights", i32 59394, i32 -767260665}
!606 = !{!607, !188, i64 0}
!607 = !{!"ira_allocno_copy", !188, i64 0, !182, i64 8, !182, i64 16, !188, i64 24, !183, i64 28, !182, i64 32, !182, i64 40, !182, i64 48, !182, i64 56, !182, i64 64, !182, i64 72}
!608 = !{!607, !182, i64 8}
!609 = !{!607, !182, i64 16}
!610 = !{!190, !182, i64 112}
!611 = !{!612, !188, i64 12}
!612 = !{!"ira_allocno_live_range", !182, i64 0, !188, i64 8, !188, i64 12, !182, i64 16, !182, i64 24, !182, i64 32}
!613 = !{!"branch_weights", i32 59350, i32 45}
!614 = !{!"branch_weights", i32 59350, i32 -772485445}
!615 = !{!612, !188, i64 8}
!616 = !{!"branch_weights", i32 22555, i32 36839}
!617 = distinct !{!617, !196}
!618 = distinct !{!618, !196}
!619 = !{!"branch_weights", i32 157125, i32 370}
!620 = !{!"branch_weights", i32 19686, i32 -1194402605}
!621 = !{!"branch_weights", i32 22554, i32 134940}
!622 = distinct !{!622, !196}
!623 = !{!"function_entry_count", i64 118786}
!624 = !{!"ira-emit.c:update_costs"}
!625 = !{!190, !188, i64 60}
!626 = !{!"branch_weights", i32 233287, i32 121593}
!627 = !{!"branch_weights", i32 118783, i32 114505}
!628 = !{!"branch_weights", i32 5, i32 114501}
!629 = !{!"ira-emit.c:free_move"}
!630 = !{!"branch_weights", i32 5937, i32 54895}
