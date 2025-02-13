; ModuleID = 'ldecod_src/parsetcommon.c'
source_filename = "ldecod_src/parsetcommon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"AllocPPS: PPS\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"AllocSPS: SPS\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @AllocPPS() local_unnamed_addr #0 {
  %1 = tail call noalias dereferenceable_or_null(2216) ptr @calloc(i64 noundef 1, i64 noundef 2216) #9
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #10
  br label %4

4:                                                ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @no_mem_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @AllocSPS() local_unnamed_addr #0 {
  %1 = tail call noalias dereferenceable_or_null(4128) ptr @calloc(i64 noundef 1, i64 noundef 4128) #9
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #10
  br label %4

4:                                                ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @FreePPS(ptr nocapture noundef %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 20
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #10
  br label %6

6:                                                ; preds = %5, %1
  tail call void @free(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @FreeSPS(ptr nocapture noundef %0) local_unnamed_addr #5 {
  tail call void @free(ptr noundef %0) #10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local i32 @sps_is_equal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = load i32, ptr %0, align 4, !tbaa !41
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %122, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4, !tbaa !41
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %122, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 1
  %11 = load <4 x i32>, ptr %9, align 4, !tbaa !46
  %12 = load <4 x i32>, ptr %10, align 4, !tbaa !46
  %13 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 7
  %15 = load <2 x i32>, ptr %13, align 4, !tbaa !46
  %16 = load <2 x i32>, ptr %14, align 4, !tbaa !46
  %17 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 18
  %18 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 18
  %19 = load <2 x i32>, ptr %17, align 4, !tbaa !46
  %20 = load <2 x i32>, ptr %18, align 4, !tbaa !46
  %21 = shufflevector <2 x i32> %15, <2 x i32> %19, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %22 = shufflevector <2 x i32> %16, <2 x i32> %20, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %23 = icmp ne <4 x i32> %11, %12
  %24 = icmp ne <4 x i32> %21, %22
  %25 = or <4 x i1> %23, %24
  %26 = bitcast <4 x i1> %25 to i4
  %27 = icmp eq i4 %26, 0
  br i1 %27, label %28, label %122

28:                                               ; preds = %8
  %29 = extractelement <2 x i32> %19, i64 1
  switch i32 %29, label %61 [
    i32 0, label %30
    i32 1, label %37
  ]

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 20
  %32 = load i32, ptr %31, align 4, !tbaa !47
  %33 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 20
  %34 = load i32, ptr %33, align 4, !tbaa !47
  %35 = icmp eq i32 %32, %34
  %36 = zext i1 %35 to i32
  br label %61

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 21
  %39 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 21
  %40 = load <4 x i32>, ptr %38, align 4, !tbaa !46
  %41 = load <4 x i32>, ptr %39, align 4, !tbaa !46
  %42 = icmp ne <4 x i32> %40, %41
  %43 = bitcast <4 x i1> %42 to i4
  %44 = icmp eq i4 %43, 0
  br i1 %44, label %45, label %122

45:                                               ; preds = %37
  %46 = extractelement <4 x i32> %40, i64 3
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %45
  %49 = zext i32 %46 to i64
  br label %50

50:                                               ; preds = %48, %50
  %51 = phi i64 [ 0, %48 ], [ %59, %50 ]
  %52 = phi i32 [ 1, %48 ], [ %58, %50 ]
  %53 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 25, i64 %51
  %54 = load i32, ptr %53, align 4, !tbaa !46
  %55 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 25, i64 %51
  %56 = load i32, ptr %55, align 4, !tbaa !46
  %57 = icmp eq i32 %54, %56
  %58 = select i1 %57, i32 %52, i32 0
  %59 = add nuw nsw i64 %51, 1
  %60 = icmp eq i64 %59, %49
  br i1 %60, label %61, label %50, !llvm.loop !48

61:                                               ; preds = %50, %45, %28, %30
  %62 = phi i32 [ %36, %30 ], [ 1, %28 ], [ 1, %45 ], [ %58, %50 ]
  %63 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 26
  %64 = load i32, ptr %63, align 4, !tbaa !50
  %65 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 26
  %66 = load i32, ptr %65, align 4, !tbaa !50
  %67 = icmp ne i32 %64, %66
  %68 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 27
  %69 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 27
  %70 = load <4 x i32>, ptr %68, align 4, !tbaa !46
  %71 = load <4 x i32>, ptr %69, align 4, !tbaa !46
  %72 = icmp ne <4 x i32> %70, %71
  %73 = icmp eq i32 %62, 0
  %74 = freeze <4 x i1> %72
  %75 = bitcast <4 x i1> %74 to i4
  %76 = icmp ne i4 %75, 0
  %77 = freeze i1 %67
  %78 = or i1 %76, %77
  %79 = select i1 %78, i1 true, i1 %73
  br i1 %79, label %122, label %80

80:                                               ; preds = %61
  %81 = extractelement <4 x i32> %70, i64 3
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 31
  %85 = load i32, ptr %84, align 4, !tbaa !51
  %86 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 31
  %87 = load i32, ptr %86, align 4, !tbaa !51
  %88 = icmp ne i32 %85, %87
  br label %89

89:                                               ; preds = %83, %80
  %90 = phi i1 [ false, %80 ], [ %88, %83 ]
  %91 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 32
  %92 = load i32, ptr %91, align 4, !tbaa !52
  %93 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 32
  %94 = load i32, ptr %93, align 4, !tbaa !52
  %95 = icmp ne i32 %92, %94
  %96 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 33
  %97 = load i32, ptr %96, align 4, !tbaa !53
  %98 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 33
  %99 = load i32, ptr %98, align 4, !tbaa !53
  %100 = icmp ne i32 %97, %99
  %101 = select i1 %100, i1 true, i1 %95
  %102 = select i1 %101, i1 true, i1 %90
  br i1 %102, label %122, label %103

103:                                              ; preds = %89
  %104 = icmp eq i32 %97, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 34
  %107 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 34
  %108 = load <4 x i32>, ptr %106, align 4, !tbaa !46
  %109 = load <4 x i32>, ptr %107, align 4, !tbaa !46
  %110 = icmp ne <4 x i32> %108, %109
  %111 = bitcast <4 x i1> %110 to i4
  %112 = icmp eq i4 %111, 0
  %113 = zext i1 %112 to i32
  br label %114

114:                                              ; preds = %105, %103
  %115 = phi i32 [ %113, %105 ], [ 1, %103 ]
  %116 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %0, i64 0, i32 38
  %117 = load i32, ptr %116, align 4, !tbaa !54
  %118 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %1, i64 0, i32 38
  %119 = load i32, ptr %118, align 4, !tbaa !54
  %120 = icmp eq i32 %117, %119
  %121 = select i1 %120, i32 %115, i32 0
  br label %122

122:                                              ; preds = %89, %61, %37, %8, %2, %5, %114
  %123 = phi i32 [ %121, %114 ], [ 0, %5 ], [ 0, %2 ], [ 0, %8 ], [ 0, %37 ], [ 0, %61 ], [ 0, %89 ]
  ret i32 %123
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @pps_is_equal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  %3 = load i32, ptr %0, align 8, !tbaa !55
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %254, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 8, !tbaa !55
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %254, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 1
  %11 = load <2 x i32>, ptr %9, align 4, !tbaa !46
  %12 = load <2 x i32>, ptr %10, align 4, !tbaa !46
  %13 = icmp eq <2 x i32> %11, %12
  %14 = shufflevector <2 x i1> %13, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %15 = and <2 x i1> %13, %14
  %16 = extractelement <2 x i1> %15, i64 0
  %17 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !56
  %19 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !56
  %21 = icmp eq i32 %18, %20
  %22 = and i1 %16, %21
  %23 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 11
  %24 = load i32, ptr %23, align 8, !tbaa !57
  %25 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 11
  %26 = load i32, ptr %25, align 8, !tbaa !57
  %27 = icmp eq i32 %24, %26
  %28 = and i1 %22, %27
  %29 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 12
  %30 = load i32, ptr %29, align 4, !tbaa !58
  %31 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 12
  %32 = load i32, ptr %31, align 4, !tbaa !58
  %33 = icmp eq i32 %30, %32
  %34 = and i1 %28, %33
  br i1 %34, label %35, label %254

35:                                               ; preds = %8
  %36 = icmp eq i32 %30, 0
  br i1 %36, label %113, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 13
  %39 = load i32, ptr %38, align 8, !tbaa !59
  %40 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 13
  %41 = load i32, ptr %40, align 8, !tbaa !59
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %254

43:                                               ; preds = %37
  switch i32 %39, label %113 [
    i32 0, label %46
    i32 2, label %44
    i32 3, label %78
    i32 4, label %78
    i32 5, label %78
    i32 6, label %88
  ]

44:                                               ; preds = %43
  %45 = zext i32 %30 to i64
  br label %61

46:                                               ; preds = %43
  %47 = add i32 %30, 1
  %48 = tail call i32 @llvm.umax.i32(i32 %47, i32 1)
  %49 = zext i32 %48 to i64
  br label %50

50:                                               ; preds = %46, %50
  %51 = phi i64 [ 0, %46 ], [ %59, %50 ]
  %52 = phi i32 [ 1, %46 ], [ %58, %50 ]
  %53 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 14, i64 %51
  %54 = load i32, ptr %53, align 4, !tbaa !46
  %55 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 14, i64 %51
  %56 = load i32, ptr %55, align 4, !tbaa !46
  %57 = icmp eq i32 %54, %56
  %58 = select i1 %57, i32 %52, i32 0
  %59 = add nuw nsw i64 %51, 1
  %60 = icmp eq i64 %59, %49
  br i1 %60, label %113, label %50, !llvm.loop !60

61:                                               ; preds = %44, %61
  %62 = phi i64 [ 0, %44 ], [ %76, %61 ]
  %63 = phi i32 [ 1, %44 ], [ %75, %61 ]
  %64 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 15, i64 %62
  %65 = load i32, ptr %64, align 4, !tbaa !46
  %66 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 15, i64 %62
  %67 = load i32, ptr %66, align 4, !tbaa !46
  %68 = icmp eq i32 %65, %67
  %69 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 16, i64 %62
  %70 = load i32, ptr %69, align 4, !tbaa !46
  %71 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 16, i64 %62
  %72 = load i32, ptr %71, align 4, !tbaa !46
  %73 = icmp eq i32 %70, %72
  %74 = select i1 %73, i1 %68, i1 false
  %75 = select i1 %74, i32 %63, i32 0
  %76 = add nuw nsw i64 %62, 1
  %77 = icmp eq i64 %76, %45
  br i1 %77, label %113, label %61, !llvm.loop !61

78:                                               ; preds = %43, %43, %43
  %79 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 17
  %80 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 17
  %81 = load <2 x i32>, ptr %79, align 4, !tbaa !46
  %82 = load <2 x i32>, ptr %80, align 4, !tbaa !46
  %83 = icmp eq <2 x i32> %81, %82
  %84 = shufflevector <2 x i1> %83, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %85 = and <2 x i1> %83, %84
  %86 = extractelement <2 x i1> %85, i64 0
  %87 = zext i1 %86 to i32
  br label %113

88:                                               ; preds = %43
  %89 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 19
  %90 = load i32, ptr %89, align 4, !tbaa !62
  %91 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 19
  %92 = load i32, ptr %91, align 4, !tbaa !62
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %254

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 20
  %96 = load ptr, ptr %95, align 8, !tbaa !35
  %97 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 20
  %98 = load ptr, ptr %97, align 8, !tbaa !35
  %99 = add i32 %90, 1
  %100 = tail call i32 @llvm.umax.i32(i32 %99, i32 1)
  %101 = zext i32 %100 to i64
  br label %102

102:                                              ; preds = %94, %102
  %103 = phi i64 [ 0, %94 ], [ %111, %102 ]
  %104 = phi i32 [ 1, %94 ], [ %110, %102 ]
  %105 = getelementptr inbounds i8, ptr %96, i64 %103
  %106 = load i8, ptr %105, align 1, !tbaa !63
  %107 = getelementptr inbounds i8, ptr %98, i64 %103
  %108 = load i8, ptr %107, align 1, !tbaa !63
  %109 = icmp eq i8 %106, %108
  %110 = select i1 %109, i32 %104, i32 0
  %111 = add nuw nsw i64 %103, 1
  %112 = icmp eq i64 %111, %101
  br i1 %112, label %113, label %102, !llvm.loop !64

113:                                              ; preds = %102, %61, %50, %43, %78, %35
  %114 = phi i32 [ %87, %78 ], [ 1, %35 ], [ 1, %43 ], [ %58, %50 ], [ %75, %61 ], [ %110, %102 ]
  %115 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 21
  %116 = load i32, ptr %115, align 8, !tbaa !65
  %117 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 21
  %118 = load i32, ptr %117, align 8, !tbaa !65
  %119 = icmp ne i32 %116, %118
  %120 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 22
  %121 = load i32, ptr %120, align 4, !tbaa !66
  %122 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 22
  %123 = load i32, ptr %122, align 4, !tbaa !66
  %124 = icmp ne i32 %121, %123
  %125 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 23
  %126 = load i32, ptr %125, align 8, !tbaa !67
  %127 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 23
  %128 = load i32, ptr %127, align 8, !tbaa !67
  %129 = icmp ne i32 %126, %128
  %130 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 24
  %131 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 24
  %132 = load <4 x i32>, ptr %130, align 4, !tbaa !46
  %133 = load <4 x i32>, ptr %131, align 4, !tbaa !46
  %134 = icmp ne <4 x i32> %132, %133
  %135 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 29
  %136 = load i32, ptr %135, align 8, !tbaa !68
  %137 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 29
  %138 = load i32, ptr %137, align 8, !tbaa !68
  %139 = icmp ne i32 %136, %138
  %140 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 30
  %141 = load i32, ptr %140, align 4, !tbaa !69
  %142 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 30
  %143 = load i32, ptr %142, align 4, !tbaa !69
  %144 = icmp ne i32 %141, %143
  %145 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 31
  %146 = load i32, ptr %145, align 8, !tbaa !70
  %147 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 31
  %148 = load i32, ptr %147, align 8, !tbaa !70
  %149 = icmp ne i32 %146, %148
  %150 = icmp eq i32 %114, 0
  %151 = freeze <4 x i1> %134
  %152 = bitcast <4 x i1> %151 to i4
  %153 = icmp ne i4 %152, 0
  %154 = freeze i1 %144
  %155 = or i1 %153, %154
  %156 = freeze i1 %129
  %157 = freeze i1 %124
  %158 = or i1 %156, %157
  %159 = freeze i1 %119
  %160 = select i1 %155, i1 true, i1 %149
  %161 = select i1 %160, i1 true, i1 %139
  %162 = or i1 %158, %159
  %163 = freeze i1 %161
  %164 = or i1 %163, %162
  %165 = select i1 %164, i1 true, i1 %150
  br i1 %165, label %254, label %166

166:                                              ; preds = %113
  %167 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 4
  %168 = load i32, ptr %167, align 8, !tbaa !71
  %169 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 4
  %170 = load i32, ptr %169, align 8, !tbaa !71
  %171 = icmp eq i32 %168, %170
  %172 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 5
  %173 = load i32, ptr %172, align 4, !tbaa !72
  %174 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 5
  %175 = load i32, ptr %174, align 4, !tbaa !72
  %176 = icmp eq i32 %173, %175
  %177 = and i1 %171, %176
  %178 = zext i1 %177 to i32
  %179 = icmp eq i32 %173, 0
  br i1 %179, label %246, label %180

180:                                              ; preds = %166
  %181 = shl i32 %168, 1
  %182 = add i32 %181, 6
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %246, label %184

184:                                              ; preds = %180
  %185 = zext i32 %182 to i64
  br label %186

186:                                              ; preds = %184, %242
  %187 = phi i64 [ 0, %184 ], [ %244, %242 ]
  %188 = phi i32 [ %178, %184 ], [ %243, %242 ]
  %189 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 6, i64 %187
  %190 = load i32, ptr %189, align 4, !tbaa !46
  %191 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 6, i64 %187
  %192 = load i32, ptr %191, align 4, !tbaa !46
  %193 = icmp eq i32 %190, %192
  %194 = and i32 %188, 1
  %195 = select i1 %193, i32 %194, i32 0
  %196 = icmp eq i32 %190, 0
  br i1 %196, label %242, label %197

197:                                              ; preds = %186
  %198 = icmp ult i64 %187, 6
  br i1 %198, label %199, label %220

199:                                              ; preds = %197
  %200 = insertelement <4 x i32> poison, i32 %195, i64 0
  %201 = shufflevector <4 x i32> %200, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %202

202:                                              ; preds = %202, %199
  %203 = phi i64 [ 0, %199 ], [ %211, %202 ]
  %204 = phi <4 x i32> [ %201, %199 ], [ %210, %202 ]
  %205 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 7, i64 %187, i64 %203
  %206 = load <4 x i32>, ptr %205, align 4, !tbaa !46
  %207 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 7, i64 %187, i64 %203
  %208 = load <4 x i32>, ptr %207, align 4, !tbaa !46
  %209 = icmp eq <4 x i32> %206, %208
  %210 = select <4 x i1> %209, <4 x i32> %204, <4 x i32> zeroinitializer
  %211 = add nuw i64 %203, 4
  %212 = icmp eq i64 %211, 16
  br i1 %212, label %213, label %202, !llvm.loop !73

213:                                              ; preds = %202
  %214 = insertelement <4 x i32> poison, i32 %195, i64 0
  %215 = shufflevector <4 x i32> %214, <4 x i32> poison, <4 x i32> zeroinitializer
  %216 = icmp ne <4 x i32> %210, %215
  %217 = bitcast <4 x i1> %216 to i4
  %218 = icmp eq i4 %217, 0
  %219 = select i1 %218, i32 %195, i32 0
  br label %242

220:                                              ; preds = %197
  %221 = add nsw i64 %187, -6
  %222 = insertelement <4 x i32> poison, i32 %195, i64 0
  %223 = shufflevector <4 x i32> %222, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %224

224:                                              ; preds = %224, %220
  %225 = phi i64 [ 0, %220 ], [ %233, %224 ]
  %226 = phi <4 x i32> [ %223, %220 ], [ %232, %224 ]
  %227 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 8, i64 %221, i64 %225
  %228 = load <4 x i32>, ptr %227, align 4, !tbaa !46
  %229 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 8, i64 %221, i64 %225
  %230 = load <4 x i32>, ptr %229, align 4, !tbaa !46
  %231 = icmp eq <4 x i32> %228, %230
  %232 = select <4 x i1> %231, <4 x i32> %226, <4 x i32> zeroinitializer
  %233 = add nuw i64 %225, 4
  %234 = icmp eq i64 %233, 64
  br i1 %234, label %235, label %224, !llvm.loop !76

235:                                              ; preds = %224
  %236 = insertelement <4 x i32> poison, i32 %195, i64 0
  %237 = shufflevector <4 x i32> %236, <4 x i32> poison, <4 x i32> zeroinitializer
  %238 = icmp ne <4 x i32> %232, %237
  %239 = bitcast <4 x i1> %238 to i4
  %240 = icmp eq i4 %239, 0
  %241 = select i1 %240, i32 %195, i32 0
  br label %242

242:                                              ; preds = %235, %213, %186
  %243 = phi i32 [ %195, %186 ], [ %219, %213 ], [ %241, %235 ]
  %244 = add nuw nsw i64 %187, 1
  %245 = icmp eq i64 %244, %185
  br i1 %245, label %246, label %186, !llvm.loop !77

246:                                              ; preds = %242, %180, %166
  %247 = phi i32 [ %178, %166 ], [ %178, %180 ], [ %243, %242 ]
  %248 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %0, i64 0, i32 28
  %249 = load i32, ptr %248, align 4, !tbaa !78
  %250 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %1, i64 0, i32 28
  %251 = load i32, ptr %250, align 4, !tbaa !78
  %252 = icmp eq i32 %249, %251
  %253 = select i1 %252, i32 %247, i32 0
  br label %254

254:                                              ; preds = %113, %88, %37, %8, %2, %5, %246
  %255 = phi i32 [ %253, %246 ], [ 0, %5 ], [ 0, %2 ], [ 0, %8 ], [ 0, %37 ], [ 0, %88 ], [ 0, %113 ]
  ret i32 %255
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind optsize allocsize(0,1) }
attributes #10 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 5602379}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 2}
!14 = !{i32 100000, i64 1843200, i32 2}
!15 = !{i32 200000, i64 1843200, i32 2}
!16 = !{i32 300000, i64 1843200, i32 2}
!17 = !{i32 400000, i64 1843200, i32 2}
!18 = !{i32 500000, i64 1843200, i32 2}
!19 = !{i32 600000, i64 1843200, i32 2}
!20 = !{i32 700000, i64 921600, i32 4}
!21 = !{i32 800000, i64 921600, i32 4}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 720, i32 8}
!27 = !{i32 999990, i64 21, i32 9}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!36, !40, i64 2160}
!36 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !38, i64 24, !38, i64 72, !38, i64 456, !38, i64 1992, !38, i64 2016, !37, i64 2040, !37, i64 2044, !37, i64 2048, !38, i64 2052, !38, i64 2084, !38, i64 2116, !37, i64 2148, !37, i64 2152, !37, i64 2156, !40, i64 2160, !37, i64 2168, !37, i64 2172, !37, i64 2176, !37, i64 2180, !37, i64 2184, !37, i64 2188, !37, i64 2192, !37, i64 2196, !37, i64 2200, !37, i64 2204, !37, i64 2208}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"any pointer", !38, i64 0}
!41 = !{!42, !37, i64 0}
!42 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !38, i64 44, !38, i64 92, !38, i64 476, !38, i64 2012, !38, i64 2036, !37, i64 2060, !37, i64 2064, !37, i64 2068, !37, i64 2072, !37, i64 2076, !37, i64 2080, !37, i64 2084, !37, i64 2088, !37, i64 2092, !38, i64 2096, !37, i64 3120, !37, i64 3124, !37, i64 3128, !37, i64 3132, !37, i64 3136, !37, i64 3140, !37, i64 3144, !37, i64 3148, !37, i64 3152, !37, i64 3156, !37, i64 3160, !37, i64 3164, !37, i64 3168, !43, i64 3172, !37, i64 4120, !37, i64 4124}
!43 = !{!"", !37, i64 0, !37, i64 4, !44, i64 8, !44, i64 10, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !37, i64 64, !37, i64 68, !37, i64 72, !37, i64 76, !45, i64 80, !37, i64 492, !45, i64 496, !37, i64 908, !37, i64 912, !37, i64 916, !37, i64 920, !37, i64 924, !37, i64 928, !37, i64 932, !37, i64 936, !37, i64 940, !37, i64 944}
!44 = !{!"short", !38, i64 0}
!45 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !38, i64 12, !38, i64 140, !38, i64 268, !37, i64 396, !37, i64 400, !37, i64 404, !37, i64 408}
!46 = !{!37, !37, i64 0}
!47 = !{!42, !37, i64 2076}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!42, !37, i64 3120}
!51 = !{!42, !37, i64 3140}
!52 = !{!42, !37, i64 3144}
!53 = !{!42, !37, i64 3148}
!54 = !{!42, !37, i64 3168}
!55 = !{!36, !37, i64 0}
!56 = !{!36, !37, i64 12}
!57 = !{!36, !37, i64 2040}
!58 = !{!36, !37, i64 2044}
!59 = !{!36, !37, i64 2048}
!60 = distinct !{!60, !49}
!61 = distinct !{!61, !49}
!62 = !{!36, !37, i64 2156}
!63 = !{!38, !38, i64 0}
!64 = distinct !{!64, !49}
!65 = !{!36, !37, i64 2168}
!66 = !{!36, !37, i64 2172}
!67 = !{!36, !37, i64 2176}
!68 = !{!36, !37, i64 2200}
!69 = !{!36, !37, i64 2204}
!70 = !{!36, !37, i64 2208}
!71 = !{!36, !37, i64 16}
!72 = !{!36, !37, i64 20}
!73 = distinct !{!73, !49, !74, !75}
!74 = !{!"llvm.loop.isvectorized", i32 1}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = distinct !{!76, !49, !74, !75}
!77 = distinct !{!77, !49}
!78 = !{!36, !37, i64 2196}
