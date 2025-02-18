; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_delete.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFlagLayer = type { i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @BMO_mesh_delete_oflag_tagged(ptr noundef %0, i16 noundef signext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = zext i8 %2 to i32
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %41, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #3
  %11 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 3, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %12, align 8, !tbaa !40
  %13 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %13, align 8, !tbaa !41
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  store ptr %15, ptr %6, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #3
  %16 = load ptr, ptr %13, align 8, !tbaa !41
  %17 = call ptr %16(ptr noundef nonnull %6) #3
  %18 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %19

19:                                               ; preds = %39, %10
  %20 = phi ptr [ %17, %10 ], [ %27, %39 ]
  %21 = phi ptr [ undef, %10 ], [ %27, %39 ]
  %22 = icmp eq ptr %20, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %13, align 8, !tbaa !41
  %25 = call ptr %24(ptr noundef nonnull %6) #3
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi ptr [ %25, %23 ], [ %21, %19 ]
  br i1 %22, label %40, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = load i32, ptr %18, align 8, !tbaa !51
  %32 = sext i32 %31 to i64
  %33 = getelementptr %struct.BMFlagLayer, ptr %30, i64 %32
  %34 = getelementptr %struct.BMFlagLayer, ptr %33, i64 -1
  %35 = load i16, ptr %34, align 2, !tbaa !52
  %36 = and i16 %35, %1
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  call void @BM_face_kill(ptr noundef %0, ptr noundef nonnull %20) #3
  br label %39

39:                                               ; preds = %38, %28
  br label %19, !llvm.loop !54

40:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #3
  br label %41

41:                                               ; preds = %40, %3
  %42 = and i32 %7, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %75, label %44

44:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #3
  %45 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 2, ptr %45, align 4, !tbaa !34
  %46 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %46, align 8, !tbaa !40
  %47 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %47, align 8, !tbaa !41
  %48 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %49 = load ptr, ptr %48, align 8, !tbaa !57
  store ptr %49, ptr %5, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #3
  %50 = load ptr, ptr %47, align 8, !tbaa !41
  %51 = call ptr %50(ptr noundef nonnull %5) #3
  %52 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %53

53:                                               ; preds = %73, %44
  %54 = phi ptr [ %51, %44 ], [ %61, %73 ]
  %55 = phi ptr [ undef, %44 ], [ %61, %73 ]
  %56 = icmp eq ptr %54, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %47, align 8, !tbaa !41
  %59 = call ptr %58(ptr noundef nonnull %5) #3
  br label %60

60:                                               ; preds = %57, %53
  %61 = phi ptr [ %59, %57 ], [ %55, %53 ]
  br i1 %56, label %74, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.BMEdge, ptr %54, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !58
  %65 = load i32, ptr %52, align 8, !tbaa !51
  %66 = sext i32 %65 to i64
  %67 = getelementptr %struct.BMFlagLayer, ptr %64, i64 %66
  %68 = getelementptr %struct.BMFlagLayer, ptr %67, i64 -1
  %69 = load i16, ptr %68, align 2, !tbaa !52
  %70 = and i16 %69, %1
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %62
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %54) #3
  br label %73

73:                                               ; preds = %72, %62
  br label %53, !llvm.loop !61

74:                                               ; preds = %60
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #3
  br label %75

75:                                               ; preds = %74, %41
  %76 = and i32 %7, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %109, label %78

78:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #3
  %79 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %79, align 4, !tbaa !34
  %80 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %80, align 8, !tbaa !40
  %81 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %81, align 8, !tbaa !41
  %82 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %83 = load ptr, ptr %82, align 8, !tbaa !62
  store ptr %83, ptr %4, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #3
  %84 = load ptr, ptr %81, align 8, !tbaa !41
  %85 = call ptr %84(ptr noundef nonnull %4) #3
  %86 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %87

87:                                               ; preds = %107, %78
  %88 = phi ptr [ %85, %78 ], [ %95, %107 ]
  %89 = phi ptr [ undef, %78 ], [ %95, %107 ]
  %90 = icmp eq ptr %88, null
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %81, align 8, !tbaa !41
  %93 = call ptr %92(ptr noundef nonnull %4) #3
  br label %94

94:                                               ; preds = %91, %87
  %95 = phi ptr [ %93, %91 ], [ %89, %87 ]
  br i1 %90, label %108, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.BMVert, ptr %88, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !63
  %99 = load i32, ptr %86, align 8, !tbaa !51
  %100 = sext i32 %99 to i64
  %101 = getelementptr %struct.BMFlagLayer, ptr %98, i64 %100
  %102 = getelementptr %struct.BMFlagLayer, ptr %101, i64 -1
  %103 = load i16, ptr %102, align 2, !tbaa !52
  %104 = and i16 %103, %1
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %96
  call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %88) #3
  br label %107

107:                                              ; preds = %106, %96
  br label %87, !llvm.loop !65

108:                                              ; preds = %94
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #3
  br label %109

109:                                              ; preds = %108, %75
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BMO_mesh_delete_oflag_context(ptr noundef %0, i16 noundef signext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca %struct.BMIter, align 8
  %12 = alloca %struct.BMIter, align 8
  %13 = alloca %struct.BMIter, align 8
  %14 = alloca %struct.BMIter, align 8
  %15 = alloca %struct.BMIter, align 8
  %16 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #3
  switch i32 %2, label %533 [
    i32 1, label %17
    i32 2, label %48
    i32 4, label %154
    i32 3, label %185
    i32 6, label %216
    i32 5, label %305
  ]

17:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #3
  %18 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 4
  store i8 1, ptr %18, align 4, !tbaa !34
  %19 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %19, align 8, !tbaa !40
  %20 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %20, align 8, !tbaa !41
  %21 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  store ptr %22, ptr %13, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %13) #3
  %23 = load ptr, ptr %20, align 8, !tbaa !41
  %24 = call ptr %23(ptr noundef nonnull %13) #3
  %25 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %26

26:                                               ; preds = %46, %17
  %27 = phi ptr [ %24, %17 ], [ %34, %46 ]
  %28 = phi ptr [ undef, %17 ], [ %34, %46 ]
  %29 = icmp eq ptr %27, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %20, align 8, !tbaa !41
  %32 = call ptr %31(ptr noundef nonnull %13) #3
  br label %33

33:                                               ; preds = %30, %26
  %34 = phi ptr [ %32, %30 ], [ %28, %26 ]
  br i1 %29, label %47, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.BMVert, ptr %27, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !63
  %38 = load i32, ptr %25, align 8, !tbaa !51
  %39 = sext i32 %38 to i64
  %40 = getelementptr %struct.BMFlagLayer, ptr %37, i64 %39
  %41 = getelementptr %struct.BMFlagLayer, ptr %40, i64 -1
  %42 = load i16, ptr %41, align 2, !tbaa !52
  %43 = and i16 %42, %1
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %27) #3
  br label %46

46:                                               ; preds = %45, %35
  br label %26, !llvm.loop !65

47:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #3
  br label %533

48:                                               ; preds = %3
  %49 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 4
  store i8 2, ptr %49, align 4, !tbaa !34
  %50 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %50, align 8, !tbaa !40
  %51 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %51, align 8, !tbaa !41
  %52 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !57
  store ptr %53, ptr %15, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %15) #3
  %54 = load ptr, ptr %51, align 8, !tbaa !41
  %55 = call ptr %54(ptr noundef nonnull %15) #3
  %56 = icmp eq ptr %55, null
  br i1 %56, label %91, label %57

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %59

59:                                               ; preds = %57, %87
  %60 = phi ptr [ %55, %57 ], [ %89, %87 ]
  %61 = getelementptr inbounds %struct.BMEdge, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !58
  %63 = load i32, ptr %58, align 8, !tbaa !51
  %64 = sext i32 %63 to i64
  %65 = getelementptr %struct.BMFlagLayer, ptr %62, i64 %64
  %66 = getelementptr %struct.BMFlagLayer, ptr %65, i64 -1
  %67 = load i16, ptr %66, align 2, !tbaa !52
  %68 = and i16 %67, %1
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %87, label %70

70:                                               ; preds = %59
  %71 = getelementptr inbounds %struct.BMEdge, ptr %60, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !66
  %73 = getelementptr inbounds %struct.BMVert, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !63
  %75 = getelementptr %struct.BMFlagLayer, ptr %74, i64 %64
  %76 = getelementptr %struct.BMFlagLayer, ptr %75, i64 -1
  %77 = load i16, ptr %76, align 2, !tbaa !52
  %78 = or i16 %77, %1
  store i16 %78, ptr %76, align 2, !tbaa !52
  %79 = getelementptr inbounds %struct.BMEdge, ptr %60, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !67
  %81 = getelementptr inbounds %struct.BMVert, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !63
  %83 = getelementptr %struct.BMFlagLayer, ptr %82, i64 %64
  %84 = getelementptr %struct.BMFlagLayer, ptr %83, i64 -1
  %85 = load i16, ptr %84, align 2, !tbaa !52
  %86 = or i16 %85, %1
  store i16 %86, ptr %84, align 2, !tbaa !52
  br label %87

