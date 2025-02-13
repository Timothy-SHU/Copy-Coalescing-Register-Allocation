; ModuleID = 'ddg.c'
source_filename = "ddg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.ddg = type { ptr, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.ddg_node = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon }
%union.anon = type { ptr }
%struct.deps = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, %struct.bitmap_head_def, %struct.bitmap_head_def, i32, i8 }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct._sd_iterator = type { i32, ptr, ptr, i8 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.df_rd_bb_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.df = type { [8 x ptr], [8 x ptr], ptr, %struct.df_ref_info, %struct.df_ref_info, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i8, i8 }
%struct.df_ref_info = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.ddg_edge = type { ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.sbitmap_iterator = type { ptr, i32, i32, i32, i64 }
%struct.ddg_all_sccs = type { ptr, i32, ptr }
%struct.ddg_scc = type { ptr, ptr, i32, i32 }
%struct._dep_node = type { %struct._dep_link, %struct._dep, %struct._dep_link }
%struct._dep = type { ptr, ptr, i32, i32 }
%struct._dep_link = type { ptr, ptr, ptr }
%struct.df_base_ref = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.dataflow = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.df_link = type { ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"ddg.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c" [%d -(%c,%d,%d)-> %d] \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Node num: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"OUT ARCS: \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"\0AIN ARCS: \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"graph: {\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"node: {title: \22%d_%d\22 info1: \22\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"\22}\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"backedge: {color: red \00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"edge: { \00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"sourcename: \22%d_%d\22 \00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"targetname: \22%d_%d\22 \00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"label: \22%d_%d\22}\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"\0A;; Number of SCC nodes - %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"SCC number: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"insn num %d\0A\00", align 1
@mem_ref_p = internal unnamed_addr global i1 false, align 1
@sd_iterator_start.null_link = internal global ptr null, align 8
@flag_modulo_sched_allow_regmoves = external local_unnamed_addr global i32, align 4
@df = external local_unnamed_addr global ptr, align 8
@rtx_format = external local_unnamed_addr constant [139 x ptr], align 16
@rtx_length = external local_unnamed_addr constant [139 x i8], align 16
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @create_ddg(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 56) #23
  store ptr %0, ptr %3, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.ddg, ptr %3, i64 0, i32 7
  store i32 %1, ptr %4, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = load ptr, ptr %6, align 8, !tbaa !12
  %8 = getelementptr inbounds %struct.rtl_bb_info, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.rtx_def, ptr %9, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = icmp eq ptr %7, %11
  br i1 %12, label %63, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ddg, ptr %3, i64 0, i32 2
  %15 = getelementptr inbounds %struct.ddg, ptr %3, i64 0, i32 3
  %16 = getelementptr inbounds %struct.ddg, ptr %3, i64 0, i32 4
  br label %17

17:                                               ; preds = %13, %51
  %18 = phi ptr [ %6, %13 ], [ %52, %51 ]
  %19 = phi ptr [ %7, %13 ], [ %55, %51 ]
  %20 = phi i32 [ 0, %13 ], [ %53, %51 ]
  %21 = load i32, ptr %19, align 8
  %22 = and i32 %21, 65535
  %23 = add nsw i32 %22, -7
  %24 = icmp ult i32 %23, 4
  br i1 %24, label %25, label %51

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !12
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 24
  br i1 %30, label %51, label %31

31:                                               ; preds = %25
  %32 = icmp eq i32 %22, 7
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i32, ptr %16, align 4, !tbaa !15
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %16, align 4, !tbaa !15
  br label %48

36:                                               ; preds = %31
  %37 = tail call fastcc zeroext i8 @mem_read_insn_p(ptr noundef nonnull %19) #24, !range !16
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %14, align 4, !tbaa !17
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %14, align 4, !tbaa !17
  br label %42

42:                                               ; preds = %39, %36
  %43 = tail call fastcc zeroext i8 @mem_write_insn_p(ptr noundef nonnull %19) #24, !range !16
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, ptr %15, align 8, !tbaa !18
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %15, align 8, !tbaa !18
  br label %48

48:                                               ; preds = %42, %45, %33
  %49 = add nsw i32 %20, 1
  %50 = load ptr, ptr %5, align 8, !tbaa !12
  br label %51

51:                                               ; preds = %17, %25, %48
  %52 = phi ptr [ %18, %25 ], [ %50, %48 ], [ %18, %17 ]
  %53 = phi i32 [ %20, %25 ], [ %49, %48 ], [ %20, %17 ]
  %54 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1, i32 0, i32 0, i64 2
  %55 = load ptr, ptr %54, align 8, !tbaa !12
  %56 = getelementptr inbounds %struct.rtl_bb_info, ptr %52, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !13
  %58 = getelementptr inbounds %struct.rtx_def, ptr %57, i64 0, i32 1, i32 0, i32 0, i64 2
  %59 = load ptr, ptr %58, align 8, !tbaa !12
  %60 = icmp eq ptr %55, %59
  br i1 %60, label %61, label %17, !llvm.loop !19

61:                                               ; preds = %51
  %62 = icmp slt i32 %53, 2
  br i1 %62, label %63, label %64

63:                                               ; preds = %2, %61
  tail call void @free(ptr noundef %3) #24
  br label %152

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.ddg, ptr %3, i64 0, i32 1
  store i32 %53, ptr %65, align 8, !tbaa !21
  %66 = zext nneg i32 %53 to i64
  %67 = tail call ptr @xcalloc(i64 noundef %66, i64 noundef 64) #23
  %68 = getelementptr inbounds %struct.ddg, ptr %3, i64 0, i32 5
  store ptr %67, ptr %68, align 8, !tbaa !22
  %69 = getelementptr inbounds %struct.ddg, ptr %3, i64 0, i32 6
  store ptr null, ptr %69, align 8, !tbaa !23
  %70 = load ptr, ptr %5, align 8, !tbaa !12
  %71 = load ptr, ptr %70, align 8, !tbaa !12
  %72 = getelementptr inbounds %struct.rtl_bb_info, ptr %70, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !13
  %74 = getelementptr inbounds %struct.rtx_def, ptr %73, i64 0, i32 1, i32 0, i32 0, i64 2
  %75 = load ptr, ptr %74, align 8, !tbaa !12
  %76 = icmp eq ptr %71, %75
  br i1 %76, label %150, label %77

77:                                               ; preds = %64, %135
  %78 = phi ptr [ %136, %135 ], [ %70, %64 ]
  %79 = phi ptr [ %137, %135 ], [ %67, %64 ]
  %80 = phi ptr [ %141, %135 ], [ %71, %64 ]
  %81 = phi i32 [ %139, %135 ], [ 0, %64 ]
  %82 = phi ptr [ %138, %135 ], [ null, %64 ]
  %83 = load i32, ptr %80, align 8
  %84 = and i32 %83, 65535
  %85 = add nsw i32 %84, -7
  %86 = icmp ult i32 %85, 4
  br i1 %86, label %96, label %87

87:                                               ; preds = %77
  %88 = icmp eq ptr %82, null
  br i1 %88, label %89, label %135

89:                                               ; preds = %87
  %90 = icmp eq i32 %84, 13
  br i1 %90, label %91, label %135

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 1
  %93 = load i32, ptr %92, align 8, !tbaa !12
  %94 = icmp eq i32 %93, 10
  %95 = select i1 %94, ptr null, ptr %80
  br label %135

96:                                               ; preds = %77
  %97 = icmp eq i32 %84, 9
  br i1 %97, label %98, label %107

98:                                               ; preds = %96
  %99 = load ptr, ptr %69, align 8, !tbaa !23
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %98
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 514, ptr noundef nonnull @.str.1) #23
  %102 = load ptr, ptr %68, align 8, !tbaa !22
  br label %103

103:                                              ; preds = %98, %101
  %104 = phi ptr [ %79, %98 ], [ %102, %101 ]
  %105 = sext i32 %81 to i64
  %106 = getelementptr inbounds %struct.ddg_node, ptr %104, i64 %105
  store ptr %106, ptr %69, align 8, !tbaa !23
  br label %118

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !12
  %110 = load i32, ptr %109, align 8
  %111 = and i32 %110, 65535
  %112 = icmp eq i32 %111, 24
  br i1 %112, label %115, label %113

113:                                              ; preds = %107
  %114 = sext i32 %81 to i64
  br label %118

115:                                              ; preds = %107
  %116 = icmp eq ptr %82, null
  %117 = select i1 %116, ptr %80, ptr %82
  br label %135

118:                                              ; preds = %113, %103
  %119 = phi i64 [ %114, %113 ], [ %105, %103 ]
  %120 = phi ptr [ %79, %113 ], [ %104, %103 ]
  %121 = getelementptr inbounds %struct.ddg_node, ptr %120, i64 %119
  store i32 %81, ptr %121, align 8, !tbaa !24
  %122 = tail call ptr @sbitmap_alloc(i32 noundef %53) #23
  %123 = load ptr, ptr %68, align 8, !tbaa !22
  %124 = getelementptr inbounds %struct.ddg_node, ptr %123, i64 %119, i32 5
  store ptr %122, ptr %124, align 8, !tbaa !26
  tail call void @sbitmap_zero(ptr noundef %122) #23
  %125 = tail call ptr @sbitmap_alloc(i32 noundef %53) #23
  %126 = load ptr, ptr %68, align 8, !tbaa !22
  %127 = getelementptr inbounds %struct.ddg_node, ptr %126, i64 %119, i32 6
  store ptr %125, ptr %127, align 8, !tbaa !27
  tail call void @sbitmap_zero(ptr noundef %125) #23
  %128 = icmp eq ptr %82, null
  %129 = select i1 %128, ptr %80, ptr %82
  %130 = load ptr, ptr %68, align 8, !tbaa !22
  %131 = getelementptr inbounds %struct.ddg_node, ptr %130, i64 %119, i32 2
  store ptr %129, ptr %131, align 8, !tbaa !28
  %132 = add nsw i32 %81, 1
  %133 = getelementptr inbounds %struct.ddg_node, ptr %130, i64 %119, i32 1
  store ptr %80, ptr %133, align 8, !tbaa !29
  %134 = load ptr, ptr %5, align 8, !tbaa !12
  br label %135

135:                                              ; preds = %115, %91, %87, %89, %118
  %136 = phi ptr [ %134, %118 ], [ %78, %87 ], [ %78, %89 ], [ %78, %91 ], [ %78, %115 ]
  %137 = phi ptr [ %130, %118 ], [ %79, %87 ], [ %79, %89 ], [ %79, %91 ], [ %79, %115 ]
  %138 = phi ptr [ null, %118 ], [ %82, %87 ], [ null, %89 ], [ %95, %91 ], [ %117, %115 ]
  %139 = phi i32 [ %132, %118 ], [ %81, %87 ], [ %81, %89 ], [ %81, %91 ], [ %81, %115 ]
  %140 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1, i32 0, i32 0, i64 2
  %141 = load ptr, ptr %140, align 8, !tbaa !12
  %142 = getelementptr inbounds %struct.rtl_bb_info, ptr %136, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !13
  %144 = getelementptr inbounds %struct.rtx_def, ptr %143, i64 0, i32 1, i32 0, i32 0, i64 2
  %145 = load ptr, ptr %144, align 8, !tbaa !12
  %146 = icmp eq ptr %141, %145
  br i1 %146, label %147, label %77, !llvm.loop !30

147:                                              ; preds = %135
  %148 = load ptr, ptr %69, align 8, !tbaa !23
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %64, %147
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 535, ptr noundef nonnull @.str.1) #23
  br label %151

151:                                              ; preds = %147, %150
  tail call fastcc void @build_intra_loop_deps(ptr noundef nonnull %3) #24
  tail call fastcc void @build_inter_loop_deps(ptr noundef nonnull %3) #24
  br label %152

152:                                              ; preds = %151, %63
  %153 = phi ptr [ null, %63 ], [ %3, %151 ]
  ret ptr %153
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @mem_read_insn_p(ptr noundef %0) unnamed_addr #0 {
  store i1 false, ptr @mem_ref_p, align 1
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  tail call void @note_uses(ptr noundef nonnull %2, ptr noundef nonnull @mark_mem_use_1, ptr noundef null) #23
  %3 = load i1, ptr @mem_ref_p, align 1
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @mem_write_insn_p(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  store i1 false, ptr @mem_ref_p, align 1
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  tail call void @note_stores(ptr noundef %3, ptr noundef nonnull @mark_mem_store, ptr noundef null) #23
  %4 = load i1, ptr @mem_ref_p, align 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_intra_loop_deps(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.deps, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct._sd_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct._sd_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  tail call void @init_deps_global() #23
  call void @init_deps(ptr noundef nonnull %2, i8 noundef zeroext 0) #23
  %8 = load ptr, ptr %0, align 8, !tbaa !5
  call void @get_ebb_head_tail(ptr noundef %8, ptr noundef %8, ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %9 = load ptr, ptr %3, align 8, !tbaa !31
  %10 = load ptr, ptr %4, align 8, !tbaa !31
  call void @sched_analyze(ptr noundef nonnull %2, ptr noundef %9, ptr noundef %10) #23
  %11 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !21
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %77

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  br label %16

16:                                               ; preds = %14, %71
  %17 = phi i64 [ 0, %14 ], [ %72, %71 ]
  %18 = phi i64 [ 1, %14 ], [ %76, %71 ]
  %19 = load ptr, ptr %15, align 8, !tbaa !22
  %20 = getelementptr inbounds %struct.ddg_node, ptr %19, i64 %17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  %21 = getelementptr inbounds %struct.ddg_node, ptr %19, i64 %17, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !29
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = add nsw i32 %24, -7
  %26 = icmp ult i32 %25, 4
  br i1 %26, label %27, label %71

27:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #25
  call fastcc void @sd_iterator_start(ptr dead_on_unwind nonnull writable sret(%struct._sd_iterator) align 8 %7, ptr noundef nonnull %22) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #25
  %28 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6) #24
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27, %36
  %31 = load ptr, ptr %6, align 8, !tbaa !31
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = call ptr @get_node_of_insn(ptr noundef nonnull %0, ptr noundef %32) #24
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  call fastcc void @create_ddg_dep_from_intra_loop_link(ptr noundef nonnull %0, ptr noundef nonnull %33, ptr noundef %20, ptr noundef nonnull %31) #24
  br label %36

36:                                               ; preds = %30, %35
  call fastcc void @sd_iterator_next(ptr noundef nonnull %5) #24
  %37 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %5, ptr noundef nonnull %6) #24
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %30, !llvm.loop !36

39:                                               ; preds = %36, %27
  %40 = load ptr, ptr %21, align 8, !tbaa !29
  %41 = call fastcc zeroext i8 @mem_access_insn_p(ptr noundef %40) #24, !range !16
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %71, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ddg_node, ptr %19, i64 %17, i32 5
  br label %45

45:                                               ; preds = %43, %68
  %46 = phi i64 [ 0, %43 ], [ %69, %68 ]
  %47 = load ptr, ptr %15, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.ddg_node, ptr %47, i64 %46
  %49 = getelementptr inbounds %struct.ddg_node, ptr %47, i64 %46, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !29
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 7
  br i1 %53, label %68, label %54

54:                                               ; preds = %45
  %55 = call fastcc zeroext i8 @mem_access_insn_p(ptr noundef nonnull %50) #24, !range !16
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %44, align 8, !tbaa !26
  %59 = lshr i64 %46, 6
  %60 = and i64 %59, 67108863
  %61 = getelementptr inbounds %struct.simple_bitmap_def, ptr %58, i64 0, i32 3, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !37
  %63 = and i64 %46, 63
  %64 = shl nuw i64 1, %63
  %65 = and i64 %62, %64
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  call fastcc void @add_inter_loop_mem_dep(ptr noundef nonnull %0, ptr noundef nonnull %20, ptr noundef nonnull %48) #24
  br label %68

68:                                               ; preds = %54, %67, %57, %45
  %69 = add nuw nsw i64 %46, 1
  %70 = icmp eq i64 %69, %18
  br i1 %70, label %71, label %45, !llvm.loop !39

71:                                               ; preds = %68, %16, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  %72 = add nuw nsw i64 %17, 1
  %73 = load i32, ptr %11, align 8, !tbaa !21
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %72, %74
  %76 = add nuw nsw i64 %18, 1
  br i1 %75, label %16, label %77, !llvm.loop !40

77:                                               ; preds = %71, %1
  call void @finish_deps_global() #23
  call void @free_deps(ptr noundef nonnull %2) #23
  %78 = load ptr, ptr %3, align 8, !tbaa !31
  %79 = load ptr, ptr %4, align 8, !tbaa !31
  call void @sched_free_deps(ptr noundef %78, ptr noundef %79, i8 noundef zeroext 0) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_inter_loop_deps(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !41
  %7 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %6) #24
  %8 = getelementptr inbounds %struct.df_rd_bb_info, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %9, ptr noundef nonnull %2) #24
  %10 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #24, !range !16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %1, %12
  %13 = load ptr, ptr @df, align 8, !tbaa !31
  %14 = getelementptr inbounds %struct.df, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !45
  %16 = load i32, ptr %2, align 4, !tbaa !33
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !31
  tail call fastcc void @add_cross_iteration_register_deps(ptr noundef nonnull %0, ptr noundef %19) #24
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #24
  %20 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #24, !range !16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %12, !llvm.loop !48

22:                                               ; preds = %12, %1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_ddg(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %51, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !21
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %41

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  br label %9

9:                                                ; preds = %7, %22
  %10 = phi i64 [ 0, %7 ], [ %37, %22 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !22
  %12 = getelementptr inbounds %struct.ddg_node, ptr %11, i64 %10, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %9, %15
  %16 = phi ptr [ %18, %15 ], [ %13, %9 ]
  %17 = getelementptr inbounds %struct.ddg_edge, ptr %16, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  tail call void @free(ptr noundef nonnull %16) #24
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %15, !llvm.loop !52

20:                                               ; preds = %15
  %21 = load ptr, ptr %8, align 8, !tbaa !22
  br label %22

22:                                               ; preds = %20, %9
  %23 = phi ptr [ %21, %20 ], [ %11, %9 ]
  %24 = getelementptr inbounds %struct.ddg_node, ptr %23, i64 %10, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !26
  %26 = load ptr, ptr %25, align 8, !tbaa !53
  tail call void @free(ptr noundef %26) #24
  %27 = load ptr, ptr %8, align 8, !tbaa !22
  %28 = getelementptr inbounds %struct.ddg_node, ptr %27, i64 %10, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !26
  tail call void @free(ptr noundef %29) #24
  %30 = load ptr, ptr %8, align 8, !tbaa !22
  %31 = getelementptr inbounds %struct.ddg_node, ptr %30, i64 %10, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !27
  %33 = load ptr, ptr %32, align 8, !tbaa !53
  tail call void @free(ptr noundef %33) #24
  %34 = load ptr, ptr %8, align 8, !tbaa !22
  %35 = getelementptr inbounds %struct.ddg_node, ptr %34, i64 %10, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !27
  tail call void @free(ptr noundef %36) #24
  %37 = add nuw nsw i64 %10, 1
  %38 = load i32, ptr %4, align 8, !tbaa !21
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %9, label %41, !llvm.loop !55

41:                                               ; preds = %22, %3
  %42 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 8
  %43 = load i32, ptr %42, align 4, !tbaa !56
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 9
  %47 = load ptr, ptr %46, align 8, !tbaa !57
  tail call void @free(ptr noundef %47) #24
  br label %48

48:                                               ; preds = %45, %41
  %49 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !22
  tail call void @free(ptr noundef %50) #24
  tail call void @free(ptr noundef nonnull %0) #24
  br label %51

51:                                               ; preds = %1, %48
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @print_ddg_edge(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.ddg_edge, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !58
  %5 = icmp eq i32 %4, 2
  %6 = select i1 %5, i32 65, i32 84
  %7 = icmp eq i32 %4, 1
  %8 = select i1 %7, i32 79, i32 %6
  %9 = load ptr, ptr %1, align 8, !tbaa !59
  %10 = getelementptr inbounds %struct.ddg_node, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !29
  %12 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !12
  %14 = getelementptr inbounds %struct.ddg_edge, ptr %1, i64 0, i32 4
  %15 = load i32, ptr %14, align 8, !tbaa !60
  %16 = getelementptr inbounds %struct.ddg_edge, ptr %1, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !61
  %18 = getelementptr inbounds %struct.ddg_edge, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !62
  %20 = getelementptr inbounds %struct.ddg_node, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !29
  %22 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !12
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %13, i32 noundef %8, i32 noundef %15, i32 noundef %17, i32 noundef %23) #24
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_ddg(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ddg, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !21
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %45

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ddg, ptr %1, i64 0, i32 5
  br label %8

8:                                                ; preds = %6, %39
  %9 = phi i64 [ 0, %6 ], [ %41, %39 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.ddg_node, ptr %10, i64 %9
  %12 = load i32, ptr %11, align 8, !tbaa !24
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %12) #24
  %14 = load ptr, ptr %7, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.ddg_node, ptr %14, i64 %9, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !29
  %17 = tail call i32 @print_rtl_single(ptr noundef %0, ptr noundef %16) #23
  %18 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 10, i64 1, ptr %0)
  %19 = load ptr, ptr %7, align 8, !tbaa !22
  %20 = getelementptr inbounds %struct.ddg_node, ptr %19, i64 %9, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !31
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %8, %23
  %24 = phi ptr [ %26, %23 ], [ %21, %8 ]
  tail call void @print_ddg_edge(ptr noundef %0, ptr noundef nonnull %24) #24
  %25 = getelementptr inbounds %struct.ddg_edge, ptr %24, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !31
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !llvm.loop !63

28:                                               ; preds = %23, %8
  %29 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 10, i64 1, ptr %0)
  %30 = load ptr, ptr %7, align 8, !tbaa !22
  %31 = getelementptr inbounds %struct.ddg_node, ptr %30, i64 %9, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !31
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %28, %34
  %35 = phi ptr [ %37, %34 ], [ %32, %28 ]
  tail call void @print_ddg_edge(ptr noundef %0, ptr noundef nonnull %35) #24
  %36 = getelementptr inbounds %struct.ddg_edge, ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !31
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %34, !llvm.loop !64

39:                                               ; preds = %34, %28
  %40 = tail call i32 @fputc(i32 10, ptr %0)
  %41 = add nuw nsw i64 %9, 1
  %42 = load i32, ptr %3, align 8, !tbaa !21
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %8, label %45, !llvm.loop !65

45:                                               ; preds = %39, %2
  ret void
}

; Function Attrs: optsize
declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vcg_print_ddg(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 9, i64 1, ptr %0)
  %4 = getelementptr inbounds %struct.ddg, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !21
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %58

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ddg, ptr %1, i64 0, i32 5
  br label %9

9:                                                ; preds = %7, %53
  %10 = phi i64 [ 0, %7 ], [ %54, %53 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !22
  %12 = getelementptr inbounds %struct.ddg_node, ptr %11, i64 %10, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !29
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !12
  %16 = trunc i64 %10 to i32
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %16, i32 noundef %15) #24
  %18 = load ptr, ptr %8, align 8, !tbaa !22
  %19 = getelementptr inbounds %struct.ddg_node, ptr %18, i64 %10, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !29
  %21 = tail call i32 @print_rtl_single(ptr noundef %0, ptr noundef %20) #23
  %22 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 3, i64 1, ptr %0)
  %23 = load ptr, ptr %8, align 8, !tbaa !22
  %24 = getelementptr inbounds %struct.ddg_node, ptr %23, i64 %10, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !31
  %26 = icmp eq ptr %25, null
  br i1 %26, label %53, label %27

27:                                               ; preds = %9, %43
  %28 = phi ptr [ %51, %43 ], [ %25, %9 ]
  %29 = getelementptr inbounds %struct.ddg_edge, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !62
  %31 = getelementptr inbounds %struct.ddg_node, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !29
  %33 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !12
  %35 = load i32, ptr %30, align 8, !tbaa !24
  %36 = getelementptr inbounds %struct.ddg_edge, ptr %28, i64 0, i32 5
  %37 = load i32, ptr %36, align 4, !tbaa !61
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 22, i64 1, ptr %0)
  br label %43

