; ModuleID = 'ComputeList.C'
source_filename = "ComputeList.C"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.ComputeList = type { i32, i32, ptr, ptr }
%class.SelfCompute = type { i32, %class.Pairlists, i32, double }
%class.Pairlists = type { ptr, i32, i32 }
%class.PairCompute = type { i32, i32, i32, i32, %class.Pairlists, i32, double }
%class.PatchList = type { i32, i32, i32, i32, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [19 x i8] c"COMPUTEPAIR_BEGIN\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%d %d %d %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"COMPUTEPAIR_END\0A\00", align 1
@str = private unnamed_addr constant [24 x i8] c"Missing COMPUTEPAIR_END\00", align 1
@str.8 = private unnamed_addr constant [23 x i8] c"paircompute read error\00", align 1
@str.9 = private unnamed_addr constant [27 x i8] c"numPairComputes read error\00", align 1
@str.10 = private unnamed_addr constant [26 x i8] c"Missing COMPUTEPAIR_BEGIN\00", align 1

@_ZN11ComputeListC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11ComputeListC2Ev
@_ZN11ComputeListD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11ComputeListD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11ComputeListC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 !prof !43 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11ComputeListD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !43 {
  %2 = getelementptr inbounds %class.ComputeList, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5, !prof !50

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %3, i64 -8
  %7 = load i64, ptr %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %20, label %9, !prof !50

9:                                                ; preds = %5
  %10 = getelementptr inbounds %class.SelfCompute, ptr %3, i64 %7
  br label %11

11:                                               ; preds = %9, %18
  %12 = phi ptr [ %13, %18 ], [ %10, %9 ]
  %13 = getelementptr inbounds %class.SelfCompute, ptr %12, i64 -1
  %14 = getelementptr %class.SelfCompute, ptr %12, i64 -1, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !53

17:                                               ; preds = %11
  tail call void @_ZdaPv(ptr noundef %15) #12
  br label %18

18:                                               ; preds = %11, %17
  %19 = icmp eq ptr %13, %3
  br i1 %19, label %20, label %11, !prof !54

20:                                               ; preds = %18, %5
  tail call void @_ZdaPv(ptr noundef %6) #12
  br label %21

21:                                               ; preds = %20, %1
  %22 = getelementptr inbounds %class.ComputeList, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !55
  %24 = icmp eq ptr %23, null
  br i1 %24, label %41, label %25, !prof !50

25:                                               ; preds = %21
  %26 = getelementptr inbounds i8, ptr %23, i64 -8
  %27 = load i64, ptr %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %40, label %29, !prof !50

29:                                               ; preds = %25
  %30 = getelementptr inbounds %class.PairCompute, ptr %23, i64 %27
  br label %31

31:                                               ; preds = %29, %38
  %32 = phi ptr [ %33, %38 ], [ %30, %29 ]
  %33 = getelementptr inbounds %class.PairCompute, ptr %32, i64 -1
  %34 = getelementptr %class.PairCompute, ptr %32, i64 -1, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !51
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37, !prof !56

37:                                               ; preds = %31
  tail call void @_ZdaPv(ptr noundef %35) #12
  br label %38

38:                                               ; preds = %31, %37
  %39 = icmp eq ptr %33, %23
  br i1 %39, label %40, label %31, !prof !57

40:                                               ; preds = %38, %25
  tail call void @_ZdaPv(ptr noundef %26) #12
  br label %41

41:                                               ; preds = %40, %21
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11ComputeList8readfileEP8_IO_FILEP9PatchList(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #13
  %9 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 1024, ptr noundef %1)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %141, label %11, !prof !50

11:                                               ; preds = %3
  %12 = call i32 @bcmp(ptr noundef nonnull dereferenceable(19) %4, ptr noundef nonnull dereferenceable(19) @.str, i64 19)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %141, !prof !58

14:                                               ; preds = %11
  %15 = getelementptr inbounds %class.ComputeList, ptr %0, i64 0, i32 1
  %16 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %15)
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %141, !prof !58

18:                                               ; preds = %14
  %19 = load i32, ptr %15, align 4, !tbaa !59
  %20 = sext i32 %19 to i64
  %21 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %20, i64 48)
  %22 = extractvalue { i64, i1 } %21, 1
  %23 = extractvalue { i64, i1 } %21, 0
  %24 = or disjoint i64 %23, 8
  %25 = select i1 %22, i64 -1, i64 %24, !prof !50
  %26 = call noalias noundef nonnull ptr @_Znam(i64 noundef %25) #14
  store i64 %20, ptr %26, align 16
  %27 = getelementptr inbounds i8, ptr %26, i64 8
  %28 = icmp eq i32 %19, 0
  br i1 %28, label %42, label %29, !prof !50

