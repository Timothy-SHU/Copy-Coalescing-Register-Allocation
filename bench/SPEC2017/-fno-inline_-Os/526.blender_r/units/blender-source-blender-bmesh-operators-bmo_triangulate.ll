; ModuleID = 'blender/source/blender/bmesh/operators/bmo_triangulate.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_triangulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.ScanFillContext = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, i16, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMIter = type { %union.anon.1, ptr, ptr, i32, i8 }
%union.anon.1 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.ScanFillVert = type { ptr, ptr, %union.anon.0, [3 x float], [2 x float], i32, i16, i8, i8 }
%union.anon.0 = type { ptr }
%struct.SortNormal = type { float, [3 x float] }
%struct.ScanFillFace = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMFlagLayer = type { i16 }

@.str = private unnamed_addr constant [12 x i8] c"quad_method\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ngon_method\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"face_map.out\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"edges.out\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"use_beauty\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"use_dissolve\00", align 1
@__func__.bmo_triangle_fill_exec = private unnamed_addr constant [23 x i8] c"bmo_triangle_fill_exec\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"beautify_fill faces=%ff edges=%Fe\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"geom.out\00", align 1
@switch.table.BM_iter_init = private unnamed_addr constant [8 x ptr] [ptr @bmiter__edge_of_vert_begin, ptr @bmiter__face_of_vert_begin, ptr @bmiter__loop_of_vert_begin, ptr @bmiter__vert_of_edge_begin, ptr @bmiter__face_of_edge_begin, ptr @bmiter__vert_of_face_begin, ptr @bmiter__edge_of_face_begin, ptr @bmiter__loop_of_face_begin], align 8
@switch.table.BM_iter_init.12 = private unnamed_addr constant [8 x ptr] [ptr @bmiter__edge_of_vert_step, ptr @bmiter__face_of_vert_step, ptr @bmiter__loop_of_vert_step, ptr @bmiter__vert_of_edge_step, ptr @bmiter__face_of_edge_step, ptr @bmiter__vert_of_face_step, ptr @bmiter__edge_of_face_step, ptr @bmiter__loop_of_face_step], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_triangulate_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str) #11
  %4 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.1) #11
  %5 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %6 = tail call ptr @BMO_slot_get(ptr noundef nonnull %5, ptr noundef nonnull @.str.2) #11
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 10, i8 noundef zeroext 16, i8 noundef zeroext 0) #11
  tail call void @BMO_slot_buffer_hflag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.3, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #11
  tail call void @BM_mesh_triangulate(ptr noundef %0, i32 noundef %3, i32 noundef %4, i8 noundef zeroext 1, ptr noundef %1, ptr noundef %6) #11
  tail call void @BMO_slot_buffer_from_enabled_hflag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull @.str.4, i8 noundef zeroext 2, i8 noundef zeroext 16) #11
  tail call void @BMO_slot_buffer_from_enabled_hflag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull @.str.5, i8 noundef zeroext 8, i8 noundef zeroext 16) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_triangulate(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_hflag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_triangle_fill_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.ScanFillContext, align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [2 x ptr], align 16
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca [2 x ptr], align 16
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x ptr], align 16
  %12 = alloca %struct.BMIter, align 8
  %13 = alloca %struct.BMOperator, align 8
  %14 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.6) #11
  %15 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.7) #11
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %16 = tail call i32 @BMO_slot_buffer_count(ptr noundef %1, ptr noundef nonnull @.str.8) #11
  %17 = tail call ptr @BLI_ghash_ptr_new_ex(ptr noundef nonnull @__func__.bmo_triangle_fill_exec, i32 noundef %16) #11
  call void @BMO_slot_vec_get(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %5) #11
  call void @BLI_scanfill_begin(ptr noundef nonnull %4) #11
  %18 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.8, i8 noundef zeroext 2) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %56, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 1
  br label %22

22:                                               ; preds = %20, %49
  %23 = phi ptr [ %18, %20 ], [ %54, %49 ]
  %24 = phi i8 [ 0, %20 ], [ %50, %49 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  %25 = getelementptr inbounds %struct.BMEdge, ptr %23, i64 0, i32 2
  %26 = getelementptr inbounds %struct.BMEdge, ptr %23, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %27, i16 noundef signext 4) #13
  %28 = icmp eq i8 %24, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %23) #13, !range !42
  %31 = icmp ne i8 %30, 0
  br label %32