41:                                               ; preds = %27
  %42 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 8, i64 1, ptr %0)
  br label %43

43:                                               ; preds = %41, %39
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %16, i32 noundef %15) #24
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %35, i32 noundef %34) #24
  %46 = getelementptr inbounds %struct.ddg_edge, ptr %28, i64 0, i32 4
  %47 = load i32, ptr %46, align 8, !tbaa !60
  %48 = load i32, ptr %36, align 4, !tbaa !61
  %49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %47, i32 noundef %48) #24
  %50 = getelementptr inbounds %struct.ddg_edge, ptr %28, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !31
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %27, !llvm.loop !66

53:                                               ; preds = %43, %9
  %54 = add nuw nsw i64 %10, 1
  %55 = load i32, ptr %4, align 8, !tbaa !21
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %9, label %58, !llvm.loop !67

58:                                               ; preds = %53, %2
  %59 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 2, i64 1, ptr %0)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_sccs(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #25
  %6 = icmp eq ptr %0, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ddg_all_sccs, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !68
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.16, i32 noundef %9) #24
  %11 = load i32, ptr %8, align 8, !tbaa !68
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.ddg, ptr %2, i64 0, i32 5
  br label %15

15:                                               ; preds = %13, %35
  %16 = phi i64 [ 0, %13 ], [ %36, %35 ]
  %17 = trunc i64 %16 to i32
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.17, i32 noundef %17) #24
  %19 = load ptr, ptr %1, align 8, !tbaa !70
  %20 = getelementptr inbounds ptr, ptr %19, i64 %16
  %21 = load ptr, ptr %20, align 8, !tbaa !31
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %5, ptr noundef %22) #24
  %23 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #24, !range !16
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %15, %25
  %26 = load i32, ptr %4, align 4, !tbaa !33
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.18, i32 noundef %26) #24
  %28 = load ptr, ptr %14, align 8, !tbaa !22
  %29 = zext i32 %26 to i64
  %30 = getelementptr inbounds %struct.ddg_node, ptr %28, i64 %29, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !29
  %32 = tail call i32 @print_rtl_single(ptr noundef nonnull %0, ptr noundef %31) #23
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %5) #24
  %33 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #24, !range !16
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %25, !llvm.loop !73