29:                                               ; preds = %18
  %30 = getelementptr inbounds %class.PairCompute, ptr %27, i64 %20
  br label %31

31:                                               ; preds = %36, %29
  %32 = phi i64 [ 8, %29 ], [ %39, %36 ]
  %33 = getelementptr inbounds i8, ptr %26, i64 %32
  %34 = getelementptr inbounds %class.PairCompute, ptr %33, i64 0, i32 4, i32 2
  store i32 10, ptr %34, align 4, !tbaa !60
  %35 = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znam(i64 noundef 20) #14
          to label %36 unwind label %57, !prof !61

36:                                               ; preds = %31
  %37 = getelementptr inbounds %class.PairCompute, ptr %33, i64 0, i32 4
  store ptr %35, ptr %37, align 8, !tbaa !51
  %38 = getelementptr inbounds %class.PairCompute, ptr %33, i64 0, i32 5
  store i32 0, ptr %38, align 8, !tbaa !62
  %39 = add nuw nsw i64 %32, 48
  %40 = getelementptr inbounds i8, ptr %26, i64 %39
  %41 = icmp eq ptr %40, %30
  br i1 %41, label %42, label %31, !prof !57

42:                                               ; preds = %36, %18
  %43 = getelementptr inbounds %class.ComputeList, ptr %0, i64 0, i32 3
  store ptr %27, ptr %43, align 8, !tbaa !55
  %44 = load i32, ptr %15, align 4, !tbaa !59
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %51, label %82, !prof !65

46:                                               ; preds = %81
  %47 = add nuw nsw i64 %52, 1
  %48 = load i32, ptr %15, align 4, !tbaa !59
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %47, %49
  br i1 %50, label %51, label %82, !prof !66, !llvm.loop !67

51:                                               ; preds = %42, %46
  %52 = phi i64 [ %47, %46 ], [ 0, %42 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  store i32 0, ptr %8, align 4, !tbaa !70
  store i32 0, ptr %7, align 4, !tbaa !70
  store i32 0, ptr %6, align 4, !tbaa !70
  store i32 0, ptr %5, align 4, !tbaa !70
  %53 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
  %54 = icmp eq i32 %53, 4
  br i1 %54, label %71, label %55, !prof !61

55:                                               ; preds = %51
  %56 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  br label %81

57:                                               ; preds = %31
  %58 = landingpad { ptr, i32 }
          cleanup
  %59 = icmp eq i64 %32, 8
  br i1 %59, label %147, label %60

60:                                               ; preds = %57
  %61 = getelementptr %class.PairCompute, ptr %26, i64 0, i32 4
  br label %62

62:                                               ; preds = %60, %69
  %63 = phi i64 [ %64, %69 ], [ %32, %60 ]
  %64 = add nsw i64 %63, -48
  %65 = getelementptr i8, ptr %61, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !51
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  call void @_ZdaPv(ptr noundef %66) #12
  br label %69

69:                                               ; preds = %62, %68
  %70 = icmp eq i64 %64, 8
  br i1 %70, label %147, label %62

71:                                               ; preds = %51
  %72 = load i32, ptr %5, align 4, !tbaa !70
  %73 = load ptr, ptr %43, align 8, !tbaa !55
  %74 = getelementptr inbounds %class.PairCompute, ptr %73, i64 %52
  store i32 %72, ptr %74, align 8, !tbaa !71
  %75 = load i32, ptr %6, align 4, !tbaa !70
  %76 = getelementptr inbounds %class.PairCompute, ptr %73, i64 %52, i32 1
  store i32 %75, ptr %76, align 4, !tbaa !72
  %77 = load i32, ptr %7, align 4, !tbaa !70
  %78 = getelementptr inbounds %class.PairCompute, ptr %73, i64 %52, i32 2
  store i32 %77, ptr %78, align 8, !tbaa !73
  %79 = load i32, ptr %8, align 4, !tbaa !70
  %80 = getelementptr inbounds %class.PairCompute, ptr %73, i64 %52, i32 3
  store i32 %79, ptr %80, align 4, !tbaa !74
  br label %81

81:                                               ; preds = %71, %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br i1 %54, label %46, label %145, !prof !61

82:                                               ; preds = %46, %42
  %83 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 1024, ptr noundef %1)
  %84 = icmp eq ptr %83, null
  br i1 %84, label %141, label %85, !prof !50

