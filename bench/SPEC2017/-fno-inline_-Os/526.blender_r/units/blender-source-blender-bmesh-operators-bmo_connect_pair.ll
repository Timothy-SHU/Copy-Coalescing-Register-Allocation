; ModuleID = 'blender/source/blender/bmesh/operators/bmo_connect_pair.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_connect_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PathContext = type { %struct.ListBase, [3 x [3 x float]], float, ptr, ptr, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.PathLinkState = type { ptr, ptr, ptr, float, [3 x float] }
%struct.PathLink = type { ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMFlagLayer = type { i16 }

@.str = private unnamed_addr constant [6 x i8] c"verts\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"faces_exclude\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"verts_exclude\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.bmo_connect_vert_pair_exec = private unnamed_addr constant [27 x i8] c"bmo_connect_vert_pair_exec\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"connect_verts verts=%fv faces_exclude=%s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"edges.out\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.state_dupe_add = private unnamed_addr constant [15 x i8] c"state_dupe_add\00", align 1
@switch.table.BM_iter_init = private unnamed_addr constant [11 x ptr] [ptr @bmiter__edge_of_vert_begin, ptr @bmiter__face_of_vert_begin, ptr @bmiter__loop_of_vert_begin, ptr @bmiter__vert_of_edge_begin, ptr @bmiter__face_of_edge_begin, ptr @bmiter__vert_of_face_begin, ptr @bmiter__edge_of_face_begin, ptr @bmiter__loop_of_face_begin, ptr @bmiter__loop_of_edge_begin, ptr @bmiter__loop_of_loop_begin, ptr @bmiter__loop_of_edge_begin], align 8
@switch.table.BM_iter_init.5 = private unnamed_addr constant [11 x ptr] [ptr @bmiter__edge_of_vert_step, ptr @bmiter__face_of_vert_step, ptr @bmiter__loop_of_vert_step, ptr @bmiter__vert_of_edge_step, ptr @bmiter__face_of_edge_step, ptr @bmiter__vert_of_face_step, ptr @bmiter__edge_of_face_step, ptr @bmiter__loop_of_face_step, ptr @bmiter__loop_of_edge_step, ptr @bmiter__loop_of_loop_step, ptr @bmiter__loop_of_edge_step], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_connect_vert_pair_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.PathContext, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca %struct.BMOperator, align 8
  %10 = tail call ptr @BMO_slot_get(ptr noundef %1, ptr noundef nonnull @.str) #13
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #14
  %11 = getelementptr inbounds %struct.BMOpSlot, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !34
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %152

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.PathContext, ptr %3, i64 0, i32 3
  store ptr %0, ptr %15, align 8, !tbaa !40
  %16 = getelementptr inbounds %struct.BMOpSlot, ptr %10, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = getelementptr inbounds %struct.PathContext, ptr %3, i64 0, i32 4
  store ptr %18, ptr %19, align 8, !tbaa !46
  %20 = getelementptr inbounds ptr, ptr %17, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.PathContext, ptr %3, i64 0, i32 5
  store ptr %21, ptr %22, align 8, !tbaa !47
  %23 = icmp ne ptr %18, null
  %24 = icmp ne ptr %21, null
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %152

26:                                               ; preds = %14
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.1, i8 noundef zeroext 8, i16 noundef signext 2) #13
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 1, i16 noundef signext 2) #13
  call fastcc void @BLI_listbase_clear(ptr noundef nonnull %3) #15
  %27 = tail call ptr @BLI_mempool_create(i32 noundef 24, i32 noundef 0, i32 noundef 512, i32 noundef 0) #13
  %28 = getelementptr inbounds %struct.PathContext, ptr %3, i64 0, i32 6
  store ptr %27, ptr %28, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  %29 = load ptr, ptr %19, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %22, align 8, !tbaa !47
  %32 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %30, ptr noundef nonnull %32) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  %33 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 3
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %33, ptr noundef nonnull %4) #15
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %4) #15
  %34 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 3
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %34, ptr noundef nonnull %4) #15
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %4) #15
  call fastcc void @normalize_v3(ptr noundef nonnull %7) #15
  call fastcc void @normalize_v3(ptr noundef nonnull %8) #15
  %35 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  %36 = fcmp olt float %35, 0.000000e+00
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  call fastcc void @negate_v3(ptr noundef nonnull %8) #15
  br label %38

38:                                               ; preds = %37, %26
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #15
  %39 = getelementptr inbounds %struct.PathContext, ptr %3, i64 0, i32 1
  call fastcc void @normalize_v3_v3(ptr noundef nonnull %39, ptr noundef nonnull %5) #15
  %40 = getelementptr inbounds %struct.PathContext, ptr %3, i64 0, i32 1, i64 1
  call fastcc void @normalize_v3_v3(ptr noundef nonnull %40, ptr noundef nonnull %4) #15
  %41 = getelementptr inbounds %struct.PathContext, ptr %3, i64 0, i32 1, i64 2
  call fastcc void @normalize_v3_v3(ptr noundef nonnull %41, ptr noundef nonnull %6) #15
  %42 = call zeroext i8 @invert_m3(ptr noundef nonnull %39) #13
  %43 = load ptr, ptr %19, align 8, !tbaa !46
  %44 = getelementptr inbounds %struct.BMVert, ptr %43, i64 0, i32 2
  %45 = call fastcc float @dot_m3_v3_row_x(ptr noundef nonnull %39, ptr noundef nonnull %44) #15
  %46 = getelementptr inbounds %struct.PathContext, ptr %3, i64 0, i32 2
  store float %45, ptr %46, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #14
  %47 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %48 = call ptr %47(i64 noundef 40, ptr noundef nonnull @__func__.bmo_connect_vert_pair_exec) #13
  call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %48) #13
  %49 = load ptr, ptr %19, align 8, !tbaa !46
  call fastcc void @state_link_add(ptr noundef nonnull %3, ptr noundef %48, ptr noundef %49, ptr noundef null) #15
  br label %50