87:                                               ; preds = %59, %70
  %88 = load ptr, ptr %51, align 8, !tbaa !41
  %89 = call ptr %88(ptr noundef nonnull %15) #3
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %59, !llvm.loop !68

91:                                               ; preds = %87, %48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #3
  %92 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 4
  store i8 2, ptr %92, align 4, !tbaa !34
  %93 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %93, align 8, !tbaa !40
  %94 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %94, align 8, !tbaa !41
  %95 = load ptr, ptr %52, align 8, !tbaa !57
  store ptr %95, ptr %12, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %12) #3
  %96 = load ptr, ptr %94, align 8, !tbaa !41
  %97 = call ptr %96(ptr noundef nonnull %12) #3
  %98 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %99

99:                                               ; preds = %119, %91
  %100 = phi ptr [ %97, %91 ], [ %107, %119 ]
  %101 = phi ptr [ undef, %91 ], [ %107, %119 ]
  %102 = icmp eq ptr %100, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr %94, align 8, !tbaa !41
  %105 = call ptr %104(ptr noundef nonnull %12) #3
  br label %106

106:                                              ; preds = %103, %99
  %107 = phi ptr [ %105, %103 ], [ %101, %99 ]
  br i1 %102, label %120, label %108

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.BMEdge, ptr %100, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !58
  %111 = load i32, ptr %98, align 8, !tbaa !51
  %112 = sext i32 %111 to i64
  %113 = getelementptr %struct.BMFlagLayer, ptr %110, i64 %112
  %114 = getelementptr %struct.BMFlagLayer, ptr %113, i64 -1
  %115 = load i16, ptr %114, align 2, !tbaa !52
  %116 = and i16 %115, %1
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %108
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %100) #3
  br label %119

119:                                              ; preds = %118, %108
  br label %99, !llvm.loop !61

120:                                              ; preds = %106
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #3
  %121 = getelementptr inbounds %struct.BMIter, ptr %14, i64 0, i32 4
  store i8 1, ptr %121, align 4, !tbaa !34
  %122 = getelementptr inbounds %struct.BMIter, ptr %14, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %122, align 8, !tbaa !40
  %123 = getelementptr inbounds %struct.BMIter, ptr %14, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %123, align 8, !tbaa !41
  %124 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %125 = load ptr, ptr %124, align 8, !tbaa !62
  store ptr %125, ptr %14, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %14) #3
  %126 = load ptr, ptr %123, align 8, !tbaa !41
  %127 = call ptr %126(ptr noundef nonnull %14) #3
  br label %128

128:                                              ; preds = %152, %120
  %129 = phi ptr [ %127, %120 ], [ %136, %152 ]
  %130 = phi ptr [ undef, %120 ], [ %136, %152 ]
  %131 = icmp eq ptr %129, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %128
  %133 = load ptr, ptr %123, align 8, !tbaa !41
  %134 = call ptr %133(ptr noundef nonnull %14) #3
  br label %135

135:                                              ; preds = %132, %128
  %136 = phi ptr [ %134, %132 ], [ %130, %128 ]
  br i1 %131, label %153, label %137

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.BMVert, ptr %129, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !63
  %140 = load i32, ptr %98, align 8, !tbaa !51
  %141 = sext i32 %140 to i64
  %142 = getelementptr %struct.BMFlagLayer, ptr %139, i64 %141
  %143 = getelementptr %struct.BMFlagLayer, ptr %142, i64 -1
  %144 = load i16, ptr %143, align 2, !tbaa !52
  %145 = and i16 %144, %1
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %137
  %148 = getelementptr inbounds %struct.BMVert, ptr %129, i64 0, i32 4
  %149 = load ptr, ptr %148, align 8, !tbaa !69
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %129) #3
  br label %152

152:                                              ; preds = %151, %147, %137
  br label %128, !llvm.loop !70

153:                                              ; preds = %135
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #3
  br label %533

154:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #3
  %155 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 4
  store i8 2, ptr %155, align 4, !tbaa !34
  %156 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %156, align 8, !tbaa !40
  %157 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %157, align 8, !tbaa !41
  %158 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %159 = load ptr, ptr %158, align 8, !tbaa !57
  store ptr %159, ptr %11, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %11) #3
  %160 = load ptr, ptr %157, align 8, !tbaa !41
  %161 = call ptr %160(ptr noundef nonnull %11) #3
  %162 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %163

163:                                              ; preds = %183, %154
  %164 = phi ptr [ %161, %154 ], [ %171, %183 ]
  %165 = phi ptr [ undef, %154 ], [ %171, %183 ]
  %166 = icmp eq ptr %164, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %163
  %168 = load ptr, ptr %157, align 8, !tbaa !41
  %169 = call ptr %168(ptr noundef nonnull %11) #3
  br label %170

170:                                              ; preds = %167, %163
  %171 = phi ptr [ %169, %167 ], [ %165, %163 ]
  br i1 %166, label %184, label %172

172:                                              ; preds = %170
  %173 = getelementptr inbounds %struct.BMEdge, ptr %164, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !58
  %175 = load i32, ptr %162, align 8, !tbaa !51
  %176 = sext i32 %175 to i64
  %177 = getelementptr %struct.BMFlagLayer, ptr %174, i64 %176
  %178 = getelementptr %struct.BMFlagLayer, ptr %177, i64 -1
  %179 = load i16, ptr %178, align 2, !tbaa !52
  %180 = and i16 %179, %1
  %181 = icmp eq i16 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %172
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %164) #3
  br label %183

183:                                              ; preds = %182, %172
  br label %163, !llvm.loop !61

184:                                              ; preds = %170
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #3
  br label %533

185:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #3
  %186 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  store i8 3, ptr %186, align 4, !tbaa !34
  %187 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %187, align 8, !tbaa !40
  %188 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %188, align 8, !tbaa !41
  %189 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %190 = load ptr, ptr %189, align 8, !tbaa !42
  store ptr %190, ptr %10, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %10) #3
  %191 = load ptr, ptr %188, align 8, !tbaa !41
  %192 = call ptr %191(ptr noundef nonnull %10) #3
  %193 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %194

194:                                              ; preds = %214, %185
  %195 = phi ptr [ %192, %185 ], [ %202, %214 ]
  %196 = phi ptr [ undef, %185 ], [ %202, %214 ]
  %197 = icmp eq ptr %195, null
  br i1 %197, label %201, label %198

198:                                              ; preds = %194
  %199 = load ptr, ptr %188, align 8, !tbaa !41
  %200 = call ptr %199(ptr noundef nonnull %10) #3
  br label %201

201:                                              ; preds = %198, %194
  %202 = phi ptr [ %200, %198 ], [ %196, %194 ]
  br i1 %197, label %215, label %203

203:                                              ; preds = %201
  %204 = getelementptr inbounds %struct.BMFace, ptr %195, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !48
  %206 = load i32, ptr %193, align 8, !tbaa !51
  %207 = sext i32 %206 to i64
  %208 = getelementptr %struct.BMFlagLayer, ptr %205, i64 %207
  %209 = getelementptr %struct.BMFlagLayer, ptr %208, i64 -1
  %210 = load i16, ptr %209, align 2, !tbaa !52
  %211 = and i16 %210, %1
  %212 = icmp eq i16 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %203
  call void @BM_face_kill(ptr noundef %0, ptr noundef nonnull %195) #3
  br label %214

214:                                              ; preds = %213, %203
  br label %194, !llvm.loop !54

215:                                              ; preds = %201
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #3
  br label %533

216:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #3
  %217 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  store i8 3, ptr %217, align 4, !tbaa !34
  %218 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %218, align 8, !tbaa !40
  %219 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %219, align 8, !tbaa !41
  %220 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %221 = load ptr, ptr %220, align 8, !tbaa !42
  store ptr %221, ptr %9, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #3
  %222 = load ptr, ptr %219, align 8, !tbaa !41
  %223 = call ptr %222(ptr noundef nonnull %9) #3
  %224 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %225

225:                                              ; preds = %245, %216
  %226 = phi ptr [ %223, %216 ], [ %233, %245 ]
  %227 = phi ptr [ undef, %216 ], [ %233, %245 ]
  %228 = icmp eq ptr %226, null
  br i1 %228, label %232, label %229

229:                                              ; preds = %225
  %230 = load ptr, ptr %219, align 8, !tbaa !41
  %231 = call ptr %230(ptr noundef nonnull %9) #3
  br label %232

232:                                              ; preds = %229, %225
  %233 = phi ptr [ %231, %229 ], [ %227, %225 ]
  br i1 %228, label %246, label %234

234:                                              ; preds = %232
  %235 = getelementptr inbounds %struct.BMFace, ptr %226, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !48
  %237 = load i32, ptr %224, align 8, !tbaa !51
  %238 = sext i32 %237 to i64
  %239 = getelementptr %struct.BMFlagLayer, ptr %236, i64 %238
  %240 = getelementptr %struct.BMFlagLayer, ptr %239, i64 -1
  %241 = load i16, ptr %240, align 2, !tbaa !52
  %242 = and i16 %241, %1
  %243 = icmp eq i16 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %234
  call void @BM_face_kill(ptr noundef %0, ptr noundef nonnull %226) #3
  br label %245