85:                                               ; preds = %82
  %86 = call i32 @bcmp(ptr noundef nonnull dereferenceable(17) %4, ptr noundef nonnull dereferenceable(17) @.str.6, i64 17)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %141, !prof !58

88:                                               ; preds = %85
  %89 = getelementptr inbounds %class.PatchList, ptr %2, i64 0, i32 4
  %90 = load i32, ptr %89, align 8, !tbaa !75
  store i32 %90, ptr %0, align 8, !tbaa !77
  %91 = sext i32 %90 to i64
  %92 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %91, i64 40)
  %93 = extractvalue { i64, i1 } %92, 1
  %94 = extractvalue { i64, i1 } %92, 0
  %95 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %94, i64 8)
  %96 = extractvalue { i64, i1 } %95, 1
  %97 = or i1 %93, %96
  %98 = extractvalue { i64, i1 } %95, 0
  %99 = select i1 %97, i64 -1, i64 %98, !prof !50
  %100 = call noalias noundef nonnull ptr @_Znam(i64 noundef %99) #14
  store i64 %91, ptr %100, align 16
  %101 = getelementptr inbounds i8, ptr %100, i64 8
  %102 = icmp eq i32 %90, 0
  br i1 %102, label %116, label %103, !prof !50

103:                                              ; preds = %88
  %104 = getelementptr inbounds %class.SelfCompute, ptr %101, i64 %91
  br label %105

105:                                              ; preds = %110, %103
  %106 = phi i64 [ 8, %103 ], [ %113, %110 ]
  %107 = getelementptr inbounds i8, ptr %100, i64 %106
  %108 = getelementptr inbounds %class.SelfCompute, ptr %107, i64 0, i32 1, i32 2
  store i32 10, ptr %108, align 4, !tbaa !60
  %109 = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znam(i64 noundef 20) #14
          to label %110 unwind label %127, !prof !78

110:                                              ; preds = %105
  %111 = getelementptr inbounds %class.SelfCompute, ptr %107, i64 0, i32 1
  store ptr %109, ptr %111, align 8, !tbaa !51
  %112 = getelementptr inbounds %class.SelfCompute, ptr %107, i64 0, i32 2
  store i32 0, ptr %112, align 8, !tbaa !79
  %113 = add nuw nsw i64 %106, 40
  %114 = getelementptr inbounds i8, ptr %100, i64 %113
  %115 = icmp eq ptr %114, %104
  br i1 %115, label %116, label %105, !prof !54

116:                                              ; preds = %110, %88
  %117 = getelementptr inbounds %class.ComputeList, ptr %0, i64 0, i32 2
  store ptr %101, ptr %117, align 8, !tbaa !44
  %118 = icmp sgt i32 %90, 0
  br i1 %118, label %119, label %145, !prof !65

119:                                              ; preds = %116
  %120 = zext nneg i32 %90 to i64
  br label %121

121:                                              ; preds = %119, %121
  %122 = phi i64 [ 0, %119 ], [ %125, %121 ]
  %123 = getelementptr inbounds %class.SelfCompute, ptr %101, i64 %122
  %124 = trunc i64 %122 to i32
  store i32 %124, ptr %123, align 8, !tbaa !81
  %125 = add nuw nsw i64 %122, 1
  %126 = icmp eq i64 %125, %120
  br i1 %126, label %145, label %121, !prof !82, !llvm.loop !83

127:                                              ; preds = %105
  %128 = landingpad { ptr, i32 }
          cleanup
  %129 = icmp eq i64 %106, 8
  br i1 %129, label %147, label %130