32:                                               ; preds = %29, %22
  %33 = phi i1 [ true, %22 ], [ %31, %29 ]
  br label %34

34:                                               ; preds = %32, %48
  %35 = phi i1 [ true, %32 ], [ false, %48 ]
  %36 = phi i64 [ 0, %32 ], [ 1, %48 ]
  %37 = getelementptr inbounds ptr, ptr %25, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !43
  %39 = call ptr @BLI_ghash_lookup(ptr noundef %17, ptr noundef %38) #11
  %40 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 %36
  store ptr %39, ptr %40, align 8, !tbaa !43
  %41 = icmp eq ptr %39, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load ptr, ptr %37, align 8, !tbaa !43
  %44 = getelementptr inbounds %struct.BMVert, ptr %43, i64 0, i32 2
  %45 = call ptr @BLI_scanfill_vert_add(ptr noundef nonnull %4, ptr noundef nonnull %44) #11
  store ptr %45, ptr %40, align 8, !tbaa !43
  %46 = load ptr, ptr %37, align 8, !tbaa !43
  %47 = getelementptr inbounds %struct.ScanFillVert, ptr %45, i64 0, i32 2
  store ptr %46, ptr %47, align 8, !tbaa !44
  call void @BLI_ghash_insert(ptr noundef %17, ptr noundef %46, ptr noundef %45) #11
  br label %48

48:                                               ; preds = %34, %42
  br i1 %35, label %34, label %49, !llvm.loop !45

49:                                               ; preds = %48
  %50 = zext i1 %33 to i8
  %51 = load ptr, ptr %6, align 16, !tbaa !43
  %52 = load ptr, ptr %21, align 8, !tbaa !43
  %53 = call ptr @BLI_scanfill_edge_add(ptr noundef nonnull %4, ptr noundef %51, ptr noundef %52) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  %54 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #11
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %22, !llvm.loop !47

56:                                               ; preds = %49, %2
  %57 = phi i8 [ 0, %2 ], [ %50, %49 ]
  call void @BLI_ghash_free(ptr noundef %17, ptr noundef null, ptr noundef null) #11
  %58 = call fastcc zeroext i8 @is_zero_v3(ptr noundef nonnull %5) #13, !range !42
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %146, label %60

60:                                               ; preds = %56
  %61 = call i32 @BLI_ghash_size(ptr noundef %17) #11
  %62 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !43
  %63 = zext i32 %61 to i64
  %64 = shl nuw nsw i64 %63, 4
  %65 = call ptr %62(i64 noundef %64, ptr noundef nonnull @__func__.bmo_triangle_fill_exec) #11
  %66 = load ptr, ptr %4, align 8, !tbaa !43
  %67 = icmp eq ptr %66, null
  br i1 %67, label %143, label %68

68:                                               ; preds = %60
  %69 = getelementptr inbounds [2 x ptr], ptr %8, i64 0, i64 1
  br label %70

70:                                               ; preds = %121, %68
  %71 = phi ptr [ %123, %121 ], [ %66, %68 ]
  %72 = phi i1 [ true, %121 ], [ false, %68 ]
  %73 = phi i32 [ %122, %121 ], [ 0, %68 ]
  br label %74

74:                                               ; preds = %70, %117
  %75 = phi ptr [ %119, %117 ], [ %71, %70 ]
  %76 = phi i32 [ %118, %117 ], [ %73, %70 ]
  %77 = getelementptr inbounds %struct.ScanFillVert, ptr %75, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #12
  %79 = zext i32 %76 to i64
  %80 = getelementptr inbounds %struct.SortNormal, ptr %65, i64 %79
  store float -1.000000e+00, ptr %80, align 4, !tbaa !48
  %81 = getelementptr inbounds %struct.BMVert, ptr %78, i64 0, i32 3
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %81) #13
  %82 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, i8 noundef zeroext 4, ptr noundef %78) #13
  %83 = icmp eq ptr %82, null
  br i1 %83, label %117, label %84

84:                                               ; preds = %74, %97
  %85 = phi i32 [ %98, %97 ], [ 0, %74 ]
  %86 = phi ptr [ %99, %97 ], [ %82, %74 ]
  %87 = getelementptr inbounds %struct.BMEdge, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !34
  %89 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %88) #13
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %84
  %92 = icmp eq i32 %85, 2
  br i1 %92, label %117, label %93