245:                                              ; preds = %244, %234
  br label %225, !llvm.loop !54

246:                                              ; preds = %232
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #3
  %247 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 2, ptr %247, align 4, !tbaa !34
  %248 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %248, align 8, !tbaa !40
  %249 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %249, align 8, !tbaa !41
  %250 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %251 = load ptr, ptr %250, align 8, !tbaa !57
  store ptr %251, ptr %8, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #3
  %252 = load ptr, ptr %249, align 8, !tbaa !41
  %253 = call ptr %252(ptr noundef nonnull %8) #3
  br label %254

254:                                              ; preds = %274, %246
  %255 = phi ptr [ %253, %246 ], [ %262, %274 ]
  %256 = phi ptr [ undef, %246 ], [ %262, %274 ]
  %257 = icmp eq ptr %255, null
  br i1 %257, label %261, label %258

258:                                              ; preds = %254
  %259 = load ptr, ptr %249, align 8, !tbaa !41
  %260 = call ptr %259(ptr noundef nonnull %8) #3
  br label %261

261:                                              ; preds = %258, %254
  %262 = phi ptr [ %260, %258 ], [ %256, %254 ]
  br i1 %257, label %275, label %263

263:                                              ; preds = %261
  %264 = getelementptr inbounds %struct.BMEdge, ptr %255, i64 0, i32 1
  %265 = load ptr, ptr %264, align 8, !tbaa !58
  %266 = load i32, ptr %224, align 8, !tbaa !51
  %267 = sext i32 %266 to i64
  %268 = getelementptr %struct.BMFlagLayer, ptr %265, i64 %267
  %269 = getelementptr %struct.BMFlagLayer, ptr %268, i64 -1
  %270 = load i16, ptr %269, align 2, !tbaa !52
  %271 = and i16 %270, %1
  %272 = icmp eq i16 %271, 0
  br i1 %272, label %274, label %273

273:                                              ; preds = %263
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %255) #3
  br label %274

274:                                              ; preds = %273, %263
  br label %254, !llvm.loop !61

275:                                              ; preds = %261
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #3
  %276 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 1, ptr %276, align 4, !tbaa !34
  %277 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %277, align 8, !tbaa !40
  %278 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %278, align 8, !tbaa !41
  %279 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %280 = load ptr, ptr %279, align 8, !tbaa !62
  store ptr %280, ptr %7, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #3
  %281 = load ptr, ptr %278, align 8, !tbaa !41
  %282 = call ptr %281(ptr noundef nonnull %7) #3
  br label %283

283:                                              ; preds = %303, %275
  %284 = phi ptr [ %282, %275 ], [ %291, %303 ]
  %285 = phi ptr [ undef, %275 ], [ %291, %303 ]
  %286 = icmp eq ptr %284, null
  br i1 %286, label %290, label %287

287:                                              ; preds = %283
  %288 = load ptr, ptr %278, align 8, !tbaa !41
  %289 = call ptr %288(ptr noundef nonnull %7) #3
  br label %290

290:                                              ; preds = %287, %283
  %291 = phi ptr [ %289, %287 ], [ %285, %283 ]
  br i1 %286, label %304, label %292

292:                                              ; preds = %290
  %293 = getelementptr inbounds %struct.BMVert, ptr %284, i64 0, i32 1
  %294 = load ptr, ptr %293, align 8, !tbaa !63
  %295 = load i32, ptr %224, align 8, !tbaa !51
  %296 = sext i32 %295 to i64
  %297 = getelementptr %struct.BMFlagLayer, ptr %294, i64 %296
  %298 = getelementptr %struct.BMFlagLayer, ptr %297, i64 -1
  %299 = load i16, ptr %298, align 2, !tbaa !52
  %300 = and i16 %299, %1
  %301 = icmp eq i16 %300, 0
  br i1 %301, label %303, label %302

302:                                              ; preds = %292
  call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %284) #3
  br label %303

303:                                              ; preds = %302, %292
  br label %283, !llvm.loop !65

304:                                              ; preds = %290
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #3
  br label %533

305:                                              ; preds = %3
  %306 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 4
  store i8 3, ptr %306, align 4, !tbaa !34
  %307 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %307, align 8, !tbaa !40
  %308 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %308, align 8, !tbaa !41
  %309 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %310 = load ptr, ptr %309, align 8, !tbaa !42
  store ptr %310, ptr %16, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %16) #3
  %311 = load ptr, ptr %308, align 8, !tbaa !41
  %312 = call ptr %311(ptr noundef nonnull %16) #3
  %313 = icmp eq ptr %312, null
  br i1 %313, label %355, label %314

314:                                              ; preds = %305
  %315 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %316

316:                                              ; preds = %314, %351
  %317 = phi ptr [ %312, %314 ], [ %353, %351 ]
  %318 = getelementptr inbounds %struct.BMFace, ptr %317, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !48
  %320 = load i32, ptr %315, align 8, !tbaa !51
  %321 = sext i32 %320 to i64
  %322 = getelementptr %struct.BMFlagLayer, ptr %319, i64 %321
  %323 = getelementptr %struct.BMFlagLayer, ptr %322, i64 -1
  %324 = load i16, ptr %323, align 2, !tbaa !52
  %325 = and i16 %324, %1
  %326 = icmp eq i16 %325, 0
  br i1 %326, label %351, label %327

327:                                              ; preds = %316
  %328 = getelementptr inbounds %struct.BMFace, ptr %317, i64 0, i32 2
  %329 = load ptr, ptr %328, align 8, !tbaa !71
  br label %330

330:                                              ; preds = %330, %327
  %331 = phi ptr [ %329, %327 ], [ %349, %330 ]
  %332 = getelementptr inbounds %struct.BMLoop, ptr %331, i64 0, i32 1
  %333 = load ptr, ptr %332, align 8, !tbaa !72
  %334 = getelementptr inbounds %struct.BMVert, ptr %333, i64 0, i32 1
  %335 = load ptr, ptr %334, align 8, !tbaa !63
  %336 = getelementptr %struct.BMFlagLayer, ptr %335, i64 %321
  %337 = getelementptr %struct.BMFlagLayer, ptr %336, i64 -1
  %338 = load i16, ptr %337, align 2, !tbaa !52
  %339 = or i16 %338, %1
  store i16 %339, ptr %337, align 2, !tbaa !52
  %340 = getelementptr inbounds %struct.BMLoop, ptr %331, i64 0, i32 2
  %341 = load ptr, ptr %340, align 8, !tbaa !74
  %342 = getelementptr inbounds %struct.BMEdge, ptr %341, i64 0, i32 1
  %343 = load ptr, ptr %342, align 8, !tbaa !58
  %344 = getelementptr %struct.BMFlagLayer, ptr %343, i64 %321
  %345 = getelementptr %struct.BMFlagLayer, ptr %344, i64 -1
  %346 = load i16, ptr %345, align 2, !tbaa !52
  %347 = or i16 %346, %1
  store i16 %347, ptr %345, align 2, !tbaa !52
  %348 = getelementptr inbounds %struct.BMLoop, ptr %331, i64 0, i32 6
  %349 = load ptr, ptr %348, align 8, !tbaa !75
  %350 = icmp eq ptr %349, %329
  br i1 %350, label %351, label %330, !llvm.loop !76

351:                                              ; preds = %330, %316
  %352 = load ptr, ptr %308, align 8, !tbaa !41
  %353 = call ptr %352(ptr noundef nonnull %16) #3
  %354 = icmp eq ptr %353, null
  br i1 %354, label %355, label %316, !llvm.loop !77

355:                                              ; preds = %351, %305
  store i8 3, ptr %306, align 4, !tbaa !34
  store ptr @bmiter__elem_of_mesh_begin, ptr %307, align 8, !tbaa !40
  store ptr @bmiter__elem_of_mesh_step, ptr %308, align 8, !tbaa !41
  %356 = load ptr, ptr %309, align 8, !tbaa !42
  store ptr %356, ptr %16, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %16) #3
  %357 = load ptr, ptr %308, align 8, !tbaa !41
  %358 = call ptr %357(ptr noundef nonnull %16) #3
  %359 = icmp eq ptr %358, null
  br i1 %359, label %402, label %360

360:                                              ; preds = %355
  %361 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %362 = xor i16 %1, -1
  br label %363

363:                                              ; preds = %360, %398
  %364 = phi ptr [ %358, %360 ], [ %400, %398 ]
  %365 = getelementptr inbounds %struct.BMFace, ptr %364, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !48
  %367 = load i32, ptr %361, align 8, !tbaa !51
  %368 = sext i32 %367 to i64
  %369 = getelementptr %struct.BMFlagLayer, ptr %366, i64 %368
  %370 = getelementptr %struct.BMFlagLayer, ptr %369, i64 -1
  %371 = load i16, ptr %370, align 2, !tbaa !52
  %372 = and i16 %371, %1
  %373 = icmp eq i16 %372, 0
  br i1 %373, label %374, label %398

