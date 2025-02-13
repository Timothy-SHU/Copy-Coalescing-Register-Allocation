; ModuleID = 'tree-ssa-threadupdate.c'
source_filename = "tree-ssa-threadupdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.thread_stats_d = type { i64 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.loop_iterator = type { ptr, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.local_info = type { ptr, ptr, i8 }
%struct.redirection_data = type { ptr, ptr, ptr, i8 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.el = type { ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }

@thread_stats = dso_local local_unnamed_addr global %struct.thread_stats_d zeroinitializer, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [24 x i8] c"tree-ssa-threadupdate.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@threaded_edges = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"Jumps threaded\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@redirection_data = internal unnamed_addr global ptr null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"  Threaded jump %d --> %d to %d\0A\00", align 1
@mfb_kj_edge = external local_unnamed_addr global ptr, align 8
@dbds_ce_stop = internal unnamed_addr global ptr null, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @thread_through_all_blocks(i8 noundef zeroext %0) local_unnamed_addr #0 !prof !207 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.loop_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %6 = load ptr, ptr @cfun, align 8, !tbaa !208
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !212
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !215

10:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1042, ptr noundef nonnull @.str.1) #16
  br label %11

11:                                               ; preds = %1, %10
  %12 = load ptr, ptr @threaded_edges, align 8, !tbaa !208
  %13 = icmp eq ptr %12, null
  br i1 %13, label %70, label %14, !prof !216

14:                                               ; preds = %11
  %15 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  store i64 0, ptr @thread_stats, align 8
  tail call fastcc void @mark_threaded_blocks(ptr noundef %15) #17
  tail call void @initialize_original_copy_tables() #16
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %15, ptr noundef nonnull %2) #17
  %16 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #17, !range !217
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %41, label %18, !prof !218

18:                                               ; preds = %14
  %19 = load ptr, ptr @cfun, align 8, !tbaa !208
  br label %20

20:                                               ; preds = %18, %36
  %21 = phi ptr [ %37, %36 ], [ %19, %18 ]
  %22 = phi i8 [ %38, %36 ], [ 0, %18 ]
  %23 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !219
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !220
  %27 = load i32, ptr %2, align 4, !tbaa !222
  %28 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %26, i32 noundef %27) #17
  %29 = load ptr, ptr %28, align 8, !tbaa !223
  %30 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %29) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32, !prof !226

32:                                               ; preds = %20
  %33 = tail call fastcc zeroext i8 @thread_block(ptr noundef nonnull %28, i8 noundef zeroext 1) #17
  %34 = or i8 %33, %22
  %35 = load ptr, ptr @cfun, align 8, !tbaa !208
  br label %36

36:                                               ; preds = %32, %20
  %37 = phi ptr [ %35, %32 ], [ %21, %20 ]
  %38 = phi i8 [ %34, %32 ], [ %22, %20 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #17
  %39 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #17, !range !217
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %20, !prof !227, !llvm.loop !228

41:                                               ; preds = %36, %14
  %42 = phi i8 [ 0, %14 ], [ %38, %36 ]
  call fastcc void @fel_init(ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  %43 = load ptr, ptr %4, align 8, !tbaa !208
  %44 = icmp eq ptr %43, null
  br i1 %44, label %63, label %45, !prof !218

45:                                               ; preds = %41, %59
  %46 = phi ptr [ %61, %59 ], [ %43, %41 ]
  %47 = phi i8 [ %60, %59 ], [ %42, %41 ]
  %48 = getelementptr inbounds %struct.loop, ptr %46, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !230
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51, !prof !234

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 9
  %53 = load i32, ptr %52, align 8, !tbaa !235
  %54 = tail call i32 @bitmap_bit_p(ptr noundef %15, i32 noundef %53) #16
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56, !prof !236

56:                                               ; preds = %51
  %57 = tail call fastcc zeroext i8 @thread_through_loop_header(ptr noundef nonnull %46, i8 noundef zeroext %0) #17
  %58 = or i8 %57, %47
  br label %59

59:                                               ; preds = %45, %51, %56
  %60 = phi i8 [ %58, %56 ], [ %47, %51 ], [ %47, %45 ]
  call fastcc void @fel_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #17
  %61 = load ptr, ptr %4, align 8, !tbaa !208
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %45, !prof !237, !llvm.loop !238

63:                                               ; preds = %59, %41
  %64 = phi i8 [ %42, %41 ], [ %60, %59 ]
  %65 = load ptr, ptr @cfun, align 8, !tbaa !208
  %66 = load i64, ptr @thread_stats, align 8, !tbaa !239
  %67 = trunc i64 %66 to i32
  tail call void @statistics_counter_event(ptr noundef %65, ptr noundef nonnull @.str.2, i32 noundef %67) #16
  tail call void @free_original_copy_tables() #16
  tail call void @bitmap_obstack_free(ptr noundef %15) #16
  tail call fastcc void @VEC_edge_heap_free() #17
  store ptr null, ptr @threaded_edges, align 8, !tbaa !208
  %68 = icmp eq i8 %64, 0
  br i1 %68, label %70, label %69, !prof !241

69:                                               ; preds = %63
  tail call fastcc void @loops_state_set() #17
  br label %70

70:                                               ; preds = %63, %69, %11
  %71 = phi i8 [ 0, %11 ], [ %64, %69 ], [ 0, %63 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret i8 %71
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_threaded_blocks(ptr noundef %0) unnamed_addr #0 !prof !242 !PGOFuncName !243 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #15
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %7 = load ptr, ptr @threaded_edges, align 8
  %8 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %7) #17
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10, !prof !218

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %23, %10 ], [ %7, %1 ]
  %12 = phi i32 [ %22, %10 ], [ 0, %1 ]
  %13 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %11, i32 noundef %12) #17
  %14 = or disjoint i32 %12, 1
  %15 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %11, i32 noundef %14) #17
  %16 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 3
  store ptr %15, ptr %16, align 8, !tbaa !244
  %17 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !246
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !235
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %20) #16
  %22 = add i32 %12, 2
  %23 = load ptr, ptr @threaded_edges, align 8
  %24 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %23) #17
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %10, label %26, !prof !247, !llvm.loop !248

26:                                               ; preds = %10, %1
  %27 = phi i32 [ 0, %1 ], [ %22, %10 ]
  store i32 %27, ptr %2, align 4, !tbaa !222
  %28 = load ptr, ptr @cfun, align 8, !tbaa !208
  %29 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %28) #16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %66, label %31, !prof !249

31:                                               ; preds = %26
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %6, ptr noundef nonnull %2) #17
  %32 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #17, !range !217
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %67, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, ptr %5, i64 8
  br label %36

36:                                               ; preds = %34, %63
  %37 = load ptr, ptr @cfun, align 8, !tbaa !208
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !219
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !220
  %42 = load i32, ptr %2, align 4, !tbaa !222
  %43 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %41, i32 noundef %42) #17
  %44 = load ptr, ptr %43, align 8, !tbaa !223
  %45 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %44) #17
  %46 = icmp ugt i32 %45, 1
  br i1 %46, label %47, label %61

47:                                               ; preds = %36
  %48 = tail call fastcc zeroext i8 @redirection_block_p(ptr noundef nonnull %43) #17, !range !217
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %43) #17
  store i32 0, ptr %5, align 8, !tbaa.struct !250
  store ptr %51, ptr %35, align 8, !tbaa.struct !251
  %52 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %51, ptr noundef nonnull %4) #17, !range !217
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %50, %54
  %55 = load ptr, ptr %4, align 8, !tbaa !208
  %56 = getelementptr inbounds %struct.edge_def, ptr %55, i64 0, i32 3
  store ptr null, ptr %56, align 8, !tbaa !244
  call fastcc void @ei_next(ptr noundef nonnull %5) #17
  %57 = load i32, ptr %5, align 8
  %58 = load ptr, ptr %35, align 8
  %59 = call fastcc zeroext i8 @ei_cond(i32 %57, ptr %58, ptr noundef nonnull %4) #17, !range !217
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %63, label %54, !llvm.loop !252

61:                                               ; preds = %47, %36
  %62 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %42) #16
  br label %63

63:                                               ; preds = %54, %50, %61
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #17
  %64 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #17, !range !217
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %67, label %36, !llvm.loop !253

66:                                               ; preds = %26
  tail call void @bitmap_copy(ptr noundef %0, ptr noundef %6) #16
  br label %67

67:                                               ; preds = %63, %31, %66
  tail call void @bitmap_obstack_free(ptr noundef %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret void
}

; Function Attrs: optsize
declare void @initialize_original_copy_tables() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 !prof !242 !PGOFuncName !254 {
  %4 = load ptr, ptr %1, align 8, !tbaa !255
  store ptr %4, ptr %0, align 8, !tbaa !257
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !259
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !260

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !257
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !261
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !263
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !264
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !265
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !222
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #5 !prof !266 !PGOFuncName !267 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !265
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !268

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !269

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !222
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !270, !llvm.loop !271

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !222
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !222
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !263
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !257
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !263
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !272

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !264
  store i64 %35, ptr %3, align 8, !tbaa !265
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !273

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !222
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !222
  %40 = load i32, ptr %23, align 8, !tbaa !263
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !263
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !274, !llvm.loop !275

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !276
  store ptr %44, ptr %0, align 8, !tbaa !257
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !277

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !261
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !222
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !265
  store i32 %16, ptr %1, align 4, !tbaa !222
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !278 !PGOFuncName !279 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !208
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !280 !PGOFuncName !281 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !282

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !283
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @thread_block(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !285 !PGOFuncName !286 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = alloca %struct.local_info, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !287
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !288
  %10 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %9) #17
  %11 = zext i32 %10 to i64
  %12 = tail call ptr @htab_create(i64 noundef %11, ptr noundef nonnull @redirection_data_hash, ptr noundef nonnull @redirection_data_eq, ptr noundef nonnull @free) #16
  store ptr %12, ptr @redirection_data, align 8, !tbaa !208
  %13 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !230
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %25, !prof !289

16:                                               ; preds = %2
  %17 = tail call ptr @loop_latch_edge(ptr noundef nonnull %7) #16
  store ptr %17, ptr %3, align 8, !tbaa !208
  %18 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !244
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !290

21:                                               ; preds = %16
  %22 = tail call zeroext i8 @loop_exit_edge_p(ptr noundef nonnull %7, ptr noundef nonnull %19) #16
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24, !prof !291

24:                                               ; preds = %21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  br label %25

25:                                               ; preds = %16, %21, %24, %2
  %26 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !250
  %27 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %26, ptr %27, align 8, !tbaa.struct !251
  %28 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %26, ptr noundef nonnull %3) #17, !range !217
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %72, label %30, !prof !292

30:                                               ; preds = %25
  %31 = icmp eq i8 %1, 0
  br label %32

32:                                               ; preds = %30, %64
  %33 = phi i8 [ 1, %30 ], [ %65, %64 ]
  %34 = load ptr, ptr %3, align 8, !tbaa !208
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !244
  %37 = icmp eq ptr %36, null
  br i1 %37, label %64, label %38, !prof !293

38:                                               ; preds = %32
  br i1 %31, label %49, label %39, !prof !294

39:                                               ; preds = %38
  %40 = load ptr, ptr %6, align 8, !tbaa !287
  %41 = getelementptr inbounds %struct.loop, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !230
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %44, label %49, !prof !295

44:                                               ; preds = %39
  %45 = tail call zeroext i8 @loop_exit_edge_p(ptr noundef nonnull %40, ptr noundef nonnull %36) #16
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %64, label %47, !prof !296

47:                                               ; preds = %44
  %48 = load ptr, ptr %35, align 8, !tbaa !244
  br label %49

