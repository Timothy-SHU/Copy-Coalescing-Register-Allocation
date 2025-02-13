; ModuleID = 'ComputeList.C'
source_filename = "ComputeList.C"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.ComputeList = type { i32, i32, ptr, ptr }
%class.SelfCompute = type { i32, %class.Pairlists, i32, double }
%class.Pairlists = type { ptr, i32, i32 }
%class.PairCompute = type { i32, i32, i32, i32, %class.Pairlists, i32, double }
%class.PatchList = type { i32, i32, i32, i32, i32, ptr, ptr, ptr }

$_ZN11SelfComputeD2Ev = comdat any

$_ZN11PairComputeD2Ev = comdat any

$_ZN11PairComputeC2Ev = comdat any

$_ZN11SelfComputeC2Ev = comdat any

$_ZN9PairlistsD2Ev = comdat any

$_ZN20ComputeNonbondedUtilD2Ev = comdat any

$_ZN20ComputeNonbondedUtilC2Ev = comdat any

$_ZN9PairlistsC2Ev = comdat any

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11ComputeListC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 !prof !57 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11ComputeListD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !57 {
  %2 = getelementptr inbounds %class.ComputeList, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %3, i64 -8
  %7 = load i64, ptr %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %class.SelfCompute, ptr %3, i64 %7
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi ptr [ %13, %11 ], [ %10, %9 ]
  %13 = getelementptr inbounds %class.SelfCompute, ptr %12, i64 -1
  tail call void @_ZN11SelfComputeD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %13) #12
  %14 = icmp eq ptr %13, %3
  br i1 %14, label %15, label %11

15:                                               ; preds = %11, %5
  tail call void @_ZdaPv(ptr noundef nonnull %6) #13
  br label %16

16:                                               ; preds = %15, %1
  %17 = getelementptr inbounds %class.ComputeList, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !64
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %18, i64 -8
  %22 = load i64, ptr %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %class.PairCompute, ptr %18, i64 %22
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi ptr [ %28, %26 ], [ %25, %24 ]
  %28 = getelementptr inbounds %class.PairCompute, ptr %27, i64 -1
  tail call void @_ZN11PairComputeD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %28) #12
  %29 = icmp eq ptr %28, %18
  br i1 %29, label %30, label %26

30:                                               ; preds = %26, %20
  tail call void @_ZdaPv(ptr noundef nonnull %21) #13
  br label %31

31:                                               ; preds = %30, %16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11SelfComputeD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !65 {
  %2 = getelementptr inbounds %class.SelfCompute, ptr %0, i64 0, i32 1
  tail call void @_ZN9PairlistsD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  tail call void @_ZN20ComputeNonbondedUtilD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11PairComputeD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !66 {
  %2 = getelementptr inbounds %class.PairCompute, ptr %0, i64 0, i32 4
  tail call void @_ZN9PairlistsD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  tail call void @_ZN20ComputeNonbondedUtilD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11ComputeList8readfileEP8_IO_FILEP9PatchList(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #14
  %9 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 1024, ptr noundef %1) #15
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !67

11:                                               ; preds = %3
  %12 = call i32 @bcmp(ptr noundef nonnull dereferenceable(19) %4, ptr noundef nonnull dereferenceable(19) @.str, i64 19)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !68

14:                                               ; preds = %11, %3
  %15 = call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  br label %159

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.ComputeList, ptr %0, i64 0, i32 1
  %18 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %17) #15
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %22, label %20, !prof !68

20:                                               ; preds = %16
  %21 = call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  br label %159

22:                                               ; preds = %16
  %23 = load i32, ptr %17, align 4, !tbaa !69
  %24 = sext i32 %23 to i64
  %25 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %24, i64 48)
  %26 = extractvalue { i64, i1 } %25, 1
  %27 = extractvalue { i64, i1 } %25, 0
  %28 = or disjoint i64 %27, 8
  %29 = select i1 %26, i64 -1, i64 %28
  %30 = call noalias noundef nonnull ptr @_Znam(i64 noundef %29) #16
  store i64 %24, ptr %30, align 16
  %31 = getelementptr inbounds i8, ptr %30, i64 8
  %32 = icmp eq i32 %23, 0
  br i1 %32, label %33, label %35, !prof !70