374:                                              ; preds = %363
  %375 = getelementptr inbounds %struct.BMFace, ptr %364, i64 0, i32 2
  %376 = load ptr, ptr %375, align 8, !tbaa !71
  br label %377

377:                                              ; preds = %377, %374
  %378 = phi ptr [ %376, %374 ], [ %396, %377 ]
  %379 = getelementptr inbounds %struct.BMLoop, ptr %378, i64 0, i32 1
  %380 = load ptr, ptr %379, align 8, !tbaa !72
  %381 = getelementptr inbounds %struct.BMVert, ptr %380, i64 0, i32 1
  %382 = load ptr, ptr %381, align 8, !tbaa !63
  %383 = getelementptr %struct.BMFlagLayer, ptr %382, i64 %368
  %384 = getelementptr %struct.BMFlagLayer, ptr %383, i64 -1
  %385 = load i16, ptr %384, align 2, !tbaa !52
  %386 = and i16 %385, %362
  store i16 %386, ptr %384, align 2, !tbaa !52
  %387 = getelementptr inbounds %struct.BMLoop, ptr %378, i64 0, i32 2
  %388 = load ptr, ptr %387, align 8, !tbaa !74
  %389 = getelementptr inbounds %struct.BMEdge, ptr %388, i64 0, i32 1
  %390 = load ptr, ptr %389, align 8, !tbaa !58
  %391 = getelementptr %struct.BMFlagLayer, ptr %390, i64 %368
  %392 = getelementptr %struct.BMFlagLayer, ptr %391, i64 -1
  %393 = load i16, ptr %392, align 2, !tbaa !52
  %394 = and i16 %393, %362
  store i16 %394, ptr %392, align 2, !tbaa !52
  %395 = getelementptr inbounds %struct.BMLoop, ptr %378, i64 0, i32 6
  %396 = load ptr, ptr %395, align 8, !tbaa !75
  %397 = icmp eq ptr %396, %376
  br i1 %397, label %398, label %377, !llvm.loop !78

398:                                              ; preds = %377, %363
  %399 = load ptr, ptr %308, align 8, !tbaa !41
  %400 = call ptr %399(ptr noundef nonnull %16) #3
  %401 = icmp eq ptr %400, null
  br i1 %401, label %402, label %363, !llvm.loop !79

402:                                              ; preds = %398, %355
  %403 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 4
  store i8 2, ptr %403, align 4, !tbaa !34
  %404 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %404, align 8, !tbaa !40
  %405 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %405, align 8, !tbaa !41
  %406 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %407 = load ptr, ptr %406, align 8, !tbaa !57
  store ptr %407, ptr %15, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %15) #3
  %408 = load ptr, ptr %405, align 8, !tbaa !41
  %409 = call ptr %408(ptr noundef nonnull %15) #3
  %410 = icmp eq ptr %409, null
  br i1 %410, label %446, label %411

411:                                              ; preds = %402
  %412 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %413 = xor i16 %1, -1
  br label %414

414:                                              ; preds = %411, %442
  %415 = phi ptr [ %409, %411 ], [ %444, %442 ]
  %416 = getelementptr inbounds %struct.BMEdge, ptr %415, i64 0, i32 1
  %417 = load ptr, ptr %416, align 8, !tbaa !58
  %418 = load i32, ptr %412, align 8, !tbaa !51
  %419 = sext i32 %418 to i64
  %420 = getelementptr %struct.BMFlagLayer, ptr %417, i64 %419
  %421 = getelementptr %struct.BMFlagLayer, ptr %420, i64 -1
  %422 = load i16, ptr %421, align 2, !tbaa !52
  %423 = and i16 %422, %1
  %424 = icmp eq i16 %423, 0
  br i1 %424, label %425, label %442

425:                                              ; preds = %414
  %426 = getelementptr inbounds %struct.BMEdge, ptr %415, i64 0, i32 2
  %427 = load ptr, ptr %426, align 8, !tbaa !66
  %428 = getelementptr inbounds %struct.BMVert, ptr %427, i64 0, i32 1
  %429 = load ptr, ptr %428, align 8, !tbaa !63
  %430 = getelementptr %struct.BMFlagLayer, ptr %429, i64 %419
  %431 = getelementptr %struct.BMFlagLayer, ptr %430, i64 -1
  %432 = load i16, ptr %431, align 2, !tbaa !52
  %433 = and i16 %432, %413
  store i16 %433, ptr %431, align 2, !tbaa !52
  %434 = getelementptr inbounds %struct.BMEdge, ptr %415, i64 0, i32 3
  %435 = load ptr, ptr %434, align 8, !tbaa !67
  %436 = getelementptr inbounds %struct.BMVert, ptr %435, i64 0, i32 1
  %437 = load ptr, ptr %436, align 8, !tbaa !63
  %438 = getelementptr %struct.BMFlagLayer, ptr %437, i64 %419
  %439 = getelementptr %struct.BMFlagLayer, ptr %438, i64 -1
  %440 = load i16, ptr %439, align 2, !tbaa !52
  %441 = and i16 %440, %413
  store i16 %441, ptr %439, align 2, !tbaa !52
  br label %442

442:                                              ; preds = %414, %425
  %443 = load ptr, ptr %405, align 8, !tbaa !41
  %444 = call ptr %443(ptr noundef nonnull %15) #3
  %445 = icmp eq ptr %444, null
  br i1 %445, label %446, label %414, !llvm.loop !80

446:                                              ; preds = %442, %402
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #3
  %447 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 3, ptr %447, align 4, !tbaa !34
  %448 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %448, align 8, !tbaa !40
  %449 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %449, align 8, !tbaa !41
  %450 = load ptr, ptr %309, align 8, !tbaa !42
  store ptr %450, ptr %6, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #3
  %451 = load ptr, ptr %449, align 8, !tbaa !41
  %452 = call ptr %451(ptr noundef nonnull %6) #3
  %453 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %454

454:                                              ; preds = %474, %446
  %455 = phi ptr [ %452, %446 ], [ %462, %474 ]
  %456 = phi ptr [ undef, %446 ], [ %462, %474 ]
  %457 = icmp eq ptr %455, null
  br i1 %457, label %461, label %458

458:                                              ; preds = %454
  %459 = load ptr, ptr %449, align 8, !tbaa !41
  %460 = call ptr %459(ptr noundef nonnull %6) #3
  br label %461

461:                                              ; preds = %458, %454
  %462 = phi ptr [ %460, %458 ], [ %456, %454 ]
  br i1 %457, label %475, label %463

463:                                              ; preds = %461
  %464 = getelementptr inbounds %struct.BMFace, ptr %455, i64 0, i32 1
  %465 = load ptr, ptr %464, align 8, !tbaa !48
  %466 = load i32, ptr %453, align 8, !tbaa !51
  %467 = sext i32 %466 to i64
  %468 = getelementptr %struct.BMFlagLayer, ptr %465, i64 %467
  %469 = getelementptr %struct.BMFlagLayer, ptr %468, i64 -1
  %470 = load i16, ptr %469, align 2, !tbaa !52
  %471 = and i16 %470, %1
  %472 = icmp eq i16 %471, 0
  br i1 %472, label %474, label %473

473:                                              ; preds = %463
  call void @BM_face_kill(ptr noundef %0, ptr noundef nonnull %455) #3
  br label %474

474:                                              ; preds = %473, %463
  br label %454, !llvm.loop !54

475:                                              ; preds = %461
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #3
  %476 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 2, ptr %476, align 4, !tbaa !34
  %477 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %477, align 8, !tbaa !40
  %478 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %478, align 8, !tbaa !41
  %479 = load ptr, ptr %406, align 8, !tbaa !57
  store ptr %479, ptr %5, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #3
  %480 = load ptr, ptr %478, align 8, !tbaa !41
  %481 = call ptr %480(ptr noundef nonnull %5) #3
  br label %482

482:                                              ; preds = %502, %475
  %483 = phi ptr [ %481, %475 ], [ %490, %502 ]
  %484 = phi ptr [ undef, %475 ], [ %490, %502 ]
  %485 = icmp eq ptr %483, null
  br i1 %485, label %489, label %486

486:                                              ; preds = %482
  %487 = load ptr, ptr %478, align 8, !tbaa !41
  %488 = call ptr %487(ptr noundef nonnull %5) #3
  br label %489

489:                                              ; preds = %486, %482
  %490 = phi ptr [ %488, %486 ], [ %484, %482 ]
  br i1 %485, label %503, label %491

491:                                              ; preds = %489
  %492 = getelementptr inbounds %struct.BMEdge, ptr %483, i64 0, i32 1
  %493 = load ptr, ptr %492, align 8, !tbaa !58
  %494 = load i32, ptr %453, align 8, !tbaa !51
  %495 = sext i32 %494 to i64
  %496 = getelementptr %struct.BMFlagLayer, ptr %493, i64 %495
  %497 = getelementptr %struct.BMFlagLayer, ptr %496, i64 -1
  %498 = load i16, ptr %497, align 2, !tbaa !52
  %499 = and i16 %498, %1
  %500 = icmp eq i16 %499, 0
  br i1 %500, label %502, label %501