50:                                               ; preds = %89, %38
  %51 = phi float [ -1.000000e+00, %38 ], [ %86, %89 ]
  %52 = load ptr, ptr %3, align 8, !tbaa !50
  %53 = icmp eq ptr %52, null
  br i1 %53, label %137, label %54

54:                                               ; preds = %50, %85
  %55 = phi i8 [ %87, %85 ], [ 1, %50 ]
  %56 = phi float [ %86, %85 ], [ %51, %50 ]
  %57 = phi ptr [ %58, %85 ], [ %52, %50 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !51
  %59 = getelementptr inbounds %struct.PathLinkState, ptr %57, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !53
  %61 = getelementptr inbounds %struct.PathLink, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !54
  %63 = load ptr, ptr %22, align 8, !tbaa !47
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %54
  %66 = fcmp oeq float %56, -1.000000e+00
  %67 = getelementptr inbounds %struct.PathLinkState, ptr %57, i64 0, i32 3
  %68 = load float, ptr %67, align 8, !tbaa !56
  br i1 %66, label %85, label %69

69:                                               ; preds = %65
  %70 = fcmp ogt float %56, %68
  br i1 %70, label %71, label %85

71:                                               ; preds = %69
  br label %85

72:                                               ; preds = %54
  %73 = call fastcc zeroext i8 @state_step(ptr noundef nonnull %3, ptr noundef nonnull %57) #15, !range !57
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %72
  %76 = fcmp une float %56, -1.000000e+00
  br i1 %76, label %77, label %85

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.PathLinkState, ptr %57, i64 0, i32 3
  %79 = load float, ptr %78, align 8, !tbaa !56
  %80 = fcmp ugt float %56, %79
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %57) #13
  %82 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %82(ptr noundef nonnull %57) #13
  br label %85

83:                                               ; preds = %72
  call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %57) #13
  %84 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %84(ptr noundef nonnull %57) #13
  br label %85

85:                                               ; preds = %65, %75, %77, %81, %71, %69, %83
  %86 = phi float [ %56, %69 ], [ %56, %83 ], [ %56, %81 ], [ %56, %77 ], [ -1.000000e+00, %75 ], [ %68, %71 ], [ %68, %65 ]
  %87 = phi i8 [ %55, %69 ], [ %55, %83 ], [ 0, %81 ], [ 0, %77 ], [ 0, %75 ], [ %55, %71 ], [ %55, %65 ]
  %88 = icmp eq ptr %58, null
  br i1 %88, label %89, label %54, !llvm.loop !58

89:                                               ; preds = %85
  %90 = icmp eq i8 %87, 0
  br i1 %90, label %50, label %91

91:                                               ; preds = %89
  %92 = call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %3) #15, !range !57
  %93 = icmp ne i8 %92, 0
  %94 = or i1 %53, %93
  br i1 %94, label %137, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr %3, align 8, !tbaa !45, !nonnull !60, !noundef !60
  br label %97

97:                                               ; preds = %95, %107
  %98 = phi ptr [ %110, %107 ], [ %96, %95 ]
  %99 = phi float [ %109, %107 ], [ 0x47EFFFFFE0000000, %95 ]
  %100 = phi ptr [ %108, %107 ], [ null, %95 ]
  %101 = icmp eq ptr %100, null
  %102 = getelementptr inbounds %struct.PathLinkState, ptr %98, i64 0, i32 3
  %103 = load float, ptr %102, align 8, !tbaa !56
  br i1 %101, label %107, label %104

104:                                              ; preds = %97
  %105 = fcmp olt float %103, %99
  br i1 %105, label %106, label %107

106:                                              ; preds = %104
  br label %107

107:                                              ; preds = %97, %104, %106
  %108 = phi ptr [ %100, %104 ], [ %98, %106 ], [ %98, %97 ]
  %109 = phi float [ %99, %104 ], [ %103, %106 ], [ %103, %97 ]
  %110 = load ptr, ptr %98, align 8, !tbaa !45
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %97, !llvm.loop !61

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.PathLinkState, ptr %108, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !53
  br label %115

115:                                              ; preds = %134, %112
  %116 = phi ptr [ %114, %112 ], [ %135, %134 ]
  %117 = getelementptr inbounds %struct.PathLink, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !54
  %119 = getelementptr inbounds %struct.BMHeader, ptr %118, i64 0, i32 2
  %120 = load i8, ptr %119, align 4, !tbaa !62
  switch i8 %120, label %134 [
    i8 2, label %121
    i8 1, label %130
  ]

121:                                              ; preds = %115
  %122 = getelementptr inbounds %struct.BMEdge, ptr %118, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !65
  %124 = getelementptr inbounds %struct.BMVert, ptr %123, i64 0, i32 2
  %125 = getelementptr inbounds %struct.BMEdge, ptr %118, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !68
  %127 = getelementptr inbounds %struct.BMVert, ptr %126, i64 0, i32 2
  %128 = call fastcc float @state_calc_co_pair_fac(ptr noundef nonnull %3, ptr noundef nonnull %124, ptr noundef nonnull %127) #15
  %129 = call ptr @BM_edge_split(ptr noundef %0, ptr noundef nonnull %118, ptr noundef %123, ptr noundef null, float noundef %128) #13
  br label %130