49:                                               ; preds = %47, %39, %38
  %50 = phi ptr [ %48, %47 ], [ %36, %39 ], [ %36, %38 ]
  %51 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !246
  %53 = load ptr, ptr %34, align 8, !tbaa !297
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 11
  %55 = load i32, ptr %54, align 8, !tbaa !298
  %56 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 8
  %57 = load i32, ptr %56, align 4, !tbaa !299
  %58 = mul nsw i32 %57, %55
  %59 = add nsw i32 %58, 5000
  %60 = sdiv i32 %59, 10000
  %61 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 9
  %62 = load i64, ptr %61, align 8, !tbaa !300
  tail call void @update_bb_profile_for_threading(ptr noundef %52, i32 noundef %60, i64 noundef %62, ptr noundef %50) #16
  %63 = tail call fastcc ptr @lookup_redirection_data(ptr noundef nonnull %36, ptr noundef nonnull %34, i32 noundef 1) #17
  br label %64

64:                                               ; preds = %32, %44, %49
  %65 = phi i8 [ %33, %49 ], [ 0, %44 ], [ 0, %32 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %66 = load i32, ptr %4, align 8
  %67 = load ptr, ptr %27, align 8
  %68 = call fastcc zeroext i8 @ei_cond(i32 %66, ptr %67, ptr noundef nonnull %3) #17, !range !217
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %32, !prof !301, !llvm.loop !302

70:                                               ; preds = %64
  %71 = icmp eq i8 %65, 0
  br i1 %71, label %79, label %72, !prof !303

72:                                               ; preds = %25, %70
  %73 = load ptr, ptr %0, align 8, !tbaa !223
  %74 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %73, i32 noundef 0) #17
  %75 = getelementptr inbounds %struct.edge_def, ptr %74, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !244
  %77 = tail call fastcc ptr @lookup_redirection_data(ptr noundef %76, ptr noundef null, i32 noundef 0) #17
  %78 = getelementptr inbounds %struct.redirection_data, ptr %77, i64 0, i32 3
  store i8 1, ptr %78, align 8, !tbaa !304
  br label %79

79:                                               ; preds = %72, %70
  tail call void @free_dominance_info(i32 noundef 1) #16
  %80 = getelementptr inbounds %struct.local_info, ptr %5, i64 0, i32 1
  store ptr null, ptr %80, align 8, !tbaa !306
  store ptr %0, ptr %5, align 8, !tbaa !308
  %81 = getelementptr inbounds %struct.local_info, ptr %5, i64 0, i32 2
  store i8 0, ptr %81, align 8, !tbaa !309
  %82 = load ptr, ptr @redirection_data, align 8, !tbaa !208
  call void @htab_traverse(ptr noundef %82, ptr noundef nonnull @create_duplicates, ptr noundef nonnull %5) #16
  %83 = load ptr, ptr @redirection_data, align 8, !tbaa !208
  call void @htab_traverse(ptr noundef %83, ptr noundef nonnull @fixup_template_block, ptr noundef nonnull %5) #16
  %84 = load ptr, ptr @redirection_data, align 8, !tbaa !208
  call void @htab_traverse(ptr noundef %84, ptr noundef nonnull @redirect_edges, ptr noundef nonnull %5) #16
  %85 = load ptr, ptr @redirection_data, align 8, !tbaa !208
  call void @htab_delete(ptr noundef %85) #16
  store ptr null, ptr @redirection_data, align 8, !tbaa !208
  %86 = load i8, ptr %81, align 8, !tbaa !309
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i8 %86
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 !prof !278 !PGOFuncName !310 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !265
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !265
  %6 = load i32, ptr %1, align 4, !tbaa !222
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !222
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !242 !PGOFuncName !311 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !312
  %4 = load ptr, ptr @cfun, align 8, !tbaa !208
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !212
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !260

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !314
  store ptr null, ptr %1, align 8, !tbaa !208
  br label %43

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #17
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #17
  store ptr %11, ptr %0, align 8, !tbaa !314
  %12 = load ptr, ptr @cfun, align 8, !tbaa !208
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !212
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !315
  br label %17

17:                                               ; preds = %17, %9
  %18 = phi ptr [ %16, %9 ], [ %20, %17 ]
  %19 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !317
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17, !prof !318, !llvm.loop !319

22:                                               ; preds = %17, %40
  %23 = phi ptr [ %41, %40 ], [ %18, %17 ]
  %24 = load i32, ptr %23, align 8, !tbaa !320
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %28, !prof !321

26:                                               ; preds = %22
  %27 = load ptr, ptr %0, align 8, !tbaa !314
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %27, i32 noundef %24) #17
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !322
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32, !prof !323

32:                                               ; preds = %28, %32
  %33 = phi ptr [ %35, %32 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct.loop, ptr %33, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !317
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %32, !prof !324, !llvm.loop !325

37:                                               ; preds = %28
  %38 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %23) #17
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !326

40:                                               ; preds = %32, %37
  %41 = phi ptr [ %38, %37 ], [ %33, %32 ]
  br label %22

42:                                               ; preds = %37
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #17
  br label %43

43:                                               ; preds = %42, %8
  ret void
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @thread_through_loop_header(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !327 !PGOFuncName !328 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !230
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %7 = tail call ptr @loop_latch_edge(ptr noundef %0) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %8 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %6) #17, !range !217
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %121, !prof !329

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.edge_def, ptr %7, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !244
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !330

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !246
  br label %59

17:                                               ; preds = %10
  %18 = icmp eq i8 %1, 0
  br i1 %18, label %19, label %23, !prof !331

19:                                               ; preds = %17
  %20 = load ptr, ptr %5, align 8, !tbaa !230
  %21 = tail call fastcc zeroext i8 @redirection_block_p(ptr noundef %20) #17, !range !217
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %121, label %23, !prof !332

23:                                               ; preds = %19, %17
  %24 = tail call fastcc ptr @ei_start_1(ptr noundef %6) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !250
  %25 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %24, ptr %25, align 8, !tbaa.struct !251
  %26 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %24, ptr noundef nonnull %3) #17, !range !217
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %133, label %28, !prof !333

28:                                               ; preds = %23, %43
  %29 = phi ptr [ %45, %43 ], [ null, %23 ]
  %30 = phi ptr [ %44, %43 ], [ null, %23 ]
  %31 = load ptr, ptr %3, align 8, !tbaa !208
  %32 = getelementptr inbounds %struct.edge_def, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !244
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37, !prof !334

35:                                               ; preds = %28
  %36 = icmp eq ptr %31, %7
  br i1 %36, label %43, label %121, !prof !335

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.edge_def, ptr %33, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !246
  %40 = icmp eq ptr %30, null
  br i1 %40, label %43, label %41, !prof !335

41:                                               ; preds = %37
  %42 = icmp eq ptr %30, %39
  br i1 %42, label %43, label %121

43:                                               ; preds = %37, %41, %35
  %44 = phi ptr [ %30, %41 ], [ %30, %35 ], [ %39, %37 ]
  %45 = phi ptr [ %33, %41 ], [ %29, %35 ], [ %33, %37 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %46 = load i32, ptr %4, align 8
  %47 = load ptr, ptr %25, align 8
  %48 = call fastcc zeroext i8 @ei_cond(i32 %46, ptr %47, ptr noundef nonnull %3) #17, !range !217
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %28, !prof !336, !llvm.loop !337

50:                                               ; preds = %43
  %51 = icmp eq ptr %44, null
  br i1 %51, label %133, label %52, !prof !338

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !339
  %55 = icmp eq ptr %44, %54
  br i1 %55, label %56, label %59, !prof !340

56:                                               ; preds = %52
  %57 = tail call zeroext i8 @empty_block_p(ptr noundef nonnull %44) #16
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %121, !prof !341

59:                                               ; preds = %56, %52, %14
  %60 = phi ptr [ %16, %14 ], [ %44, %56 ], [ %44, %52 ]
  %61 = phi ptr [ %12, %14 ], [ %45, %56 ], [ %45, %52 ]
  %62 = tail call fastcc i32 @determine_bb_domination_status(ptr noundef nonnull %0, ptr noundef %60) #17, !range !342
  switch i32 %62, label %65 [
    i32 0, label %121
    i32 1, label %63
  ], !prof !343

63:                                               ; preds = %59
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %64 = tail call fastcc zeroext i8 @thread_block(ptr noundef %6, i8 noundef zeroext 0) #17
  br label %133

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !287
  %68 = getelementptr inbounds %struct.loop, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !230
  %70 = icmp eq ptr %69, %60
  br i1 %70, label %71, label %81, !prof !344

71:                                               ; preds = %65
  %72 = load ptr, ptr %60, align 8, !tbaa !223
  %73 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %72) #17
  %74 = icmp ugt i32 %73, 2
  br i1 %74, label %75, label %79, !prof !345

75:                                               ; preds = %71
  %76 = tail call ptr @create_preheader(ptr noundef nonnull %67, i32 noundef 0) #16
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 905, ptr noundef nonnull @.str.1) #16
  br label %81

79:                                               ; preds = %71
  %80 = tail call ptr @split_edge(ptr noundef %61) #16
  br label %81

81:                                               ; preds = %78, %75, %79, %65
  %82 = phi ptr [ %76, %75 ], [ null, %78 ], [ %80, %79 ], [ %60, %65 ]
  %83 = load ptr, ptr %11, align 8, !tbaa !244
  %84 = icmp eq ptr %83, null
  br i1 %84, label %93, label %85, !prof !346

85:                                               ; preds = %81
  %86 = tail call fastcc ptr @thread_single_edge(ptr noundef nonnull %7) #17
  %87 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  store ptr %86, ptr %87, align 8, !tbaa !339
  %88 = tail call fastcc ptr @single_succ(ptr noundef %86) #17
  %89 = icmp eq ptr %88, %82
  br i1 %89, label %91, label %90, !prof !347

90:                                               ; preds = %85
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 915, ptr noundef nonnull @.str.1) #16
  br label %91

91:                                               ; preds = %85, %90
  store ptr %82, ptr %5, align 8, !tbaa !230
  %92 = tail call fastcc zeroext i8 @thread_block(ptr noundef %6, i8 noundef zeroext 0) #17
  br label %133

93:                                               ; preds = %81
  %94 = tail call fastcc ptr @ei_start_1(ptr noundef %6) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !250
  %95 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %94, ptr %95, align 8, !tbaa.struct !251
  %96 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %94, ptr noundef nonnull %3) #17, !range !217
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %108, label %98, !prof !348

98:                                               ; preds = %93, %103
  %99 = load ptr, ptr %3, align 8, !tbaa !208
  %100 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !244
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %108, !prof !349

103:                                              ; preds = %98
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %104 = load i32, ptr %4, align 8
  %105 = load ptr, ptr %95, align 8
  %106 = call fastcc zeroext i8 @ei_cond(i32 %104, ptr %105, ptr noundef nonnull %3) #17, !range !217
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %98, !prof !350, !llvm.loop !351

108:                                              ; preds = %103, %98, %93
  %109 = tail call fastcc ptr @loop_outer(ptr noundef %0) #17
  tail call void @set_loop_copy(ptr noundef %0, ptr noundef %109) #16
  %110 = tail call fastcc zeroext i8 @thread_block(ptr noundef %6, i8 noundef zeroext 0) #17
  tail call void @set_loop_copy(ptr noundef %0, ptr noundef null) #16
  %111 = load ptr, ptr %3, align 8, !tbaa !208
  %112 = getelementptr inbounds %struct.edge_def, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !246
  %114 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  store ptr null, ptr %114, align 8, !tbaa !339
  %115 = tail call fastcc ptr @single_succ_edge(ptr noundef %113) #17
  store ptr %115, ptr @mfb_kj_edge, align 8, !tbaa !208
  %116 = getelementptr inbounds %struct.edge_def, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !246
  store ptr %117, ptr %5, align 8, !tbaa !230
  %118 = tail call ptr @make_forwarder_block(ptr noundef %82, ptr noundef nonnull @mfb_keep_just, ptr noundef null) #16
  %119 = load <2 x ptr>, ptr %118, align 8, !tbaa !208
  %120 = shufflevector <2 x ptr> %119, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %120, ptr %5, align 8, !tbaa !208
  br label %133

