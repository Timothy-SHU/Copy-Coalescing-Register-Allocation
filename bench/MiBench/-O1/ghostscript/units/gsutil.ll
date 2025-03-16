; ModuleID = 'gsutil.c'
source_filename = "gsutil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.string_match_params_s = type { i32, i32, i32, i32 }
%struct.gs_uid_s = type { i64, ptr }

@gs_next_id = internal unnamed_addr global i64 0, align 8
@smp_default = internal unnamed_addr constant %struct.string_match_params_s { i32 42, i32 63, i32 92, i32 0 }, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @gs_next_ids(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr @gs_next_id, align 8, !tbaa !5
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i64 1, ptr @gs_next_id, align 8, !tbaa !5
  br label %5

5:                                                ; preds = %4, %1
  %6 = load i64, ptr @gs_next_id, align 8, !tbaa !5
  %7 = zext i32 %0 to i64
  %8 = add i64 %6, %7
  store i64 %8, ptr @gs_next_id, align 8, !tbaa !5
  ret i64 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @memflip8x8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = shl i32 %1, 2
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = load i8, ptr %0, align 1, !tbaa !9
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %11 = load i8, ptr %7, align 1, !tbaa !9
  %12 = zext i8 %11 to i32
  %13 = or disjoint i32 %10, %12
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  %16 = getelementptr inbounds i8, ptr %7, i64 %14
  %17 = load i8, ptr %15, align 1, !tbaa !9
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 8
  %20 = load i8, ptr %16, align 1, !tbaa !9
  %21 = zext i8 %20 to i32
  %22 = or disjoint i32 %19, %21
  %23 = getelementptr inbounds i8, ptr %15, i64 %14
  %24 = getelementptr inbounds i8, ptr %16, i64 %14
  %25 = load i8, ptr %23, align 1, !tbaa !9
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 8
  %28 = load i8, ptr %24, align 1, !tbaa !9
  %29 = zext i8 %28 to i32
  %30 = or disjoint i32 %27, %29
  %31 = getelementptr inbounds i8, ptr %23, i64 %14
  %32 = getelementptr inbounds i8, ptr %24, i64 %14
  %33 = load i8, ptr %31, align 1, !tbaa !9
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = load i8, ptr %32, align 1, !tbaa !9
  %37 = zext i8 %36 to i32
  %38 = or disjoint i32 %35, %37
  %39 = icmp eq i32 %13, %22
  %40 = icmp eq i32 %13, %30
  %41 = select i1 %39, i1 %40, i1 false
  %42 = icmp eq i32 %13, %38
  %43 = select i1 %41, i1 %42, i1 false
  %44 = icmp eq i8 %8, %11
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %78

46:                                               ; preds = %4
  %47 = icmp eq i32 %13, 0
  br i1 %47, label %123, label %48

48:                                               ; preds = %46
  %49 = ashr i8 %11, 7
  store i8 %49, ptr %2, align 1, !tbaa !9
  %50 = sext i32 %3 to i64
  %51 = getelementptr inbounds i8, ptr %2, i64 %50
  %52 = shl i32 %12, 25
  %53 = ashr i32 %52, 31
  %54 = trunc i32 %53 to i8
  store i8 %54, ptr %51, align 1, !tbaa !9
  %55 = getelementptr inbounds i8, ptr %51, i64 %50
  %56 = shl i32 %12, 26
  %57 = ashr i32 %56, 31
  %58 = trunc i32 %57 to i8
  store i8 %58, ptr %55, align 1, !tbaa !9
  %59 = getelementptr inbounds i8, ptr %55, i64 %50
  %60 = shl i32 %12, 27
  %61 = ashr i32 %60, 31
  %62 = trunc i32 %61 to i8
  store i8 %62, ptr %59, align 1, !tbaa !9
  %63 = getelementptr inbounds i8, ptr %59, i64 %50
  %64 = shl i32 %12, 28
  %65 = ashr i32 %64, 31
  %66 = trunc i32 %65 to i8
  store i8 %66, ptr %63, align 1, !tbaa !9
  %67 = getelementptr inbounds i8, ptr %63, i64 %50
  %68 = shl i32 %12, 29
  %69 = ashr i32 %68, 31
  %70 = trunc i32 %69 to i8
  store i8 %70, ptr %67, align 1, !tbaa !9
  %71 = getelementptr inbounds i8, ptr %67, i64 %50
  %72 = shl i32 %12, 30
  %73 = ashr i32 %72, 31
  %74 = trunc i32 %73 to i8
  store i8 %74, ptr %71, align 1, !tbaa !9
  %75 = getelementptr inbounds i8, ptr %71, i64 %50
  %76 = and i8 %11, 1
  %77 = sub nsw i8 0, %76
  store i8 %77, ptr %75, align 1, !tbaa !9
  br label %148

78:                                               ; preds = %4
  %79 = shl nuw nsw i32 %9, 4
  %80 = xor i32 %79, %12
  %81 = and i32 %80, 240
  %82 = mul nuw nsw i32 %81, 17
  %83 = xor i32 %82, %13
  %84 = shl nuw nsw i32 %18, 4
  %85 = xor i32 %84, %21
  %86 = and i32 %85, 240
  %87 = mul nuw nsw i32 %86, 17
  %88 = xor i32 %87, %22
  %89 = shl nuw nsw i32 %26, 4
  %90 = xor i32 %89, %29
  %91 = and i32 %90, 240
  %92 = mul nuw nsw i32 %91, 17
  %93 = xor i32 %92, %30
  %94 = shl nuw nsw i32 %34, 4
  %95 = xor i32 %94, %37
  %96 = and i32 %95, 240
  %97 = mul nuw nsw i32 %96, 17
  %98 = xor i32 %97, %38
  %99 = lshr i32 %93, 2
  %100 = xor i32 %99, %83
  %101 = and i32 %100, 13107
  %102 = xor i32 %101, %83
  %103 = shl nuw nsw i32 %101, 2
  %104 = xor i32 %103, %93
  %105 = lshr i32 %98, 2
  %106 = xor i32 %105, %88
  %107 = and i32 %106, 13107
  %108 = xor i32 %107, %88
  %109 = shl nuw nsw i32 %107, 2
  %110 = xor i32 %109, %98
  %111 = lshr i32 %108, 1
  %112 = xor i32 %111, %102
  %113 = and i32 %112, 21845
  %114 = xor i32 %113, %102
  %115 = shl nuw nsw i32 %113, 1
  %116 = xor i32 %115, %108
  %117 = lshr i32 %110, 1
  %118 = xor i32 %117, %104
  %119 = and i32 %118, 21845
  %120 = xor i32 %119, %104
  %121 = shl nuw nsw i32 %119, 1
  %122 = xor i32 %121, %110
  br label %123

123:                                              ; preds = %46, %78
  %124 = phi i32 [ %22, %46 ], [ %116, %78 ]
  %125 = phi i32 [ %30, %46 ], [ %120, %78 ]
  %126 = phi i32 [ %38, %46 ], [ %122, %78 ]
  %127 = phi i32 [ 0, %46 ], [ %114, %78 ]
  %128 = lshr i32 %127, 8
  %129 = trunc i32 %128 to i8
  store i8 %129, ptr %2, align 1, !tbaa !9
  %130 = sext i32 %3 to i64
  %131 = getelementptr inbounds i8, ptr %2, i64 %130
  %132 = lshr i32 %124, 8
  %133 = trunc i32 %132 to i8
  store i8 %133, ptr %131, align 1, !tbaa !9
  %134 = getelementptr inbounds i8, ptr %131, i64 %130
  %135 = lshr i32 %125, 8
  %136 = trunc i32 %135 to i8
  store i8 %136, ptr %134, align 1, !tbaa !9
  %137 = getelementptr inbounds i8, ptr %134, i64 %130
  %138 = lshr i32 %126, 8
  %139 = trunc i32 %138 to i8
  store i8 %139, ptr %137, align 1, !tbaa !9
  %140 = getelementptr inbounds i8, ptr %137, i64 %130
  %141 = trunc i32 %127 to i8
  store i8 %141, ptr %140, align 1, !tbaa !9
  %142 = getelementptr inbounds i8, ptr %140, i64 %130
  %143 = trunc i32 %124 to i8
  store i8 %143, ptr %142, align 1, !tbaa !9
  %144 = getelementptr inbounds i8, ptr %142, i64 %130
  %145 = trunc i32 %125 to i8
  store i8 %145, ptr %144, align 1, !tbaa !9
  %146 = getelementptr inbounds i8, ptr %144, i64 %130
  %147 = trunc i32 %126 to i8
  store i8 %147, ptr %146, align 1, !tbaa !9
  br label %148

148:                                              ; preds = %123, %48
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @bytes_compare(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 {
  %5 = tail call i32 @llvm.umin.i32(i32 %3, i32 %1)
  br label %6

6:                                                ; preds = %11, %4
  %7 = phi i32 [ %5, %4 ], [ %12, %11 ]
  %8 = phi ptr [ %0, %4 ], [ %13, %11 ]
  %9 = phi ptr [ %2, %4 ], [ %15, %11 ]
  %10 = icmp eq i32 %7, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, -1
  %13 = getelementptr inbounds i8, ptr %8, i64 1
  %14 = load i8, ptr %8, align 1, !tbaa !9
  %15 = getelementptr inbounds i8, ptr %9, i64 1
  %16 = load i8, ptr %9, align 1, !tbaa !9
  %17 = icmp eq i8 %14, %16
  br i1 %17, label %6, label %18, !llvm.loop !10

18:                                               ; preds = %11
  %19 = icmp ult i8 %14, %16
  %20 = select i1 %19, i32 -1, i32 1
  br label %21

21:                                               ; preds = %6, %18
  %22 = phi i32 [ %20, %18 ], [ undef, %6 ]
  %23 = icmp eq i32 %1, %3
  %24 = icmp ult i32 %1, %3
  %25 = select i1 %24, i32 -1, i32 1
  %26 = select i1 %23, i32 0, i32 %25
  %27 = select i1 %10, i32 %26, i32 %22
  ret i32 %27
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @string_match(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef readonly %4) local_unnamed_addr #2 {
  %6 = zext i32 %3 to i64
  %7 = getelementptr inbounds i8, ptr %2, i64 %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = icmp eq ptr %4, null
  %11 = select i1 %10, ptr @smp_default, ptr %4
  %12 = getelementptr inbounds %struct.string_match_params_s, ptr %11, i64 0, i32 1
  %13 = getelementptr inbounds %struct.string_match_params_s, ptr %11, i64 0, i32 2
  %14 = getelementptr inbounds %struct.string_match_params_s, ptr %11, i64 0, i32 3
  %15 = ptrtoint ptr %7 to i64
  br label %16

16:                                               ; preds = %92, %5
  %17 = phi ptr [ null, %5 ], [ %86, %92 ]
  %18 = phi ptr [ %2, %5 ], [ %85, %92 ]
  %19 = phi ptr [ %0, %5 ], [ %95, %92 ]
  %20 = phi i32 [ undef, %5 ], [ %88, %92 ]
  %21 = icmp ult ptr %18, %7
  br i1 %21, label %22, label %84

22:                                               ; preds = %16
  %23 = load i32, ptr %11, align 4, !tbaa !12
  br label %24

24:                                               ; preds = %22, %82
  %25 = phi i32 [ %20, %22 ], [ %80, %82 ]
  %26 = phi ptr [ %19, %22 ], [ %79, %82 ]
  %27 = phi ptr [ %18, %22 ], [ %78, %82 ]
  %28 = phi ptr [ %17, %22 ], [ %77, %82 ]
  %29 = phi ptr [ null, %22 ], [ %76, %82 ]
  %30 = load i8, ptr %27, align 1, !tbaa !9
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %23, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, ptr %27, i64 1
  br label %75, !llvm.loop !15

35:                                               ; preds = %24
  %36 = load i32, ptr %12, align 4, !tbaa !16
  %37 = icmp eq i32 %36, %31
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = icmp eq ptr %26, %9
  br i1 %39, label %75, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds i8, ptr %27, i64 1
  %42 = getelementptr inbounds i8, ptr %26, i64 1
  br label %75, !llvm.loop !15

43:                                               ; preds = %35
  %44 = load i32, ptr %13, align 4, !tbaa !17
  %45 = icmp eq i32 %44, %31
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = getelementptr inbounds i8, ptr %27, i64 1
  %48 = icmp eq ptr %47, %7
  br i1 %48, label %75, label %49

49:                                               ; preds = %46
  %50 = load i8, ptr %47, align 1, !tbaa !9
  br label %51

51:                                               ; preds = %49, %43
  %52 = phi ptr [ %47, %49 ], [ %27, %43 ]
  %53 = phi i8 [ %50, %49 ], [ %30, %43 ]
  %54 = icmp eq ptr %26, %9
  br i1 %54, label %75, label %55

55:                                               ; preds = %51
  %56 = load i8, ptr %26, align 1, !tbaa !9
  %57 = icmp eq i8 %56, %53
  br i1 %57, label %68, label %58

58:                                               ; preds = %55
  %59 = load i32, ptr %14, align 4, !tbaa !18
  %60 = icmp ne i32 %59, 0
  %61 = xor i8 %56, %53
  %62 = icmp eq i8 %61, 32
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = and i8 %53, -33
  %66 = add i8 %65, -65
  %67 = icmp ult i8 %66, 26
  br i1 %67, label %68, label %71

68:                                               ; preds = %64, %55
  %69 = getelementptr inbounds i8, ptr %52, i64 1
  %70 = getelementptr inbounds i8, ptr %26, i64 1
  br label %75

71:                                               ; preds = %64, %58
  %72 = icmp eq ptr %29, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %71
  %74 = getelementptr inbounds i8, ptr %28, i64 1
  br label %75

75:                                               ; preds = %68, %73, %71, %51, %46, %38, %40, %33
  %76 = phi ptr [ %34, %33 ], [ %29, %40 ], [ %29, %38 ], [ %29, %46 ], [ %29, %51 ], [ null, %71 ], [ %29, %73 ], [ %29, %68 ]
  %77 = phi ptr [ %26, %33 ], [ %28, %40 ], [ %28, %38 ], [ %28, %46 ], [ %28, %51 ], [ %28, %71 ], [ %74, %73 ], [ %28, %68 ]
  %78 = phi ptr [ %34, %33 ], [ %41, %40 ], [ %27, %38 ], [ %47, %46 ], [ %52, %51 ], [ %52, %71 ], [ %29, %73 ], [ %69, %68 ]
  %79 = phi ptr [ %26, %33 ], [ %42, %40 ], [ %26, %38 ], [ %26, %46 ], [ %26, %51 ], [ %26, %71 ], [ %74, %73 ], [ %70, %68 ]
  %80 = phi i32 [ %25, %33 ], [ %25, %40 ], [ 0, %38 ], [ 1, %46 ], [ 0, %51 ], [ 0, %71 ], [ %25, %73 ], [ %25, %68 ]
  %81 = phi i32 [ 3, %33 ], [ 3, %40 ], [ 1, %38 ], [ 1, %46 ], [ 1, %51 ], [ 1, %71 ], [ 0, %73 ], [ 0, %68 ]
  switch i32 %81, label %96 [
    i32 0, label %82
    i32 3, label %82
  ]

82:                                               ; preds = %75, %75
  %83 = icmp ult ptr %78, %7
  br i1 %83, label %24, label %84, !llvm.loop !15

84:                                               ; preds = %82, %16
  %85 = phi ptr [ null, %16 ], [ %76, %82 ]
  %86 = phi ptr [ %17, %16 ], [ %77, %82 ]
  %87 = phi ptr [ %19, %16 ], [ %79, %82 ]
  %88 = phi i32 [ %20, %16 ], [ %80, %82 ]
  %89 = icmp ult ptr %87, %9
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = icmp eq ptr %85, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %90
  %93 = ptrtoint ptr %85 to i64
  %94 = sub i64 %93, %15
  %95 = getelementptr inbounds i8, ptr %9, i64 %94
  br label %16

96:                                               ; preds = %84, %90, %75
  %97 = phi i32 [ %80, %75 ], [ 0, %90 ], [ 1, %84 ]
  ret i32 %97
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @uid_equal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = load i64, ptr %0, align 8, !tbaa !19
  %4 = load i64, ptr %1, align 8, !tbaa !19
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = icmp sgt i64 %3, -1
  br i1 %7, label %18, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.gs_uid_s, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.gs_uid_s, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = mul i64 %3, 34359738360
  %14 = and i64 %13, 34359738360
  %15 = tail call i32 @bcmp(ptr %10, ptr %12, i64 %14)
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %6, %2, %8
  %19 = phi i32 [ %17, %8 ], [ 0, %2 ], [ 1, %6 ]
  ret i32 %19
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind willreturn memory(argmem: read) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !14, i64 0}
!13 = !{!"string_match_params_s", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12}
!14 = !{!"int", !7, i64 0}
!15 = distinct !{!15, !11}
!16 = !{!13, !14, i64 4}
!17 = !{!13, !14, i64 8}
!18 = !{!13, !14, i64 12}
!19 = !{!20, !6, i64 0}
!20 = !{!"gs_uid_s", !6, i64 0, !21, i64 8}
!21 = !{!"any pointer", !7, i64 0}
!22 = !{!20, !21, i64 8}