501:                                              ; preds = %491
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %483) #3
  br label %502

502:                                              ; preds = %501, %491
  br label %482, !llvm.loop !61

503:                                              ; preds = %489
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #3
  %504 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %504, align 4, !tbaa !34
  %505 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %505, align 8, !tbaa !40
  %506 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %506, align 8, !tbaa !41
  %507 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %508 = load ptr, ptr %507, align 8, !tbaa !62
  store ptr %508, ptr %4, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #3
  %509 = load ptr, ptr %506, align 8, !tbaa !41
  %510 = call ptr %509(ptr noundef nonnull %4) #3
  br label %511

511:                                              ; preds = %531, %503
  %512 = phi ptr [ %510, %503 ], [ %519, %531 ]
  %513 = phi ptr [ undef, %503 ], [ %519, %531 ]
  %514 = icmp eq ptr %512, null
  br i1 %514, label %518, label %515

515:                                              ; preds = %511
  %516 = load ptr, ptr %506, align 8, !tbaa !41
  %517 = call ptr %516(ptr noundef nonnull %4) #3
  br label %518

518:                                              ; preds = %515, %511
  %519 = phi ptr [ %517, %515 ], [ %513, %511 ]
  br i1 %514, label %532, label %520

520:                                              ; preds = %518
  %521 = getelementptr inbounds %struct.BMVert, ptr %512, i64 0, i32 1
  %522 = load ptr, ptr %521, align 8, !tbaa !63
  %523 = load i32, ptr %453, align 8, !tbaa !51
  %524 = sext i32 %523 to i64
  %525 = getelementptr %struct.BMFlagLayer, ptr %522, i64 %524
  %526 = getelementptr %struct.BMFlagLayer, ptr %525, i64 -1
  %527 = load i16, ptr %526, align 2, !tbaa !52
  %528 = and i16 %527, %1
  %529 = icmp eq i16 %528, 0
  br i1 %529, label %531, label %530

530:                                              ; preds = %520
  call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %512) #3
  br label %531

531:                                              ; preds = %530, %520
  br label %511, !llvm.loop !65

532:                                              ; preds = %518
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #3
  br label %533

533:                                              ; preds = %3, %532, %304, %215, %184, %153, %47
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_delete_hflag_tagged(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = zext i8 %2 to i32
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #3
  %11 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 3, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %12, align 8, !tbaa !40
  %13 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %13, align 8, !tbaa !41
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  store ptr %15, ptr %6, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #3
  %16 = load ptr, ptr %13, align 8, !tbaa !41
  %17 = call ptr %16(ptr noundef nonnull %6) #3
  br label %18

18:                                               ; preds = %33, %10
  %19 = phi ptr [ %17, %10 ], [ %26, %33 ]
  %20 = phi ptr [ undef, %10 ], [ %26, %33 ]
  %21 = icmp eq ptr %19, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %13, align 8, !tbaa !41
  %24 = call ptr %23(ptr noundef nonnull %6) #3
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi ptr [ %24, %22 ], [ %20, %18 ]
  br i1 %21, label %34, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.BMHeader, ptr %19, i64 0, i32 3
  %29 = load i8, ptr %28, align 1, !tbaa !81
  %30 = and i8 %29, %1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  call void @BM_face_kill(ptr noundef %0, ptr noundef nonnull %19) #3
  br label %33

33:                                               ; preds = %32, %27
  br label %18, !llvm.loop !82

34:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #3
  br label %35

35:                                               ; preds = %34, %3
  %36 = and i32 %7, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %63, label %38

38:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #3
  %39 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 2, ptr %39, align 4, !tbaa !34
  %40 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %40, align 8, !tbaa !40
  %41 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %41, align 8, !tbaa !41
  %42 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %43 = load ptr, ptr %42, align 8, !tbaa !57
  store ptr %43, ptr %5, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #3
  %44 = load ptr, ptr %41, align 8, !tbaa !41
  %45 = call ptr %44(ptr noundef nonnull %5) #3
  br label %46

46:                                               ; preds = %61, %38
  %47 = phi ptr [ %45, %38 ], [ %54, %61 ]
  %48 = phi ptr [ undef, %38 ], [ %54, %61 ]
  %49 = icmp eq ptr %47, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %41, align 8, !tbaa !41
  %52 = call ptr %51(ptr noundef nonnull %5) #3
  br label %53

53:                                               ; preds = %50, %46
  %54 = phi ptr [ %52, %50 ], [ %48, %46 ]
  br i1 %49, label %62, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.BMHeader, ptr %47, i64 0, i32 3
  %57 = load i8, ptr %56, align 1, !tbaa !81
  %58 = and i8 %57, %1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %47) #3
  br label %61

61:                                               ; preds = %60, %55
  br label %46, !llvm.loop !83

62:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #3
  br label %63

63:                                               ; preds = %62, %35
  %64 = and i32 %7, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %91, label %66

66:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #3
  %67 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %67, align 4, !tbaa !34
  %68 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %68, align 8, !tbaa !40
  %69 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %69, align 8, !tbaa !41
  %70 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %71 = load ptr, ptr %70, align 8, !tbaa !62
  store ptr %71, ptr %4, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #3
  %72 = load ptr, ptr %69, align 8, !tbaa !41
  %73 = call ptr %72(ptr noundef nonnull %4) #3
  br label %74

74:                                               ; preds = %89, %66
  %75 = phi ptr [ %73, %66 ], [ %82, %89 ]
  %76 = phi ptr [ undef, %66 ], [ %82, %89 ]
  %77 = icmp eq ptr %75, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %69, align 8, !tbaa !41
  %80 = call ptr %79(ptr noundef nonnull %4) #3
  br label %81

81:                                               ; preds = %78, %74
  %82 = phi ptr [ %80, %78 ], [ %76, %74 ]
  br i1 %77, label %90, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.BMHeader, ptr %75, i64 0, i32 3
  %85 = load i8, ptr %84, align 1, !tbaa !81
  %86 = and i8 %85, %1
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %75) #3
  br label %89

89:                                               ; preds = %88, %83
  br label %74, !llvm.loop !84

90:                                               ; preds = %81
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #3
  br label %91

91:                                               ; preds = %90, %63
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_delete_hflag_context(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMIter, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca %struct.BMIter, align 8
  %11 = alloca %struct.BMIter, align 8
  %12 = alloca %struct.BMIter, align 8
  %13 = alloca %struct.BMIter, align 8
  %14 = alloca %struct.BMIter, align 8
  %15 = alloca %struct.BMIter, align 8
  %16 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #3
  switch i32 %2, label %422 [
    i32 1, label %17
    i32 2, label %42
    i32 4, label %124
    i32 3, label %149
    i32 6, label %174
    i32 5, label %247
  ]

17:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #3
  %18 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 4
  store i8 1, ptr %18, align 4, !tbaa !34
  %19 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %19, align 8, !tbaa !40
  %20 = getelementptr inbounds %struct.BMIter, ptr %13, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %20, align 8, !tbaa !41
  %21 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  store ptr %22, ptr %13, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %13) #3
  %23 = load ptr, ptr %20, align 8, !tbaa !41
  %24 = call ptr %23(ptr noundef nonnull %13) #3
  br label %25

25:                                               ; preds = %40, %17
  %26 = phi ptr [ %24, %17 ], [ %33, %40 ]
  %27 = phi ptr [ undef, %17 ], [ %33, %40 ]
  %28 = icmp eq ptr %26, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %20, align 8, !tbaa !41
  %31 = call ptr %30(ptr noundef nonnull %13) #3
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi ptr [ %31, %29 ], [ %27, %25 ]
  br i1 %28, label %41, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.BMHeader, ptr %26, i64 0, i32 3
  %36 = load i8, ptr %35, align 1, !tbaa !81
  %37 = and i8 %36, %1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %26) #3
  br label %40

40:                                               ; preds = %39, %34
  br label %25, !llvm.loop !84

41:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #3
  br label %422

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 4
  store i8 2, ptr %43, align 4, !tbaa !34
  %44 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %44, align 8, !tbaa !40
  %45 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %45, align 8, !tbaa !41
  %46 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %47 = load ptr, ptr %46, align 8, !tbaa !57
  store ptr %47, ptr %15, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %15) #3
  %48 = load ptr, ptr %45, align 8, !tbaa !41
  %49 = call ptr %48(ptr noundef nonnull %15) #3
  %50 = icmp eq ptr %49, null
  br i1 %50, label %72, label %51