93:                                               ; preds = %91
  %94 = add i32 %85, 1
  %95 = zext i32 %85 to i64
  %96 = getelementptr inbounds [2 x ptr], ptr %8, i64 0, i64 %95
  store ptr %86, ptr %96, align 8, !tbaa !43
  br label %97

97:                                               ; preds = %84, %93
  %98 = phi i32 [ %94, %93 ], [ %85, %84 ]
  %99 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #13
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %84, !llvm.loop !51

101:                                              ; preds = %97
  %102 = icmp eq i32 %98, 2
  br i1 %102, label %103, label %117

103:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #12
  %104 = getelementptr inbounds %struct.BMVert, ptr %78, i64 0, i32 2
  %105 = load ptr, ptr %8, align 16, !tbaa !43
  %106 = call fastcc ptr @BM_edge_other_vert(ptr noundef %105, ptr noundef %78) #13
  %107 = getelementptr inbounds %struct.BMVert, ptr %106, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %104, ptr noundef nonnull %107) #13
  %108 = load ptr, ptr %69, align 8, !tbaa !43
  %109 = call fastcc ptr @BM_edge_other_vert(ptr noundef %108, ptr noundef %78) #13
  %110 = getelementptr inbounds %struct.BMVert, ptr %109, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %104, ptr noundef nonnull %110) #13
  %111 = getelementptr inbounds %struct.SortNormal, ptr %65, i64 %79, i32 1
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %111, ptr noundef nonnull %9, ptr noundef nonnull %10) #13
  %112 = call fastcc float @len_squared_v3(ptr noundef nonnull %111) #13
  store float %112, ptr %80, align 4, !tbaa !48
  %113 = call fastcc float @len_squared_v3(ptr noundef nonnull %9) #13
  %114 = call fastcc float @len_squared_v3(ptr noundef nonnull %10) #13
  %115 = fcmp ogt float %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %103
  call fastcc void @negate_v3(ptr noundef nonnull %111) #13
  br label %121

117:                                              ; preds = %91, %74, %101
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #12
  %118 = add i32 %76, 1
  %119 = load ptr, ptr %75, align 8, !tbaa !43
  %120 = icmp eq ptr %119, null
  br i1 %120, label %125, label %74, !llvm.loop !52

121:                                              ; preds = %103, %116
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #12
  %122 = add i32 %76, 1
  %123 = load ptr, ptr %75, align 8, !tbaa !43
  %124 = icmp eq ptr %123, null
  br i1 %124, label %126, label %70, !llvm.loop !52

125:                                              ; preds = %117
  br i1 %72, label %126, label %143

126:                                              ; preds = %121, %125
  call void @qsort(ptr noundef %65, i64 noundef %63, i64 noundef 16, ptr noundef nonnull @BLI_sortutil_cmp_float_reverse) #11
  %127 = getelementptr inbounds %struct.SortNormal, ptr %65, i64 0, i32 1
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %127) #13
  %128 = icmp eq i32 %61, 0
  br i1 %128, label %142, label %129

129:                                              ; preds = %126, %139
  %130 = phi i64 [ %140, %139 ], [ 0, %126 ]
  %131 = getelementptr inbounds %struct.SortNormal, ptr %65, i64 %130
  %132 = load float, ptr %131, align 4, !tbaa !48
  %133 = fcmp oeq float %132, -1.000000e+00
  br i1 %133, label %142, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.SortNormal, ptr %65, i64 %130, i32 1
  %136 = call fastcc float @dot_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %135) #13
  %137 = fcmp olt float %136, 0.000000e+00
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  call fastcc void @negate_v3(ptr noundef nonnull %135) #13
  br label %139

139:                                              ; preds = %138, %134
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %135) #13
  %140 = add nuw nsw i64 %130, 1
  %141 = icmp eq i64 %140, %63
  br i1 %141, label %142, label %129, !llvm.loop !53

142:                                              ; preds = %139, %129, %126
  call fastcc void @normalize_v3(ptr noundef nonnull %5) #13
  br label %143

143:                                              ; preds = %60, %125, %142
  %144 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %144(ptr noundef %65) #11
  %145 = icmp eq i8 %57, 0
  br label %146

