; ModuleID = 'blender/source/blender/imbuf/intern/thumbs_blend.c'
source_filename = "blender/source/blender/imbuf/intern/thumbs_blend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"BLENDER\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @IMB_loadblend_thumb(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [12 x i8], align 1
  %3 = alloca [6 x i32], align 16
  %4 = alloca [2 x i32], align 4
  %5 = tail call ptr @BLI_gzopen(ptr noundef %0, ptr noundef nonnull @.str) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %80, label %7

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  %8 = call i32 @gzread(ptr noundef nonnull %5, ptr noundef nonnull %2, i32 noundef 12) #7
  %9 = icmp eq i32 %8, 12
  br i1 %9, label %10, label %77

10:                                               ; preds = %7
  %11 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %2, ptr noundef nonnull dereferenceable(7) @.str.1, i64 7)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %77

13:                                               ; preds = %10
  %14 = getelementptr inbounds [12 x i8], ptr %2, i64 0, i64 7
  %15 = load i8, ptr %14, align 1, !tbaa !34
  switch i8 %15, label %77 [
    i8 45, label %17
    i8 95, label %16
  ]

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ 20, %16 ], [ 24, %13 ]
  %19 = getelementptr inbounds [12 x i8], ptr %2, i64 0, i64 8
  %20 = load i8, ptr %19, align 1, !tbaa !34
  %21 = icmp eq i8 %20, 86
  switch i8 %20, label %77 [
    i8 118, label %22
    i8 86, label %22
  ]

22:                                               ; preds = %17, %17
  %23 = call i32 @gzread(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef %18) #7
  %24 = icmp eq i32 %23, %18
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = getelementptr inbounds [6 x i32], ptr %3, i64 0, i64 1
  %27 = getelementptr inbounds [6 x i32], ptr %3, i64 0, i64 1
  br label %28

28:                                               ; preds = %25, %35
  br i1 %21, label %29, label %32

29:                                               ; preds = %28
  %30 = load i32, ptr %26, align 4, !tbaa !37
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  store i32 %31, ptr %26, align 4, !tbaa !37
  br label %32

32:                                               ; preds = %29, %28
  %33 = load i32, ptr %3, align 16, !tbaa !37
  %34 = icmp eq i32 %33, 1145980242
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, ptr %27, align 4, !tbaa !37
  %37 = sext i32 %36 to i64
  %38 = call i64 @gzseek(ptr noundef nonnull %5, i64 noundef %37, i32 noundef 1) #7
  %39 = call i32 @gzread(ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef %18) #7
  %40 = icmp eq i32 %39, %18
  br i1 %40, label %28, label %41, !llvm.loop !39

41:                                               ; preds = %35, %32, %22
  %42 = load i32, ptr %3, align 16, !tbaa !37
  %43 = icmp eq i32 %42, 1414743380
  br i1 %43, label %44, label %77

44:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %45 = call i32 @gzread(ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 8) #7
  %46 = icmp eq i32 %45, 8
  br i1 %46, label %47, label %75

47:                                               ; preds = %44
  br i1 %21, label %48, label %54

48:                                               ; preds = %47
  %49 = load i32, ptr %4, align 4, !tbaa !37
  %50 = call i32 @llvm.bswap.i32(i32 %49)
  store i32 %50, ptr %4, align 4, !tbaa !37
  %51 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %52 = load i32, ptr %51, align 4, !tbaa !37
  %53 = call i32 @llvm.bswap.i32(i32 %52)
  store i32 %53, ptr %51, align 4, !tbaa !37
  br label %54

54:                                               ; preds = %48, %47
  %55 = getelementptr inbounds [6 x i32], ptr %3, i64 0, i64 1
  %56 = load i32, ptr %55, align 4, !tbaa !37
  %57 = add i32 %56, -8
  store i32 %57, ptr %55, align 4, !tbaa !37
  %58 = sext i32 %57 to i64
  %59 = load i32, ptr %4, align 4, !tbaa !37
  %60 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %61 = load i32, ptr %60, align 4, !tbaa !37
  %62 = mul nsw i32 %61, %59
  %63 = sext i32 %62 to i64
  %64 = shl nsw i64 %63, 2
  %65 = icmp eq i64 %64, %58
  br i1 %65, label %66, label %75

66:                                               ; preds = %54
  %67 = call ptr @IMB_allocImBuf(i32 noundef %59, i32 noundef %61, i8 noundef zeroext 32, i32 noundef 257) #7
  %68 = getelementptr inbounds %struct.ImBuf, ptr %67, i64 0, i32 8
  %69 = load ptr, ptr %68, align 8, !tbaa !42
  %70 = load i32, ptr %55, align 4, !tbaa !37
  %71 = call i32 @gzread(ptr noundef nonnull %5, ptr noundef %69, i32 noundef %70) #7
  %72 = load i32, ptr %55, align 4, !tbaa !37
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  call void @IMB_freeImBuf(ptr noundef %67) #7
  br label %75