51:                                               ; preds = %42, %68
  %52 = phi ptr [ %70, %68 ], [ %49, %42 ]
  %53 = getelementptr inbounds %struct.BMHeader, ptr %52, i64 0, i32 3
  %54 = load i8, ptr %53, align 1, !tbaa !81
  %55 = and i8 %54, %1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.BMEdge, ptr %52, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !66
  %60 = getelementptr inbounds %struct.BMHeader, ptr %59, i64 0, i32 3
  %61 = load i8, ptr %60, align 1, !tbaa !81
  %62 = or i8 %61, %1
  store i8 %62, ptr %60, align 1, !tbaa !81
  %63 = getelementptr inbounds %struct.BMEdge, ptr %52, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !67
  %65 = getelementptr inbounds %struct.BMHeader, ptr %64, i64 0, i32 3
  %66 = load i8, ptr %65, align 1, !tbaa !81
  %67 = or i8 %66, %1
  store i8 %67, ptr %65, align 1, !tbaa !81
  br label %68

68:                                               ; preds = %51, %57
  %69 = load ptr, ptr %45, align 8, !tbaa !41
  %70 = call ptr %69(ptr noundef nonnull %15) #3
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %51, !llvm.loop !85

72:                                               ; preds = %68, %42
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #3
  %73 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 4
  store i8 2, ptr %73, align 4, !tbaa !34
  %74 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %74, align 8, !tbaa !40
  %75 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %75, align 8, !tbaa !41
  %76 = load ptr, ptr %46, align 8, !tbaa !57
  store ptr %76, ptr %12, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %12) #3
  %77 = load ptr, ptr %75, align 8, !tbaa !41
  %78 = call ptr %77(ptr noundef nonnull %12) #3
  br label %79

79:                                               ; preds = %94, %72
  %80 = phi ptr [ %78, %72 ], [ %87, %94 ]
  %81 = phi ptr [ undef, %72 ], [ %87, %94 ]
  %82 = icmp eq ptr %80, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %75, align 8, !tbaa !41
  %85 = call ptr %84(ptr noundef nonnull %12) #3
  br label %86

86:                                               ; preds = %83, %79
  %87 = phi ptr [ %85, %83 ], [ %81, %79 ]
  br i1 %82, label %95, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.BMHeader, ptr %80, i64 0, i32 3
  %90 = load i8, ptr %89, align 1, !tbaa !81
  %91 = and i8 %90, %1
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %80) #3
  br label %94

94:                                               ; preds = %93, %88
  br label %79, !llvm.loop !83

95:                                               ; preds = %86
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #3
  %96 = getelementptr inbounds %struct.BMIter, ptr %14, i64 0, i32 4
  store i8 1, ptr %96, align 4, !tbaa !34
  %97 = getelementptr inbounds %struct.BMIter, ptr %14, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %97, align 8, !tbaa !40
  %98 = getelementptr inbounds %struct.BMIter, ptr %14, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %98, align 8, !tbaa !41
  %99 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %100 = load ptr, ptr %99, align 8, !tbaa !62
  store ptr %100, ptr %14, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %14) #3
  %101 = load ptr, ptr %98, align 8, !tbaa !41
  %102 = call ptr %101(ptr noundef nonnull %14) #3
  br label %103

103:                                              ; preds = %122, %95
  %104 = phi ptr [ %102, %95 ], [ %111, %122 ]
  %105 = phi ptr [ undef, %95 ], [ %111, %122 ]
  %106 = icmp eq ptr %104, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %98, align 8, !tbaa !41
  %109 = call ptr %108(ptr noundef nonnull %14) #3
  br label %110

110:                                              ; preds = %107, %103
  %111 = phi ptr [ %109, %107 ], [ %105, %103 ]
  br i1 %106, label %123, label %112

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.BMHeader, ptr %104, i64 0, i32 3
  %114 = load i8, ptr %113, align 1, !tbaa !81
  %115 = and i8 %114, %1
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.BMVert, ptr %104, i64 0, i32 4
  %119 = load ptr, ptr %118, align 8, !tbaa !69
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %104) #3
  br label %122

122:                                              ; preds = %121, %117, %112
  br label %103, !llvm.loop !86

123:                                              ; preds = %110
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #3
  br label %422

124:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #3
  %125 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 4
  store i8 2, ptr %125, align 4, !tbaa !34
  %126 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %126, align 8, !tbaa !40
  %127 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %127, align 8, !tbaa !41
  %128 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %129 = load ptr, ptr %128, align 8, !tbaa !57
  store ptr %129, ptr %11, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %11) #3
  %130 = load ptr, ptr %127, align 8, !tbaa !41
  %131 = call ptr %130(ptr noundef nonnull %11) #3
  br label %132

132:                                              ; preds = %147, %124
  %133 = phi ptr [ %131, %124 ], [ %140, %147 ]
  %134 = phi ptr [ undef, %124 ], [ %140, %147 ]
  %135 = icmp eq ptr %133, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = load ptr, ptr %127, align 8, !tbaa !41
  %138 = call ptr %137(ptr noundef nonnull %11) #3
  br label %139

139:                                              ; preds = %136, %132
  %140 = phi ptr [ %138, %136 ], [ %134, %132 ]
  br i1 %135, label %148, label %141

141:                                              ; preds = %139
  %142 = getelementptr inbounds %struct.BMHeader, ptr %133, i64 0, i32 3
  %143 = load i8, ptr %142, align 1, !tbaa !81
  %144 = and i8 %143, %1
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %133) #3
  br label %147

147:                                              ; preds = %146, %141
  br label %132, !llvm.loop !83

148:                                              ; preds = %139
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #3
  br label %422

149:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #3
  %150 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  store i8 3, ptr %150, align 4, !tbaa !34
  %151 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %151, align 8, !tbaa !40
  %152 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %152, align 8, !tbaa !41
  %153 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %154 = load ptr, ptr %153, align 8, !tbaa !42
  store ptr %154, ptr %10, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %10) #3
  %155 = load ptr, ptr %152, align 8, !tbaa !41
  %156 = call ptr %155(ptr noundef nonnull %10) #3
  br label %157

157:                                              ; preds = %172, %149
  %158 = phi ptr [ %156, %149 ], [ %165, %172 ]
  %159 = phi ptr [ undef, %149 ], [ %165, %172 ]
  %160 = icmp eq ptr %158, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %157
  %162 = load ptr, ptr %152, align 8, !tbaa !41
  %163 = call ptr %162(ptr noundef nonnull %10) #3
  br label %164

164:                                              ; preds = %161, %157
  %165 = phi ptr [ %163, %161 ], [ %159, %157 ]
  br i1 %160, label %173, label %166

166:                                              ; preds = %164
  %167 = getelementptr inbounds %struct.BMHeader, ptr %158, i64 0, i32 3
  %168 = load i8, ptr %167, align 1, !tbaa !81
  %169 = and i8 %168, %1
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %166
  call void @BM_face_kill(ptr noundef %0, ptr noundef nonnull %158) #3
  br label %172

172:                                              ; preds = %171, %166
  br label %157, !llvm.loop !82

173:                                              ; preds = %164
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #3
  br label %422

174:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #3
  %175 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  store i8 3, ptr %175, align 4, !tbaa !34
  %176 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %176, align 8, !tbaa !40
  %177 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %177, align 8, !tbaa !41
  %178 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %179 = load ptr, ptr %178, align 8, !tbaa !42
  store ptr %179, ptr %9, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #3
  %180 = load ptr, ptr %177, align 8, !tbaa !41
  %181 = call ptr %180(ptr noundef nonnull %9) #3
  br label %182

182:                                              ; preds = %197, %174
  %183 = phi ptr [ %181, %174 ], [ %190, %197 ]
  %184 = phi ptr [ undef, %174 ], [ %190, %197 ]
  %185 = icmp eq ptr %183, null
  br i1 %185, label %189, label %186

186:                                              ; preds = %182
  %187 = load ptr, ptr %177, align 8, !tbaa !41
  %188 = call ptr %187(ptr noundef nonnull %9) #3
  br label %189

189:                                              ; preds = %186, %182
  %190 = phi ptr [ %188, %186 ], [ %184, %182 ]
  br i1 %185, label %198, label %191

191:                                              ; preds = %189
  %192 = getelementptr inbounds %struct.BMHeader, ptr %183, i64 0, i32 3
  %193 = load i8, ptr %192, align 1, !tbaa !81
  %194 = and i8 %193, %1
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %191
  call void @BM_face_kill(ptr noundef %0, ptr noundef nonnull %183) #3
  br label %197

197:                                              ; preds = %196, %191
  br label %182, !llvm.loop !82

198:                                              ; preds = %189
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #3
  %199 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 2, ptr %199, align 4, !tbaa !34
  %200 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %200, align 8, !tbaa !40
  %201 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %201, align 8, !tbaa !41
  %202 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %203 = load ptr, ptr %202, align 8, !tbaa !57
  store ptr %203, ptr %8, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %8) #3
  %204 = load ptr, ptr %201, align 8, !tbaa !41
  %205 = call ptr %204(ptr noundef nonnull %8) #3
  br label %206

206:                                              ; preds = %221, %198
  %207 = phi ptr [ %205, %198 ], [ %214, %221 ]
  %208 = phi ptr [ undef, %198 ], [ %214, %221 ]
  %209 = icmp eq ptr %207, null
  br i1 %209, label %213, label %210