33:                                               ; preds = %22
  %34 = getelementptr inbounds %class.ComputeList, ptr %0, i64 0, i32 3
  store ptr %31, ptr %34, align 8, !tbaa !64
  br label %76

35:                                               ; preds = %22
  %36 = getelementptr inbounds %class.PairCompute, ptr %31, i64 %24
  br label %37

37:                                               ; preds = %40, %35
  %38 = phi i64 [ 8, %35 ], [ %41, %40 ]
  %39 = getelementptr inbounds i8, ptr %30, i64 %38
  invoke void @_ZN11PairComputeC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %39) #15
          to label %40 unwind label %52

40:                                               ; preds = %37
  %41 = add nuw nsw i64 %38, 48
  %42 = getelementptr inbounds i8, ptr %30, i64 %41
  %43 = icmp eq ptr %42, %36
  br i1 %43, label %44, label %37

44:                                               ; preds = %40
  %45 = load i32, ptr %17, align 4, !tbaa !69
  %46 = icmp sgt i32 %45, 0
  %47 = getelementptr inbounds %class.ComputeList, ptr %0, i64 0, i32 3
  store ptr %31, ptr %47, align 8, !tbaa !64
  br i1 %46, label %48, label %76, !prof !71

48:                                               ; preds = %44, %62
  %49 = phi i64 [ %72, %62 ], [ 0, %44 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #14
  store i32 0, ptr %8, align 4, !tbaa !72
  store i32 0, ptr %7, align 4, !tbaa !72
  store i32 0, ptr %6, align 4, !tbaa !72
  store i32 0, ptr %5, align 4, !tbaa !72
  %50 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #15
  %51 = icmp eq i32 %50, 4
  br i1 %51, label %62, label %60, !prof !73

52:                                               ; preds = %37
  %53 = landingpad { ptr, i32 }
          cleanup
  %54 = icmp eq i64 %38, 8
  br i1 %54, label %161, label %55

55:                                               ; preds = %52, %55
  %56 = phi i64 [ %57, %55 ], [ %38, %52 ]
  %57 = add nsw i64 %56, -48
  %58 = getelementptr inbounds i8, ptr %30, i64 %57
  call void @_ZN11PairComputeD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %58) #12
  %59 = icmp eq i64 %57, 8
  br i1 %59, label %161, label %55

60:                                               ; preds = %48
  %61 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %159

62:                                               ; preds = %48
  %63 = load i32, ptr %5, align 4, !tbaa !72
  %64 = load ptr, ptr %47, align 8, !tbaa !64
  %65 = getelementptr inbounds %class.PairCompute, ptr %64, i64 %49
  store i32 %63, ptr %65, align 8, !tbaa !74
  %66 = load i32, ptr %6, align 4, !tbaa !72
  %67 = getelementptr inbounds %class.PairCompute, ptr %64, i64 %49, i32 1
  store i32 %66, ptr %67, align 4, !tbaa !78
  %68 = load i32, ptr %7, align 4, !tbaa !72
  %69 = getelementptr inbounds %class.PairCompute, ptr %64, i64 %49, i32 2
  store i32 %68, ptr %69, align 8, !tbaa !79
  %70 = load i32, ptr %8, align 4, !tbaa !72
  %71 = getelementptr inbounds %class.PairCompute, ptr %64, i64 %49, i32 3
  store i32 %70, ptr %71, align 4, !tbaa !80
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  %72 = add nuw nsw i64 %49, 1
  %73 = load i32, ptr %17, align 4, !tbaa !69
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %48, label %76, !prof !81, !llvm.loop !82

76:                                               ; preds = %62, %33, %44
  %77 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 1024, ptr noundef %1) #15
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79, !prof !67

79:                                               ; preds = %76
  %80 = call i32 @bcmp(ptr noundef nonnull dereferenceable(17) %4, ptr noundef nonnull dereferenceable(17) @.str.6, i64 17)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82, !prof !68

82:                                               ; preds = %79, %76
  %83 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %159