121:                                              ; preds = %41, %35, %59, %56, %19, %2
  %122 = tail call fastcc ptr @ei_start_1(ptr noundef %6) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !250
  %123 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %122, ptr %123, align 8, !tbaa.struct !251
  %124 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %122, ptr noundef nonnull %3) #17, !range !217
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %133, label %126, !prof !352

126:                                              ; preds = %121, %126
  %127 = load ptr, ptr %3, align 8, !tbaa !208
  %128 = getelementptr inbounds %struct.edge_def, ptr %127, i64 0, i32 3
  store ptr null, ptr %128, align 8, !tbaa !244
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  %129 = load i32, ptr %4, align 8
  %130 = load ptr, ptr %123, align 8
  %131 = call fastcc zeroext i8 @ei_cond(i32 %129, ptr %130, ptr noundef nonnull %3) #17, !range !217
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %126, !prof !353, !llvm.loop !354

133:                                              ; preds = %126, %23, %121, %91, %108, %50, %63
  %134 = phi i8 [ %64, %63 ], [ 0, %50 ], [ 1, %108 ], [ 1, %91 ], [ 0, %121 ], [ 0, %23 ], [ 0, %126 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i8 %134
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !355 !PGOFuncName !356 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !312
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !314
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #17, !range !357
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !358

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !312
  %13 = load i32, ptr %3, align 4, !tbaa !222
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #17
  store ptr %14, ptr %1, align 8, !tbaa !208
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !prof !359, !llvm.loop !360

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #17
  store ptr null, ptr %1, align 8, !tbaa !208
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret void
}

; Function Attrs: optsize
declare void @statistics_counter_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_original_copy_tables() local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free() unnamed_addr #8 !prof !242 !PGOFuncName !361 {
  %1 = load ptr, ptr @threaded_edges, align 8, !tbaa !208
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !260

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #17
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @threaded_edges, align 8, !tbaa !208
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @loops_state_set() unnamed_addr #9 !prof !362 !PGOFuncName !363 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !208
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !212
  %4 = load i32, ptr %3, align 8, !tbaa !364
  %5 = or i32 %4, 64
  store i32 %5, ptr %3, align 8, !tbaa !364
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !365 !PGOFuncName !366 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !208
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_size_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @redirection_block_p(ptr noundef %0) unnamed_addr #5 !prof !367 !PGOFuncName !368 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #17
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !217
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %26, !prof !369

5:                                                ; preds = %1, %15
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #17, !range !370
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %15, label %9, !prof !371

9:                                                ; preds = %5
  %10 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %6) #17, !range !217
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15, !prof !372

12:                                               ; preds = %9
  %13 = tail call fastcc zeroext i8 @gimple_nop_p(ptr noundef %6) #17, !range !217
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %18, label %15, !prof !373

15:                                               ; preds = %9, %5, %12
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %16 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !217
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %5, label %26, !prof !374, !llvm.loop !375

18:                                               ; preds = %12
  %19 = icmp eq ptr %6, null
  br i1 %19, label %26, label %20, !prof !376

20:                                               ; preds = %18
  %21 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %6) #17, !range !370
  %22 = trunc i32 %21 to i8
  switch i8 %22, label %23 [
    i8 1, label %26
    i8 3, label %26
  ], !prof !377

23:                                               ; preds = %20
  %24 = icmp eq i32 %21, 5
  %25 = zext i1 %24 to i8
  br label %26