35:                                               ; preds = %25, %15
  %36 = add nuw nsw i64 %16, 1
  %37 = load i32, ptr %8, align 8, !tbaa !68
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %15, label %40, !llvm.loop !74

40:                                               ; preds = %35, %7
  %41 = tail call i32 @fputc(i32 10, ptr nonnull %0)
  br label %42

42:                                               ; preds = %3, %40
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %3, align 4, !tbaa !75
  %4 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !77
  %5 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !78
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !79
  %8 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3
  store ptr %8, ptr %0, align 8, !tbaa !80
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i64, ptr %8, align 8, !tbaa !37
  br label %12

12:                                               ; preds = %2, %10
  %13 = phi i64 [ %11, %10 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  store i64 %13, ptr %14, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @sbitmap_iter_cond(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %4 = load i64, ptr %3, align 8, !tbaa !81
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !79
  %10 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %7, align 4, !tbaa !75
  br label %19

12:                                               ; preds = %23
  store i32 %21, ptr %7, align 4, !tbaa !75
  br label %13

13:                                               ; preds = %12, %2
  %14 = phi i64 [ %28, %12 ], [ %4, %2 ]
  %15 = and i64 %14, 1
  %16 = icmp eq i64 %15, 0
  %17 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !77
  br i1 %16, label %30, label %38

19:                                               ; preds = %6, %23
  %20 = phi i32 [ %11, %6 ], [ %21, %23 ]
  %21 = add i32 %20, 1
  %22 = icmp ult i32 %21, %9
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = shl i32 %21, 6
  store i32 %24, ptr %10, align 8, !tbaa !77
  %25 = load ptr, ptr %0, align 8, !tbaa !80
  %26 = zext i32 %21 to i64
  %27 = getelementptr inbounds i64, ptr %25, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !37
  store i64 %28, ptr %3, align 8, !tbaa !81
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %19, label %12, !llvm.loop !82

30:                                               ; preds = %13, %30
  %31 = phi i32 [ %33, %30 ], [ %18, %13 ]
  %32 = phi i64 [ %34, %30 ], [ %14, %13 ]
  %33 = add i32 %31, 1
  %34 = lshr exact i64 %32, 1
  %35 = and i64 %32, 2
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %30, label %37, !llvm.loop !83

37:                                               ; preds = %30
  store i32 %33, ptr %17, align 8, !tbaa !77
  store i64 %34, ptr %3, align 8, !tbaa !81
  br label %38

38:                                               ; preds = %13, %37
  %39 = phi i32 [ %33, %37 ], [ %18, %13 ]
  store i32 %39, ptr %1, align 4, !tbaa !33
  br label %41

40:                                               ; preds = %19
  store i32 %21, ptr %7, align 4, !tbaa !75
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i8 [ 1, %38 ], [ 0, %40 ]
  ret i8 %42
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sbitmap_iter_next(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 4
  %3 = load i64, ptr %2, align 8, !tbaa !81
  %4 = lshr i64 %3, 1
  store i64 %4, ptr %2, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.sbitmap_iterator, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !77
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !77
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_node_of_insn(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !21
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = zext nneg i32 %4 to i64
  br label %13

10:                                               ; preds = %13
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp eq i64 %11, %9
  br i1 %12, label %20, label %13, !llvm.loop !84

13:                                               ; preds = %6, %10
  %14 = phi i64 [ 0, %6 ], [ %11, %10 ]
  %15 = getelementptr inbounds %struct.ddg_node, ptr %8, i64 %14, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !29
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %18, label %10

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ddg_node, ptr %8, i64 %14
  br label %20

20:                                               ; preds = %10, %2, %18
  %21 = phi ptr [ %19, %18 ], [ null, %2 ], [ null, %10 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @find_successors(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #25
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %5, ptr noundef %2) #24
  %6 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #24, !range !16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ddg, ptr %1, i64 0, i32 5
  br label %10

10:                                               ; preds = %8, %10
  %11 = load ptr, ptr %9, align 8, !tbaa !22
  %12 = load i32, ptr %4, align 4, !tbaa !33
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ddg_node, ptr %11, i64 %13, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !26
  tail call void @sbitmap_a_or_b(ptr noundef %0, ptr noundef %0, ptr noundef %15) #23
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %5) #24
  %16 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #24, !range !16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %10, !llvm.loop !85

18:                                               ; preds = %10, %3
  tail call void @sbitmap_difference(ptr noundef %0, ptr noundef %0, ptr noundef %2) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  ret void
}

; Function Attrs: optsize
declare void @sbitmap_a_or_b(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_difference(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @find_predecessors(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #25
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %5, ptr noundef %2) #24
  %6 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #24, !range !16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ddg, ptr %1, i64 0, i32 5
  br label %10

10:                                               ; preds = %8, %10
  %11 = load ptr, ptr %9, align 8, !tbaa !22
  %12 = load i32, ptr %4, align 4, !tbaa !33
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ddg_node, ptr %11, i64 %13, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !27
  tail call void @sbitmap_a_or_b(ptr noundef %0, ptr noundef %0, ptr noundef %15) #23
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %5) #24
  %16 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %5, ptr noundef nonnull %4) #24, !range !16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %10, !llvm.loop !86

18:                                               ; preds = %10, %3
  tail call void @sbitmap_difference(ptr noundef %0, ptr noundef %0, ptr noundef %2) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @create_ddg_all_sccs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !21
  %4 = tail call ptr @sbitmap_alloc(i32 noundef %3) #23
  %5 = tail call ptr @sbitmap_alloc(i32 noundef %3) #23
  %6 = tail call ptr @sbitmap_alloc(i32 noundef %3) #23
  %7 = tail call ptr @xmalloc(i64 noundef 24) #23
  %8 = getelementptr inbounds %struct.ddg_all_sccs, ptr %7, i64 0, i32 2
  store ptr %0, ptr %8, align 8, !tbaa !87
  store ptr null, ptr %7, align 8, !tbaa !70
  %9 = getelementptr inbounds %struct.ddg_all_sccs, ptr %7, i64 0, i32 1
  store i32 0, ptr %9, align 8, !tbaa !68
  %10 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 4, !tbaa !56
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 9
  br label %15

15:                                               ; preds = %13, %33
  %16 = phi i64 [ 0, %13 ], [ %34, %33 ]
  %17 = load ptr, ptr %14, align 8, !tbaa !57
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !31
  %20 = getelementptr inbounds %struct.ddg_edge, ptr %19, i64 0, i32 8
  %21 = load i32, ptr %20, align 8, !tbaa !12
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %33, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.ddg_edge, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  %26 = load ptr, ptr %19, align 8, !tbaa !59
  tail call void @sbitmap_zero(ptr noundef %6) #23
  tail call void @sbitmap_zero(ptr noundef %4) #23
  tail call void @sbitmap_zero(ptr noundef %5) #23
  %27 = load i32, ptr %25, align 8, !tbaa !24
  tail call fastcc void @SET_BIT(ptr noundef %4, i32 noundef %27) #24
  %28 = load i32, ptr %26, align 8, !tbaa !24
  tail call fastcc void @SET_BIT(ptr noundef %5, i32 noundef %28) #24
  %29 = tail call i32 @find_nodes_on_paths(ptr noundef %6, ptr noundef nonnull %0, ptr noundef %4, ptr noundef %5) #24, !range !88
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = tail call fastcc ptr @create_scc(ptr noundef nonnull %0, ptr noundef %6) #24
  tail call fastcc void @add_scc_to_ddg(ptr noundef nonnull %7, ptr noundef %32) #24
  br label %33

33:                                               ; preds = %23, %31, %15
  %34 = add nuw nsw i64 %16, 1
  %35 = load i32, ptr %10, align 4, !tbaa !56
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %15, label %38, !llvm.loop !89

38:                                               ; preds = %33, %1
  tail call fastcc void @order_sccs(ptr noundef nonnull %7) #24
  %39 = load ptr, ptr %4, align 8, !tbaa !53
  tail call void @free(ptr noundef %39) #24
  tail call void @free(ptr noundef %4) #24
  %40 = load ptr, ptr %5, align 8, !tbaa !53
  tail call void @free(ptr noundef %40) #24
  tail call void @free(ptr noundef %5) #24
  %41 = load ptr, ptr %6, align 8, !tbaa !53
  tail call void @free(ptr noundef %41) #24
  tail call void @free(ptr noundef %6) #24
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = load ptr, ptr %0, align 8, !tbaa !53
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !37
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !12
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !12
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !37
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !37
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @find_nodes_on_paths(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store i32 0, ptr %5, align 4, !tbaa !33
  %7 = getelementptr inbounds %struct.ddg, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #25
  %9 = tail call ptr @sbitmap_alloc(i32 noundef %8) #23
  %10 = tail call ptr @sbitmap_alloc(i32 noundef %8) #23
  %11 = tail call ptr @sbitmap_alloc(i32 noundef %8) #23
  %12 = tail call ptr @sbitmap_alloc(i32 noundef %8) #23
  tail call void @sbitmap_copy(ptr noundef %10, ptr noundef %2) #23
  tail call void @sbitmap_copy(ptr noundef %12, ptr noundef %2) #23
  %13 = getelementptr inbounds %struct.ddg, ptr %1, i64 0, i32 5
  br label %16

14:                                               ; preds = %48
  %15 = icmp eq i32 %49, 0
  br i1 %15, label %52, label %16, !llvm.loop !90

16:                                               ; preds = %4, %14
  tail call void @sbitmap_copy(ptr noundef %9, ptr noundef %12) #23
  tail call void @sbitmap_zero(ptr noundef %12) #23
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %6, ptr noundef %9) #24
  %17 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %5) #24, !range !16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %52, label %19

19:                                               ; preds = %16, %48
  %20 = phi i32 [ %49, %48 ], [ 0, %16 ]
  %21 = load ptr, ptr %13, align 8, !tbaa !22
  %22 = load i32, ptr %5, align 4, !tbaa !33
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ddg_node, ptr %21, i64 %23, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !31
  %26 = icmp eq ptr %25, null
  br i1 %26, label %48, label %27

27:                                               ; preds = %19, %43
  %28 = phi ptr [ %46, %43 ], [ %25, %19 ]
  %29 = phi i32 [ %44, %43 ], [ %20, %19 ]
  %30 = getelementptr inbounds %struct.ddg_edge, ptr %28, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !62
  %32 = load i32, ptr %31, align 8, !tbaa !24
  %33 = lshr i32 %32, 6
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds %struct.simple_bitmap_def, ptr %10, i64 0, i32 3, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !37
  %37 = and i32 %32, 63
  %38 = zext nneg i32 %37 to i64
  %39 = shl nuw i64 1, %38
  %40 = and i64 %39, %36
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  tail call fastcc void @SET_BIT(ptr noundef nonnull %10, i32 noundef %32) #24
  tail call fastcc void @SET_BIT(ptr noundef %12, i32 noundef %32) #24
  br label %43

43:                                               ; preds = %42, %27
  %44 = phi i32 [ %29, %27 ], [ 1, %42 ]
  %45 = getelementptr inbounds %struct.ddg_edge, ptr %28, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !31
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %27, !llvm.loop !91

48:                                               ; preds = %43, %19
  %49 = phi i32 [ %20, %19 ], [ %44, %43 ]
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %6) #24
  %50 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %5) #24, !range !16
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %14, label %19, !llvm.loop !92