84:                                               ; preds = %79
  %85 = getelementptr inbounds %class.PatchList, ptr %2, i64 0, i32 4
  %86 = load i32, ptr %85, align 8, !tbaa !84
  store i32 %86, ptr %0, align 8, !tbaa !86
  %87 = sext i32 %86 to i64
  %88 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %87, i64 40)
  %89 = extractvalue { i64, i1 } %88, 1
  %90 = extractvalue { i64, i1 } %88, 0
  %91 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %90, i64 8)
  %92 = extractvalue { i64, i1 } %91, 1
  %93 = or i1 %89, %92
  %94 = extractvalue { i64, i1 } %91, 0
  %95 = select i1 %93, i64 -1, i64 %94
  %96 = call noalias noundef nonnull ptr @_Znam(i64 noundef %95) #16
  store i64 %87, ptr %96, align 16
  %97 = getelementptr inbounds i8, ptr %96, i64 8
  %98 = icmp eq i32 %86, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %84
  %100 = getelementptr inbounds %class.ComputeList, ptr %0, i64 0, i32 2
  store ptr %97, ptr %100, align 8, !tbaa !58
  br label %159

101:                                              ; preds = %84
  %102 = getelementptr inbounds %class.SelfCompute, ptr %97, i64 %87
  br label %103

103:                                              ; preds = %106, %101
  %104 = phi i64 [ 8, %101 ], [ %107, %106 ]
  %105 = getelementptr inbounds i8, ptr %96, i64 %104
  invoke void @_ZN11SelfComputeC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %105) #15
          to label %106 unwind label %151

106:                                              ; preds = %103
  %107 = add nuw nsw i64 %104, 40
  %108 = getelementptr inbounds i8, ptr %96, i64 %107
  %109 = icmp eq ptr %108, %102
  br i1 %109, label %110, label %103

110:                                              ; preds = %106
  %111 = load i32, ptr %0, align 8, !tbaa !86
  %112 = getelementptr inbounds %class.ComputeList, ptr %0, i64 0, i32 2
  store ptr %97, ptr %112, align 8, !tbaa !58
  %113 = icmp sgt i32 %111, 0
  br i1 %113, label %114, label %159, !prof !71

114:                                              ; preds = %110
  %115 = zext nneg i32 %111 to i64
  %116 = add nuw nsw i64 %115, 3
  %117 = and i64 %116, 4294967292
  %118 = add nsw i64 %115, -1
  %119 = insertelement <4 x i64> poison, i64 %118, i64 0
  %120 = shufflevector <4 x i64> %119, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %121

121:                                              ; preds = %147, %114
  %122 = phi i64 [ 0, %114 ], [ %148, %147 ]
  %123 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %114 ], [ %149, %147 ]
  %124 = trunc i64 %122 to i32
  %125 = icmp ule <4 x i64> %123, %120
  %126 = extractelement <4 x i1> %125, i64 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = getelementptr inbounds %class.SelfCompute, ptr %97, i64 %122
  store i32 %124, ptr %128, align 8, !tbaa !87
  br label %129

129:                                              ; preds = %127, %121
  %130 = extractelement <4 x i1> %125, i64 1
  br i1 %130, label %131, label %135

131:                                              ; preds = %129
  %132 = or disjoint i64 %122, 1
  %133 = getelementptr inbounds %class.SelfCompute, ptr %97, i64 %132
  %134 = or disjoint i32 %124, 1
  store i32 %134, ptr %133, align 8, !tbaa !87
  br label %135

135:                                              ; preds = %131, %129
  %136 = extractelement <4 x i1> %125, i64 2
  br i1 %136, label %137, label %141

137:                                              ; preds = %135
  %138 = or disjoint i64 %122, 2
  %139 = getelementptr inbounds %class.SelfCompute, ptr %97, i64 %138
  %140 = or disjoint i32 %124, 2
  store i32 %140, ptr %139, align 8, !tbaa !87
  br label %141

141:                                              ; preds = %137, %135
  %142 = extractelement <4 x i1> %125, i64 3
  br i1 %142, label %143, label %147

143:                                              ; preds = %141
  %144 = or disjoint i64 %122, 3
  %145 = getelementptr inbounds %class.SelfCompute, ptr %97, i64 %144
  %146 = or disjoint i32 %124, 3
  store i32 %146, ptr %145, align 8, !tbaa !87
  br label %147