146:                                              ; preds = %56, %143
  %147 = phi i1 [ %145, %143 ], [ true, %56 ]
  call fastcc void @normalize_v3(ptr noundef nonnull %5) #13
  %148 = call i32 @BLI_scanfill_calc_ex(ptr noundef nonnull %4, i32 noundef 28, ptr noundef nonnull %5) #11
  %149 = getelementptr inbounds %struct.ScanFillContext, ptr %4, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8
  br i1 %147, label %217, label %151

151:                                              ; preds = %146
  %152 = icmp eq ptr %150, null
  br i1 %152, label %254, label %153

153:                                              ; preds = %151
  %154 = getelementptr inbounds ptr, ptr %11, i64 1
  %155 = getelementptr inbounds ptr, ptr %11, i64 2
  br label %156

156:                                              ; preds = %153, %202
  %157 = phi ptr [ %150, %153 ], [ %203, %202 ]
  %158 = phi i32 [ 0, %153 ], [ %199, %202 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #12
  %159 = getelementptr inbounds %struct.ScanFillFace, ptr %157, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !54
  %161 = getelementptr inbounds %struct.ScanFillVert, ptr %160, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !44
  store ptr %162, ptr %11, align 16, !tbaa !43
  %163 = getelementptr inbounds %struct.ScanFillFace, ptr %157, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !56
  %165 = getelementptr inbounds %struct.ScanFillVert, ptr %164, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !44
  store ptr %166, ptr %154, align 8, !tbaa !43
  %167 = getelementptr inbounds %struct.ScanFillFace, ptr %157, i64 0, i32 4
  %168 = load ptr, ptr %167, align 8, !tbaa !57
  %169 = getelementptr inbounds %struct.ScanFillVert, ptr %168, i64 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !44
  store ptr %170, ptr %155, align 16, !tbaa !43
  br label %171

171:                                              ; preds = %156, %198
  %172 = phi i64 [ 0, %156 ], [ %200, %198 ]
  %173 = phi i64 [ 2, %156 ], [ %172, %198 ]
  %174 = phi i32 [ %158, %156 ], [ %199, %198 ]
  %175 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 %172
  %176 = load ptr, ptr %175, align 8, !tbaa !43
  %177 = and i64 %173, 4294967295
  %178 = getelementptr inbounds [3 x ptr], ptr %11, i64 0, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !43
  %180 = call ptr @BM_edge_exists(ptr noundef %176, ptr noundef %179) #11
  %181 = icmp eq ptr %180, null
  br i1 %181, label %198, label %182

182:                                              ; preds = %171
  %183 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %180) #13, !range !42
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %198, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.BMEdge, ptr %180, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !34
  %188 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %187) #13
  %189 = icmp eq i16 %188, 0
  br i1 %189, label %198, label %190

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.BMEdge, ptr %180, i64 0, i32 4
  %192 = load ptr, ptr %191, align 8, !tbaa !58
  %193 = getelementptr inbounds %struct.BMLoop, ptr %192, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !59
  %195 = icmp eq ptr %194, %176
  %196 = select i1 %195, i32 1, i32 -1
  %197 = add nsw i32 %196, %174
  br label %198

198:                                              ; preds = %171, %182, %185, %190
  %199 = phi i32 [ %197, %190 ], [ %174, %185 ], [ %174, %182 ], [ %174, %171 ]
  %200 = add nuw nsw i64 %172, 1
  %201 = icmp eq i64 %200, 3
  br i1 %201, label %202, label %171, !llvm.loop !61

202:                                              ; preds = %198
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #12
  %203 = load ptr, ptr %157, align 8, !tbaa !62
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %156, !llvm.loop !63

205:                                              ; preds = %202
  %206 = load ptr, ptr %149, align 8
  %207 = icmp sgt i32 %199, -1
  %208 = icmp eq ptr %206, null
  %209 = select i1 %207, i1 true, i1 %208
  br i1 %209, label %217, label %210

210:                                              ; preds = %205, %210
  %211 = phi ptr [ %215, %210 ], [ %206, %205 ]
  %212 = getelementptr inbounds %struct.ScanFillFace, ptr %211, i64 0, i32 3
  %213 = load <2 x ptr>, ptr %212, align 8, !tbaa !43
  %214 = shufflevector <2 x ptr> %213, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %214, ptr %212, align 8, !tbaa !43
  %215 = load ptr, ptr %211, align 8, !tbaa !62
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %210, !llvm.loop !64

217:                                              ; preds = %210, %146, %205
  %218 = phi ptr [ %206, %205 ], [ %150, %146 ], [ %206, %210 ]
  %219 = icmp eq ptr %218, null
  br i1 %219, label %254, label %220