52:                                               ; preds = %16, %14
  tail call void @sbitmap_copy(ptr noundef %11, ptr noundef %3) #23
  tail call void @sbitmap_copy(ptr noundef %12, ptr noundef %3) #23
  br label %55

53:                                               ; preds = %86
  %54 = icmp eq i32 %87, 0
  br i1 %54, label %90, label %55, !llvm.loop !93

55:                                               ; preds = %52, %53
  tail call void @sbitmap_copy(ptr noundef %9, ptr noundef %12) #23
  tail call void @sbitmap_zero(ptr noundef %12) #23
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %6, ptr noundef %9) #24
  %56 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %5) #24, !range !16
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %90, label %58

58:                                               ; preds = %55, %86
  %59 = phi i32 [ %87, %86 ], [ 0, %55 ]
  %60 = load ptr, ptr %13, align 8, !tbaa !22
  %61 = load i32, ptr %5, align 4, !tbaa !33
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.ddg_node, ptr %60, i64 %62, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !31
  %65 = icmp eq ptr %64, null
  br i1 %65, label %86, label %66

66:                                               ; preds = %58, %81
  %67 = phi ptr [ %84, %81 ], [ %64, %58 ]
  %68 = phi i32 [ %82, %81 ], [ %59, %58 ]
  %69 = load ptr, ptr %67, align 8, !tbaa !59
  %70 = load i32, ptr %69, align 8, !tbaa !24
  %71 = lshr i32 %70, 6
  %72 = zext nneg i32 %71 to i64
  %73 = getelementptr inbounds %struct.simple_bitmap_def, ptr %11, i64 0, i32 3, i64 %72
  %74 = load i64, ptr %73, align 8, !tbaa !37
  %75 = and i32 %70, 63
  %76 = zext nneg i32 %75 to i64
  %77 = shl nuw i64 1, %76
  %78 = and i64 %77, %74
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  tail call fastcc void @SET_BIT(ptr noundef nonnull %11, i32 noundef %70) #24
  tail call fastcc void @SET_BIT(ptr noundef %12, i32 noundef %70) #24
  br label %81

81:                                               ; preds = %80, %66
  %82 = phi i32 [ %68, %66 ], [ 1, %80 ]
  %83 = getelementptr inbounds %struct.ddg_edge, ptr %67, i64 0, i32 6
  %84 = load ptr, ptr %83, align 8, !tbaa !31
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %66, !llvm.loop !94

86:                                               ; preds = %81, %58
  %87 = phi i32 [ %59, %58 ], [ %82, %81 ]
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %6) #24
  %88 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %5) #24, !range !16
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %53, label %58, !llvm.loop !95

90:                                               ; preds = %55, %53
  %91 = tail call zeroext i8 @sbitmap_a_and_b_cg(ptr noundef %0, ptr noundef %10, ptr noundef %11) #23
  %92 = zext i8 %91 to i32
  %93 = load ptr, ptr %9, align 8, !tbaa !53
  tail call void @free(ptr noundef %93) #24
  tail call void @free(ptr noundef %9) #24
  %94 = load ptr, ptr %10, align 8, !tbaa !53
  tail call void @free(ptr noundef %94) #24
  tail call void @free(ptr noundef %10) #24
  %95 = load ptr, ptr %11, align 8, !tbaa !53
  tail call void @free(ptr noundef %95) #24
  tail call void @free(ptr noundef %11) #24
  %96 = load ptr, ptr %12, align 8, !tbaa !53
  tail call void @free(ptr noundef %96) #24
  tail call void @free(ptr noundef %12) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  ret i32 %92
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_scc(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  %5 = tail call ptr @xmalloc(i64 noundef 24) #23
  %6 = getelementptr inbounds %struct.ddg_scc, ptr %5, i64 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.ddg_scc, ptr %5, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !97
  %8 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !21
  %10 = tail call ptr @sbitmap_alloc(i32 noundef %9) #23
  store ptr %10, ptr %5, align 8, !tbaa !71
  tail call void @sbitmap_copy(ptr noundef %10, ptr noundef %1) #23
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %4, ptr noundef %1) #24
  %11 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #24, !range !16
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %49, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  br label %15