210:                                              ; preds = %206
  %211 = load ptr, ptr %201, align 8, !tbaa !41
  %212 = call ptr %211(ptr noundef nonnull %8) #3
  br label %213

213:                                              ; preds = %210, %206
  %214 = phi ptr [ %212, %210 ], [ %208, %206 ]
  br i1 %209, label %222, label %215

215:                                              ; preds = %213
  %216 = getelementptr inbounds %struct.BMHeader, ptr %207, i64 0, i32 3
  %217 = load i8, ptr %216, align 1, !tbaa !81
  %218 = and i8 %217, %1
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %215
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %207) #3
  br label %221

221:                                              ; preds = %220, %215
  br label %206, !llvm.loop !83

222:                                              ; preds = %213
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #3
  %223 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 1, ptr %223, align 4, !tbaa !34
  %224 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %224, align 8, !tbaa !40
  %225 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %225, align 8, !tbaa !41
  %226 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %227 = load ptr, ptr %226, align 8, !tbaa !62
  store ptr %227, ptr %7, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #3
  %228 = load ptr, ptr %225, align 8, !tbaa !41
  %229 = call ptr %228(ptr noundef nonnull %7) #3
  br label %230

230:                                              ; preds = %245, %222
  %231 = phi ptr [ %229, %222 ], [ %238, %245 ]
  %232 = phi ptr [ undef, %222 ], [ %238, %245 ]
  %233 = icmp eq ptr %231, null
  br i1 %233, label %237, label %234

234:                                              ; preds = %230
  %235 = load ptr, ptr %225, align 8, !tbaa !41
  %236 = call ptr %235(ptr noundef nonnull %7) #3
  br label %237

237:                                              ; preds = %234, %230
  %238 = phi ptr [ %236, %234 ], [ %232, %230 ]
  br i1 %233, label %246, label %239

239:                                              ; preds = %237
  %240 = getelementptr inbounds %struct.BMHeader, ptr %231, i64 0, i32 3
  %241 = load i8, ptr %240, align 1, !tbaa !81
  %242 = and i8 %241, %1
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %239
  call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %231) #3
  br label %245

245:                                              ; preds = %244, %239
  br label %230, !llvm.loop !84

246:                                              ; preds = %237
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #3
  br label %422

247:                                              ; preds = %3
  %248 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 4
  store i8 3, ptr %248, align 4, !tbaa !34
  %249 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %249, align 8, !tbaa !40
  %250 = getelementptr inbounds %struct.BMIter, ptr %16, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %250, align 8, !tbaa !41
  %251 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %252 = load ptr, ptr %251, align 8, !tbaa !42
  store ptr %252, ptr %16, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %16) #3
  %253 = load ptr, ptr %250, align 8, !tbaa !41
  %254 = call ptr %253(ptr noundef nonnull %16) #3
  %255 = icmp eq ptr %254, null
  br i1 %255, label %284, label %256

256:                                              ; preds = %247, %280
  %257 = phi ptr [ %282, %280 ], [ %254, %247 ]
  %258 = getelementptr inbounds %struct.BMHeader, ptr %257, i64 0, i32 3
  %259 = load i8, ptr %258, align 1, !tbaa !81
  %260 = and i8 %259, %1
  %261 = icmp eq i8 %260, 0
  br i1 %261, label %280, label %262

262:                                              ; preds = %256
  %263 = getelementptr inbounds %struct.BMFace, ptr %257, i64 0, i32 2
  %264 = load ptr, ptr %263, align 8, !tbaa !71
  br label %265

265:                                              ; preds = %265, %262
  %266 = phi ptr [ %264, %262 ], [ %278, %265 ]
  %267 = getelementptr inbounds %struct.BMLoop, ptr %266, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !72
  %269 = getelementptr inbounds %struct.BMHeader, ptr %268, i64 0, i32 3
  %270 = load i8, ptr %269, align 1, !tbaa !81
  %271 = or i8 %270, %1
  store i8 %271, ptr %269, align 1, !tbaa !81
  %272 = getelementptr inbounds %struct.BMLoop, ptr %266, i64 0, i32 2
  %273 = load ptr, ptr %272, align 8, !tbaa !74
  %274 = getelementptr inbounds %struct.BMHeader, ptr %273, i64 0, i32 3
  %275 = load i8, ptr %274, align 1, !tbaa !81
  %276 = or i8 %275, %1
  store i8 %276, ptr %274, align 1, !tbaa !81
  %277 = getelementptr inbounds %struct.BMLoop, ptr %266, i64 0, i32 6
  %278 = load ptr, ptr %277, align 8, !tbaa !75
  %279 = icmp eq ptr %278, %264
  br i1 %279, label %280, label %265, !llvm.loop !87

280:                                              ; preds = %265, %256
  %281 = load ptr, ptr %250, align 8, !tbaa !41
  %282 = call ptr %281(ptr noundef nonnull %16) #3
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %256, !llvm.loop !88

284:                                              ; preds = %280, %247
  store i8 3, ptr %248, align 4, !tbaa !34
  store ptr @bmiter__elem_of_mesh_begin, ptr %249, align 8, !tbaa !40
  store ptr @bmiter__elem_of_mesh_step, ptr %250, align 8, !tbaa !41
  %285 = load ptr, ptr %251, align 8, !tbaa !42
  store ptr %285, ptr %16, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %16) #3
  %286 = load ptr, ptr %250, align 8, !tbaa !41
  %287 = call ptr %286(ptr noundef nonnull %16) #3
  %288 = icmp eq ptr %287, null
  br i1 %288, label %319, label %289

289:                                              ; preds = %284
  %290 = xor i8 %1, -1
  br label %291

291:                                              ; preds = %289, %315
  %292 = phi ptr [ %287, %289 ], [ %317, %315 ]
  %293 = getelementptr inbounds %struct.BMHeader, ptr %292, i64 0, i32 3
  %294 = load i8, ptr %293, align 1, !tbaa !81
  %295 = and i8 %294, %1
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %297, label %315

297:                                              ; preds = %291
  %298 = getelementptr inbounds %struct.BMFace, ptr %292, i64 0, i32 2
  %299 = load ptr, ptr %298, align 8, !tbaa !71
  br label %300

300:                                              ; preds = %300, %297
  %301 = phi ptr [ %299, %297 ], [ %313, %300 ]
  %302 = getelementptr inbounds %struct.BMLoop, ptr %301, i64 0, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !72
  %304 = getelementptr inbounds %struct.BMHeader, ptr %303, i64 0, i32 3
  %305 = load i8, ptr %304, align 1, !tbaa !81
  %306 = and i8 %305, %290
  store i8 %306, ptr %304, align 1, !tbaa !81
  %307 = getelementptr inbounds %struct.BMLoop, ptr %301, i64 0, i32 2
  %308 = load ptr, ptr %307, align 8, !tbaa !74
  %309 = getelementptr inbounds %struct.BMHeader, ptr %308, i64 0, i32 3
  %310 = load i8, ptr %309, align 1, !tbaa !81
  %311 = and i8 %310, %290
  store i8 %311, ptr %309, align 1, !tbaa !81
  %312 = getelementptr inbounds %struct.BMLoop, ptr %301, i64 0, i32 6
  %313 = load ptr, ptr %312, align 8, !tbaa !75
  %314 = icmp eq ptr %313, %299
  br i1 %314, label %315, label %300, !llvm.loop !89

315:                                              ; preds = %300, %291
  %316 = load ptr, ptr %250, align 8, !tbaa !41
  %317 = call ptr %316(ptr noundef nonnull %16) #3
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %291, !llvm.loop !90

319:                                              ; preds = %315, %284
  %320 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 4
  store i8 2, ptr %320, align 4, !tbaa !34
  %321 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %321, align 8, !tbaa !40
  %322 = getelementptr inbounds %struct.BMIter, ptr %15, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %322, align 8, !tbaa !41
  %323 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %324 = load ptr, ptr %323, align 8, !tbaa !57
  store ptr %324, ptr %15, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %15) #3
  %325 = load ptr, ptr %322, align 8, !tbaa !41
  %326 = call ptr %325(ptr noundef nonnull %15) #3
  %327 = icmp eq ptr %326, null
  br i1 %327, label %351, label %328

328:                                              ; preds = %319
  %329 = xor i8 %1, -1
  br label %330

330:                                              ; preds = %328, %347
  %331 = phi ptr [ %326, %328 ], [ %349, %347 ]
  %332 = getelementptr inbounds %struct.BMHeader, ptr %331, i64 0, i32 3
  %333 = load i8, ptr %332, align 1, !tbaa !81
  %334 = and i8 %333, %1
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %336, label %347