130:                                              ; preds = %115, %121
  %131 = phi ptr [ %129, %121 ], [ %118, %115 ]
  %132 = getelementptr inbounds %struct.BMVert, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !69
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %133) #15
  br label %134

134:                                              ; preds = %130, %115
  %135 = load ptr, ptr %116, align 8, !tbaa !71
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %115, !llvm.loop !72

137:                                              ; preds = %50, %134, %91
  %138 = phi i1 [ true, %91 ], [ %94, %134 ], [ true, %50 ]
  %139 = load ptr, ptr %19, align 8, !tbaa !46
  %140 = getelementptr inbounds %struct.BMVert, ptr %139, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !69
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %141) #15
  %142 = load ptr, ptr %22, align 8, !tbaa !47
  %143 = getelementptr inbounds %struct.BMVert, ptr %142, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !69
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %144) #15
  %145 = load ptr, ptr %28, align 8, !tbaa !48
  call void @BLI_mempool_destroy(ptr noundef %145) #13
  call void @BLI_freelistN(ptr noundef nonnull %3) #13
  br i1 %138, label %152, label %146

146:                                              ; preds = %137
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %9) #14
  %147 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %9, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef %1, ptr noundef nonnull @.str.1) #13
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %9) #13
  %148 = getelementptr inbounds %struct.BMOperator, ptr %9, i64 0, i32 1
  %149 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %150 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !73
  call void @_bmo_slot_copy(ptr noundef nonnull %148, ptr noundef nonnull @.str.4, ptr noundef nonnull %149, ptr noundef nonnull @.str.4, ptr noundef %151) #13
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %9) #14
  br label %152