15:                                               ; preds = %13, %46
  %16 = load ptr, ptr %14, align 8, !tbaa !22
  %17 = load i32, ptr %3, align 4, !tbaa !33
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ddg_node, ptr %16, i64 %18, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !31
  %21 = icmp eq ptr %20, null
  br i1 %21, label %46, label %22

22:                                               ; preds = %15, %42
  %23 = phi ptr [ %44, %42 ], [ %20, %15 ]
  %24 = getelementptr inbounds %struct.ddg_edge, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  %26 = load i32, ptr %25, align 8, !tbaa !24
  %27 = lshr i32 %26, 6
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !37
  %31 = and i32 %26, 63
  %32 = zext nneg i32 %31 to i64
  %33 = shl nuw i64 1, %32
  %34 = and i64 %33, %30
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.ddg_edge, ptr %23, i64 0, i32 8
  store i32 1, ptr %37, align 8, !tbaa !12
  %38 = getelementptr inbounds %struct.ddg_edge, ptr %23, i64 0, i32 5
  %39 = load i32, ptr %38, align 4, !tbaa !61
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  tail call fastcc void @add_backarc_to_scc(ptr noundef nonnull %5, ptr noundef nonnull %23) #24
  br label %42

42:                                               ; preds = %22, %41, %36
  %43 = getelementptr inbounds %struct.ddg_edge, ptr %23, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !31
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %22, !llvm.loop !98

46:                                               ; preds = %42, %15
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %4) #24
  %47 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %4, ptr noundef nonnull %3) #24, !range !16
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %15, !llvm.loop !99