130:                                              ; preds = %127
  %131 = getelementptr %class.SelfCompute, ptr %100, i64 0, i32 1
  br label %132

132:                                              ; preds = %130, %139
  %133 = phi i64 [ %134, %139 ], [ %106, %130 ]
  %134 = add nsw i64 %133, -40
  %135 = getelementptr i8, ptr %131, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !51
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %132
  call void @_ZdaPv(ptr noundef %136) #12
  br label %139

139:                                              ; preds = %132, %138
  %140 = icmp eq i64 %134, 8
  br i1 %140, label %147, label %132

141:                                              ; preds = %82, %85, %14, %3, %11
  %142 = phi ptr [ @str.10, %11 ], [ @str.10, %3 ], [ @str.9, %14 ], [ @str, %85 ], [ @str, %82 ]
  %143 = phi i32 [ -1, %11 ], [ -1, %3 ], [ -2, %14 ], [ -4, %85 ], [ -4, %82 ]
  %144 = call i32 @puts(ptr nonnull dereferenceable(1) %142)
  br label %145

145:                                              ; preds = %81, %121, %141, %116
  %146 = phi i32 [ 0, %116 ], [ %143, %141 ], [ 0, %121 ], [ -3, %81 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #13
  ret i32 %146

147:                                              ; preds = %69, %139, %127, %57
  %148 = phi ptr [ %26, %57 ], [ %100, %127 ], [ %100, %139 ], [ %26, %69 ]
  %149 = phi { ptr, i32 } [ %58, %57 ], [ %128, %127 ], [ %128, %139 ], [ %58, %69 ]
  call void @_ZdaPv(ptr noundef %148) #12
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #13
  resume { ptr, i32 } %149
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11ComputeList11runComputesEP9PatchList(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !84 {
  %3 = load i32, ptr %0, align 8, !tbaa !77
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %7, !prof !85

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.ComputeList, ptr %0, i64 0, i32 2
  br label %13

7:                                                ; preds = %13, %2
  %8 = getelementptr inbounds %class.ComputeList, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !59
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %29, !prof !85

11:                                               ; preds = %7
  %12 = getelementptr inbounds %class.ComputeList, ptr %0, i64 0, i32 3
  br label %21

13:                                               ; preds = %5, %13
  %14 = phi i64 [ 0, %5 ], [ %17, %13 ]
  %15 = load ptr, ptr %6, align 8, !tbaa !44
  %16 = getelementptr inbounds %class.SelfCompute, ptr %15, i64 %14
  tail call void @_ZN11SelfCompute6doWorkEP9PatchList(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef %1)
  %17 = add nuw nsw i64 %14, 1
  %18 = load i32, ptr %0, align 8, !tbaa !77
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %13, label %7, !prof !86, !llvm.loop !87

21:                                               ; preds = %11, %21
  %22 = phi i64 [ 0, %11 ], [ %25, %21 ]
  %23 = load ptr, ptr %12, align 8, !tbaa !55
  %24 = getelementptr inbounds %class.PairCompute, ptr %23, i64 %22
  tail call void @_ZN11PairCompute6doWorkEP9PatchList(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef %1)
  %25 = add nuw nsw i64 %22, 1
  %26 = load i32, ptr %8, align 4, !tbaa !59
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %21, label %29, !prof !88, !llvm.loop !89

29:                                               ; preds = %21, %7
  ret void
}

declare void @_ZN11SelfCompute6doWorkEP9PatchList(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #6

declare void @_ZN11PairCompute6doWorkEP9PatchList(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { builtin nounwind }
attributes #13 = { nounwind }
attributes #14 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!42}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 30883462369}
!8 = !{!"MaxCount", i64 4281837148}
!9 = !{!"MaxInternalCount", i64 4281837148}
!10 = !{!"MaxFunctionCount", i64 1416892399}
!11 = !{!"NumCounts", i64 6403}
!12 = !{!"NumFunctions", i64 139}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 4281837148, i32 1}
!18 = !{i32 100000, i64 4281837148, i32 1}
!19 = !{i32 200000, i64 1264975759, i32 8}
!20 = !{i32 300000, i64 1264975759, i32 8}
!21 = !{i32 400000, i64 1264975759, i32 8}
!22 = !{i32 500000, i64 894261817, i32 14}
!23 = !{i32 600000, i64 894261817, i32 14}
!24 = !{i32 700000, i64 436233492, i32 22}
!25 = !{i32 800000, i64 148205155, i32 32}
!26 = !{i32 900000, i64 76129528, i32 61}
!27 = !{i32 950000, i64 24830040, i32 96}
!28 = !{i32 990000, i64 3860064, i32 233}
!29 = !{i32 999000, i64 440050, i32 440}
!30 = !{i32 999900, i64 92080, i32 568}
!31 = !{i32 999990, i64 9360, i32 655}
!32 = !{i32 999999, i64 1296, i32 707}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @_ZN11ComputeListD2Ev, ptr @_ZdaPv, i64 2018}
!36 = !{ptr @_ZN11ComputeList8readfileEP8_IO_FILEP9PatchList, ptr @fgets, i64 2}
!37 = !{ptr @_ZN11ComputeList8readfileEP8_IO_FILEP9PatchList, ptr @bcmp, i64 2}
!38 = !{ptr @_ZN11ComputeList8readfileEP8_IO_FILEP9PatchList, ptr @__isoc99_fscanf, i64 1873}
!39 = !{ptr @_ZN11ComputeList8readfileEP8_IO_FILEP9PatchList, ptr @_Znam, i64 2018}
!40 = !{ptr @_ZN11ComputeList11runComputesEP9PatchList, ptr @_ZN11SelfCompute6doWorkEP9PatchList, i64 56160}
!41 = !{ptr @_ZN11ComputeList11runComputesEP9PatchList, ptr @_ZN11PairCompute6doWorkEP9PatchList, i64 730080}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 1}
!44 = !{!45, !49, i64 8}
!45 = !{!"_ZTS11ComputeList", !46, i64 0, !46, i64 4, !49, i64 8, !49, i64 16}
!46 = !{!"int", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!"any pointer", !47, i64 0}
!50 = !{!"branch_weights", i32 0, i32 1}
!51 = !{!52, !49, i64 0}
!52 = !{!"_ZTS9Pairlists", !49, i64 0, !46, i64 8, !46, i64 12}
!53 = !{!"branch_weights", i32 0, i32 144}
!54 = !{!"branch_weights", i32 1, i32 143}
!55 = !{!45, !49, i64 16}
!56 = !{!"branch_weights", i32 0, i32 1872}
!57 = !{!"branch_weights", i32 1, i32 1871}
!58 = !{!"branch_weights", i32 1, i32 0}
!59 = !{!45, !46, i64 4}
!60 = !{!52, !46, i64 12}
!61 = !{!"branch_weights", i32 1872, i32 0}
!62 = !{!63, !46, i64 32}
!63 = !{!"_ZTS11PairCompute", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !52, i64 16, !46, i64 32, !64, i64 40}
!64 = !{!"double", !47, i64 0}
!65 = !{!"branch_weights", i32 127, i32 1}
!66 = !{!"branch_weights", i32 239489, i32 127}
!67 = distinct !{!67, !68, !69}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !{!46, !46, i64 0}
!71 = !{!63, !46, i64 0}
!72 = !{!63, !46, i64 4}
!73 = !{!63, !46, i64 8}
!74 = !{!63, !46, i64 12}
!75 = !{!76, !46, i64 16}
!76 = !{!"_ZTS9PatchList", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !49, i64 24, !49, i64 32, !49, i64 40}
!77 = !{!45, !46, i64 0}
!78 = !{!"branch_weights", i32 144, i32 0}
!79 = !{!80, !46, i64 24}
!80 = !{!"_ZTS11SelfCompute", !46, i64 0, !52, i64 8, !46, i64 24, !64, i64 32}
!81 = !{!80, !46, i64 0}
!82 = !{!"branch_weights", i32 127, i32 18305}
!83 = distinct !{!83, !68, !69}
!84 = !{!"function_entry_count", i64 390}
!85 = !{!"branch_weights", i32 389, i32 1}
!86 = !{!"branch_weights", i32 55771, i32 389}
!87 = distinct !{!87, !68, !69}
!88 = !{!"branch_weights", i32 729691, i32 389}
!89 = distinct !{!89, !68, !69}