152:                                              ; preds = %137, %146, %14, %2
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !75 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !76 {
  %4 = load float, ptr %1, align 4, !tbaa !77
  %5 = load float, ptr %2, align 4, !tbaa !77
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !77
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !77
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !77
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !77
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !77
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !77
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !78 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !77
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !77
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !77
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !77
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !77
  %15 = load float, ptr %8, align 4, !tbaa !77
  %16 = load float, ptr %2, align 4, !tbaa !77
  %17 = load float, ptr %1, align 4, !tbaa !77
  %18 = load float, ptr %6, align 4, !tbaa !77
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !77
  %23 = load float, ptr %1, align 4, !tbaa !77
  %24 = load float, ptr %10, align 4, !tbaa !77
  %25 = load float, ptr %4, align 4, !tbaa !77
  %26 = load float, ptr %2, align 4, !tbaa !77
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !79 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !80 {
  %3 = load float, ptr %0, align 4, !tbaa !77
  %4 = load float, ptr %1, align 4, !tbaa !77
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !77
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !77
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !77
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !77
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !81 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !77
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !77
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !77
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !82 {
  %4 = load float, ptr %1, align 4, !tbaa !77
  %5 = load float, ptr %2, align 4, !tbaa !77
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !77
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !77
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !77
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !77
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !77
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !77
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !83 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #15
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #13
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #15
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #15
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @invert_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_m3_v3_row_x(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !84 {
  %3 = load float, ptr %0, align 4, !tbaa !77
  %4 = load float, ptr %1, align 4, !tbaa !77
  %5 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !77
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !77
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds [3 x float], ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !77
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !77
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @state_link_add(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !85 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call ptr @BLI_mempool_alloc(ptr noundef %7) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #14
  %9 = getelementptr inbounds %struct.BMHeader, ptr %2, i64 0, i32 2
  %10 = load i8, ptr %9, align 4, !tbaa !62
  switch i8 %10, label %20 [
    i8 1, label %11
    i8 2, label %13
  ]

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %12) #15
  br label %20

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2
  %17 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  %19 = getelementptr inbounds %struct.BMVert, ptr %18, i64 0, i32 2
  call fastcc void @state_calc_co_pair(ptr noundef nonnull %0, ptr noundef nonnull %16, ptr noundef nonnull %19, ptr noundef nonnull %5) #15
  br label %20

20:                                               ; preds = %4, %13, %11
  %21 = icmp eq ptr %3, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.PathLinkState, ptr %1, i64 0, i32 4
  %24 = call fastcc float @len_v3v3(ptr noundef nonnull %23, ptr noundef nonnull %5) #15
  %25 = getelementptr inbounds %struct.PathLinkState, ptr %1, i64 0, i32 3
  %26 = load float, ptr %25, align 8, !tbaa !56
  %27 = fadd float %24, %26
  store float %27, ptr %25, align 8, !tbaa !56
  br label %28

28:                                               ; preds = %22, %20
  %29 = getelementptr inbounds %struct.PathLinkState, ptr %1, i64 0, i32 4
  call fastcc void @copy_v3_v3(ptr noundef nonnull %29, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #14
  %30 = getelementptr inbounds %struct.PathLink, ptr %8, i64 0, i32 1
  store ptr %2, ptr %30, align 8, !tbaa !54
  %31 = getelementptr inbounds %struct.PathLink, ptr %8, i64 0, i32 2
  store ptr %3, ptr %31, align 8, !tbaa !86
  %32 = getelementptr inbounds %struct.PathLinkState, ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !53
  store ptr %33, ptr %8, align 8, !tbaa !71
  store ptr %8, ptr %32, align 8, !tbaa !53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @state_step(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !87 {
  %3 = alloca %struct.PathLinkState, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !88
  %7 = getelementptr inbounds %struct.PathLinkState, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = getelementptr inbounds %struct.PathLink, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = getelementptr inbounds %struct.PathLink, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = getelementptr inbounds %struct.BMHeader, ptr %10, i64 0, i32 2
  %14 = load i8, ptr %13, align 4, !tbaa !62
  switch i8 %14, label %166 [
    i8 2, label %15
    i8 1, label %63
  ]

15:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  %16 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, i8 noundef zeroext 14, ptr noundef nonnull %10) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %61, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 3
  %20 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 5
  %21 = getelementptr inbounds %struct.PathLinkState, ptr %3, i64 0, i32 2
  br label %22

22:                                               ; preds = %18, %57
  %23 = phi ptr [ %1, %18 ], [ %58, %57 ]
  %24 = phi ptr [ %16, %18 ], [ %59, %57 ]
  %25 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !89
  %27 = icmp eq ptr %26, %12
  br i1 %27, label %57, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr %19, align 8, !tbaa !40
  %30 = getelementptr inbounds %struct.BMFace, ptr %26, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !91
  %32 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %29, ptr noundef %31) #15
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %28
  %35 = load ptr, ptr %20, align 8, !tbaa !47
  %36 = call zeroext i8 @BM_vert_in_face(ptr noundef nonnull %26, ptr noundef %35) #13
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %21, align 8, !tbaa !53
  %40 = getelementptr inbounds %struct.PathLinkState, ptr %23, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !53
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = call fastcc ptr @state_dupe_add(ptr noundef nonnull %0, ptr noundef nonnull %3) #15
  br label %45

45:                                               ; preds = %43, %38
  %46 = phi ptr [ %44, %43 ], [ %23, %38 ]
  %47 = load ptr, ptr %20, align 8, !tbaa !47
  %48 = load ptr, ptr %25, align 8, !tbaa !89
  call fastcc void @state_link_add(ptr noundef nonnull %0, ptr noundef %46, ptr noundef %47, ptr noundef %48) #15
  br label %57

49:                                               ; preds = %34
  %50 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !94
  %52 = call fastcc ptr @state_step__face_edges(ptr noundef nonnull %0, ptr noundef %23, ptr noundef nonnull %3, ptr noundef %51, ptr noundef nonnull %24) #15
  %53 = load ptr, ptr %50, align 8, !tbaa !94
  %54 = getelementptr inbounds %struct.BMLoop, ptr %53, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !94
  %56 = call fastcc ptr @state_step__face_verts(ptr noundef nonnull %0, ptr noundef %52, ptr noundef nonnull %3, ptr noundef %55, ptr noundef nonnull %24) #15
  br label %57

57:                                               ; preds = %22, %28, %49, %45
  %58 = phi ptr [ %46, %45 ], [ %56, %49 ], [ %23, %28 ], [ %23, %22 ]
  %59 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #15
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %22, !llvm.loop !95

61:                                               ; preds = %57, %15
  %62 = phi ptr [ %1, %15 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  br label %166

63:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #14
  %64 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, i8 noundef zeroext 6, ptr noundef nonnull %10) #15
  %65 = icmp eq ptr %64, null
  br i1 %65, label %117, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 3
  %68 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 5
  %69 = getelementptr inbounds %struct.PathLinkState, ptr %3, i64 0, i32 2
  br label %70

70:                                               ; preds = %66, %113
  %71 = phi ptr [ %1, %66 ], [ %114, %113 ]
  %72 = phi ptr [ %64, %66 ], [ %115, %113 ]
  %73 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !89
  %75 = icmp eq ptr %74, %12
  br i1 %75, label %113, label %76

76:                                               ; preds = %70
  %77 = load ptr, ptr %67, align 8, !tbaa !40
  %78 = getelementptr inbounds %struct.BMFace, ptr %74, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !91
  %80 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %77, ptr noundef %79) #15
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %82, label %113

82:                                               ; preds = %76
  %83 = load ptr, ptr %68, align 8, !tbaa !47
  %84 = call zeroext i8 @BM_vert_in_face(ptr noundef nonnull %74, ptr noundef %83) #13
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %68, align 8, !tbaa !47
  %88 = load ptr, ptr %73, align 8, !tbaa !89
  %89 = load ptr, ptr %69, align 8, !tbaa !53
  %90 = getelementptr inbounds %struct.PathLinkState, ptr %71, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !53
  %92 = icmp eq ptr %89, %91
  br i1 %92, label %95, label %93

93:                                               ; preds = %86
  %94 = call fastcc ptr @state_dupe_add(ptr noundef nonnull %0, ptr noundef nonnull %3) #15
  br label %95

95:                                               ; preds = %93, %86
  %96 = phi ptr [ %94, %93 ], [ %71, %86 ]
  call fastcc void @state_link_add(ptr noundef nonnull %0, ptr noundef %96, ptr noundef %87, ptr noundef %88) #15
  br label %113

97:                                               ; preds = %82
  %98 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 6
  %99 = load ptr, ptr %98, align 8, !tbaa !94
  %100 = getelementptr inbounds %struct.BMLoop, ptr %72, i64 0, i32 7
  %101 = load ptr, ptr %100, align 8, !tbaa !96
  %102 = call fastcc ptr @state_step__face_edges(ptr noundef nonnull %0, ptr noundef %71, ptr noundef nonnull %3, ptr noundef %99, ptr noundef %101) #15
  %103 = load ptr, ptr %73, align 8, !tbaa !89
  %104 = getelementptr inbounds %struct.BMFace, ptr %103, i64 0, i32 3
  %105 = load i32, ptr %104, align 8, !tbaa !97
  %106 = icmp sgt i32 %105, 3
  br i1 %106, label %107, label %113

107:                                              ; preds = %97
  %108 = load ptr, ptr %98, align 8, !tbaa !94
  %109 = getelementptr inbounds %struct.BMLoop, ptr %108, i64 0, i32 6
  %110 = load ptr, ptr %109, align 8, !tbaa !94
  %111 = load ptr, ptr %100, align 8, !tbaa !96
  %112 = call fastcc ptr @state_step__face_verts(ptr noundef nonnull %0, ptr noundef %102, ptr noundef nonnull %3, ptr noundef %110, ptr noundef %111) #15
  br label %113

113:                                              ; preds = %70, %76, %97, %107, %95
  %114 = phi ptr [ %96, %95 ], [ %112, %107 ], [ %102, %97 ], [ %71, %76 ], [ %71, %70 ]
  %115 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #15
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %70, !llvm.loop !98

117:                                              ; preds = %113, %63
  %118 = phi ptr [ %1, %63 ], [ %114, %113 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #14
  %119 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, i8 noundef zeroext 4, ptr noundef %10) #15
  %120 = icmp eq ptr %119, null
  br i1 %120, label %164, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 3
  %123 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 5
  %124 = getelementptr inbounds %struct.PathLinkState, ptr %3, i64 0, i32 2
  br label %125

125:                                              ; preds = %121, %160
  %126 = phi ptr [ %118, %121 ], [ %161, %160 ]
  %127 = phi ptr [ %119, %121 ], [ %162, %160 ]
  %128 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %127, ptr noundef %10) #15
  %129 = icmp eq ptr %127, %12
  br i1 %129, label %160, label %130

130:                                              ; preds = %125
  %131 = load ptr, ptr %122, align 8, !tbaa !40
  %132 = getelementptr inbounds %struct.BMVert, ptr %128, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !69
  %134 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %131, ptr noundef %133) #15
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %136, label %160

136:                                              ; preds = %130
  %137 = load ptr, ptr %123, align 8, !tbaa !47
  %138 = icmp eq ptr %128, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load ptr, ptr %124, align 8, !tbaa !53
  %141 = getelementptr inbounds %struct.PathLinkState, ptr %126, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !53
  %143 = icmp eq ptr %140, %142
  br i1 %143, label %158, label %156

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.BMVert, ptr %128, i64 0, i32 2
  %146 = call fastcc i32 @state_isect_co_exact(ptr noundef nonnull %0, ptr noundef nonnull %145) #15, !range !99
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %160, label %148

148:                                              ; preds = %144
  %149 = call fastcc zeroext i8 @state_link_find(ptr noundef %126, ptr noundef nonnull %128) #15, !range !57
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %148
  %152 = load ptr, ptr %124, align 8, !tbaa !53
  %153 = getelementptr inbounds %struct.PathLinkState, ptr %126, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !53
  %155 = icmp eq ptr %152, %154
  br i1 %155, label %158, label %156

156:                                              ; preds = %151, %139
  %157 = call fastcc ptr @state_dupe_add(ptr noundef nonnull %0, ptr noundef nonnull %3) #15
  br label %158

158:                                              ; preds = %156, %151, %139
  %159 = phi ptr [ %126, %139 ], [ %126, %151 ], [ %157, %156 ]
  call fastcc void @state_link_add(ptr noundef nonnull %0, ptr noundef %159, ptr noundef nonnull %128, ptr noundef nonnull %127) #15
  br label %160

160:                                              ; preds = %158, %148, %144, %130, %125
  %161 = phi ptr [ %126, %144 ], [ %126, %130 ], [ %126, %125 ], [ %126, %148 ], [ %159, %158 ]
  %162 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #15
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %125, !llvm.loop !100

164:                                              ; preds = %160, %117
  %165 = phi ptr [ %118, %117 ], [ %161, %160 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #14
  br label %166

166:                                              ; preds = %2, %164, %61
  %167 = phi ptr [ %62, %61 ], [ %165, %164 ], [ %1, %2 ]
  %168 = getelementptr inbounds %struct.PathLinkState, ptr %3, i64 0, i32 2
  %169 = load ptr, ptr %168, align 8, !tbaa !53
  %170 = getelementptr inbounds %struct.PathLinkState, ptr %167, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !53
  %172 = icmp ne ptr %169, %171
  %173 = zext i1 %172 to i8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #14
  ret i8 %173
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #6 !PGOFuncName !101 {
  %2 = load ptr, ptr %0, align 8, !tbaa !102
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @state_calc_co_pair_fac(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !103 {
  %4 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 1
  %5 = tail call fastcc float @dot_m3_v3_row_x(ptr noundef nonnull %4, ptr noundef %1) #15
  %6 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 2
  %7 = load float, ptr %6, align 4, !tbaa !49
  %8 = tail call fastcc float @dot_m3_v3_row_x(ptr noundef nonnull %4, ptr noundef %2) #15
  %9 = insertelement <2 x float> poison, float %5, i64 0
  %10 = insertelement <2 x float> %9, float %8, i64 1
  %11 = insertelement <2 x float> poison, float %7, i64 0
  %12 = shufflevector <2 x float> %11, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = fsub <2 x float> %10, %12
  %14 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %13)
  %15 = extractelement <2 x float> %14, i64 0
  %16 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %17 = fadd <2 x float> %14, %16
  %18 = extractelement <2 x float> %17, i64 0
  %19 = fcmp ogt float %18, 0x3E80000000000000
  %20 = fdiv float %15, %18
  %21 = select i1 %19, float %20, float 5.000000e-01
  ret float %21
}

; Function Attrs: optsize
declare ptr @BM_edge_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #4 !PGOFuncName !104 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !105
  %5 = sext i32 %4 to i64
  %6 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %5
  %7 = getelementptr %struct.BMFlagLayer, ptr %6, i64 -1
  %8 = load i16, ptr %7, align 2, !tbaa !108
  %9 = or i16 %8, 1
  store i16 %9, ptr %7, align 2, !tbaa !108
  ret void
}

; Function Attrs: optsize
declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_bmo_slot_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #4 !PGOFuncName !110 {
  %4 = load float, ptr %1, align 4, !tbaa !77
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !77
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !77
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !77
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !77
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !111 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !77
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !77
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !112 {
  %3 = load float, ptr %1, align 4, !tbaa !77
  store float %3, ptr %0, align 4, !tbaa !77
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !77
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !77
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !77
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !77
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @state_calc_co_pair(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !113 {
  %5 = tail call fastcc float @state_calc_co_pair_fac(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15
  tail call void @interp_v3_v3v3(ptr noundef %3, ptr noundef %1, ptr noundef %2, float noundef %5) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !114 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #15
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret float %4
}

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !115 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #15
  %3 = tail call float @sqrtf(float noundef %2) #13
  ret float %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !116 {
  %4 = tail call fastcc zeroext i8 @BM_iter_init(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #15
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i16 @_bmo_elem_flag_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !117 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !105
  %5 = sext i32 %4 to i64
  %6 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %5
  %7 = getelementptr %struct.BMFlagLayer, ptr %6, i64 -1
  %8 = load i16, ptr %7, align 2, !tbaa !108
  %9 = and i16 %8, 2
  ret i16 %9
}

; Function Attrs: optsize
declare zeroext i8 @BM_vert_in_face(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @state_dupe_add(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !118 {
  %3 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %4 = tail call ptr %3(i64 noundef 40, ptr noundef nonnull @__func__.state_dupe_add) #13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !88
  tail call void @BLI_addhead(ptr noundef %0, ptr noundef %4) #13
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @state_step__face_edges(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef readnone %4) unnamed_addr #0 !PGOFuncName !119 {
  %6 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.PathLinkState, ptr %2, i64 0, i32 2
  br label %8

8:                                                ; preds = %44, %5
  %9 = phi ptr [ %3, %5 ], [ %45, %44 ]
  %10 = phi ptr [ %1, %5 ], [ %46, %44 ]
  %11 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !120
  %13 = getelementptr inbounds %struct.BMVert, ptr %12, i64 0, i32 2
  %14 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !94
  %16 = getelementptr inbounds %struct.BMLoop, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !120
  %18 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 2
  %19 = tail call fastcc i32 @state_isect_co_pair(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %18) #15, !range !99
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %44, label %21

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !121
  %24 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !89
  %26 = load ptr, ptr %6, align 8, !tbaa !40
  %27 = getelementptr inbounds %struct.BMFace, ptr %25, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !91
  %29 = tail call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %26, ptr noundef %28) #15
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %21
  %32 = tail call fastcc zeroext i8 @state_link_find(ptr noundef %10, ptr noundef %23) #15, !range !57
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load ptr, ptr %7, align 8, !tbaa !53
  %36 = getelementptr inbounds %struct.PathLinkState, ptr %10, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !53
  %38 = icmp eq ptr %35, %37
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = tail call fastcc ptr @state_dupe_add(ptr noundef nonnull %0, ptr noundef nonnull %2) #15
  br label %41

41:                                               ; preds = %39, %34
  %42 = phi ptr [ %40, %39 ], [ %10, %34 ]
  tail call fastcc void @state_link_add(ptr noundef nonnull %0, ptr noundef %42, ptr noundef %23, ptr noundef nonnull %25) #15
  %43 = load ptr, ptr %14, align 8, !tbaa !94
  br label %44

44:                                               ; preds = %21, %31, %41, %8
  %45 = phi ptr [ %15, %8 ], [ %43, %41 ], [ %15, %31 ], [ %15, %21 ]
  %46 = phi ptr [ %10, %8 ], [ %42, %41 ], [ %10, %31 ], [ %10, %21 ]
  %47 = icmp eq ptr %45, %4
  br i1 %47, label %48, label %8, !llvm.loop !122

48:                                               ; preds = %44
  ret ptr %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @state_step__face_verts(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef readnone %4) unnamed_addr #0 !PGOFuncName !123 {
  %6 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %struct.PathLinkState, ptr %2, i64 0, i32 2
  br label %8

8:                                                ; preds = %36, %5
  %9 = phi ptr [ %3, %5 ], [ %39, %36 ]
  %10 = phi ptr [ %1, %5 ], [ %37, %36 ]
  %11 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !120
  %13 = getelementptr inbounds %struct.BMVert, ptr %12, i64 0, i32 2
  %14 = tail call fastcc i32 @state_isect_co_exact(ptr noundef %0, ptr noundef nonnull %13) #15, !range !99
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !89
  %19 = load ptr, ptr %6, align 8, !tbaa !40
  %20 = getelementptr inbounds %struct.BMFace, ptr %18, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !91
  %22 = tail call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %19, ptr noundef %21) #15
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %16
  %25 = tail call fastcc zeroext i8 @state_link_find(ptr noundef %10, ptr noundef %12) #15, !range !57
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load ptr, ptr %7, align 8, !tbaa !53
  %29 = getelementptr inbounds %struct.PathLinkState, ptr %10, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !53
  %31 = icmp eq ptr %28, %30
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @state_dupe_add(ptr noundef nonnull %0, ptr noundef nonnull %2) #15
  br label %34

34:                                               ; preds = %32, %27
  %35 = phi ptr [ %33, %32 ], [ %10, %27 ]
  tail call fastcc void @state_link_add(ptr noundef nonnull %0, ptr noundef %35, ptr noundef %12, ptr noundef nonnull %18) #15
  br label %36

36:                                               ; preds = %16, %24, %34, %8
  %37 = phi ptr [ %10, %8 ], [ %35, %34 ], [ %10, %24 ], [ %10, %16 ]
  %38 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !94
  %40 = icmp eq ptr %39, %4
  br i1 %40, label %41, label %8, !llvm.loop !124

41:                                               ; preds = %36
  ret ptr %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !125 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !126
  %4 = tail call ptr %3(ptr noundef %0) #13
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #6 !PGOFuncName !128 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @state_isect_co_exact(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !129 {
  %3 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 1
  %4 = tail call fastcc float @dot_m3_v3_row_x(ptr noundef nonnull %3, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 2
  %6 = load float, ptr %5, align 4, !tbaa !49
  %7 = fsub float %4, %6
  %8 = tail call float @llvm.fabs.f32(float %7)
  %9 = fcmp ole float %8, 0x3F1A36E2E0000000
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @state_link_find(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #10 !PGOFuncName !130 {
  %3 = getelementptr inbounds %struct.PathLinkState, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2, %11
  %7 = phi ptr [ %12, %11 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.PathLink, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !71
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6, !llvm.loop !131

14:                                               ; preds = %11, %6, %2
  %15 = phi i8 [ 0, %2 ], [ 0, %11 ], [ 1, %6 ]
  ret i8 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @BM_iter_init(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !132 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %1, ptr %4, align 4, !tbaa !133
  %5 = add i8 %1, -4
  %6 = icmp ult i8 %5, 11
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = zext nneg i8 %5 to i16
  %9 = lshr i16 1791, %8
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %7
  %13 = zext nneg i8 %5 to i64
  %14 = getelementptr inbounds [11 x ptr], ptr @switch.table.BM_iter_init, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8
  %16 = zext nneg i8 %5 to i64
  %17 = getelementptr inbounds [11 x ptr], ptr @switch.table.BM_iter_init.5, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr %15, ptr %19, align 8, !tbaa !134
  %20 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr %18, ptr %20, align 8, !tbaa !126
  store ptr %2, ptr %0, align 8, !tbaa !44
  tail call void %15(ptr noundef nonnull %0) #13
  br label %21

21:                                               ; preds = %7, %3, %12
  %22 = phi i8 [ 1, %12 ], [ 0, %3 ], [ 0, %7 ]
  ret i8 %22
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

; Function Attrs: optsize
declare void @bmiter__loop_of_loop_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_loop_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @state_isect_co_pair(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !135 {
  %4 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 1
  %5 = tail call fastcc float @dot_m3_v3_row_x(ptr noundef nonnull %4, ptr noundef %1) #15
  %6 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 2
  %7 = load float, ptr %6, align 4, !tbaa !49
  %8 = fsub float %5, %7
  %9 = tail call fastcc float @dot_m3_v3_row_x(ptr noundef nonnull %4, ptr noundef %2) #15
  %10 = fsub float %9, %7
  %11 = tail call float @llvm.fabs.f32(float %8)
  %12 = fcmp olt float %11, 0x3F1A36E2E0000000
  %13 = fcmp olt float %8, 0.000000e+00
  %14 = tail call float @llvm.fabs.f32(float %10)
  %15 = fcmp olt float %14, 0x3F1A36E2E0000000
  %16 = fcmp uge float %10, 0.000000e+00
  %17 = select i1 %12, i1 true, i1 %15
  %18 = xor i1 %13, %16
  %19 = xor i1 %15, true
  %20 = select i1 %19, i1 %18, i1 false
  %21 = select i1 %12, i1 %15, i1 %20
  %22 = select i1 %17, i1 true, i1 %21
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  ret i32 %24
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }
attributes #15 = { optsize }

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
!34 = !{!35, !39, i64 16}
!35 = !{!"BMOpSlot", !36, i64 0, !39, i64 8, !37, i64 12, !39, i64 16, !37, i64 24}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!41, !36, i64 56}
!41 = !{!"PathContext", !42, i64 0, !37, i64 16, !43, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80}
!42 = !{!"ListBase", !36, i64 0, !36, i64 8}
!43 = !{!"float", !37, i64 0}
!44 = !{!37, !37, i64 0}
!45 = !{!36, !36, i64 0}
!46 = !{!41, !36, i64 64}
!47 = !{!41, !36, i64 72}
!48 = !{!41, !36, i64 80}
!49 = !{!41, !43, i64 52}
!50 = !{!41, !36, i64 0}
!51 = !{!52, !36, i64 0}
!52 = !{!"PathLinkState", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24, !37, i64 28}
!53 = !{!52, !36, i64 16}
!54 = !{!55, !36, i64 8}
!55 = !{!"PathLink", !36, i64 0, !36, i64 8, !36, i64 16}
!56 = !{!52, !43, i64 24}
!57 = !{i8 0, i8 2}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{}
!61 = distinct !{!61, !59}
!62 = !{!63, !37, i64 12}
!63 = !{!"BMElem", !64, i64 0}
!64 = !{!"BMHeader", !36, i64 0, !39, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!65 = !{!66, !36, i64 24}
!66 = !{!"BMEdge", !64, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !67, i64 48, !67, i64 64}
!67 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!68 = !{!66, !36, i64 32}
!69 = !{!70, !36, i64 16}
!70 = !{!"BMVert", !64, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!71 = !{!55, !36, i64 0}
!72 = distinct !{!72, !59}
!73 = !{!74, !36, i64 1288}
!74 = !{!"BMOperator", !37, i64 0, !37, i64 640, !36, i64 1280, !36, i64 1288, !39, i64 1296, !39, i64 1300, !39, i64 1304}
!75 = !{!"bmo_connect_pair.c:BLI_listbase_clear"}
!76 = !{!"bmo_connect_pair.c:sub_v3_v3v3"}
!77 = !{!43, !43, i64 0}
!78 = !{!"bmo_connect_pair.c:cross_v3_v3v3"}
!79 = !{!"bmo_connect_pair.c:normalize_v3"}
!80 = !{!"bmo_connect_pair.c:dot_v3v3"}
!81 = !{!"bmo_connect_pair.c:negate_v3"}
!82 = !{!"bmo_connect_pair.c:add_v3_v3v3"}
!83 = !{!"bmo_connect_pair.c:normalize_v3_v3"}
!84 = !{!"bmo_connect_pair.c:dot_m3_v3_row_x"}
!85 = !{!"bmo_connect_pair.c:state_link_add"}
!86 = !{!55, !36, i64 16}
!87 = !{!"bmo_connect_pair.c:state_step"}
!88 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 8, !45, i64 24, i64 4, !77, i64 28, i64 12, !44}
!89 = !{!90, !36, i64 32}
!90 = !{!"BMLoop", !64, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!91 = !{!92, !36, i64 16}
!92 = !{!"BMFace", !64, i64 0, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 36, !93, i64 48}
!93 = !{!"short", !37, i64 0}
!94 = !{!90, !36, i64 56}
!95 = distinct !{!95, !59}
!96 = !{!90, !36, i64 64}
!97 = !{!92, !39, i64 32}
!98 = distinct !{!98, !59}
!99 = !{i32 0, i32 2}
!100 = distinct !{!100, !59}
!101 = !{!"bmo_connect_pair.c:BLI_listbase_is_empty"}
!102 = !{!42, !36, i64 0}
!103 = !{!"bmo_connect_pair.c:state_calc_co_pair_fac"}
!104 = !{!"bmo_connect_pair.c:_bmo_elem_flag_enable"}
!105 = !{!106, !39, i64 128}
!106 = !{!"BMesh", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !39, i64 88, !39, i64 92, !39, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 136, !107, i64 144, !107, i64 344, !107, i64 544, !107, i64 744, !93, i64 944, !39, i64 948, !39, i64 952, !39, i64 956, !42, i64 960, !36, i64 976, !42, i64 984, !36, i64 1000}
!107 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!108 = !{!109, !93, i64 0}
!109 = !{!"BMFlagLayer", !93, i64 0}
!110 = !{!"bmo_connect_pair.c:mul_v3_v3fl"}
!111 = !{!"bmo_connect_pair.c:zero_v3"}
!112 = !{!"bmo_connect_pair.c:copy_v3_v3"}
!113 = !{!"bmo_connect_pair.c:state_calc_co_pair"}
!114 = !{!"bmo_connect_pair.c:len_v3v3"}
!115 = !{!"bmo_connect_pair.c:len_v3"}
!116 = !{!"bmo_connect_pair.c:BM_iter_new"}
!117 = !{!"bmo_connect_pair.c:_bmo_elem_flag_test"}
!118 = !{!"bmo_connect_pair.c:state_dupe_add"}
!119 = !{!"bmo_connect_pair.c:state_step__face_edges"}
!120 = !{!90, !36, i64 16}
!121 = !{!90, !36, i64 24}
!122 = distinct !{!122, !59}
!123 = !{!"bmo_connect_pair.c:state_step__face_verts"}
!124 = distinct !{!124, !59}
!125 = !{!"bmo_connect_pair.c:BM_iter_step"}
!126 = !{!127, !36, i64 48}
!127 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !39, i64 56, !37, i64 60}
!128 = !{!"bmo_connect_pair.c:BM_edge_other_vert"}
!129 = !{!"bmo_connect_pair.c:state_isect_co_exact"}
!130 = !{!"bmo_connect_pair.c:state_link_find"}
!131 = distinct !{!131, !59}
!132 = !{!"bmo_connect_pair.c:BM_iter_init"}
!133 = !{!127, !37, i64 60}
!134 = !{!127, !36, i64 40}
!135 = !{!"bmo_connect_pair.c:state_isect_co_pair"}