49:                                               ; preds = %46, %2
  tail call fastcc void @set_recurrence_length(ptr noundef nonnull %5, ptr noundef %0) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_scc_to_ddg(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ddg_all_sccs, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !68
  %5 = shl i32 %4, 3
  %6 = add i32 %5, 8
  %7 = load ptr, ptr %0, align 8, !tbaa !70
  %8 = sext i32 %6 to i64
  %9 = tail call ptr @xrealloc(ptr noundef %7, i64 noundef %8) #23
  store ptr %9, ptr %0, align 8, !tbaa !70
  %10 = load i32, ptr %3, align 8, !tbaa !68
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %3, align 8, !tbaa !68
  %12 = sext i32 %10 to i64
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  store ptr %1, ptr %13, align 8, !tbaa !31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @order_sccs(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !70
  %3 = getelementptr inbounds %struct.ddg_all_sccs, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !68
  %5 = sext i32 %4 to i64
  tail call void @spec_qsort(ptr noundef %2, i64 noundef %5, i64 noundef 8, ptr noundef nonnull @compare_sccs) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_ddg_all_sccs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ddg_all_sccs, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !68
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3, %7
  %8 = phi i64 [ %12, %7 ], [ 0, %3 ]
  %9 = load ptr, ptr %0, align 8, !tbaa !70
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !31
  tail call fastcc void @free_scc(ptr noundef %11) #24
  %12 = add nuw nsw i64 %8, 1
  %13 = load i32, ptr %4, align 8, !tbaa !68
  %14 = sext i32 %13 to i64
  %15 = icmp slt i64 %12, %14
  br i1 %15, label %7, label %16, !llvm.loop !100

16:                                               ; preds = %7, %3
  tail call void @free(ptr noundef nonnull %0) #24
  br label %17

17:                                               ; preds = %1, %16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @free_scc(ptr noundef %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !71
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  tail call void @free(ptr noundef %5) #24
  %6 = load ptr, ptr %0, align 8, !tbaa !71
  tail call void @free(ptr noundef %6) #24
  %7 = getelementptr inbounds %struct.ddg_scc, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !97
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ddg_scc, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  tail call void @free(ptr noundef %12) #24
  br label %13

13:                                               ; preds = %10, %3
  tail call void @free(ptr noundef nonnull %0) #24
  br label %14

14:                                               ; preds = %1, %13
  ret void
}

; Function Attrs: optsize
declare void @sbitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @sbitmap_a_and_b_cg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @longest_simple_path(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store i32 0, ptr %5, align 4, !tbaa !33
  %7 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !21
  %9 = tail call ptr @sbitmap_alloc(i32 noundef %8) #23
  %10 = tail call ptr @sbitmap_alloc(i32 noundef %8) #23
  %11 = load i32, ptr %7, align 8, !tbaa !21
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ 0, %13 ], [ %19, %15 ]
  %17 = load ptr, ptr %14, align 8, !tbaa !22
  %18 = getelementptr inbounds %struct.ddg_node, ptr %17, i64 %16, i32 7
  store i32 -1, ptr %18, align 8, !tbaa !12
  %19 = add nuw nsw i64 %16, 1
  %20 = load i32, ptr %7, align 8, !tbaa !21
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %15, label %23, !llvm.loop !101

23:                                               ; preds = %15, %4
  %24 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  %26 = sext i32 %1 to i64
  %27 = getelementptr inbounds %struct.ddg_node, ptr %25, i64 %26, i32 7
  store i32 0, ptr %27, align 8, !tbaa !12
  tail call void @sbitmap_zero(ptr noundef %10) #23
  tail call fastcc void @SET_BIT(ptr noundef %10, i32 noundef %1) #24
  br label %28

28:                                               ; preds = %23, %42
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #25
  tail call void @sbitmap_copy(ptr noundef %9, ptr noundef %10) #23
  tail call void @sbitmap_zero(ptr noundef %10) #23
  call fastcc void @sbitmap_iter_init(ptr noundef nonnull %6, ptr noundef %9) #24
  %29 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %5) #24, !range !16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #25
  br label %44

32:                                               ; preds = %28, %32
  %33 = phi i32 [ %39, %32 ], [ 0, %28 ]
  %34 = load ptr, ptr %24, align 8, !tbaa !22
  %35 = load i32, ptr %5, align 4, !tbaa !33
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ddg_node, ptr %34, i64 %36
  %38 = tail call fastcc i32 @update_dist_to_successors(ptr noundef %37, ptr noundef %3, ptr noundef %10) #24, !range !102
  %39 = or i32 %38, %33
  call fastcc void @sbitmap_iter_next(ptr noundef nonnull %6) #24
  %40 = call fastcc zeroext i8 @sbitmap_iter_cond(ptr noundef nonnull %6, ptr noundef nonnull %5) #24, !range !16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %32, !llvm.loop !103

42:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #25
  %43 = icmp eq i32 %39, 0
  br i1 %43, label %44, label %28, !llvm.loop !104

44:                                               ; preds = %42, %31
  %45 = load ptr, ptr %24, align 8, !tbaa !22
  %46 = sext i32 %2 to i64
  %47 = getelementptr inbounds %struct.ddg_node, ptr %45, i64 %46, i32 7
  %48 = load i32, ptr %47, align 8, !tbaa !12
  %49 = load ptr, ptr %9, align 8, !tbaa !53
  tail call void @free(ptr noundef %49) #24
  tail call void @free(ptr noundef %9) #24
  %50 = load ptr, ptr %10, align 8, !tbaa !53
  tail call void @free(ptr noundef %50) #24
  tail call void @free(ptr noundef %10) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  ret i32 %48
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @update_dist_to_successors(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #11 {
  %4 = getelementptr inbounds %struct.ddg_node, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !31
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ddg_node, ptr %0, i64 0, i32 7
  br label %9

9:                                                ; preds = %7, %37
  %10 = phi ptr [ %5, %7 ], [ %40, %37 ]
  %11 = phi i32 [ 0, %7 ], [ %38, %37 ]
  %12 = getelementptr inbounds %struct.ddg_edge, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = load i32, ptr %13, align 8, !tbaa !24
  %15 = lshr i32 %14, 6
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1, i64 0, i32 3, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !37
  %19 = and i32 %14, 63
  %20 = zext nneg i32 %19 to i64
  %21 = shl nuw i64 1, %20
  %22 = and i64 %21, %18
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.ddg_edge, ptr %10, i64 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !61
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.ddg_node, ptr %13, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !12
  %31 = load i32, ptr %8, align 8, !tbaa !12
  %32 = getelementptr inbounds %struct.ddg_edge, ptr %10, i64 0, i32 4
  %33 = load i32, ptr %32, align 8, !tbaa !60
  %34 = add nsw i32 %33, %31
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 %34, ptr %29, align 8, !tbaa !12
  tail call fastcc void @SET_BIT(ptr noundef %2, i32 noundef %14) #24
  br label %37

37:                                               ; preds = %36, %28, %24, %9
  %38 = phi i32 [ 1, %36 ], [ %11, %28 ], [ %11, %24 ], [ %11, %9 ]
  %39 = getelementptr inbounds %struct.ddg_edge, ptr %10, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !31
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %9, !llvm.loop !105

42:                                               ; preds = %37, %3
  %43 = phi i32 [ 0, %3 ], [ %38, %37 ]
  ret i32 %43
}

; Function Attrs: optsize
declare void @note_uses(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @mark_mem_use_1(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @for_each_rtx(ptr noundef %0, ptr noundef nonnull @mark_mem_use, ptr noundef %1) #23
  ret void
}

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal noundef i32 @mark_mem_use(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !31
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store i1 true, ptr @mem_ref_p, align 1
  br label %8

8:                                                ; preds = %7, %2
  ret i32 0
}

; Function Attrs: optsize
declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable
define internal void @mark_mem_store(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #13 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store i1 true, ptr @mem_ref_p, align 1
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: optsize
declare void @init_deps_global() local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_deps(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @get_ebb_head_tail(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sched_analyze(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @sd_iterator_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct._sd_iterator) align 8 %0, ptr noundef %1) unnamed_addr #14 {
  store i32 3, ptr %0, align 8, !tbaa !106
  %3 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  store ptr @sd_iterator_start.null_link, ptr %4, align 8, !tbaa !109
  %5 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  store i8 0, ptr %5, align 8, !tbaa !110
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @sd_iterator_cond(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !109
  %6 = load ptr, ptr %5, align 8, !tbaa !31
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !111
  %10 = getelementptr inbounds %struct._dep_node, ptr %9, i64 0, i32 1
  store ptr %10, ptr %1, align 8, !tbaa !31
  br label %24

11:                                               ; preds = %2
  %12 = load i32, ptr %0, align 8, !tbaa !106
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %15 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !108
  %17 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 3
  call void @sd_next_list(ptr noundef %16, ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %17) #23
  %18 = load ptr, ptr %3, align 8, !tbaa !31
  store ptr %18, ptr %4, align 8, !tbaa !109
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  br label %23

21:                                               ; preds = %14
  %22 = call fastcc zeroext i8 @sd_iterator_cond(ptr noundef nonnull %0, ptr noundef %1) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  br label %24

23:                                               ; preds = %20, %11
  store ptr null, ptr %1, align 8, !tbaa !31
  br label %24

24:                                               ; preds = %21, %23, %8
  %25 = phi i8 [ 1, %8 ], [ 0, %23 ], [ %22, %21 ]
  ret i8 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_ddg_dep_from_intra_loop_link(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ddg_node, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !29
  %7 = tail call fastcc zeroext i8 @mem_access_insn_p(ptr noundef %6) #24, !range !16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ddg_node, ptr %2, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !29
  %12 = tail call fastcc zeroext i8 @mem_access_insn_p(ptr noundef %11) #24, !range !16
  %13 = icmp ne i8 %12, 0
  %14 = select i1 %13, i32 2, i32 1
  br label %15

15:                                               ; preds = %9, %4
  %16 = phi i1 [ false, %4 ], [ %13, %9 ]
  %17 = phi i32 [ 1, %4 ], [ %14, %9 ]
  %18 = load i32, ptr %1, align 8, !tbaa !24
  %19 = load i32, ptr %2, align 8, !tbaa !24
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 160, ptr noundef nonnull @.str.1) #23
  br label %22

22:                                               ; preds = %15, %21
  %23 = icmp eq ptr %3, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 161, ptr noundef nonnull @.str.1) #23
  br label %25

25:                                               ; preds = %22, %24
  %26 = getelementptr inbounds %struct._dep, ptr %3, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !113
  %28 = icmp eq i32 %27, 12
  %29 = icmp eq i32 %27, 11
  %30 = zext i1 %29 to i32
  %31 = select i1 %28, i32 2, i32 %30
  %32 = getelementptr inbounds %struct.ddg_node, ptr %2, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !29
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 65535
  %36 = icmp ne i32 %35, 7
  %37 = or i1 %28, %36
  br i1 %37, label %39, label %38

38:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 169, ptr noundef nonnull @.str.1) #23
  br label %39

39:                                               ; preds = %25, %38
  %40 = load ptr, ptr %5, align 8, !tbaa !29
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp ne i32 %42, 7
  %44 = or i1 %28, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 170, ptr noundef nonnull @.str.1) #23
  br label %90

46:                                               ; preds = %39
  %47 = load i32, ptr @flag_modulo_sched_allow_regmoves, align 4, !tbaa !33
  %48 = icmp ne i32 %47, 0
  %49 = and i1 %28, %48
  %50 = xor i1 %49, true
  %51 = or i1 %16, %50
  br i1 %51, label %90, label %52

52:                                               ; preds = %46
  %53 = load ptr, ptr %32, align 8, !tbaa !29
  %54 = load i32, ptr %53, align 8
  %55 = and i32 %54, 65535
  %56 = add nsw i32 %55, -7
  %57 = icmp ult i32 %56, 4
  br i1 %57, label %58, label %90

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.rtx_def, ptr %53, i64 1
  %60 = load ptr, ptr %59, align 8, !tbaa !12
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 65535
  %63 = icmp eq i32 %62, 23
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = tail call ptr @single_set_2(ptr noundef nonnull %53, ptr noundef nonnull %60) #23
  %66 = icmp eq ptr %65, null
  br i1 %66, label %90, label %67

67:                                               ; preds = %58, %64
  %68 = phi ptr [ %65, %64 ], [ %60, %58 ]
  %69 = getelementptr inbounds %struct.rtx_def, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !12
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 65535
  %73 = icmp eq i32 %72, 37
  br i1 %73, label %74, label %90

74:                                               ; preds = %67
  %75 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %70) #24
  %76 = load ptr, ptr %0, align 8, !tbaa !5
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 9
  %78 = load i32, ptr %77, align 8, !tbaa !41
  %79 = tail call fastcc ptr @df_rd_get_bb_info(i32 noundef %78) #24
  %80 = tail call ptr @df_bb_regno_first_def_find(ptr noundef %76, i32 noundef %75) #23
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #23
  br label %83

83:                                               ; preds = %74, %82
  %84 = getelementptr inbounds %struct.df_rd_bb_info, ptr %79, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !43
  %86 = getelementptr inbounds %struct.df_base_ref, ptr %80, i64 0, i32 7
  %87 = load i32, ptr %86, align 4, !tbaa !12
  %88 = tail call i32 @bitmap_bit_p(ptr noundef %85, i32 noundef %87) #23
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %52, %45, %64, %67, %83, %46
  %91 = tail call i32 @dep_cost(ptr noundef nonnull %3) #23
  %92 = tail call fastcc ptr @create_ddg_edge(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %31, i32 noundef %17, i32 noundef %91, i32 noundef 0) #24
  tail call fastcc void @add_edge_to_ddg(ptr noundef %92) #24
  br label %93

93:                                               ; preds = %83, %90
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sd_iterator_next(ptr nocapture noundef %0) unnamed_addr #16 {
  %2 = getelementptr inbounds %struct._sd_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  %4 = load ptr, ptr %3, align 8, !tbaa !31
  %5 = getelementptr inbounds %struct._dep_link, ptr %4, i64 0, i32 1
  store ptr %5, ptr %2, align 8, !tbaa !109
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @mem_access_insn_p(ptr nocapture noundef readonly %0) unnamed_addr #17 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = tail call fastcc zeroext i8 @rtx_mem_access_p(ptr noundef %3) #24, !range !16
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_inter_loop_mem_dep(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ddg_node, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !29
  %6 = getelementptr inbounds %struct.ddg_node, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !29
  %8 = tail call zeroext i8 @insn_alias_sets_conflict_p(ptr noundef %5, ptr noundef %7) #23
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %51, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !tbaa !29
  %12 = tail call fastcc zeroext i8 @mem_write_insn_p(ptr noundef %11) #24, !range !16
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %6, align 8, !tbaa !29
  %15 = tail call fastcc zeroext i8 @mem_read_insn_p(ptr noundef %14) #24, !range !16
  %16 = icmp eq i8 %15, 0
  br i1 %13, label %34, label %17

17:                                               ; preds = %10
  br i1 %16, label %24, label %18

18:                                               ; preds = %17
  %19 = load ptr, ptr %6, align 8, !tbaa !29
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 7
  %23 = select i1 %22, i32 2, i32 0
  tail call fastcc void @create_ddg_dep_no_link(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %23, i32 noundef 2) #24
  br label %51

24:                                               ; preds = %17
  %25 = load i32, ptr %1, align 8, !tbaa !24
  %26 = load i32, ptr %2, align 8, !tbaa !24
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %51, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %6, align 8, !tbaa !29
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 7
  %33 = select i1 %32, i32 2, i32 1
  tail call fastcc void @create_ddg_dep_no_link(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %33, i32 noundef 2) #24
  br label %51

34:                                               ; preds = %10
  br i1 %16, label %35, label %51

35:                                               ; preds = %34
  %36 = load i32, ptr %1, align 8, !tbaa !24
  %37 = load i32, ptr %2, align 8, !tbaa !24
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  tail call fastcc void @create_ddg_dep_no_link(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 2, i32 noundef 2) #24
  %40 = load ptr, ptr %4, align 8, !tbaa !29
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 7
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %6, align 8, !tbaa !29
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 65535
  %48 = icmp eq i32 %47, 7
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %39
  tail call fastcc void @create_ddg_dep_no_link(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %1, i32 noundef 2, i32 noundef 2) #24
  br label %51

50:                                               ; preds = %44
  tail call fastcc void @create_ddg_dep_no_link(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %1, i32 noundef 0, i32 noundef 2) #24
  br label %51

51:                                               ; preds = %49, %50, %35, %34, %18, %28, %24, %3
  ret void
}

; Function Attrs: optsize
declare void @finish_deps_global() local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_deps(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sched_free_deps(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sd_next_list(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #18 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !12
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @df_rd_get_bb_info(i32 noundef %0) unnamed_addr #19 {
  %2 = load ptr, ptr @df, align 8, !tbaa !31
  %3 = getelementptr inbounds %struct.df, ptr %2, i64 0, i32 1, i64 3
  %4 = load ptr, ptr %3, align 8, !tbaa !31
  %5 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !114
  %7 = icmp ugt i32 %6, %0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dataflow, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !116
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !31
  br label %14

14:                                               ; preds = %1, %8
  %15 = phi ptr [ %13, %8 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @df_bb_regno_first_def_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @dep_cost(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_ddg_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = tail call ptr @xmalloc(i64 noundef 56) #23
  store ptr %0, ptr %7, align 8, !tbaa !59
  %8 = getelementptr inbounds %struct.ddg_edge, ptr %7, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !62
  %9 = getelementptr inbounds %struct.ddg_edge, ptr %7, i64 0, i32 2
  store i32 %2, ptr %9, align 8, !tbaa !58
  %10 = getelementptr inbounds %struct.ddg_edge, ptr %7, i64 0, i32 3
  store i32 %3, ptr %10, align 4, !tbaa !117
  %11 = getelementptr inbounds %struct.ddg_edge, ptr %7, i64 0, i32 4
  store i32 %4, ptr %11, align 8, !tbaa !60
  %12 = getelementptr inbounds %struct.ddg_edge, ptr %7, i64 0, i32 5
  store i32 %5, ptr %12, align 4, !tbaa !61
  %13 = getelementptr inbounds %struct.ddg_edge, ptr %7, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_edge_to_ddg(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !59
  %3 = getelementptr inbounds %struct.ddg_edge, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.ddg_node, ptr %2, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !26
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ddg_node, ptr %4, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !27
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 702, ptr noundef nonnull @.str.1) #23
  %13 = load ptr, ptr %5, align 8, !tbaa !26
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi ptr [ %6, %8 ], [ %13, %12 ]
  %16 = load i32, ptr %4, align 8, !tbaa !24
  tail call fastcc void @SET_BIT(ptr noundef %15, i32 noundef %16) #24
  %17 = getelementptr inbounds %struct.ddg_node, ptr %4, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !27
  %19 = load i32, ptr %2, align 8, !tbaa !24
  tail call fastcc void @SET_BIT(ptr noundef %18, i32 noundef %19) #24
  %20 = getelementptr inbounds %struct.ddg_node, ptr %4, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !118
  %22 = getelementptr inbounds %struct.ddg_edge, ptr %0, i64 0, i32 6
  store ptr %21, ptr %22, align 8, !tbaa !119
  store ptr %0, ptr %20, align 8, !tbaa !118
  %23 = getelementptr inbounds %struct.ddg_node, ptr %2, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = getelementptr inbounds %struct.ddg_edge, ptr %0, i64 0, i32 7
  store ptr %24, ptr %25, align 8, !tbaa !50
  store ptr %0, ptr %23, align 8, !tbaa !49
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @rtx_mem_access_p(ptr noundef readonly %0) unnamed_addr #17 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %45, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %45, label %7

7:                                                ; preds = %3
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !31
  %11 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %8
  %12 = load i8, ptr %11, align 1, !tbaa !12
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %45, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %16 = zext i8 %12 to i64
  br label %17

17:                                               ; preds = %14, %43
  %18 = phi i64 [ %16, %14 ], [ %19, %43 ]
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds i8, ptr %10, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !12
  switch i8 %21, label %43 [
    i8 101, label %29
    i8 69, label %22
  ]

22:                                               ; preds = %17
  %23 = getelementptr inbounds [1 x %union.rtunion_def], ptr %15, i64 0, i64 %19
  %24 = load ptr, ptr %23, align 8, !tbaa !12
  %25 = load i32, ptr %24, align 8, !tbaa !120
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = zext nneg i32 %25 to i64
  br label %37

29:                                               ; preds = %17
  %30 = getelementptr inbounds [1 x %union.rtunion_def], ptr %15, i64 0, i64 %19
  %31 = load ptr, ptr %30, align 8, !tbaa !12
  %32 = tail call fastcc zeroext i8 @rtx_mem_access_p(ptr noundef %31) #24, !range !16
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %43, label %45

34:                                               ; preds = %37
  %35 = add nuw nsw i64 %38, 1
  %36 = icmp eq i64 %35, %28
  br i1 %36, label %43, label %37, !llvm.loop !122

37:                                               ; preds = %27, %34
  %38 = phi i64 [ 0, %27 ], [ %35, %34 ]
  %39 = getelementptr inbounds %struct.rtvec_def, ptr %24, i64 0, i32 1, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !31
  %41 = tail call fastcc zeroext i8 @rtx_mem_access_p(ptr noundef %40) #24, !range !16
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %34, label %45

43:                                               ; preds = %34, %22, %17, %29
  %44 = icmp sgt i64 %18, 1
  br i1 %44, label %17, label %45, !llvm.loop !123

45:                                               ; preds = %29, %43, %37, %7, %3, %1
  %46 = phi i8 [ 0, %1 ], [ 1, %3 ], [ 0, %7 ], [ 1, %37 ], [ 1, %29 ], [ 0, %43 ]
  ret i8 %46
}

; Function Attrs: optsize
declare zeroext i8 @insn_alias_sets_conflict_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_ddg_dep_no_link(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct._dep, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #25
  %7 = getelementptr inbounds %struct.ddg_node, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp ne i32 %10, 7
  %12 = icmp eq i32 %3, 2
  %13 = or i1 %12, %11
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 215, ptr noundef nonnull @.str.1) #23
  br label %15

15:                                               ; preds = %5, %14
  %16 = getelementptr inbounds %struct.ddg_node, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !29
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp ne i32 %19, 7
  %21 = or i1 %12, %20
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 216, ptr noundef nonnull @.str.1) #23
  %23 = load ptr, ptr %16, align 8, !tbaa !29
  br label %24

24:                                               ; preds = %15, %22
  %25 = phi ptr [ %17, %15 ], [ %23, %22 ]
  %26 = icmp eq i32 %3, 1
  %27 = select i1 %26, i32 11, i32 0
  %28 = select i1 %12, i32 12, i32 %27
  %29 = load ptr, ptr %7, align 8, !tbaa !29
  call void @init_dep(ptr noundef nonnull %6, ptr noundef %25, ptr noundef %29, i32 noundef %28) #23
  %30 = call i32 @dep_cost(ptr noundef nonnull %6) #23
  %31 = call fastcc ptr @create_ddg_edge(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %4, i32 noundef %30, i32 noundef 1) #24
  call fastcc void @add_backarc_to_ddg(ptr noundef %0, ptr noundef %31) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #25
  ret void
}

; Function Attrs: optsize
declare void @init_dep(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_backarc_to_ddg(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 4, !tbaa !56
  %5 = shl i32 %4, 3
  %6 = add i32 %5, 8
  tail call fastcc void @add_edge_to_ddg(ptr noundef %1) #24
  %7 = getelementptr inbounds %struct.ddg, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = sext i32 %6 to i64
  %10 = tail call ptr @xrealloc(ptr noundef %8, i64 noundef %9) #23
  store ptr %10, ptr %7, align 8, !tbaa !57
  %11 = load i32, ptr %3, align 4, !tbaa !56
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %3, align 4, !tbaa !56
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  store ptr %1, ptr %14, align 8, !tbaa !31
  ret void
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #16 {
  %4 = load ptr, ptr %1, align 8, !tbaa !124
  store ptr %4, ptr %0, align 8, !tbaa !126
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !128
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !126
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !129
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !131
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !37
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !132
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !33
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !132
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !33
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !133

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !33
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !33
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !131
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !126
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !131
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !37
  store i64 %35, ptr %3, align 8, !tbaa !132
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !33
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !33
  %40 = load i32, ptr %23, align 8, !tbaa !131
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !131
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !134

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !135
  store ptr %44, ptr %0, align 8, !tbaa !126
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !129
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !33
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !132
  store i32 %16, ptr %1, align 4, !tbaa !33
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_cross_iteration_register_deps(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.df_base_ref, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !12
  %5 = getelementptr inbounds %struct.df_base_ref, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = load ptr, ptr %6, align 8, !tbaa !136
  %8 = tail call ptr @get_node_of_insn(ptr noundef %0, ptr noundef %7) #24
  %9 = load ptr, ptr %0, align 8, !tbaa !5
  %10 = tail call ptr @df_bb_regno_first_def_find(ptr noundef %9, i32 noundef %4) #23
  %11 = icmp eq ptr %8, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 261, ptr noundef nonnull @.str.1) #23
  br label %13

13:                                               ; preds = %2, %12
  %14 = icmp eq ptr %10, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 262, ptr noundef nonnull @.str.1) #23
  br label %16

16:                                               ; preds = %13, %15
  %17 = getelementptr inbounds %struct.df_base_ref, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %70, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 3
  %22 = getelementptr inbounds %struct.df_base_ref, ptr %1, i64 0, i32 7
  %23 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 7
  br label %24

24:                                               ; preds = %20, %63
  %25 = phi ptr [ %18, %20 ], [ %66, %63 ]
  %26 = phi i32 [ 0, %20 ], [ %64, %63 ]
  %27 = load ptr, ptr %25, align 8, !tbaa !138
  %28 = getelementptr inbounds %struct.df_base_ref, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !12
  %30 = load ptr, ptr %29, align 8, !tbaa !136
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !12
  %33 = load ptr, ptr %0, align 8, !tbaa !5
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %24
  %36 = tail call ptr @get_node_of_insn(ptr noundef nonnull %0, ptr noundef nonnull %30) #24
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 279, ptr noundef nonnull @.str.1) #23
  br label %39

39:                                               ; preds = %35, %38
  %40 = load i32, ptr %36, align 8, !tbaa !24
  %41 = load i32, ptr %8, align 8, !tbaa !24
  %42 = icmp sgt i32 %40, %41
  %43 = load i32, ptr %30, align 8
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 7
  br i1 %42, label %48, label %46

46:                                               ; preds = %39
  %47 = select i1 %45, i32 2, i32 0
  tail call fastcc void @create_ddg_dep_no_link(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull %36, i32 noundef %47, i32 noundef 1) #24
  br label %63

48:                                               ; preds = %39
  br i1 %45, label %63, label %49

49:                                               ; preds = %48
  %50 = load ptr, ptr %21, align 8, !tbaa !12
  %51 = load ptr, ptr %50, align 8, !tbaa !136
  %52 = tail call ptr @get_node_of_insn(ptr noundef nonnull %0, ptr noundef %51) #24
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 301, ptr noundef nonnull @.str.1) #23
  br label %55

55:                                               ; preds = %49, %54
  %56 = load i32, ptr %22, align 4, !tbaa !12
  %57 = load i32, ptr %23, align 4, !tbaa !12
  %58 = icmp eq i32 %56, %57
  %59 = load i32, ptr @flag_modulo_sched_allow_regmoves, align 4
  %60 = icmp ne i32 %59, 0
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  tail call fastcc void @create_ddg_dep_no_link(ptr noundef nonnull %0, ptr noundef nonnull %36, ptr noundef %52, i32 noundef 2, i32 noundef 1) #24
  br label %63

63:                                               ; preds = %46, %48, %55, %62, %24
  %64 = phi i32 [ %26, %24 ], [ 1, %62 ], [ 1, %55 ], [ 1, %48 ], [ 1, %46 ]
  %65 = getelementptr inbounds %struct.df_link, ptr %25, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !12
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %24, !llvm.loop !140

68:                                               ; preds = %63
  %69 = icmp eq i32 %64, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %16, %68
  %71 = getelementptr inbounds %struct.df_base_ref, ptr %1, i64 0, i32 7
  %72 = load i32, ptr %71, align 4, !tbaa !12
  %73 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 7
  %74 = load i32, ptr %73, align 4, !tbaa !12
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %84, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.df_base_ref, ptr %10, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !12
  %79 = load ptr, ptr %78, align 8, !tbaa !136
  %80 = tail call ptr @get_node_of_insn(ptr noundef nonnull %0, ptr noundef %79) #24
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 325, ptr noundef nonnull @.str.1) #23
  br label %83

83:                                               ; preds = %76, %82
  tail call fastcc void @create_ddg_dep_no_link(ptr noundef nonnull %0, ptr noundef %8, ptr noundef %80, i32 noundef 1, i32 noundef 1) #24
  br label %84

84:                                               ; preds = %83, %70, %68
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !132
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !132
  %6 = load i32, ptr %1, align 4, !tbaa !33
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_backarc_to_scc(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ddg_scc, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !97
  %5 = shl i32 %4, 3
  %6 = add i32 %5, 8
  %7 = getelementptr inbounds %struct.ddg_scc, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !96
  %9 = sext i32 %6 to i64
  %10 = tail call ptr @xrealloc(ptr noundef %8, i64 noundef %9) #23
  store ptr %10, ptr %7, align 8, !tbaa !96
  %11 = load i32, ptr %3, align 8, !tbaa !97
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %3, align 8, !tbaa !97
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds ptr, ptr %10, i64 %13
  store ptr %1, ptr %14, align 8, !tbaa !31
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_recurrence_length(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ddg_scc, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !97
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %36

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ddg_scc, ptr %0, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %30
  %9 = phi i64 [ 0, %6 ], [ %32, %30 ]
  %10 = phi i32 [ -1, %6 ], [ %31, %30 ]
  %11 = load ptr, ptr %7, align 8, !tbaa !96
  %12 = getelementptr inbounds ptr, ptr %11, i64 %9
  %13 = load ptr, ptr %12, align 8, !tbaa !31
  %14 = getelementptr inbounds %struct.ddg_edge, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !61
  %16 = getelementptr inbounds %struct.ddg_edge, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  %18 = load ptr, ptr %13, align 8, !tbaa !59
  %19 = load i32, ptr %17, align 8, !tbaa !24
  %20 = load i32, ptr %18, align 8, !tbaa !24
  %21 = load ptr, ptr %0, align 8, !tbaa !71
  %22 = tail call i32 @longest_simple_path(ptr noundef %1, i32 noundef %19, i32 noundef %20, ptr noundef %21) #24
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %8
  %25 = getelementptr inbounds %struct.ddg_edge, ptr %13, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !60
  %27 = add nsw i32 %26, %22
  %28 = sdiv i32 %27, %15
  %29 = tail call i32 @llvm.smax.i32(i32 %10, i32 %28)
  br label %30

30:                                               ; preds = %8, %24
  %31 = phi i32 [ %29, %24 ], [ %10, %8 ]
  %32 = add nuw nsw i64 %9, 1
  %33 = load i32, ptr %3, align 8, !tbaa !97
  %34 = sext i32 %33 to i64
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %8, label %36, !llvm.loop !141

36:                                               ; preds = %30, %2
  %37 = phi i32 [ -1, %2 ], [ %31, %30 ]
  %38 = getelementptr inbounds %struct.ddg_scc, ptr %0, i64 0, i32 3
  store i32 %37, ptr %38, align 4, !tbaa !142
  ret void
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_sccs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #19 {
  %3 = load ptr, ptr %0, align 8, !tbaa !31
  %4 = getelementptr inbounds %struct.ddg_scc, ptr %3, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !142
  %6 = load ptr, ptr %1, align 8, !tbaa !31
  %7 = getelementptr inbounds %struct.ddg_scc, ptr %6, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !142
  %9 = icmp sgt i32 %8, %5
  %10 = zext i1 %9 to i32
  %11 = icmp slt i32 %8, %5
  %12 = sext i1 %11 to i32
  %13 = add nsw i32 %12, %10
  ret i32 %13
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind optsize }
attributes #24 = { optsize }
attributes #25 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"ddg", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !7, i64 24, !7, i64 32, !10, i64 40, !10, i64 44, !7, i64 48}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !10, i64 40}
!12 = !{!8, !8, i64 0}
!13 = !{!14, !7, i64 8}
!14 = !{!"rtl_bb_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32}
!15 = !{!6, !10, i64 20}
!16 = !{i8 0, i8 2}
!17 = !{!6, !10, i64 12}
!18 = !{!6, !10, i64 16}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!6, !10, i64 8}
!22 = !{!6, !7, i64 24}
!23 = !{!6, !7, i64 32}
!24 = !{!25, !10, i64 0}
!25 = !{!"ddg_node", !10, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !8, i64 56}
!26 = !{!25, !7, i64 40}
!27 = !{!25, !7, i64 48}
!28 = !{!25, !7, i64 16}
!29 = !{!25, !7, i64 8}
!30 = distinct !{!30, !20}
!31 = !{!7, !7, i64 0}
!32 = !{i64 0, i64 4, !33, i64 8, i64 8, !31, i64 16, i64 8, !31, i64 24, i64 1, !12}
!33 = !{!10, !10, i64 0}
!34 = !{!35, !7, i64 0}
!35 = !{!"_dep", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20}
!36 = distinct !{!36, !20}
!37 = !{!38, !38, i64 0}
!38 = !{!"long", !8, i64 0}
!39 = distinct !{!39, !20}
!40 = distinct !{!40, !20}
!41 = !{!42, !10, i64 80}
!42 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !38, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96}
!43 = !{!44, !7, i64 16}
!44 = !{!"df_rd_bb_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!45 = !{!46, !7, i64 136}
!46 = !{!"df", !8, i64 0, !8, i64 64, !7, i64 128, !47, i64 136, !47, i64 176, !7, i64 216, !7, i64 224, !7, i64 232, !10, i64 240, !10, i64 244, !7, i64 248, !10, i64 256, !10, i64 260, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !7, i64 336, !10, i64 344, !10, i64 348, !7, i64 352, !10, i64 360, !10, i64 364, !8, i64 365, !8, i64 366}
!47 = !{!"df_ref_info", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36}
!48 = distinct !{!48, !20}
!49 = !{!25, !7, i64 32}
!50 = !{!51, !7, i64 40}
!51 = !{!"ddg_edge", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !7, i64 32, !7, i64 40, !8, i64 48}
!52 = distinct !{!52, !20}
!53 = !{!54, !7, i64 0}
!54 = !{!"simple_bitmap_def", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!55 = distinct !{!55, !20}
!56 = !{!6, !10, i64 44}
!57 = !{!6, !7, i64 48}
!58 = !{!51, !10, i64 16}
!59 = !{!51, !7, i64 0}
!60 = !{!51, !10, i64 24}
!61 = !{!51, !10, i64 28}
!62 = !{!51, !7, i64 8}
!63 = distinct !{!63, !20}
!64 = distinct !{!64, !20}
!65 = distinct !{!65, !20}
!66 = distinct !{!66, !20}
!67 = distinct !{!67, !20}
!68 = !{!69, !10, i64 8}
!69 = !{!"ddg_all_sccs", !7, i64 0, !10, i64 8, !7, i64 16}
!70 = !{!69, !7, i64 0}
!71 = !{!72, !7, i64 0}
!72 = !{!"ddg_scc", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 20}
!73 = distinct !{!73, !20}
!74 = distinct !{!74, !20}
!75 = !{!76, !10, i64 12}
!76 = !{!"", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !38, i64 24}
!77 = !{!76, !10, i64 16}
!78 = !{!54, !10, i64 12}
!79 = !{!76, !10, i64 8}
!80 = !{!76, !7, i64 0}
!81 = !{!76, !38, i64 24}
!82 = distinct !{!82, !20}
!83 = distinct !{!83, !20}
!84 = distinct !{!84, !20}
!85 = distinct !{!85, !20}
!86 = distinct !{!86, !20}
!87 = !{!69, !7, i64 16}
!88 = !{i32 0, i32 256}
!89 = distinct !{!89, !20}
!90 = distinct !{!90, !20}
!91 = distinct !{!91, !20}
!92 = distinct !{!92, !20}
!93 = distinct !{!93, !20}
!94 = distinct !{!94, !20}
!95 = distinct !{!95, !20}
!96 = !{!72, !7, i64 8}
!97 = !{!72, !10, i64 16}
!98 = distinct !{!98, !20}
!99 = distinct !{!99, !20}
!100 = distinct !{!100, !20}
!101 = distinct !{!101, !20}
!102 = !{i32 0, i32 2}
!103 = distinct !{!103, !20}
!104 = distinct !{!104, !20}
!105 = distinct !{!105, !20}
!106 = !{!107, !10, i64 0}
!107 = !{!"_sd_iterator", !10, i64 0, !7, i64 8, !7, i64 16, !8, i64 24}
!108 = !{!107, !7, i64 8}
!109 = !{!107, !7, i64 16}
!110 = !{!107, !8, i64 24}
!111 = !{!112, !7, i64 0}
!112 = !{!"_dep_link", !7, i64 0, !7, i64 8, !7, i64 16}
!113 = !{!35, !10, i64 16}
!114 = !{!115, !10, i64 16}
!115 = !{!"dataflow", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !10, i64 48, !8, i64 52, !8, i64 53, !8, i64 54}
!116 = !{!115, !7, i64 8}
!117 = !{!51, !10, i64 20}
!118 = !{!25, !7, i64 24}
!119 = !{!51, !7, i64 32}
!120 = !{!121, !10, i64 0}
!121 = !{!"rtvec_def", !10, i64 0, !8, i64 8}
!122 = distinct !{!122, !20}
!123 = distinct !{!123, !20}
!124 = !{!125, !7, i64 0}
!125 = !{!"bitmap_head_def", !7, i64 0, !7, i64 8, !10, i64 16, !7, i64 24}
!126 = !{!127, !7, i64 0}
!127 = !{!"", !7, i64 0, !7, i64 8, !10, i64 16, !38, i64 24}
!128 = !{!127, !7, i64 8}
!129 = !{!130, !10, i64 16}
!130 = !{!"bitmap_element_def", !7, i64 0, !7, i64 8, !10, i64 16, !8, i64 24}
!131 = !{!127, !10, i64 16}
!132 = !{!127, !38, i64 24}
!133 = distinct !{!133, !20}
!134 = distinct !{!134, !20}
!135 = !{!130, !7, i64 0}
!136 = !{!137, !7, i64 0}
!137 = !{!"df_insn_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40}
!138 = !{!139, !7, i64 0}
!139 = !{!"df_link", !7, i64 0, !7, i64 8}
!140 = distinct !{!140, !20}
!141 = distinct !{!141, !20}
!142 = !{!72, !10, i64 20}