26:                                               ; preds = %15, %1, %20, %20, %18, %23
  %27 = phi i8 [ 0, %18 ], [ 1, %20 ], [ %25, %23 ], [ 1, %20 ], [ 1, %1 ], [ 1, %15 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret i8 %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #10 !prof !378 !PGOFuncName !379 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !380 !PGOFuncName !381 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !217
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !382

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #17
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !208
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !383 !PGOFuncName !384 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !385

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #17
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #17
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !386

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.1) #16
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !387
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !387
  ret void
}

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 !prof !367 !PGOFuncName !389 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !392
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !393
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !394 !PGOFuncName !395 {
  %2 = load ptr, ptr %0, align 8, !tbaa !390
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !396 !PGOFuncName !397 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #11 !prof !398 !PGOFuncName !399 {
  %2 = load ptr, ptr %0, align 8, !tbaa !390
  %3 = load ptr, ptr %2, align 8, !tbaa !400
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !367 !PGOFuncName !402 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !370
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_nop_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !367 !PGOFuncName !403 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !370
  %3 = icmp eq i32 %2, 18
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #4 !prof !404 !PGOFuncName !405 {
  %2 = load ptr, ptr %0, align 8, !tbaa !390
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !406
  store ptr %4, ptr %0, align 8, !tbaa !390
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !407 !PGOFuncName !408 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !409
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !410

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !411
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !412

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !413
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 !prof !367 !PGOFuncName !415 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !376

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !416
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !418 !PGOFuncName !419 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !420

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #17
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !421 !PGOFuncName !422 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !423

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #17
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !424 !PGOFuncName !425 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !426

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.1) #16
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !208
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @redirection_data_hash(ptr nocapture noundef readonly %0) #11 !prof !427 !PGOFuncName !428 {
  %2 = getelementptr inbounds %struct.redirection_data, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !429
  %4 = getelementptr inbounds %struct.edge_def, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !246
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 8, !tbaa !235
  ret i32 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @redirection_data_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !prof !430 !PGOFuncName !431 {
  %3 = getelementptr inbounds %struct.redirection_data, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !429
  %5 = getelementptr inbounds %struct.redirection_data, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !429
  %7 = icmp eq ptr %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #12

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @loop_exit_edge_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_bb_profile_for_threading(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_redirection_data(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !427 !PGOFuncName !432 {
  %4 = tail call ptr @xmalloc(i64 noundef 32) #16
  %5 = getelementptr inbounds %struct.redirection_data, ptr %4, i64 0, i32 1
  store ptr %0, ptr %5, align 8, !tbaa !429
  store ptr null, ptr %4, align 8, !tbaa !433
  %6 = getelementptr inbounds %struct.redirection_data, ptr %4, i64 0, i32 3
  store i8 0, ptr %6, align 8, !tbaa !304
  %7 = getelementptr inbounds %struct.redirection_data, ptr %4, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !434
  %8 = load ptr, ptr @redirection_data, align 8, !tbaa !208
  %9 = tail call ptr @htab_find_slot(ptr noundef %8, ptr noundef nonnull %4, i32 noundef %2) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !435

11:                                               ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #17
  br label %26

12:                                               ; preds = %3
  %13 = load ptr, ptr %9, align 8, !tbaa !208
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18, !prof !436

15:                                               ; preds = %12
  store ptr %4, ptr %9, align 8, !tbaa !208
  %16 = tail call ptr @xmalloc(i64 noundef 16) #16
  store ptr %16, ptr %7, align 8, !tbaa !434
  store ptr %1, ptr %16, align 8, !tbaa !437
  %17 = getelementptr inbounds %struct.el, ptr %16, i64 0, i32 1
  store ptr null, ptr %17, align 8, !tbaa !439
  br label %26

18:                                               ; preds = %12
  tail call void @free(ptr noundef nonnull %4) #17
  %19 = load ptr, ptr %9, align 8, !tbaa !208
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %26, label %21, !prof !440

21:                                               ; preds = %18
  %22 = tail call ptr @xmalloc(i64 noundef 16) #16
  %23 = getelementptr inbounds %struct.redirection_data, ptr %19, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !434
  %25 = getelementptr inbounds %struct.el, ptr %22, i64 0, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !439
  store ptr %1, ptr %22, align 8, !tbaa !437
  store ptr %22, ptr %23, align 8, !tbaa !434
  br label %26

26:                                               ; preds = %18, %21, %15, %11
  %27 = phi ptr [ null, %11 ], [ %4, %15 ], [ %19, %21 ], [ %19, %18 ]
  ret ptr %27
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @create_duplicates(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 !prof !441 !PGOFuncName !442 {
  %3 = load ptr, ptr %0, align 8, !tbaa !208
  %4 = getelementptr inbounds %struct.redirection_data, ptr %3, i64 0, i32 3
  %5 = load i8, ptr %4, align 8, !tbaa !304
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %15, !prof !443

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.local_info, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !306
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14, !prof !444

11:                                               ; preds = %7
  %12 = load ptr, ptr %1, align 8, !tbaa !308
  tail call fastcc void @create_block_for_threading(ptr noundef %12, ptr noundef nonnull %3) #17
  %13 = load ptr, ptr %3, align 8, !tbaa !433
  store ptr %13, ptr %8, align 8, !tbaa !306
  br label %15

14:                                               ; preds = %7
  tail call fastcc void @create_block_for_threading(ptr noundef nonnull %9, ptr noundef nonnull %3) #17
  tail call fastcc void @create_edge_and_update_destination_phis(ptr noundef nonnull %3) #17
  br label %15

15:                                               ; preds = %11, %14, %2
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @fixup_template_block(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 !prof !445 !PGOFuncName !446 {
  %3 = load ptr, ptr %0, align 8, !tbaa !208
  %4 = load ptr, ptr %3, align 8, !tbaa !433
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6, !prof !447

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.local_info, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !306
  %9 = icmp eq ptr %4, %8
  br i1 %9, label %10, label %11, !prof !448

10:                                               ; preds = %6
  tail call fastcc void @create_edge_and_update_destination_phis(ptr noundef nonnull %3) #17
  br label %11

11:                                               ; preds = %2, %6, %10
  %12 = phi i32 [ 0, %10 ], [ 1, %6 ], [ 1, %2 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @redirect_edges(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 !prof !441 !PGOFuncName !449 {
  %3 = load ptr, ptr %0, align 8, !tbaa !208
  %4 = getelementptr inbounds %struct.redirection_data, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !434
  %6 = icmp eq ptr %5, null
  br i1 %6, label %117, label %7, !prof !450

7:                                                ; preds = %2, %110
  %8 = phi ptr [ %11, %110 ], [ %5, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !437
  %10 = getelementptr inbounds %struct.el, ptr %8, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !439
  tail call void @free(ptr noundef nonnull %8) #17
  %12 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 3
  store ptr null, ptr %12, align 8, !tbaa !244
  %13 = load i64, ptr @thread_stats, align 8, !tbaa !239
  %14 = add i64 %13, 1
  store i64 %14, ptr @thread_stats, align 8, !tbaa !239
  %15 = load ptr, ptr %3, align 8, !tbaa !433
  %16 = icmp eq ptr %15, null
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !208
  %18 = icmp eq ptr %17, null
  br i1 %16, label %64, label %19, !prof !451

19:                                               ; preds = %7
  br i1 %18, label %36, label %20, !prof !452

20:                                               ; preds = %19
  %21 = load i32, ptr @dump_flags, align 4, !tbaa !222
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %9, align 8, !tbaa !297
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !235
  %28 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !246
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 9
  %31 = load i32, ptr %30, align 8, !tbaa !235
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 9
  %33 = load i32, ptr %32, align 8, !tbaa !235
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %17, ptr noundef nonnull @.str.5, i32 noundef %27, i32 noundef %31, i32 noundef %33) #17
  %35 = load ptr, ptr %3, align 8, !tbaa !433
  br label %36

36:                                               ; preds = %24, %20, %19
  %37 = phi ptr [ %35, %24 ], [ %15, %20 ], [ %15, %19 ]
  %38 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 9
  %39 = load i64, ptr %38, align 8, !tbaa !300
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 8
  %41 = load i64, ptr %40, align 8, !tbaa !453
  %42 = add nsw i64 %41, %39
  store i64 %42, ptr %40, align 8, !tbaa !453
  %43 = load ptr, ptr %9, align 8, !tbaa !297
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 11
  %45 = load i32, ptr %44, align 8, !tbaa !298
  %46 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 8
  %47 = load i32, ptr %46, align 4, !tbaa !299
  %48 = mul nsw i32 %47, %45
  %49 = add nsw i32 %48, 5000
  %50 = sdiv i32 %49, 10000
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 11
  %52 = load i32, ptr %51, align 8, !tbaa !298
  %53 = add nsw i32 %50, %52
  store i32 %53, ptr %51, align 8, !tbaa !298
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !288
  %56 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %55, i32 noundef 0) #17
  %57 = getelementptr inbounds %struct.edge_def, ptr %56, i64 0, i32 9
  %58 = load i64, ptr %57, align 8, !tbaa !300
  %59 = add nsw i64 %58, %39
  store i64 %59, ptr %57, align 8, !tbaa !300
  %60 = tail call ptr @redirect_edge_and_branch(ptr noundef nonnull %9, ptr noundef %37) #16
  %61 = icmp eq ptr %9, %60
  br i1 %61, label %63, label %62, !prof !452

62:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 436, ptr noundef nonnull @.str.1) #16
  br label %63

63:                                               ; preds = %36, %62
  tail call void @flush_pending_stmts(ptr noundef %60) #16
  br label %110

64:                                               ; preds = %7
  br i1 %18, label %81, label %65, !prof !454

65:                                               ; preds = %64
  %66 = load i32, ptr @dump_flags, align 4, !tbaa !222
  %67 = and i32 %66, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %9, align 8, !tbaa !297
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 9
  %72 = load i32, ptr %71, align 8, !tbaa !235
  %73 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !246
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 9
  %76 = load i32, ptr %75, align 8, !tbaa !235
  %77 = load ptr, ptr %1, align 8, !tbaa !308
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 9
  %79 = load i32, ptr %78, align 8, !tbaa !235
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %17, ptr noundef nonnull @.str.5, i32 noundef %72, i32 noundef %76, i32 noundef %79) #17
  br label %81

81:                                               ; preds = %69, %65, %64
  %82 = getelementptr inbounds %struct.redirection_data, ptr %3, i64 0, i32 1
  %83 = load ptr, ptr %1, align 8, !tbaa !308
  %84 = load ptr, ptr %82, align 8, !tbaa !429
  %85 = getelementptr inbounds %struct.edge_def, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !246
  tail call fastcc void @remove_ctrl_stmt_and_useless_edges(ptr noundef %83, ptr noundef %86) #17
  %87 = load ptr, ptr %1, align 8, !tbaa !308
  %88 = tail call fastcc ptr @single_succ_edge(ptr noundef %87) #17
  %89 = getelementptr inbounds %struct.edge_def, ptr %88, i64 0, i32 7
  %90 = load i32, ptr %89, align 8, !tbaa !455
  %91 = and i32 %90, -3075
  store i32 %91, ptr %89, align 8, !tbaa !455
  %92 = load ptr, ptr %1, align 8, !tbaa !308
  %93 = tail call fastcc ptr @single_succ_edge(ptr noundef %92) #17
  %94 = getelementptr inbounds %struct.edge_def, ptr %93, i64 0, i32 7
  %95 = load i32, ptr %94, align 8, !tbaa !455
  %96 = or i32 %95, 1
  store i32 %96, ptr %94, align 8, !tbaa !455
  %97 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 9
  %98 = load i64, ptr %97, align 8, !tbaa !300
  %99 = load ptr, ptr %1, align 8, !tbaa !308
  %100 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 8
  store i64 %98, ptr %100, align 8, !tbaa !453
  %101 = load ptr, ptr %9, align 8, !tbaa !297
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %101, i64 0, i32 11
  %103 = load i32, ptr %102, align 8, !tbaa !298
  %104 = getelementptr inbounds %struct.edge_def, ptr %9, i64 0, i32 8
  %105 = load i32, ptr %104, align 4, !tbaa !299
  %106 = mul nsw i32 %105, %103
  %107 = add nsw i32 %106, 5000
  %108 = sdiv i32 %107, 10000
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %99, i64 0, i32 11
  store i32 %108, ptr %109, align 8, !tbaa !298
  br label %110

110:                                              ; preds = %81, %63
  %111 = icmp eq ptr %11, null
  br i1 %111, label %112, label %7, !prof !456, !llvm.loop !457

112:                                              ; preds = %110
  %113 = load ptr, ptr %4, align 8, !tbaa !434
  %114 = icmp eq ptr %113, null
  br i1 %114, label %117, label %115, !prof !338

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.local_info, ptr %1, i64 0, i32 2
  store i8 1, ptr %116, align 8, !tbaa !309
  br label %117

117:                                              ; preds = %2, %115, %112
  ret i32 1
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_block_for_threading(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !458 !PGOFuncName !459 {
  %3 = tail call ptr @duplicate_block(ptr noundef %0, ptr noundef null, ptr noundef null) #16
  store ptr %3, ptr %1, align 8, !tbaa !433
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 11
  store i32 0, ptr %4, align 8, !tbaa !298
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 8
  store i64 0, ptr %5, align 8, !tbaa !453
  tail call fastcc void @remove_ctrl_stmt_and_useless_edges(ptr noundef %3, ptr noundef null) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_edge_and_update_destination_phis(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !458 !PGOFuncName !460 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !433
  %4 = getelementptr inbounds %struct.redirection_data, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !429
  %6 = getelementptr inbounds %struct.edge_def, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !246
  %8 = tail call ptr @make_edge(ptr noundef %3, ptr noundef %7, i32 noundef 1) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  tail call void @rescan_loop_exit(ptr noundef %8, i8 noundef zeroext 1, i8 noundef zeroext 0) #16
  %9 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 8
  store i32 10000, ptr %9, align 4, !tbaa !299
  %10 = load ptr, ptr %0, align 8, !tbaa !433
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 8
  %12 = load i64, ptr %11, align 8, !tbaa !453
  %13 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 9
  store i64 %12, ptr %13, align 8, !tbaa !300
  %14 = load ptr, ptr %4, align 8, !tbaa !429
  %15 = getelementptr inbounds %struct.edge_def, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !244
  %17 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !244
  %18 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !246
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %19) #16
  %20 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !217
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %32, !prof !461

22:                                               ; preds = %1, %22
  %23 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  %24 = load ptr, ptr %4, align 8, !tbaa !429
  %25 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !462
  %27 = sext i32 %26 to i64
  %28 = call fastcc i32 @gimple_phi_arg_location(ptr noundef %23, i64 noundef %27) #17
  %29 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %23, i64 noundef %27) #17
  call void @add_phi_arg(ptr noundef %23, ptr noundef %29, ptr noundef %8, i32 noundef %28) #16
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %30 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !217
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %22, label %32, !prof !463, !llvm.loop !464

32:                                               ; preds = %22, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  ret void
}

; Function Attrs: optsize
declare ptr @duplicate_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_ctrl_stmt_and_useless_edges(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 !prof !465 !PGOFuncName !466 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #17
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17, !range !217
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %14, !prof !467

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !468

10:                                               ; preds = %7
  %11 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %8) #17, !range !370
  %12 = trunc i32 %11 to i8
  switch i8 %12, label %14 [
    i8 1, label %13
    i8 3, label %13
    i8 5, label %13
  ], !prof !469

13:                                               ; preds = %10, %10, %10
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #16
  br label %14

14:                                               ; preds = %10, %13, %7, %2
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %16 = call fastcc ptr @ei_start_1(ptr noundef nonnull %15) #17
  store i32 0, ptr %4, align 8, !tbaa.struct !250
  %17 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %16, ptr %17, align 8, !tbaa.struct !251
  %18 = call fastcc ptr @ei_safe_edge(i32 0, ptr %16) #17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %32, label %20, !prof !470

20:                                               ; preds = %14, %27
  %21 = phi ptr [ %30, %27 ], [ %18, %14 ]
  %22 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !246
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %26, label %25, !prof !471

25:                                               ; preds = %20
  call void @remove_edge(ptr noundef nonnull %21) #16
  br label %27

26:                                               ; preds = %20
  call fastcc void @ei_next(ptr noundef nonnull %4) #17
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, ptr %4, align 8
  %29 = load ptr, ptr %17, align 8
  %30 = call fastcc ptr @ei_safe_edge(i32 %28, ptr %29) #17
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %20, !prof !472, !llvm.loop !473

32:                                               ; preds = %27, %14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 !prof !465 !PGOFuncName !474 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !390
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !392
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !393
  ret void
}

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !475 !PGOFuncName !476 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !217
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7, !prof !477

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #6 !prof !465 !PGOFuncName !478 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !479

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !480
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rescan_loop_exit(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !481 !PGOFuncName !482 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #17
  %5 = getelementptr inbounds %struct.phi_arg_d, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !483
  ret i32 %6
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !481 !PGOFuncName !486 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #17
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #17
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !487 !PGOFuncName !488 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !411
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !489

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 3103, ptr noundef nonnull @.str.1) #16
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !481 !PGOFuncName !490 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !491
  %4 = load ptr, ptr %3, align 8, !tbaa !208
  ret ptr %4
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @flush_pending_stmts(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !492 !PGOFuncName !493 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #17, !range !217
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !494

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.1) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !288
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #17
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !495 !PGOFuncName !496 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !288
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #17
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !242 !PGOFuncName !497 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #16
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #11 !prof !242 !PGOFuncName !498 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !208
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !212
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !260

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !499
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #17
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #7 !prof !500 !PGOFuncName !501 {
  %3 = load i32, ptr %0, align 4, !tbaa !502
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !502
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !222
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !504 !PGOFuncName !505 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !506
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !507

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #17
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !508 !PGOFuncName !509 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !510

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !511
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !513 !PGOFuncName !514 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !208
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @empty_block_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @determine_bb_domination_status(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !515 !PGOFuncName !516 {
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !339
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %52, label %8, !prof !517

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !518
  %11 = zext i32 %10 to i64
  %12 = tail call ptr @xcalloc(i64 noundef %11, i64 noundef 8) #16
  %13 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !230
  store ptr %14, ptr @dbds_ce_stop, align 8, !tbaa !208
  %15 = load ptr, ptr %5, align 8, !tbaa !339
  %16 = load i32, ptr %9, align 4, !tbaa !518
  %17 = tail call i32 @dfs_enumerate_from(ptr noundef %15, i32 noundef 1, ptr noundef nonnull @dbds_continue_enumeration_p, ptr noundef %12, i32 noundef %16, ptr noundef %1) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %50, label %19, !prof !519

19:                                               ; preds = %8
  %20 = getelementptr inbounds i8, ptr %3, i64 8
  %21 = zext i32 %17 to i64
  br label %22

22:                                               ; preds = %19, %43
  %23 = phi i64 [ 0, %19 ], [ %45, %43 ]
  %24 = phi i8 [ 0, %19 ], [ %44, %43 ]
  %25 = getelementptr inbounds ptr, ptr %12, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !208
  %27 = tail call fastcc ptr @ei_start_1(ptr noundef %26) #17
  store i32 0, ptr %3, align 8, !tbaa.struct !250
  store ptr %27, ptr %20, align 8, !tbaa.struct !251
  %28 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %27, ptr noundef nonnull %4) #17, !range !217
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %43, label %30, !prof !520

30:                                               ; preds = %22, %36
  %31 = phi i8 [ %38, %36 ], [ %24, %22 ]
  %32 = load ptr, ptr %4, align 8, !tbaa !208
  %33 = load ptr, ptr %32, align 8, !tbaa !297
  %34 = load ptr, ptr %13, align 8, !tbaa !230
  %35 = icmp eq ptr %33, %34
  br i1 %35, label %50, label %36, !prof !521

36:                                               ; preds = %30
  %37 = icmp eq ptr %33, %1
  %38 = select i1 %37, i8 1, i8 %31, !prof !522
  call fastcc void @ei_next(ptr noundef nonnull %3) #17
  %39 = load i32, ptr %3, align 8
  %40 = load ptr, ptr %20, align 8
  %41 = call fastcc zeroext i8 @ei_cond(i32 %39, ptr %40, ptr noundef nonnull %4) #17, !range !217
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %30, !prof !523, !llvm.loop !524

43:                                               ; preds = %36, %22
  %44 = phi i8 [ %24, %22 ], [ %38, %36 ]
  %45 = add nuw nsw i64 %23, 1
  %46 = icmp eq i64 %45, %21
  br i1 %46, label %47, label %22, !prof !525, !llvm.loop !526

47:                                               ; preds = %43
  %48 = icmp eq i8 %44, 0
  %49 = select i1 %48, i32 1, i32 2
  br label %50

50:                                               ; preds = %30, %8, %47
  %51 = phi i32 [ 1, %8 ], [ %49, %47 ], [ 0, %30 ]
  tail call void @free(ptr noundef %12) #17
  br label %52

52:                                               ; preds = %50, %2
  %53 = phi i32 [ 2, %2 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret i32 %53
}

; Function Attrs: optsize
declare ptr @create_preheader(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @thread_single_edge(ptr noundef %0) unnamed_addr #0 !prof !527 !PGOFuncName !528 {
  %2 = alloca %struct.redirection_data, align 8
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !246
  %5 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !244
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #15
  store ptr null, ptr %5, align 8, !tbaa !244
  %7 = load i64, ptr @thread_stats, align 8, !tbaa !239
  %8 = add i64 %7, 1
  store i64 %8, ptr @thread_stats, align 8, !tbaa !239
  %9 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %4) #17, !range !217
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %18, label %11, !prof !347

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.edge_def, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !246
  tail call fastcc void @remove_ctrl_stmt_and_useless_edges(ptr noundef %4, ptr noundef %13) #17
  %14 = getelementptr inbounds %struct.edge_def, ptr %6, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !455
  %16 = and i32 %15, -3076
  %17 = or disjoint i32 %16, 1
  store i32 %17, ptr %14, align 8, !tbaa !455
  br label %64

18:                                               ; preds = %1
  %19 = load ptr, ptr %0, align 8, !tbaa !297
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 11
  %21 = load i32, ptr %20, align 8, !tbaa !298
  %22 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %23 = load i32, ptr %22, align 4, !tbaa !299
  %24 = mul nsw i32 %23, %21
  %25 = add nsw i32 %24, 5000
  %26 = sdiv i32 %25, 10000
  %27 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %28 = load i64, ptr %27, align 8, !tbaa !300
  tail call void @update_bb_profile_for_threading(ptr noundef %4, i32 noundef %26, i64 noundef %28, ptr noundef %6) #16
  %29 = getelementptr inbounds %struct.redirection_data, ptr %2, i64 0, i32 1
  store ptr %6, ptr %29, align 8, !tbaa !429
  call fastcc void @create_block_for_threading(ptr noundef %4, ptr noundef nonnull %2) #17
  call fastcc void @create_edge_and_update_destination_phis(ptr noundef nonnull %2) #17
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !208
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34, !prof !347

32:                                               ; preds = %18
  %33 = load ptr, ptr %2, align 8, !tbaa !433
  br label %49

34:                                               ; preds = %18
  %35 = load i32, ptr @dump_flags, align 4, !tbaa !222
  %36 = and i32 %35, 8
  %37 = icmp eq i32 %36, 0
  %38 = load ptr, ptr %2, align 8, !tbaa !433
  br i1 %37, label %49, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %0, align 8, !tbaa !297
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 9
  %42 = load i32, ptr %41, align 8, !tbaa !235
  %43 = load ptr, ptr %3, align 8, !tbaa !246
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !235
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %47 = load i32, ptr %46, align 8, !tbaa !235
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %30, ptr noundef nonnull @.str.5, i32 noundef %42, i32 noundef %45, i32 noundef %47) #17
  br label %49

49:                                               ; preds = %32, %39, %34
  %50 = phi ptr [ %33, %32 ], [ %38, %39 ], [ %38, %34 ]
  %51 = load i64, ptr %27, align 8, !tbaa !300
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 8
  store i64 %51, ptr %52, align 8, !tbaa !453
  %53 = load ptr, ptr %0, align 8, !tbaa !297
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 11
  %55 = load i32, ptr %54, align 8, !tbaa !298
  %56 = load i32, ptr %22, align 4, !tbaa !299
  %57 = mul nsw i32 %56, %55
  %58 = add nsw i32 %57, 5000
  %59 = sdiv i32 %58, 10000
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 11
  store i32 %59, ptr %60, align 8, !tbaa !298
  %61 = tail call fastcc ptr @single_succ_edge(ptr noundef %50) #17
  %62 = getelementptr inbounds %struct.edge_def, ptr %61, i64 0, i32 9
  store i64 %51, ptr %62, align 8, !tbaa !300
  %63 = tail call ptr @redirect_edge_and_branch(ptr noundef nonnull %0, ptr noundef %50) #16
  tail call void @flush_pending_stmts(ptr noundef nonnull %0) #16
  br label %64

64:                                               ; preds = %49, %11
  %65 = phi ptr [ %4, %11 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #15
  ret ptr %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !527 !PGOFuncName !529 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !246
  ret ptr %4
}

; Function Attrs: optsize
declare void @set_loop_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_forwarder_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @mfb_keep_just(ptr noundef) #2

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @dfs_enumerate_from(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @dbds_continue_enumeration_p(ptr noundef readnone %0, ptr noundef readnone %1) #14 !prof !530 !PGOFuncName !531 {
  %3 = icmp ne ptr %0, %1
  %4 = load ptr, ptr @dbds_ce_stop, align 8
  %5 = icmp ne ptr %4, %0
  %6 = select i1 %3, i1 %5, i1 false, !prof !532
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !527 !PGOFuncName !533 {
  %2 = load ptr, ptr %0, align 8, !tbaa !223
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #17
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 !prof !355 !PGOFuncName !534 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !535

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !502
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !321

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !222
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !222
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #11 !prof !500 !PGOFuncName !536 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !208
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !212
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !499
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #17
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #8 !prof !242 !PGOFuncName !537 {
  %2 = load ptr, ptr %0, align 8, !tbaa !208
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !260

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !208
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @register_jump_thread(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !538 {
  %3 = load ptr, ptr @threaded_edges, align 8, !tbaa !208
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !539

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @VEC_edge_heap_alloc() #17
  store ptr %6, ptr @threaded_edges, align 8, !tbaa !208
  br label %7

7:                                                ; preds = %5, %2
  tail call fastcc void @VEC_edge_heap_safe_push(ptr noundef %0) #17
  tail call fastcc void @VEC_edge_heap_safe_push(ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_edge_heap_alloc() unnamed_addr #0 !prof !242 !PGOFuncName !540 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #16
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !541 !PGOFuncName !542 {
  tail call fastcc void @VEC_edge_heap_reserve() #17
  %2 = load ptr, ptr @threaded_edges, align 8, !tbaa !208
  tail call fastcc void @VEC_edge_base_quick_push(ptr noundef %2, ptr noundef %0) #17
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_reserve() unnamed_addr #0 !prof !541 !PGOFuncName !543 {
  %1 = load ptr, ptr @threaded_edges, align 8, !tbaa !208
  %2 = tail call fastcc i32 @VEC_edge_base_space(ptr noundef %1) #17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !544

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #16
  store ptr %5, ptr @threaded_edges, align 8, !tbaa !208
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 !prof !541 !PGOFuncName !545 {
  %3 = load i32, ptr %0, align 8, !tbaa !283
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !283
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !208
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_space(ptr noundef readonly %0) unnamed_addr #6 !prof !541 !PGOFuncName !546 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !547

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !548
  %6 = load i32, ptr %0, align 8, !tbaa !283
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!206}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205}
!36 = !{ptr @thread_through_all_blocks, ptr @fancy_abort, i64 1}
!37 = !{ptr @thread_through_all_blocks, ptr @bitmap_obstack_alloc_stat, i64 3927}
!38 = !{ptr @thread_through_all_blocks, ptr @mark_threaded_blocks, i64 3927}
!39 = !{ptr @thread_through_all_blocks, ptr @initialize_original_copy_tables, i64 3927}
!40 = !{ptr @thread_through_all_blocks, ptr @bmp_iter_set_init, i64 3927}
!41 = !{ptr @thread_through_all_blocks, ptr @bmp_iter_set, i64 23059}
!42 = !{ptr @thread_through_all_blocks, ptr @VEC_basic_block_base_index, i64 19132}
!43 = !{ptr @thread_through_all_blocks, ptr @VEC_edge_base_length, i64 19132}
!44 = !{ptr @thread_through_all_blocks, ptr @thread_block, i64 19131}
!45 = !{ptr @thread_through_all_blocks, ptr @bmp_iter_next, i64 19132}
!46 = !{ptr @thread_through_all_blocks, ptr @fel_init, i64 3927}
!47 = !{ptr @thread_through_all_blocks, ptr @bitmap_bit_p, i64 27360}
!48 = !{ptr @thread_through_all_blocks, ptr @thread_through_loop_header, i64 2178}
!49 = !{ptr @thread_through_all_blocks, ptr @fel_next, i64 27368}
!50 = !{ptr @thread_through_all_blocks, ptr @statistics_counter_event, i64 3927}
!51 = !{ptr @thread_through_all_blocks, ptr @free_original_copy_tables, i64 3927}
!52 = !{ptr @thread_through_all_blocks, ptr @bitmap_obstack_free, i64 3927}
!53 = !{ptr @thread_through_all_blocks, ptr @VEC_edge_heap_free, i64 3927}
!54 = !{ptr @thread_through_all_blocks, ptr @loops_state_set, i64 3700}
!55 = !{ptr @mark_threaded_blocks, ptr @bitmap_obstack_alloc_stat, i64 3926}
!56 = !{ptr @mark_threaded_blocks, ptr @VEC_edge_base_length, i64 44506}
!57 = !{ptr @mark_threaded_blocks, ptr @VEC_edge_base_index, i64 81120}
!58 = !{ptr @mark_threaded_blocks, ptr @bitmap_set_bit, i64 40576}
!59 = !{ptr @mark_threaded_blocks, ptr @optimize_function_for_size_p, i64 3926}
!60 = !{ptr @mark_threaded_blocks, ptr @bmp_iter_set_init, i64 1}
!61 = !{ptr @mark_threaded_blocks, ptr @bmp_iter_set, i64 21}
!62 = !{ptr @mark_threaded_blocks, ptr @VEC_basic_block_base_index, i64 20}
!63 = !{ptr @mark_threaded_blocks, ptr @redirection_block_p, i64 10}
!64 = !{ptr @mark_threaded_blocks, ptr @ei_start_1, i64 4}
!65 = !{ptr @mark_threaded_blocks, ptr @ei_cond, i64 79}
!66 = !{ptr @mark_threaded_blocks, ptr @ei_next, i64 75}
!67 = !{ptr @mark_threaded_blocks, ptr @bmp_iter_next, i64 20}
!68 = !{ptr @mark_threaded_blocks, ptr @bitmap_copy, i64 3925}
!69 = !{ptr @mark_threaded_blocks, ptr @bitmap_obstack_free, i64 3926}
!70 = !{ptr @thread_block, ptr @VEC_edge_base_length, i64 20544}
!71 = !{ptr @thread_block, ptr @htab_create, i64 20544}
!72 = !{ptr @thread_block, ptr @loop_latch_edge, i64 3482}
!73 = !{ptr @thread_block, ptr @loop_exit_edge_p, i64 2439}
!74 = !{ptr @thread_block, ptr @ei_start_1, i64 20544}
!75 = !{ptr @thread_block, ptr @ei_cond, i64 88434}
!76 = !{ptr @thread_block, ptr @update_bb_profile_for_threading, i64 42592}
!77 = !{ptr @thread_block, ptr @lookup_redirection_data, i64 47693}
!78 = !{ptr @thread_block, ptr @ei_next, i64 67890}
!79 = !{ptr @thread_block, ptr @VEC_edge_base_index, i64 5101}
!80 = !{ptr @thread_block, ptr @free_dominance_info, i64 20544}
!81 = !{ptr @thread_block, ptr @htab_traverse, i64 61632}
!82 = !{ptr @thread_block, ptr @htab_delete, i64 20544}
!83 = !{ptr @fel_init, ptr @number_of_loops, i64 3925}
!84 = !{ptr @fel_init, ptr @VEC_int_heap_alloc, i64 3925}
!85 = !{ptr @fel_init, ptr @VEC_int_base_quick_push, i64 27358}
!86 = !{ptr @fel_init, ptr @loop_outer, i64 15709}
!87 = !{ptr @fel_init, ptr @fel_next, i64 3925}
!88 = !{ptr @thread_through_loop_header, ptr @loop_latch_edge, i64 2177}
!89 = !{ptr @thread_through_loop_header, ptr @single_succ_p, i64 2177}
!90 = !{ptr @thread_through_loop_header, ptr @redirection_block_p, i64 1656}
!91 = !{ptr @thread_through_loop_header, ptr @ei_start_1, i64 3693}
!92 = !{ptr @thread_through_loop_header, ptr @ei_cond, i64 8548}
!93 = !{ptr @thread_through_loop_header, ptr @ei_next, i64 4855}
!94 = !{ptr @thread_through_loop_header, ptr @empty_block_p, i64 417}
!95 = !{ptr @thread_through_loop_header, ptr @determine_bb_domination_status, i64 1573}
!96 = !{ptr @thread_through_loop_header, ptr @thread_block, i64 1408}
!97 = !{ptr @thread_through_loop_header, ptr @VEC_edge_base_length, i64 4}
!98 = !{ptr @thread_through_loop_header, ptr @create_preheader, i64 1}
!99 = !{ptr @thread_through_loop_header, ptr @split_edge, i64 3}
!100 = !{ptr @thread_through_loop_header, ptr @thread_single_edge, i64 115}
!101 = !{ptr @thread_through_loop_header, ptr @single_succ, i64 115}
!102 = !{ptr @thread_through_loop_header, ptr @fancy_abort, i64 1}
!103 = !{ptr @thread_through_loop_header, ptr @loop_outer, i64 1292}
!104 = !{ptr @thread_through_loop_header, ptr @set_loop_copy, i64 2584}
!105 = !{ptr @thread_through_loop_header, ptr @single_succ_edge, i64 1292}
!106 = !{ptr @thread_through_loop_header, ptr @make_forwarder_block, i64 1292}
!107 = !{ptr @fel_next, ptr @VEC_int_base_iterate, i64 31296}
!108 = !{ptr @fel_next, ptr @get_loop, i64 27369}
!109 = !{ptr @fel_next, ptr @VEC_int_heap_free, i64 3927}
!110 = !{ptr @VEC_edge_heap_free, ptr @free, i64 3925}
!111 = !{ptr @redirection_block_p, ptr @gsi_start_bb, i64 1658}
!112 = !{ptr @redirection_block_p, ptr @gsi_end_p, i64 1669}
!113 = !{ptr @redirection_block_p, ptr @gsi_stmt, i64 1656}
!114 = !{ptr @redirection_block_p, ptr @gimple_code, i64 3300}
!115 = !{ptr @redirection_block_p, ptr @is_gimple_debug, i64 1651}
!116 = !{ptr @redirection_block_p, ptr @gimple_nop_p, i64 1650}
!117 = !{ptr @redirection_block_p, ptr @gsi_next, i64 11}
!118 = !{ptr @ei_cond, ptr @ei_end_p, i64 163997}
!119 = !{ptr @ei_cond, ptr @ei_edge, i64 113938}
!120 = !{ptr @ei_next, ptr @ei_container, i64 250371}
!121 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 125186}
!122 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!123 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 1658}
!124 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 1658}
!125 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 1658}
!126 = !{ptr @gimple_nop_p, ptr @gimple_code, i64 1658}
!127 = !{ptr @ei_end_p, ptr @ei_container, i64 500659}
!128 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 251262}
!129 = !{ptr @ei_edge, ptr @ei_container, i64 336825}
!130 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 168413}
!131 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!132 = !{ptr @lookup_redirection_data, ptr @xmalloc, i64 90286}
!133 = !{ptr @lookup_redirection_data, ptr @htab_find_slot, i64 47694}
!134 = !{ptr @lookup_redirection_data, ptr @free, i64 22629}
!135 = !{ptr @create_duplicates, ptr @create_block_for_threading, i64 19966}
!136 = !{ptr @create_duplicates, ptr @create_edge_and_update_destination_phis, i64 1865}
!137 = !{ptr @fixup_template_block, ptr @create_edge_and_update_destination_phis, i64 18100}
!138 = !{ptr @redirect_edges, ptr @free, i64 42593}
!139 = !{ptr @redirect_edges, ptr @VEC_edge_base_index, i64 29884}
!140 = !{ptr @redirect_edges, ptr @redirect_edge_and_branch, i64 29884}
!141 = !{ptr @redirect_edges, ptr @fancy_abort, i64 1}
!142 = !{ptr @redirect_edges, ptr @flush_pending_stmts, i64 29884}
!143 = !{ptr @redirect_edges, ptr @remove_ctrl_stmt_and_useless_edges, i64 12709}
!144 = !{ptr @redirect_edges, ptr @single_succ_edge, i64 25418}
!145 = !{ptr @create_block_for_threading, ptr @duplicate_block, i64 20081}
!146 = !{ptr @create_block_for_threading, ptr @remove_ctrl_stmt_and_useless_edges, i64 20081}
!147 = !{ptr @create_edge_and_update_destination_phis, ptr @make_edge, i64 20081}
!148 = !{ptr @create_edge_and_update_destination_phis, ptr @rescan_loop_exit, i64 20081}
!149 = !{ptr @create_edge_and_update_destination_phis, ptr @gsi_start_phis, i64 20081}
!150 = !{ptr @create_edge_and_update_destination_phis, ptr @gsi_end_p, i64 31898}
!151 = !{ptr @create_edge_and_update_destination_phis, ptr @gsi_stmt, i64 11817}
!152 = !{ptr @create_edge_and_update_destination_phis, ptr @gimple_phi_arg_location, i64 11817}
!153 = !{ptr @create_edge_and_update_destination_phis, ptr @gimple_phi_arg_def, i64 11817}
!154 = !{ptr @create_edge_and_update_destination_phis, ptr @add_phi_arg, i64 11817}
!155 = !{ptr @create_edge_and_update_destination_phis, ptr @gsi_next, i64 11817}
!156 = !{ptr @remove_ctrl_stmt_and_useless_edges, ptr @gsi_last_bb, i64 32790}
!157 = !{ptr @remove_ctrl_stmt_and_useless_edges, ptr @gsi_end_p, i64 32790}
!158 = !{ptr @remove_ctrl_stmt_and_useless_edges, ptr @gsi_stmt, i64 28544}
!159 = !{ptr @remove_ctrl_stmt_and_useless_edges, ptr @gimple_code, i64 28543}
!160 = !{ptr @remove_ctrl_stmt_and_useless_edges, ptr @gsi_remove, i64 23317}
!161 = !{ptr @remove_ctrl_stmt_and_useless_edges, ptr @ei_start_1, i64 32790}
!162 = !{ptr @remove_ctrl_stmt_and_useless_edges, ptr @ei_safe_edge, i64 87264}
!163 = !{ptr @remove_ctrl_stmt_and_useless_edges, ptr @remove_edge, i64 41765}
!164 = !{ptr @remove_ctrl_stmt_and_useless_edges, ptr @ei_next, i64 12709}
!165 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 32790}
!166 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 32790}
!167 = !{ptr @ei_safe_edge, ptr @ei_end_p, i64 87265}
!168 = !{ptr @ei_safe_edge, ptr @ei_edge, i64 54475}
!169 = !{ptr @gimple_phi_arg_location, ptr @gimple_phi_arg, i64 11817}
!170 = !{ptr @gimple_phi_arg_def, ptr @gimple_phi_arg, i64 11817}
!171 = !{ptr @gimple_phi_arg_def, ptr @get_use_from_ptr, i64 11817}
!172 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!173 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 26945}
!174 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!175 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 26945}
!176 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 29122}
!177 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 3926}
!178 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 3925}
!179 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 28801}
!180 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 24874}
!181 = !{ptr @determine_bb_domination_status, ptr @xcalloc, i64 1368}
!182 = !{ptr @determine_bb_domination_status, ptr @dfs_enumerate_from, i64 1368}
!183 = !{ptr @determine_bb_domination_status, ptr @ei_start_1, i64 27355}
!184 = !{ptr @determine_bb_domination_status, ptr @ei_cond, i64 67355}
!185 = !{ptr @determine_bb_domination_status, ptr @ei_next, i64 40000}
!186 = !{ptr @determine_bb_domination_status, ptr @free, i64 1368}
!187 = !{ptr @thread_single_edge, ptr @single_pred_p, i64 115}
!188 = !{ptr @thread_single_edge, ptr @remove_ctrl_stmt_and_useless_edges, i64 1}
!189 = !{ptr @thread_single_edge, ptr @update_bb_profile_for_threading, i64 114}
!190 = !{ptr @thread_single_edge, ptr @create_block_for_threading, i64 114}
!191 = !{ptr @thread_single_edge, ptr @create_edge_and_update_destination_phis, i64 114}
!192 = !{ptr @thread_single_edge, ptr @single_succ_edge, i64 114}
!193 = !{ptr @thread_single_edge, ptr @redirect_edge_and_branch, i64 114}
!194 = !{ptr @thread_single_edge, ptr @flush_pending_stmts, i64 114}
!195 = !{ptr @single_succ, ptr @single_succ_edge, i64 115}
!196 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 115}
!197 = !{ptr @get_loop, ptr @VEC_loop_p_base_index, i64 27369}
!198 = !{ptr @VEC_int_heap_free, ptr @free, i64 3925}
!199 = !{ptr @register_jump_thread, ptr @VEC_edge_heap_alloc, i64 3927}
!200 = !{ptr @register_jump_thread, ptr @VEC_edge_heap_safe_push, i64 81138}
!201 = !{ptr @VEC_edge_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 3926}
!202 = !{ptr @VEC_edge_heap_safe_push, ptr @VEC_edge_heap_reserve, i64 81138}
!203 = !{ptr @VEC_edge_heap_safe_push, ptr @VEC_edge_base_quick_push, i64 81138}
!204 = !{ptr @VEC_edge_heap_reserve, ptr @VEC_edge_base_space, i64 81138}
!205 = !{ptr @VEC_edge_heap_reserve, ptr @vec_heap_p_reserve, i64 2924}
!206 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!207 = !{!"function_entry_count", i64 26608}
!208 = !{!209, !209, i64 0}
!209 = !{!"any pointer", !210, i64 0}
!210 = !{!"omnipotent char", !211, i64 0}
!211 = !{!"Simple C/C++ TBAA"}
!212 = !{!213, !209, i64 32}
!213 = !{!"function", !209, i64 0, !209, i64 8, !209, i64 16, !209, i64 24, !209, i64 32, !209, i64 40, !209, i64 48, !209, i64 56, !209, i64 64, !209, i64 72, !209, i64 80, !209, i64 88, !209, i64 96, !214, i64 104, !214, i64 108, !214, i64 112, !214, i64 116, !214, i64 120, !214, i64 124, !209, i64 128, !214, i64 136, !214, i64 137, !214, i64 138, !214, i64 138, !214, i64 138, !214, i64 138, !214, i64 138, !214, i64 138, !214, i64 138, !214, i64 139, !214, i64 139, !214, i64 139, !214, i64 139, !214, i64 139, !214, i64 139, !214, i64 139}
!214 = !{!"int", !210, i64 0}
!215 = !{!"branch_weights", i32 1, i32 26609}
!216 = !{!"branch_weights", i32 22683, i32 3927}
!217 = !{i8 0, i8 2}
!218 = !{!"branch_weights", i32 1, i32 3926}
!219 = !{!213, !209, i64 8}
!220 = !{!221, !209, i64 16}
!221 = !{!"control_flow_graph", !209, i64 0, !209, i64 8, !209, i64 16, !214, i64 24, !214, i64 28, !214, i64 32, !209, i64 40, !214, i64 48, !210, i64 52, !210, i64 60, !214, i64 68, !214, i64 72}
!222 = !{!214, !214, i64 0}
!223 = !{!224, !209, i64 0}
!224 = !{!"basic_block_def", !209, i64 0, !209, i64 8, !209, i64 16, !209, i64 24, !210, i64 32, !209, i64 48, !209, i64 56, !210, i64 64, !225, i64 72, !214, i64 80, !214, i64 84, !214, i64 88, !214, i64 92, !214, i64 96}
!225 = !{!"long", !210, i64 0}
!226 = !{!"branch_weights", i32 1, i32 19133}
!227 = !{!"branch_weights", i32 3926, i32 15207}
!228 = distinct !{!228, !229}
!229 = !{!"llvm.loop.mustprogress"}
!230 = !{!231, !209, i64 8}
!231 = !{!"loop", !214, i64 0, !214, i64 4, !209, i64 8, !209, i64 16, !232, i64 24, !214, i64 32, !214, i64 36, !209, i64 40, !209, i64 48, !209, i64 56, !209, i64 64, !209, i64 72, !233, i64 80, !233, i64 96, !210, i64 112, !210, i64 113, !214, i64 116, !209, i64 120, !209, i64 128, !210, i64 136, !209, i64 144}
!232 = !{!"lpt_decision", !214, i64 0, !214, i64 4}
!233 = !{!"", !225, i64 0, !225, i64 8}
!234 = !{!"branch_weights", i32 8, i32 27363}
!235 = !{!224, !214, i64 80}
!236 = !{!"branch_weights", i32 25186, i32 2178}
!237 = !{!"branch_weights", i32 3926, i32 23444}
!238 = distinct !{!238, !229}
!239 = !{!240, !225, i64 0}
!240 = !{!"thread_stats_d", !225, i64 0}
!241 = !{!"branch_weights", i32 227, i32 3701}
!242 = !{!"function_entry_count", i64 3926}
!243 = !{!"tree-ssa-threadupdate.c:mark_threaded_blocks"}
!244 = !{!245, !209, i64 24}
!245 = !{!"edge_def", !209, i64 0, !209, i64 8, !210, i64 16, !209, i64 24, !209, i64 32, !214, i64 40, !214, i64 44, !214, i64 48, !214, i64 52, !225, i64 56}
!246 = !{!245, !209, i64 8}
!247 = !{!"branch_weights", i32 36644, i32 3926}
!248 = distinct !{!248, !229}
!249 = !{!"branch_weights", i32 3927, i32 1}
!250 = !{i64 0, i64 4, !222, i64 8, i64 8, !208}
!251 = !{i64 0, i64 8, !208}
!252 = distinct !{!252, !229}
!253 = distinct !{!253, !229}
!254 = !{!"tree-ssa-threadupdate.c:bmp_iter_set_init"}
!255 = !{!256, !209, i64 0}
!256 = !{!"bitmap_head_def", !209, i64 0, !209, i64 8, !214, i64 16, !209, i64 24}
!257 = !{!258, !209, i64 0}
!258 = !{!"", !209, i64 0, !209, i64 8, !214, i64 16, !225, i64 24}
!259 = !{!258, !209, i64 8}
!260 = !{!"branch_weights", i32 1, i32 3927}
!261 = !{!262, !214, i64 16}
!262 = !{!"bitmap_element_def", !209, i64 0, !209, i64 8, !214, i64 16, !210, i64 24}
!263 = !{!258, !214, i64 16}
!264 = !{!225, !225, i64 0}
!265 = !{!258, !225, i64 24}
!266 = !{!"function_entry_count", i64 23058}
!267 = !{!"tree-ssa-threadupdate.c:bmp_iter_set"}
!268 = !{!"branch_weights", i32 7151, i32 15909}
!269 = !{!"branch_weights", i32 19132, i32 1}
!270 = !{!"branch_weights", i32 195190, i32 19132}
!271 = distinct !{!271, !229}
!272 = !{!"branch_weights", i32 1, i32 5477}
!273 = !{!"branch_weights", i32 3805, i32 3225}
!274 = !{!"branch_weights", i32 5477, i32 1552}
!275 = distinct !{!275, !229}
!276 = !{!262, !209, i64 0}
!277 = !{!"branch_weights", i32 3927, i32 1552}
!278 = !{!"function_entry_count", i64 19132}
!279 = !{!"tree-ssa-threadupdate.c:VEC_basic_block_base_index"}
!280 = !{!"function_entry_count", i64 489859}
!281 = !{!"tree-ssa-threadupdate.c:VEC_edge_base_length"}
!282 = !{!"branch_weights", i32 1865, i32 487996}
!283 = !{!284, !214, i64 0}
!284 = !{!"VEC_edge_base", !214, i64 0, !214, i64 4, !210, i64 8}
!285 = !{!"function_entry_count", i64 20544}
!286 = !{!"tree-ssa-threadupdate.c:thread_block"}
!287 = !{!224, !209, i64 24}
!288 = !{!224, !209, i64 8}
!289 = !{!"branch_weights", i32 3482, i32 17064}
!290 = !{!"branch_weights", i32 3325, i32 158}
!291 = !{!"branch_weights", i32 151, i32 8}
!292 = !{!"branch_weights", i32 1, i32 20544}
!293 = !{!"branch_weights", i32 23019, i32 44875}
!294 = !{!"branch_weights", i32 1368, i32 43508}
!295 = !{!"branch_weights", i32 2281, i32 41228}
!296 = !{!"branch_weights", i32 2281, i32 1}
!297 = !{!245, !209, i64 0}
!298 = !{!224, !214, i64 88}
!299 = !{!245, !214, i64 52}
!300 = !{!245, !225, i64 56}
!301 = !{!"branch_weights", i32 20544, i32 47349}
!302 = distinct !{!302, !229}
!303 = !{!"branch_weights", i32 1614401802, i32 533081846}
!304 = !{!305, !210, i64 24}
!305 = !{!"redirection_data", !209, i64 0, !209, i64 8, !209, i64 16, !210, i64 24}
!306 = !{!307, !209, i64 8}
!307 = !{!"local_info", !209, i64 0, !209, i64 8, !210, i64 16}
!308 = !{!307, !209, i64 0}
!309 = !{!307, !210, i64 16}
!310 = !{!"tree-ssa-threadupdate.c:bmp_iter_next"}
!311 = !{!"tree-ssa-threadupdate.c:fel_init"}
!312 = !{!313, !214, i64 8}
!313 = !{!"", !209, i64 0, !214, i64 8}
!314 = !{!313, !209, i64 0}
!315 = !{!316, !209, i64 24}
!316 = !{!"loops", !214, i64 0, !209, i64 8, !209, i64 16, !209, i64 24}
!317 = !{!231, !209, i64 48}
!318 = !{!"branch_weights", i32 3927, i32 5156}
!319 = distinct !{!319, !229}
!320 = !{!231, !214, i64 0}
!321 = !{!"branch_weights", i32 27370, i32 3927}
!322 = !{!231, !209, i64 56}
!323 = !{!"branch_weights", i32 15716, i32 15581}
!324 = !{!"branch_weights", i32 15581, i32 6635}
!325 = distinct !{!325, !229}
!326 = !{!"branch_weights", i32 3927, i32 11790}
!327 = !{!"function_entry_count", i64 2177}
!328 = !{!"tree-ssa-threadupdate.c:thread_through_loop_header"}
!329 = !{!"branch_weights", i32 2178, i32 1}
!330 = !{!"branch_weights", i32 2028, i32 151}
!331 = !{!"branch_weights", i32 1659, i32 370}
!332 = !{!"branch_weights", i32 392, i32 1268}
!333 = !{!"branch_weights", i32 1, i32 1636}
!334 = !{!"branch_weights", i32 1637, i32 1637}
!335 = !{!"branch_weights", i32 1637, i32 1}
!336 = !{!"branch_weights", i32 1636, i32 1637}
!337 = distinct !{!337, !229}
!338 = !{!"branch_weights", i32 0, i32 -2147483648}
!339 = !{!231, !209, i64 16}
!340 = !{!"branch_weights", i32 418, i32 1220}
!341 = !{!"branch_weights", i32 208, i32 211}
!342 = !{i32 0, i32 3}
!343 = !{!"branch_weights", i32 1996569, i32 233310, i32 1413}
!344 = !{!"branch_weights", i32 4, i32 1410}
!345 = !{!"branch_weights", i32 1, i32 4}
!346 = !{!"branch_weights", i32 1298, i32 116}
!347 = !{!"branch_weights", i32 116, i32 1}
!348 = !{!"branch_weights", i32 1, i32 127}
!349 = !{!"branch_weights", i32 55, i32 1298}
!350 = !{!"branch_weights", i32 127, i32 172929}
!351 = distinct !{!351, !229}
!352 = !{!"branch_weights", i32 1, i32 765}
!353 = !{!"branch_weights", i32 765, i32 768}
!354 = distinct !{!354, !229}
!355 = !{!"function_entry_count", i64 31295}
!356 = !{!"tree-ssa-threadupdate.c:fel_next"}
!357 = !{i32 0, i32 2}
!358 = !{!"branch_weights", i32 3927, i32 27370}
!359 = !{!"branch_weights", i32 1, i32 27370}
!360 = distinct !{!360, !229}
!361 = !{!"tree-ssa-threadupdate.c:VEC_edge_heap_free"}
!362 = !{!"function_entry_count", i64 3700}
!363 = !{!"tree-ssa-threadupdate.c:loops_state_set"}
!364 = !{!316, !214, i64 0}
!365 = !{!"function_entry_count", i64 311481}
!366 = !{!"tree-ssa-threadupdate.c:VEC_edge_base_index"}
!367 = !{!"function_entry_count", i64 1658}
!368 = !{!"tree-ssa-threadupdate.c:redirection_block_p"}
!369 = !{!"branch_weights", i32 127, i32 1}
!370 = !{i32 0, i32 256}
!371 = !{!"branch_weights", i32 5, i32 1659}
!372 = !{!"branch_weights", i32 1659, i32 1}
!373 = !{!"branch_weights", i32 1659, i32 5}
!374 = !{!"branch_weights", i32 212737, i32 127}
!375 = distinct !{!375, !229}
!376 = !{!"branch_weights", i32 1, i32 1659}
!377 = !{!"branch_weights", i32 153664, i32 498324, i32 392}
!378 = !{!"function_entry_count", i64 84310}
!379 = !{!"tree-ssa-threadupdate.c:ei_start_1"}
!380 = !{!"function_entry_count", i64 163997}
!381 = !{!"tree-ssa-threadupdate.c:ei_cond"}
!382 = !{!"branch_weights", i32 113939, i32 50060}
!383 = !{!"function_entry_count", i64 125186}
!384 = !{!"tree-ssa-threadupdate.c:ei_next"}
!385 = !{!"branch_weights", i32 1, i32 125187}
!386 = !{!"branch_weights", i32 125187, i32 1}
!387 = !{!388, !214, i64 0}
!388 = !{!"", !214, i64 0, !209, i64 8}
!389 = !{!"tree-ssa-threadupdate.c:gsi_start_bb"}
!390 = !{!391, !209, i64 0}
!391 = !{!"", !209, i64 0, !209, i64 8, !209, i64 16}
!392 = !{!391, !209, i64 8}
!393 = !{!391, !209, i64 16}
!394 = !{!"function_entry_count", i64 68008}
!395 = !{!"tree-ssa-threadupdate.c:gsi_end_p"}
!396 = !{!"function_entry_count", i64 46607}
!397 = !{!"tree-ssa-threadupdate.c:gimple_code"}
!398 = !{!"function_entry_count", i64 88627}
!399 = !{!"tree-ssa-threadupdate.c:gsi_stmt"}
!400 = !{!401, !209, i64 0}
!401 = !{!"gimple_seq_node_d", !209, i64 0, !209, i64 8, !209, i64 16}
!402 = !{!"tree-ssa-threadupdate.c:is_gimple_debug"}
!403 = !{!"tree-ssa-threadupdate.c:gimple_nop_p"}
!404 = !{!"function_entry_count", i64 11821}
!405 = !{!"tree-ssa-threadupdate.c:gsi_next"}
!406 = !{!401, !209, i64 16}
!407 = !{!"function_entry_count", i64 34448}
!408 = !{!"tree-ssa-threadupdate.c:bb_seq"}
!409 = !{!224, !214, i64 96}
!410 = !{!"branch_weights", i32 34449, i32 1}
!411 = !{!210, !210, i64 0}
!412 = !{!"branch_weights", i32 1, i32 34449}
!413 = !{!414, !209, i64 0}
!414 = !{!"gimple_bb_info", !209, i64 0, !209, i64 8}
!415 = !{!"tree-ssa-threadupdate.c:gimple_seq_first"}
!416 = !{!417, !209, i64 0}
!417 = !{!"gimple_seq_d", !209, i64 0, !209, i64 8, !209, i64 16}
!418 = !{!"function_entry_count", i64 251262}
!419 = !{!"tree-ssa-threadupdate.c:ei_end_p"}
!420 = !{!"branch_weights", i32 1865, i32 249399}
!421 = !{!"function_entry_count", i64 168413}
!422 = !{!"tree-ssa-threadupdate.c:ei_edge"}
!423 = !{!"branch_weights", i32 1, i32 168414}
!424 = !{!"function_entry_count", i64 1087858}
!425 = !{!"tree-ssa-threadupdate.c:ei_container"}
!426 = !{!"branch_weights", i32 1, i32 1087859}
!427 = !{!"function_entry_count", i64 47694}
!428 = !{!"tree-ssa-threadupdate.c:redirection_data_hash"}
!429 = !{!305, !209, i64 8}
!430 = !{!"function_entry_count", i64 23248}
!431 = !{!"tree-ssa-threadupdate.c:redirection_data_eq"}
!432 = !{!"tree-ssa-threadupdate.c:lookup_redirection_data"}
!433 = !{!305, !209, i64 0}
!434 = !{!305, !209, i64 16}
!435 = !{!"branch_weights", i32 1, i32 47695}
!436 = !{!"branch_weights", i32 25067, i32 22629}
!437 = !{!438, !209, i64 0}
!438 = !{!"el", !209, i64 0, !209, i64 8}
!439 = !{!438, !209, i64 8}
!440 = !{!"branch_weights", i32 5101, i32 17529}
!441 = !{!"function_entry_count", i64 25066}
!442 = !{!"tree-ssa-threadupdate.c:create_duplicates"}
!443 = !{!"branch_weights", i32 19967, i32 5101}
!444 = !{!"branch_weights", i32 18103, i32 1865}
!445 = !{!"function_entry_count", i64 20464}
!446 = !{!"tree-ssa-threadupdate.c:fixup_template_block"}
!447 = !{!"branch_weights", i32 2363, i32 18103}
!448 = !{!"branch_weights", i32 18103, i32 1}
!449 = !{!"tree-ssa-threadupdate.c:redirect_edges"}
!450 = !{!"branch_weights", i32 1, i32 25066}
!451 = !{!"branch_weights", i32 12710, i32 29886}
!452 = !{!"branch_weights", i32 29886, i32 1}
!453 = !{!224, !225, i64 72}
!454 = !{!"branch_weights", i32 12710, i32 1}
!455 = !{!245, !214, i64 48}
!456 = !{!"branch_weights", i32 25066, i32 17529}
!457 = distinct !{!457, !229}
!458 = !{!"function_entry_count", i64 20081}
!459 = !{!"tree-ssa-threadupdate.c:create_block_for_threading"}
!460 = !{!"tree-ssa-threadupdate.c:create_edge_and_update_destination_phis"}
!461 = !{!"branch_weights", i32 11818, i32 8264}
!462 = !{!245, !214, i64 44}
!463 = !{!"branch_weights", i32 0, i32 11818}
!464 = distinct !{!464, !229}
!465 = !{!"function_entry_count", i64 32790}
!466 = !{!"tree-ssa-threadupdate.c:remove_ctrl_stmt_and_useless_edges"}
!467 = !{!"branch_weights", i32 28546, i32 4246}
!468 = !{!"branch_weights", i32 1, i32 28546}
!469 = !{!"branch_weights", i32 578750806, i32 -1723546505, i32 110701, i32 10514692}
!470 = !{!"branch_weights", i32 1, i32 32790}
!471 = !{!"branch_weights", i32 12710, i32 41767}
!472 = !{!"branch_weights", i32 32790, i32 21686}
!473 = distinct !{!473, !229}
!474 = !{!"tree-ssa-threadupdate.c:gsi_last_bb"}
!475 = !{!"function_entry_count", i64 87265}
!476 = !{!"tree-ssa-threadupdate.c:ei_safe_edge"}
!477 = !{!"branch_weights", i32 54476, i32 32791}
!478 = !{!"tree-ssa-threadupdate.c:gimple_seq_last"}
!479 = !{!"branch_weights", i32 1, i32 32791}
!480 = !{!417, !209, i64 8}
!481 = !{!"function_entry_count", i64 11817}
!482 = !{!"tree-ssa-threadupdate.c:gimple_phi_arg_location"}
!483 = !{!484, !214, i64 40}
!484 = !{!"phi_arg_d", !485, i64 0, !209, i64 32, !214, i64 40}
!485 = !{!"ssa_use_operand_d", !209, i64 0, !209, i64 8, !210, i64 16, !209, i64 24}
!486 = !{!"tree-ssa-threadupdate.c:gimple_phi_arg_def"}
!487 = !{!"function_entry_count", i64 23634}
!488 = !{!"tree-ssa-threadupdate.c:gimple_phi_arg"}
!489 = !{!"branch_weights", i32 1, i32 23635}
!490 = !{!"tree-ssa-threadupdate.c:get_use_from_ptr"}
!491 = !{!485, !209, i64 24}
!492 = !{!"function_entry_count", i64 26945}
!493 = !{!"tree-ssa-threadupdate.c:single_succ_edge"}
!494 = !{!"branch_weights", i32 1, i32 26946}
!495 = !{!"function_entry_count", i64 29122}
!496 = !{!"tree-ssa-threadupdate.c:single_succ_p"}
!497 = !{!"tree-ssa-threadupdate.c:VEC_int_heap_alloc"}
!498 = !{!"tree-ssa-threadupdate.c:number_of_loops"}
!499 = !{!316, !209, i64 8}
!500 = !{!"function_entry_count", i64 27369}
!501 = !{!"tree-ssa-threadupdate.c:VEC_int_base_quick_push"}
!502 = !{!503, !214, i64 0}
!503 = !{!"VEC_int_base", !214, i64 0, !214, i64 4, !210, i64 8}
!504 = !{!"function_entry_count", i64 28801}
!505 = !{!"tree-ssa-threadupdate.c:loop_outer"}
!506 = !{!231, !209, i64 40}
!507 = !{!"branch_weights", i32 3927, i32 24876}
!508 = !{!"function_entry_count", i64 32727}
!509 = !{!"tree-ssa-threadupdate.c:VEC_loop_p_base_length"}
!510 = !{!"branch_weights", i32 3927, i32 28802}
!511 = !{!512, !214, i64 0}
!512 = !{!"VEC_loop_p_base", !214, i64 0, !214, i64 4, !210, i64 8}
!513 = !{!"function_entry_count", i64 52244}
!514 = !{!"tree-ssa-threadupdate.c:VEC_loop_p_base_index"}
!515 = !{!"function_entry_count", i64 1576}
!516 = !{!"tree-ssa-threadupdate.c:determine_bb_domination_status"}
!517 = !{!"branch_weights", i32 208, i32 1370}
!518 = !{!231, !214, i64 36}
!519 = !{!"branch_weights", i32 1, i32 1205}
!520 = !{!"branch_weights", i32 1, i32 27114}
!521 = !{!"branch_weights", i32 165, i32 39728}
!522 = !{!"branch_weights", i32 2068, i32 37661}
!523 = !{!"branch_weights", i32 27114, i32 12778}
!524 = distinct !{!524, !229}
!525 = !{!"branch_weights", i32 1205, i32 26074}
!526 = distinct !{!526, !229}
!527 = !{!"function_entry_count", i64 115}
!528 = !{!"tree-ssa-threadupdate.c:thread_single_edge"}
!529 = !{!"tree-ssa-threadupdate.c:single_succ"}
!530 = !{!"function_entry_count", i64 29793}
!531 = !{!"tree-ssa-threadupdate.c:dbds_continue_enumeration_p"}
!532 = !{!"branch_weights", i32 27560, i32 2235}
!533 = !{!"tree-ssa-threadupdate.c:single_pred_p"}
!534 = !{!"tree-ssa-threadupdate.c:VEC_int_base_iterate"}
!535 = !{!"branch_weights", i32 1, i32 31296}
!536 = !{!"tree-ssa-threadupdate.c:get_loop"}
!537 = !{!"tree-ssa-threadupdate.c:VEC_int_heap_free"}
!538 = !{!"function_entry_count", i64 40569}
!539 = !{!"branch_weights", i32 3927, i32 36644}
!540 = !{!"tree-ssa-threadupdate.c:VEC_edge_heap_alloc"}
!541 = !{!"function_entry_count", i64 81138}
!542 = !{!"tree-ssa-threadupdate.c:VEC_edge_heap_safe_push"}
!543 = !{!"tree-ssa-threadupdate.c:VEC_edge_heap_reserve"}
!544 = !{!"branch_weights", i32 2924, i32 78216}
!545 = !{!"tree-ssa-threadupdate.c:VEC_edge_base_quick_push"}
!546 = !{!"tree-ssa-threadupdate.c:VEC_edge_base_space"}
!547 = !{!"branch_weights", i32 1, i32 81139}
!548 = !{!284, !214, i64 4}