220:                                              ; preds = %217, %251
  %221 = phi ptr [ %252, %251 ], [ %218, %217 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #12
  %222 = getelementptr inbounds %struct.ScanFillFace, ptr %221, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !54
  %224 = getelementptr inbounds %struct.ScanFillVert, ptr %223, i64 0, i32 2
  %225 = load ptr, ptr %224, align 8, !tbaa !44
  %226 = getelementptr inbounds %struct.ScanFillFace, ptr %221, i64 0, i32 3
  %227 = load ptr, ptr %226, align 8, !tbaa !56
  %228 = getelementptr inbounds %struct.ScanFillVert, ptr %227, i64 0, i32 2
  %229 = load ptr, ptr %228, align 8, !tbaa !44
  %230 = getelementptr inbounds %struct.ScanFillFace, ptr %221, i64 0, i32 4
  %231 = load ptr, ptr %230, align 8, !tbaa !57
  %232 = getelementptr inbounds %struct.ScanFillVert, ptr %231, i64 0, i32 2
  %233 = load ptr, ptr %232, align 8, !tbaa !44
  %234 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %225, ptr noundef %229, ptr noundef %233, ptr noundef null, ptr noundef null, i32 noundef 2) #11
  %235 = getelementptr inbounds %struct.BMFace, ptr %234, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !65
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %236, i16 noundef signext 1) #13
  %237 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %12, i8 noundef zeroext 11, ptr noundef %234) #13
  %238 = icmp eq ptr %237, null
  br i1 %238, label %251, label %239

239:                                              ; preds = %220, %248
  %240 = phi ptr [ %249, %248 ], [ %237, %220 ]
  %241 = getelementptr inbounds %struct.BMLoop, ptr %240, i64 0, i32 2
  %242 = load ptr, ptr %241, align 8, !tbaa !68
  %243 = getelementptr inbounds %struct.BMEdge, ptr %242, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !34
  %245 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %244) #13
  %246 = icmp eq i16 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %239
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %244, i16 noundef signext 1) #13
  br label %248

248:                                              ; preds = %239, %247
  %249 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %12) #13
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %239, !llvm.loop !69

251:                                              ; preds = %248, %220
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #12
  %252 = load ptr, ptr %221, align 8, !tbaa !62
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %220, !llvm.loop !70

254:                                              ; preds = %251, %151, %217
  call void @BLI_scanfill_end(ptr noundef nonnull %4) #11
  %255 = icmp eq i8 %14, 0
  br i1 %255, label %261, label %256

256:                                              ; preds = %254
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %13) #12
  %257 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %258 = load i32, ptr %257, align 8, !tbaa !71
  %259 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %13, i32 noundef %258, ptr noundef nonnull @.str.10, i32 noundef 1, i32 noundef 4) #11
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %13) #11
  %260 = getelementptr inbounds %struct.BMOperator, ptr %13, i64 0, i32 1
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef nonnull %260, ptr noundef nonnull @.str.11, i8 noundef zeroext 10, i16 noundef signext 1) #11
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %13) #12
  br label %261

261:                                              ; preds = %256, %254
  %262 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %262, ptr noundef nonnull @.str.11, i8 noundef zeroext 10, i16 noundef signext 1) #11
  %263 = icmp eq i8 %15, 0
  br i1 %263, label %290, label %264

264:                                              ; preds = %261
  %265 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %262, ptr noundef nonnull @.str.11, i8 noundef zeroext 2) #11
  %266 = icmp eq ptr %265, null
  br i1 %266, label %289, label %267

267:                                              ; preds = %264, %286
  %268 = phi ptr [ %287, %286 ], [ %265, %264 ]
  %269 = getelementptr inbounds %struct.BMEdge, ptr %268, i64 0, i32 4
  %270 = load ptr, ptr %269, align 8, !tbaa !58
  %271 = icmp eq ptr %270, null
  br i1 %271, label %285, label %272

272:                                              ; preds = %267
  %273 = getelementptr inbounds %struct.BMLoop, ptr %270, i64 0, i32 3
  %274 = load ptr, ptr %273, align 8, !tbaa !73
  %275 = getelementptr inbounds %struct.BMLoop, ptr %270, i64 0, i32 4
  %276 = load ptr, ptr %275, align 8, !tbaa !74
  %277 = getelementptr inbounds %struct.BMLoop, ptr %276, i64 0, i32 3
  %278 = load ptr, ptr %277, align 8, !tbaa !73
  %279 = call ptr @BM_faces_join_pair(ptr noundef %0, ptr noundef %274, ptr noundef %278, ptr noundef nonnull %268, i8 noundef zeroext 0) #11
  %280 = icmp eq ptr %279, null
  br i1 %280, label %284, label %281