336:                                              ; preds = %330
  %337 = getelementptr inbounds %struct.BMEdge, ptr %331, i64 0, i32 2
  %338 = load ptr, ptr %337, align 8, !tbaa !66
  %339 = getelementptr inbounds %struct.BMHeader, ptr %338, i64 0, i32 3
  %340 = load i8, ptr %339, align 1, !tbaa !81
  %341 = and i8 %340, %329
  store i8 %341, ptr %339, align 1, !tbaa !81
  %342 = getelementptr inbounds %struct.BMEdge, ptr %331, i64 0, i32 3
  %343 = load ptr, ptr %342, align 8, !tbaa !67
  %344 = getelementptr inbounds %struct.BMHeader, ptr %343, i64 0, i32 3
  %345 = load i8, ptr %344, align 1, !tbaa !81
  %346 = and i8 %345, %329
  store i8 %346, ptr %344, align 1, !tbaa !81
  br label %347

347:                                              ; preds = %330, %336
  %348 = load ptr, ptr %322, align 8, !tbaa !41
  %349 = call ptr %348(ptr noundef nonnull %15) #3
  %350 = icmp eq ptr %349, null
  br i1 %350, label %351, label %330, !llvm.loop !91

351:                                              ; preds = %347, %319
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #3
  %352 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 3, ptr %352, align 4, !tbaa !34
  %353 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %353, align 8, !tbaa !40
  %354 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %354, align 8, !tbaa !41
  %355 = load ptr, ptr %251, align 8, !tbaa !42
  store ptr %355, ptr %6, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #3
  %356 = load ptr, ptr %354, align 8, !tbaa !41
  %357 = call ptr %356(ptr noundef nonnull %6) #3
  br label %358

358:                                              ; preds = %373, %351
  %359 = phi ptr [ %357, %351 ], [ %366, %373 ]
  %360 = phi ptr [ undef, %351 ], [ %366, %373 ]
  %361 = icmp eq ptr %359, null
  br i1 %361, label %365, label %362

362:                                              ; preds = %358
  %363 = load ptr, ptr %354, align 8, !tbaa !41
  %364 = call ptr %363(ptr noundef nonnull %6) #3
  br label %365

365:                                              ; preds = %362, %358
  %366 = phi ptr [ %364, %362 ], [ %360, %358 ]
  br i1 %361, label %374, label %367

367:                                              ; preds = %365
  %368 = getelementptr inbounds %struct.BMHeader, ptr %359, i64 0, i32 3
  %369 = load i8, ptr %368, align 1, !tbaa !81
  %370 = and i8 %369, %1
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %373, label %372

372:                                              ; preds = %367
  call void @BM_face_kill(ptr noundef %0, ptr noundef nonnull %359) #3
  br label %373

373:                                              ; preds = %372, %367
  br label %358, !llvm.loop !82

374:                                              ; preds = %365
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #3
  %375 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 2, ptr %375, align 4, !tbaa !34
  %376 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %376, align 8, !tbaa !40
  %377 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %377, align 8, !tbaa !41
  %378 = load ptr, ptr %323, align 8, !tbaa !57
  store ptr %378, ptr %5, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #3
  %379 = load ptr, ptr %377, align 8, !tbaa !41
  %380 = call ptr %379(ptr noundef nonnull %5) #3
  br label %381

381:                                              ; preds = %396, %374
  %382 = phi ptr [ %380, %374 ], [ %389, %396 ]
  %383 = phi ptr [ undef, %374 ], [ %389, %396 ]
  %384 = icmp eq ptr %382, null
  br i1 %384, label %388, label %385

385:                                              ; preds = %381
  %386 = load ptr, ptr %377, align 8, !tbaa !41
  %387 = call ptr %386(ptr noundef nonnull %5) #3
  br label %388

388:                                              ; preds = %385, %381
  %389 = phi ptr [ %387, %385 ], [ %383, %381 ]
  br i1 %384, label %397, label %390

390:                                              ; preds = %388
  %391 = getelementptr inbounds %struct.BMHeader, ptr %382, i64 0, i32 3
  %392 = load i8, ptr %391, align 1, !tbaa !81
  %393 = and i8 %392, %1
  %394 = icmp eq i8 %393, 0
  br i1 %394, label %396, label %395

395:                                              ; preds = %390
  call void @BM_edge_kill(ptr noundef %0, ptr noundef nonnull %382) #3
  br label %396

396:                                              ; preds = %395, %390
  br label %381, !llvm.loop !83

397:                                              ; preds = %388
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #3
  %398 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %398, align 4, !tbaa !34
  %399 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %399, align 8, !tbaa !40
  %400 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %400, align 8, !tbaa !41
  %401 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %402 = load ptr, ptr %401, align 8, !tbaa !62
  store ptr %402, ptr %4, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #3
  %403 = load ptr, ptr %400, align 8, !tbaa !41
  %404 = call ptr %403(ptr noundef nonnull %4) #3
  br label %405

405:                                              ; preds = %420, %397
  %406 = phi ptr [ %404, %397 ], [ %413, %420 ]
  %407 = phi ptr [ undef, %397 ], [ %413, %420 ]
  %408 = icmp eq ptr %406, null
  br i1 %408, label %412, label %409

409:                                              ; preds = %405
  %410 = load ptr, ptr %400, align 8, !tbaa !41
  %411 = call ptr %410(ptr noundef nonnull %4) #3
  br label %412

412:                                              ; preds = %409, %405
  %413 = phi ptr [ %411, %409 ], [ %407, %405 ]
  br i1 %408, label %421, label %414

414:                                              ; preds = %412
  %415 = getelementptr inbounds %struct.BMHeader, ptr %406, i64 0, i32 3
  %416 = load i8, ptr %415, align 1, !tbaa !81
  %417 = and i8 %416, %1
  %418 = icmp eq i8 %417, 0
  br i1 %418, label %420, label %419

419:                                              ; preds = %414
  call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %406) #3
  br label %420

420:                                              ; preds = %419, %414
  br label %405, !llvm.loop !84

421:                                              ; preds = %412
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #3
  br label %422

422:                                              ; preds = %3, %421, %246, %173, %148, %123, %41
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %15) #3
  ret void
}

declare void @BM_face_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_edge_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_vert_kill(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 60}
!35 = !{!"BMIter", !36, i64 0, !38, i64 40, !38, i64 48, !39, i64 56, !36, i64 60}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"any pointer", !36, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!35, !38, i64 40}
!41 = !{!35, !38, i64 48}
!42 = !{!43, !38, i64 56}
!43 = !{!"BMesh", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !36, i64 28, !36, i64 29, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !39, i64 88, !39, i64 92, !39, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !39, i64 128, !38, i64 136, !44, i64 144, !44, i64 344, !44, i64 544, !44, i64 744, !45, i64 944, !39, i64 948, !39, i64 952, !39, i64 956, !46, i64 960, !38, i64 976, !46, i64 984, !38, i64 1000}
!44 = !{!"CustomData", !38, i64 0, !36, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !38, i64 184, !38, i64 192}
!45 = !{!"short", !36, i64 0}
!46 = !{!"ListBase", !38, i64 0, !38, i64 8}
!47 = !{!36, !36, i64 0}
!48 = !{!49, !38, i64 16}
!49 = !{!"BMFace", !50, i64 0, !38, i64 16, !38, i64 24, !39, i64 32, !36, i64 36, !45, i64 48}
!50 = !{!"BMHeader", !38, i64 0, !39, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!51 = !{!43, !39, i64 128}
!52 = !{!53, !45, i64 0}
!53 = !{!"BMFlagLayer", !45, i64 0}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!43, !38, i64 40}
!58 = !{!59, !38, i64 16}
!59 = !{!"BMEdge", !50, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !60, i64 48, !60, i64 64}
!60 = !{!"BMDiskLink", !38, i64 0, !38, i64 8}
!61 = distinct !{!61, !55, !56}
!62 = !{!43, !38, i64 32}
!63 = !{!64, !38, i64 16}
!64 = !{!"BMVert", !50, i64 0, !38, i64 16, !36, i64 24, !36, i64 36, !38, i64 48}
!65 = distinct !{!65, !55, !56}
!66 = !{!59, !38, i64 24}
!67 = !{!59, !38, i64 32}
!68 = distinct !{!68, !55, !56}
!69 = !{!64, !38, i64 48}
!70 = distinct !{!70, !55, !56}
!71 = !{!49, !38, i64 24}
!72 = !{!73, !38, i64 16}
!73 = !{!"BMLoop", !50, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64}
!74 = !{!73, !38, i64 24}
!75 = !{!73, !38, i64 56}
!76 = distinct !{!76, !55, !56}
!77 = distinct !{!77, !55, !56}
!78 = distinct !{!78, !55, !56}
!79 = distinct !{!79, !55, !56}
!80 = distinct !{!80, !55, !56}
!81 = !{!50, !36, i64 13}
!82 = distinct !{!82, !55, !56}
!83 = distinct !{!83, !55, !56}
!84 = distinct !{!84, !55, !56}
!85 = distinct !{!85, !55, !56}
!86 = distinct !{!86, !55, !56}
!87 = distinct !{!87, !55, !56}
!88 = distinct !{!88, !55, !56}
!89 = distinct !{!89, !55, !56}
!90 = distinct !{!90, !55, !56}
!91 = distinct !{!91, !55, !56}