75:                                               ; preds = %74, %66, %54, %44
  %76 = phi ptr [ null, %44 ], [ null, %54 ], [ null, %74 ], [ %67, %66 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  br label %77

77:                                               ; preds = %7, %10, %13, %17, %41, %75
  %78 = phi ptr [ %76, %75 ], [ null, %7 ], [ null, %10 ], [ null, %13 ], [ null, %41 ], [ null, %17 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #7
  %79 = call i32 @gzclose(ptr noundef nonnull %5) #7
  br label %80

80:                                               ; preds = %1, %77
  %81 = phi ptr [ %78, %77 ], [ null, %1 ]
  ret ptr %81
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_gzopen(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gzclose(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_overlayblend_thumb(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #3 {
  %5 = add nsw i32 %1, -2
  %6 = add nsw i32 %2, -2
  %7 = fcmp olt float %3, 1.000000e+00
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = sitofp i32 %1 to float
  %10 = fneg float %9
  %11 = tail call float @llvm.fmuladd.f32(float %10, float %3, float %9)
  %12 = fmul float %11, 5.000000e-01
  %13 = fptosi float %12 to i32
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = add nuw nsw i32 %13, 2
  %17 = sdiv i32 %1, 2
  %18 = tail call i32 @llvm.smin.i32(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %15, %8
  %20 = phi i32 [ 2, %8 ], [ %18, %15 ]
  %21 = sub nsw i32 %1, %20
  br label %38

22:                                               ; preds = %4
  %23 = fcmp ogt float %3, 1.000000e+00
  br i1 %23, label %24, label %38

24:                                               ; preds = %22
  %25 = sitofp i32 %2 to float
  %26 = fdiv float %25, %3
  %27 = fsub float %25, %26
  %28 = fmul float %27, 5.000000e-01
  %29 = fptosi float %28 to i32
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = add nuw nsw i32 %29, 2
  %33 = sdiv i32 %2, 2
  %34 = tail call i32 @llvm.smin.i32(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %24
  %36 = phi i32 [ 2, %24 ], [ %34, %31 ]
  %37 = sub nsw i32 %2, %36
  br label %38

38:                                               ; preds = %22, %35, %19
  %39 = phi i32 [ %20, %19 ], [ 2, %35 ], [ 2, %22 ]
  %40 = phi i32 [ 2, %19 ], [ %36, %35 ], [ 2, %22 ]
  %41 = phi i32 [ %21, %19 ], [ %5, %35 ], [ %5, %22 ]
  %42 = phi i32 [ %6, %19 ], [ %37, %35 ], [ %6, %22 ]
  %43 = sub nsw i32 %41, %39
  %44 = add nsw i32 %43, -2
  %45 = icmp sgt i32 %2, 0
  br i1 %45, label %46, label %133

46:                                               ; preds = %38
  %47 = icmp sgt i32 %1, 0
  %48 = shl nsw i32 %44, 2
  %49 = sext i32 %48 to i64
  br label %50

50:                                               ; preds = %46, %129
  %51 = phi ptr [ %0, %46 ], [ %130, %129 ]
  %52 = phi i32 [ 0, %46 ], [ %131, %129 ]
  br i1 %47, label %53, label %129

53:                                               ; preds = %50
  %54 = icmp sgt i32 %52, %40
  %55 = icmp slt i32 %52, %42
  %56 = icmp slt i32 %52, %40
  %57 = icmp sle i32 %52, %42
  %58 = zext i1 %57 to i32
  %59 = icmp ne i32 %52, %40
  %60 = icmp ne i32 %52, %42
  %61 = select i1 %59, i1 %60, i1 false
  %62 = and i32 %52, 1
  %63 = icmp eq i32 %62, 0
  %64 = xor i1 %57, true
  br label %65

65:                                               ; preds = %53, %123
  %66 = phi ptr [ %51, %53 ], [ %127, %123 ]
  %67 = phi i32 [ 0, %53 ], [ %126, %123 ]
  %68 = icmp sgt i32 %67, %39
  %69 = icmp slt i32 %67, %41
  %70 = select i1 %68, i1 %69, i1 false
  %71 = and i1 %54, %70
  %72 = select i1 %71, i1 %55, i1 false
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = add nsw i32 %67, %44
  %75 = getelementptr inbounds i8, ptr %66, i64 %49
  br label %123

76:                                               ; preds = %65
  %77 = icmp ne i32 %67, %39
  %78 = icmp ne i32 %67, %41
  %79 = select i1 %77, i1 %78, i1 false
  %80 = or i1 %56, %79
  %81 = select i1 %80, i1 true, i1 %64
  %82 = select i1 %80, i32 0, i32 %58
  br i1 %81, label %83, label %89

83:                                               ; preds = %76
  %84 = icmp slt i32 %67, %39
  %85 = or i1 %61, %84
  br i1 %85, label %103, label %86

86:                                               ; preds = %83
  %87 = icmp sle i32 %67, %41
  %88 = zext i1 %87 to i32
  br i1 %87, label %89, label %103

89:                                               ; preds = %76, %86
  %90 = phi i32 [ %82, %86 ], [ %58, %76 ]
  %91 = phi i32 [ %88, %86 ], [ 0, %76 ]
  %92 = icmp eq i32 %90, 0
  %93 = or i1 %63, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = icmp eq i32 %91, 0
  %96 = and i32 %67, 1
  %97 = icmp eq i32 %96, 0
  %98 = or i1 %97, %95
  br i1 %98, label %123, label %99

99:                                               ; preds = %94, %89
  %100 = getelementptr inbounds i8, ptr %66, i64 2
  store i8 0, ptr %100, align 1, !tbaa !34
  %101 = getelementptr inbounds i8, ptr %66, i64 1
  store i8 0, ptr %101, align 1, !tbaa !34
  store i8 0, ptr %66, align 1, !tbaa !34
  %102 = getelementptr inbounds i8, ptr %66, i64 3
  store i8 -1, ptr %102, align 1, !tbaa !34
  br label %123

103:                                              ; preds = %83, %86
  %104 = load i8, ptr %66, align 1, !tbaa !34
  %105 = uitofp i8 %104 to float
  %106 = fmul float %105, 5.000000e-01
  %107 = fptoui float %106 to i8
  store i8 %107, ptr %66, align 1, !tbaa !34
  %108 = getelementptr inbounds i8, ptr %66, i64 1
  %109 = load i8, ptr %108, align 1, !tbaa !34
  %110 = uitofp i8 %109 to float
  %111 = fmul float %110, 5.000000e-01
  %112 = fptoui float %111 to i8
  store i8 %112, ptr %108, align 1, !tbaa !34
  %113 = getelementptr inbounds i8, ptr %66, i64 2
  %114 = load i8, ptr %113, align 1, !tbaa !34
  %115 = uitofp i8 %114 to float
  %116 = fmul float %115, 5.000000e-01
  %117 = fptoui float %116 to i8
  store i8 %117, ptr %113, align 1, !tbaa !34
  %118 = getelementptr inbounds i8, ptr %66, i64 3
  %119 = load i8, ptr %118, align 1, !tbaa !34
  %120 = uitofp i8 %119 to float
  %121 = tail call float @llvm.fmuladd.f32(float %120, float 5.000000e-01, float 9.600000e+01)
  %122 = fptoui float %121 to i8
  store i8 %122, ptr %118, align 1, !tbaa !34
  br label %123

123:                                              ; preds = %103, %99, %94, %73
  %124 = phi i32 [ %74, %73 ], [ %67, %99 ], [ %67, %94 ], [ %67, %103 ]
  %125 = phi ptr [ %75, %73 ], [ %66, %99 ], [ %66, %94 ], [ %66, %103 ]
  %126 = add nsw i32 %124, 1
  %127 = getelementptr inbounds i8, ptr %125, i64 4
  %128 = icmp slt i32 %126, %1
  br i1 %128, label %65, label %129, !llvm.loop !48

129:                                              ; preds = %123, %50
  %130 = phi ptr [ %51, %50 ], [ %127, %123 ]
  %131 = add nuw nsw i32 %52, 1
  %132 = icmp eq i32 %131, %2
  br i1 %132, label %133, label %50, !llvm.loop !49

133:                                              ; preds = %129, %38
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare i32 @gzread(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @gzseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind willreturn memory(argmem: read) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !{!38, !38, i64 0}
!38 = !{!"int", !35, i64 0}
!39 = distinct !{!39, !40, !41}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{!43, !44, i64 40}
!43 = !{!"ImBuf", !44, i64 0, !44, i64 8, !38, i64 16, !38, i64 20, !35, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !44, i64 40, !44, i64 48, !35, i64 56, !38, i64 72, !38, i64 76, !38, i64 80, !38, i64 84, !44, i64 88, !44, i64 96, !44, i64 104, !45, i64 112, !35, i64 120, !38, i64 280, !38, i64 284, !38, i64 288, !38, i64 292, !44, i64 296, !44, i64 304, !38, i64 312, !35, i64 316, !35, i64 1340, !44, i64 2368, !38, i64 2376, !44, i64 2384, !38, i64 2392, !38, i64 2396, !44, i64 2400, !44, i64 2408, !44, i64 2416, !44, i64 2424, !38, i64 2432, !46, i64 2436, !47, i64 2456}
!44 = !{!"any pointer", !35, i64 0}
!45 = !{!"float", !35, i64 0}
!46 = !{!"rcti", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12}
!47 = !{!"DDSData", !38, i64 0, !38, i64 4, !44, i64 8, !38, i64 16}
!48 = distinct !{!48, !40, !41}
!49 = distinct !{!49, !40, !41}