147:                                              ; preds = %143, %141
  %148 = add i64 %122, 4
  %149 = add <4 x i64> %123, <i64 4, i64 4, i64 4, i64 4>
  %150 = icmp eq i64 %148, %117
  br i1 %150, label %159, label %121, !prof !89, !llvm.loop !90

151:                                              ; preds = %103
  %152 = landingpad { ptr, i32 }
          cleanup
  %153 = icmp eq i64 %104, 8
  br i1 %153, label %161, label %154

154:                                              ; preds = %151, %154
  %155 = phi i64 [ %156, %154 ], [ %104, %151 ]
  %156 = add nsw i64 %155, -40
  %157 = getelementptr inbounds i8, ptr %96, i64 %156
  call void @_ZN11SelfComputeD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %157) #12
  %158 = icmp eq i64 %156, 8
  br i1 %158, label %161, label %154

159:                                              ; preds = %147, %99, %110, %60, %82, %20, %14
  %160 = phi i32 [ -1, %14 ], [ -2, %20 ], [ -3, %60 ], [ -4, %82 ], [ 0, %110 ], [ 0, %99 ], [ 0, %147 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #14
  ret i32 %160

161:                                              ; preds = %55, %154, %151, %52
  %162 = phi ptr [ %30, %52 ], [ %96, %151 ], [ %96, %154 ], [ %30, %55 ]
  %163 = phi { ptr, i32 } [ %53, %52 ], [ %152, %151 ], [ %152, %154 ], [ %53, %55 ]
  call void @_ZdaPv(ptr noundef nonnull %162) #13
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #14
  resume { ptr, i32 } %163
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #7

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11PairComputeC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  tail call void @_ZN20ComputeNonbondedUtilC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  %2 = getelementptr inbounds %class.PairCompute, ptr %0, i64 0, i32 4
  invoke void @_ZN9PairlistsC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
          to label %3 unwind label %5

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.PairCompute, ptr %0, i64 0, i32 5
  store i32 0, ptr %4, align 8, !tbaa !93
  ret void

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN20ComputeNonbondedUtilD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  resume { ptr, i32 } %6
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11SelfComputeC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  tail call void @_ZN20ComputeNonbondedUtilC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  %2 = getelementptr inbounds %class.SelfCompute, ptr %0, i64 0, i32 1
  invoke void @_ZN9PairlistsC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
          to label %3 unwind label %5

3:                                                ; preds = %1
  %4 = getelementptr inbounds %class.SelfCompute, ptr %0, i64 0, i32 2
  store i32 0, ptr %4, align 8, !tbaa !94
  ret void

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN20ComputeNonbondedUtilD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11ComputeList11runComputesEP9PatchList(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !95 {
  %3 = load i32, ptr %0, align 8, !tbaa !86
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %7, !prof !96

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.ComputeList, ptr %0, i64 0, i32 2
  br label %13

7:                                                ; preds = %13, %2
  %8 = getelementptr inbounds %class.ComputeList, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !69
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %29, !prof !96

11:                                               ; preds = %7
  %12 = getelementptr inbounds %class.ComputeList, ptr %0, i64 0, i32 3
  br label %21

13:                                               ; preds = %5, %13
  %14 = phi i64 [ 0, %5 ], [ %17, %13 ]
  %15 = load ptr, ptr %6, align 8, !tbaa !58
  %16 = getelementptr inbounds %class.SelfCompute, ptr %15, i64 %14
  tail call void @_ZN11SelfCompute6doWorkEP9PatchList(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef %1) #15
  %17 = add nuw nsw i64 %14, 1
  %18 = load i32, ptr %0, align 8, !tbaa !86
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %13, label %7, !prof !97, !llvm.loop !98

21:                                               ; preds = %11, %21
  %22 = phi i64 [ 0, %11 ], [ %25, %21 ]
  %23 = load ptr, ptr %12, align 8, !tbaa !64
  %24 = getelementptr inbounds %class.PairCompute, ptr %23, i64 %22
  tail call void @_ZN11PairCompute6doWorkEP9PatchList(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef %1) #15
  %25 = add nuw nsw i64 %22, 1
  %26 = load i32, ptr %8, align 4, !tbaa !69
  %27 = sext i32 %26 to i64
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %21, label %29, !prof !99, !llvm.loop !100

29:                                               ; preds = %21, %7
  ret void
}

; Function Attrs: optsize
declare void @_ZN11SelfCompute6doWorkEP9PatchList(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11PairCompute6doWorkEP9PatchList(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9PairlistsD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 !prof !101 {
  %2 = load ptr, ptr %0, align 8, !tbaa !102
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %2) #13
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN20ComputeNonbondedUtilD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !101 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN20ComputeNonbondedUtilC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !101 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9PairlistsC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 !prof !101 {
  %2 = getelementptr inbounds %class.Pairlists, ptr %0, i64 0, i32 2
  store i32 10, ptr %2, align 4, !tbaa !103
  %3 = tail call noalias noundef nonnull dereferenceable(20) ptr @_Znam(i64 noundef 20) #16
  store ptr %3, ptr %0, align 8, !tbaa !102
  ret void
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind optsize }
attributes #13 = { builtin nounwind optsize }
attributes #14 = { nounwind }
attributes #15 = { optsize }
attributes #16 = { builtin optsize allocsize(0) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!56}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 10379128720}
!4 = !{!"MaxCount", i64 894261817}
!5 = !{!"MaxInternalCount", i64 894261817}
!6 = !{!"MaxFunctionCount", i64 536543178}
!7 = !{!"NumCounts", i64 2825}
!8 = !{!"NumFunctions", i64 153}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 894261817, i32 6}
!14 = !{i32 100000, i64 894261817, i32 6}
!15 = !{i32 200000, i64 894261817, i32 6}
!16 = !{i32 300000, i64 894261817, i32 6}
!17 = !{i32 400000, i64 894261817, i32 6}
!18 = !{i32 500000, i64 894261817, i32 6}
!19 = !{i32 600000, i64 149391598, i32 9}
!20 = !{i32 700000, i64 85897063, i32 20}
!21 = !{i32 800000, i64 77356517, i32 32}
!22 = !{i32 900000, i64 43998258, i32 46}
!23 = !{i32 950000, i64 16555149, i32 67}
!24 = !{i32 990000, i64 1242234, i32 178}
!25 = !{i32 999000, i64 296928, i32 332}
!26 = !{i32 999900, i64 56160, i32 355}
!27 = !{i32 999990, i64 7920, i32 414}
!28 = !{i32 999999, i64 768, i32 448}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!35 = !{ptr @_ZN11ComputeListD2Ev, ptr @_ZN11SelfComputeD2Ev, i64 13}
!36 = !{ptr @_ZN11ComputeListD2Ev, ptr @_ZdaPv, i64 2}
!37 = !{ptr @_ZN11ComputeListD2Ev, ptr @_ZN11PairComputeD2Ev, i64 13}
!38 = !{ptr @_ZN11SelfComputeD2Ev, ptr @_ZN9PairlistsD2Ev, i64 144}
!39 = !{ptr @_ZN11SelfComputeD2Ev, ptr @_ZN20ComputeNonbondedUtilD2Ev, i64 144}
!40 = !{ptr @_ZN11PairComputeD2Ev, ptr @_ZN9PairlistsD2Ev, i64 1872}
!41 = !{ptr @_ZN11PairComputeD2Ev, ptr @_ZN20ComputeNonbondedUtilD2Ev, i64 1872}
!42 = !{ptr @_ZN11ComputeList8readfileEP8_IO_FILEP9PatchList, ptr @fgets, i64 1}
!43 = !{ptr @_ZN11ComputeList8readfileEP8_IO_FILEP9PatchList, ptr @bcmp, i64 1}
!44 = !{ptr @_ZN11ComputeList8readfileEP8_IO_FILEP9PatchList, ptr @puts, i64 1}
!45 = !{ptr @_ZN11ComputeList8readfileEP8_IO_FILEP9PatchList, ptr @_ZN11PairComputeC2Ev, i64 9}
!46 = !{ptr @_ZN11ComputeList8readfileEP8_IO_FILEP9PatchList, ptr @__isoc99_fscanf, i64 185}
!47 = !{ptr @_ZN11ComputeList8readfileEP8_IO_FILEP9PatchList, ptr @_ZN11SelfComputeC2Ev, i64 2}
!48 = !{ptr @_ZN11PairComputeC2Ev, ptr @_ZN20ComputeNonbondedUtilC2Ev, i64 1872}
!49 = !{ptr @_ZN11PairComputeC2Ev, ptr @_ZN9PairlistsC2Ev, i64 1872}
!50 = !{ptr @_ZN11SelfComputeC2Ev, ptr @_ZN20ComputeNonbondedUtilC2Ev, i64 144}
!51 = !{ptr @_ZN11SelfComputeC2Ev, ptr @_ZN9PairlistsC2Ev, i64 144}
!52 = !{ptr @_ZN11ComputeList11runComputesEP9PatchList, ptr @_ZN11SelfCompute6doWorkEP9PatchList, i64 56017}
!53 = !{ptr @_ZN11ComputeList11runComputesEP9PatchList, ptr @_ZN11PairCompute6doWorkEP9PatchList, i64 728214}
!54 = !{ptr @_ZN9PairlistsD2Ev, ptr @_ZdaPv, i64 1260}
!55 = !{ptr @_ZN9PairlistsC2Ev, ptr @_Znam, i64 2016}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = !{!"function_entry_count", i64 1}
!58 = !{!59, !63, i64 8}
!59 = !{!"_ZTS11ComputeList", !60, i64 0, !60, i64 4, !63, i64 8, !63, i64 16}
!60 = !{!"int", !61, i64 0}
!61 = !{!"omnipotent char", !62, i64 0}
!62 = !{!"Simple C++ TBAA"}
!63 = !{!"any pointer", !61, i64 0}
!64 = !{!59, !63, i64 16}
!65 = !{!"function_entry_count", i64 144}
!66 = !{!"function_entry_count", i64 1872}
!67 = !{!"branch_weights", i32 1, i32 2}
!68 = !{!"branch_weights", i32 2, i32 1}
!69 = !{!59, !60, i64 4}
!70 = !{!"branch_weights", i32 16777216, i32 2130706432}
!71 = !{!"branch_weights", i32 -2147483648, i32 0}
!72 = !{!60, !60, i64 0}
!73 = !{!"branch_weights", i32 1873, i32 1}
!74 = !{!75, !60, i64 0}
!75 = !{!"_ZTS11PairCompute", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !76, i64 16, !60, i64 32, !77, i64 40}
!76 = !{!"_ZTS9Pairlists", !63, i64 0, !60, i64 8, !60, i64 12}
!77 = !{!"double", !61, i64 0}
!78 = !{!75, !60, i64 4}
!79 = !{!75, !60, i64 8}
!80 = !{!75, !60, i64 12}
!81 = !{!"branch_weights", i32 119745, i32 127}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!85, !60, i64 16}
!85 = !{!"_ZTS9PatchList", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !63, i64 24, !63, i64 32, !63, i64 40}
!86 = !{!59, !60, i64 0}
!87 = !{!88, !60, i64 0}
!88 = !{!"_ZTS11SelfCompute", !60, i64 0, !76, i64 8, !60, i64 24, !77, i64 32}
!89 = !{!"branch_weights", i32 127, i32 2159}
!90 = distinct !{!90, !83, !91, !92}
!91 = !{!"llvm.loop.isvectorized", i32 1}
!92 = !{!"llvm.loop.unroll.runtime.disable"}
!93 = !{!75, !60, i64 32}
!94 = !{!88, !60, i64 24}
!95 = !{!"function_entry_count", i64 390}
!96 = !{!"branch_weights", i32 390, i32 1}
!97 = !{!"branch_weights", i32 55771, i32 390}
!98 = distinct !{!98, !83}
!99 = !{!"branch_weights", i32 729691, i32 390}
!100 = distinct !{!100, !83}
!101 = !{!"function_entry_count", i64 2016}
!102 = !{!76, !63, i64 0}
!103 = !{!76, !60, i64 12}