281:                                              ; preds = %272
  %282 = getelementptr inbounds %struct.BMFace, ptr %279, i64 0, i32 1
  %283 = load ptr, ptr %282, align 8, !tbaa !65
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %283, i16 noundef signext 1) #13
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %268) #11
  br label %286

284:                                              ; preds = %272
  call void @BMO_error_clear(ptr noundef %0) #11
  br label %286

285:                                              ; preds = %267
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %268) #11
  br label %286

286:                                              ; preds = %281, %284, %285
  %287 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #11
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %267, !llvm.loop !75

289:                                              ; preds = %286, %264
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %262, ptr noundef nonnull @.str.11, i8 noundef zeroext 10, i16 noundef signext 1) #11
  br label %290

290:                                              ; preds = %289, %261
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #12
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BMO_slot_buffer_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_vec_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_scanfill_begin(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #3 !PGOFuncName !76 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !77
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !81
  %10 = or i16 %9, %2
  store i16 %10, ptr %8, align 2, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_boundary(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !83 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = icmp eq ptr %7, %3
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_scanfill_vert_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_scanfill_edge_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_zero_v3(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !84 {
  %2 = load float, ptr %0, align 4, !tbaa !85
  %3 = fcmp oeq float %2, 0.000000e+00
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !85
  %7 = fcmp oeq float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds float, ptr %0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !85
  %11 = fcmp oeq float %10, 0.000000e+00
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %8, %4, %1
  %14 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: optsize
declare i32 @BLI_ghash_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !86 {
  %3 = load float, ptr %1, align 4, !tbaa !85
  %4 = load float, ptr %0, align 4, !tbaa !85
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !85
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !85
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !85
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !85
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !85
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !85
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !85
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !87 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #13
  %4 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #13
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i16 @_bmo_elem_flag_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !88 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !77
  %5 = sext i32 %4 to i64
  %6 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %5
  %7 = getelementptr %struct.BMFlagLayer, ptr %6, i64 -1
  %8 = load i16, ptr %7, align 2, !tbaa !81
  %9 = and i16 %8, 4
  ret i16 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !89 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = tail call ptr %3(ptr noundef %0) #11
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !92 {
  %4 = load float, ptr %1, align 4, !tbaa !85
  %5 = load float, ptr %2, align 4, !tbaa !85
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !85
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !85
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !85
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !85
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !85
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #5 !PGOFuncName !93 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !94
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !95
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !96 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !85
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !85
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !85
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !85
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !85
  %15 = load float, ptr %8, align 4, !tbaa !85
  %16 = load float, ptr %2, align 4, !tbaa !85
  %17 = load float, ptr %1, align 4, !tbaa !85
  %18 = load float, ptr %6, align 4, !tbaa !85
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !85
  %23 = load float, ptr %1, align 4, !tbaa !85
  %24 = load float, ptr %10, align 4, !tbaa !85
  %25 = load float, ptr %4, align 4, !tbaa !85
  %26 = load float, ptr %2, align 4, !tbaa !85
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v3(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !97 {
  %2 = load float, ptr %0, align 4, !tbaa !85
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !85
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %6)
  ret float %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !98 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !85
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !85
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !85
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !85
  ret void
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @BLI_sortutil_cmp_float_reverse(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !99 {
  %3 = load float, ptr %1, align 4, !tbaa !85
  store float %3, ptr %0, align 4, !tbaa !85
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !85
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !85
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !100 {
  %3 = load float, ptr %0, align 4, !tbaa !85
  %4 = load float, ptr %1, align 4, !tbaa !85
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !85
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !85
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !85
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !85
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #7 !PGOFuncName !101 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #13
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_scanfill_calc_ex(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_create_quad_tri(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_scanfill_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_faces_join_pair(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_edge_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_error_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !102 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %1, ptr %4, align 4, !tbaa !103
  %5 = add nsw i8 %1, -4
  %6 = sext i8 %5 to i64
  %7 = getelementptr inbounds [8 x ptr], ptr @switch.table.BM_iter_init, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8
  %9 = sext i8 %5 to i64
  %10 = getelementptr inbounds [8 x ptr], ptr @switch.table.BM_iter_init.12, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr %8, ptr %13, align 8, !tbaa !104
  store ptr %11, ptr %12, align 8, !tbaa !90
  store ptr %2, ptr %0, align 8, !tbaa !44
  tail call void %8(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !105 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #13
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #11
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #13
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #13
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !106 {
  %4 = load float, ptr %1, align 4, !tbaa !85
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !85
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !85
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !85
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !85
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #10 !PGOFuncName !107 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !85
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !85
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !37, i64 16}
!35 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !41, i64 48, !41, i64 64}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!42 = !{i8 0, i8 2}
!43 = !{!37, !37, i64 0}
!44 = !{!38, !38, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = distinct !{!47, !46}
!48 = !{!49, !50, i64 0}
!49 = !{!"SortNormal", !50, i64 0, !38, i64 4}
!50 = !{!"float", !38, i64 0}
!51 = distinct !{!51, !46}
!52 = distinct !{!52, !46}
!53 = distinct !{!53, !46}
!54 = !{!55, !37, i64 16}
!55 = !{!"ScanFillFace", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32}
!56 = !{!55, !37, i64 24}
!57 = !{!55, !37, i64 32}
!58 = !{!35, !37, i64 40}
!59 = !{!60, !37, i64 16}
!60 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!61 = distinct !{!61, !46}
!62 = !{!55, !37, i64 0}
!63 = distinct !{!63, !46}
!64 = distinct !{!64, !46}
!65 = !{!66, !37, i64 16}
!66 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !67, i64 48}
!67 = !{!"short", !38, i64 0}
!68 = !{!60, !37, i64 24}
!69 = distinct !{!69, !46}
!70 = distinct !{!70, !46}
!71 = !{!72, !40, i64 1304}
!72 = !{!"BMOperator", !38, i64 0, !38, i64 640, !37, i64 1280, !37, i64 1288, !40, i64 1296, !40, i64 1300, !40, i64 1304}
!73 = !{!60, !37, i64 32}
!74 = !{!60, !37, i64 40}
!75 = distinct !{!75, !46}
!76 = !{!"bmo_triangulate.c:_bmo_elem_flag_enable"}
!77 = !{!78, !40, i64 128}
!78 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !79, i64 144, !79, i64 344, !79, i64 544, !79, i64 744, !67, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !80, i64 960, !37, i64 976, !80, i64 984, !37, i64 1000}
!79 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!80 = !{!"ListBase", !37, i64 0, !37, i64 8}
!81 = !{!82, !67, i64 0}
!82 = !{!"BMFlagLayer", !67, i64 0}
!83 = !{!"bmo_triangulate.c:BM_edge_is_boundary"}
!84 = !{!"bmo_triangulate.c:is_zero_v3"}
!85 = !{!50, !50, i64 0}
!86 = !{!"bmo_triangulate.c:add_v3_v3"}
!87 = !{!"bmo_triangulate.c:BM_iter_new"}
!88 = !{!"bmo_triangulate.c:_bmo_elem_flag_test"}
!89 = !{!"bmo_triangulate.c:BM_iter_step"}
!90 = !{!91, !37, i64 48}
!91 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!92 = !{!"bmo_triangulate.c:sub_v3_v3v3"}
!93 = !{!"bmo_triangulate.c:BM_edge_other_vert"}
!94 = !{!35, !37, i64 24}
!95 = !{!35, !37, i64 32}
!96 = !{!"bmo_triangulate.c:cross_v3_v3v3"}
!97 = !{!"bmo_triangulate.c:len_squared_v3"}
!98 = !{!"bmo_triangulate.c:negate_v3"}
!99 = !{!"bmo_triangulate.c:copy_v3_v3"}
!100 = !{!"bmo_triangulate.c:dot_v3v3"}
!101 = !{!"bmo_triangulate.c:normalize_v3"}
!102 = !{!"bmo_triangulate.c:BM_iter_init"}
!103 = !{!91, !38, i64 60}
!104 = !{!91, !37, i64 40}
!105 = !{!"bmo_triangulate.c:normalize_v3_v3"}
!106 = !{!"bmo_triangulate.c:mul_v3_v3fl"}
!107 = !{!"bmo_triangulate.c:zero_v3"}
