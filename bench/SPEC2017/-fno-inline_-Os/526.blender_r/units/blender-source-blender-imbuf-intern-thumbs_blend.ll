; ModuleID = 'blender/source/blender/imbuf/intern/thumbs_blend.c'
source_filename = "blender/source/blender/imbuf/intern/thumbs_blend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"BLENDER\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IMB_loadblend_thumb(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_gzopen(ptr noundef %0, ptr noundef nonnull @.str) #8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @loadblend_thumb(ptr noundef nonnull %2) #9
  %6 = tail call i32 @gzclose(ptr noundef nonnull %2) #8
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_gzopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @loadblend_thumb(ptr noundef %0) unnamed_addr #0 !PGOFuncName !34 {
  %2 = alloca [12 x i8], align 1
  %3 = alloca [6 x i32], align 16
  %4 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  %5 = call i32 @gzread(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 12) #8
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %69

7:                                                ; preds = %1
  %8 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %2, ptr noundef nonnull dereferenceable(7) @.str.1, i64 7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %69

10:                                               ; preds = %7
  %11 = getelementptr inbounds [12 x i8], ptr %2, i64 0, i64 7
  %12 = load i8, ptr %11, align 1, !tbaa !35
  switch i8 %12, label %69 [
    i8 45, label %14
    i8 95, label %13
  ]

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %10, %13
  %15 = phi i32 [ 20, %13 ], [ 24, %10 ]
  %16 = getelementptr inbounds [12 x i8], ptr %2, i64 0, i64 8
  %17 = load i8, ptr %16, align 1, !tbaa !35
  %18 = icmp eq i8 %17, 86
  switch i8 %17, label %69 [
    i8 118, label %19
    i8 86, label %19
  ]

19:                                               ; preds = %14, %14
  %20 = call i32 @gzread(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %15) #8
  %21 = icmp eq i32 %20, %15
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = getelementptr inbounds [6 x i32], ptr %3, i64 0, i64 1
  br label %24

24:                                               ; preds = %22, %29
  br i1 %18, label %25, label %26

25:                                               ; preds = %24
  call fastcc void @BLI_endian_switch_int32(ptr noundef nonnull %23) #9
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i32, ptr %3, align 16, !tbaa !38
  %28 = icmp eq i32 %27, 1145980242
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i32, ptr %23, align 4, !tbaa !38
  %31 = sext i32 %30 to i64
  %32 = call i64 @gzseek(ptr noundef %0, i64 noundef %31, i32 noundef 1) #8
  %33 = call i32 @gzread(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %15) #8
  %34 = icmp eq i32 %33, %15
  br i1 %34, label %24, label %35, !llvm.loop !40

35:                                               ; preds = %29, %19
  %36 = load i32, ptr %3, align 16, !tbaa !38
  br label %37

37:                                               ; preds = %26, %35
  %38 = phi i32 [ %36, %35 ], [ %27, %26 ]
  %39 = icmp eq i32 %38, 1414743380
  br i1 %39, label %40, label %69

40:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %41 = call i32 @gzread(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 8) #8
  %42 = icmp eq i32 %41, 8
  br i1 %42, label %43, label %67

43:                                               ; preds = %40
  br i1 %18, label %44, label %46

44:                                               ; preds = %43
  call fastcc void @BLI_endian_switch_int32(ptr noundef nonnull %4) #9
  %45 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  call fastcc void @BLI_endian_switch_int32(ptr noundef nonnull %45) #9
  br label %46

46:                                               ; preds = %44, %43
  %47 = getelementptr inbounds [6 x i32], ptr %3, i64 0, i64 1
  %48 = load i32, ptr %47, align 4, !tbaa !38
  %49 = add i32 %48, -8
  store i32 %49, ptr %47, align 4, !tbaa !38
  %50 = sext i32 %49 to i64
  %51 = load i32, ptr %4, align 4, !tbaa !38
  %52 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  %53 = load i32, ptr %52, align 4, !tbaa !38
  %54 = mul nsw i32 %53, %51
  %55 = sext i32 %54 to i64
  %56 = shl nsw i64 %55, 2
  %57 = icmp eq i64 %56, %50
  br i1 %57, label %58, label %67

58:                                               ; preds = %46
  %59 = call ptr @IMB_allocImBuf(i32 noundef %51, i32 noundef %53, i8 noundef zeroext 32, i32 noundef 257) #8
  %60 = getelementptr inbounds %struct.ImBuf, ptr %59, i64 0, i32 8
  %61 = load ptr, ptr %60, align 8, !tbaa !42
  %62 = load i32, ptr %47, align 4, !tbaa !38
  %63 = call i32 @gzread(ptr noundef %0, ptr noundef %61, i32 noundef %62) #8
  %64 = load i32, ptr %47, align 4, !tbaa !38
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  call void @IMB_freeImBuf(ptr noundef nonnull %59) #8
  br label %67

67:                                               ; preds = %58, %66, %46, %40
  %68 = phi ptr [ null, %40 ], [ null, %46 ], [ null, %66 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %69

69:                                               ; preds = %14, %37, %10, %7, %1, %67
  %70 = phi ptr [ %68, %67 ], [ null, %1 ], [ null, %7 ], [ null, %10 ], [ null, %37 ], [ null, %14 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  ret ptr %70
}

; Function Attrs: optsize
declare i32 @gzclose(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
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
  br i1 %45, label %46, label %117

46:                                               ; preds = %38
  %47 = icmp sgt i32 %1, 0
  %48 = shl nsw i32 %44, 2
  %49 = sext i32 %48 to i64
  br label %50

50:                                               ; preds = %46, %113
  %51 = phi ptr [ %0, %46 ], [ %114, %113 ]
  %52 = phi i32 [ 0, %46 ], [ %115, %113 ]
  br i1 %47, label %53, label %113

53:                                               ; preds = %50
  %54 = icmp sgt i32 %52, %40
  %55 = icmp slt i32 %52, %42
  %56 = icmp slt i32 %52, %40
  %57 = icmp sgt i32 %52, %42
  %58 = and i32 %52, 1
  %59 = icmp eq i32 %58, 0
  %60 = icmp ne i32 %52, %40
  %61 = icmp ne i32 %52, %42
  %62 = select i1 %60, i1 %61, i1 false
  br label %63

63:                                               ; preds = %53, %107
  %64 = phi ptr [ %51, %53 ], [ %111, %107 ]
  %65 = phi i32 [ 0, %53 ], [ %110, %107 ]
  %66 = icmp sgt i32 %65, %39
  %67 = icmp slt i32 %65, %41
  %68 = select i1 %66, i1 %67, i1 false
  %69 = and i1 %54, %68
  %70 = select i1 %69, i1 %55, i1 false
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = add nsw i32 %65, %44
  %73 = getelementptr inbounds i8, ptr %64, i64 %49
  br label %107

74:                                               ; preds = %63
  %75 = icmp ne i32 %65, %39
  %76 = icmp ne i32 %65, %41
  %77 = select i1 %75, i1 %76, i1 false
  %78 = or i1 %56, %77
  %79 = select i1 %78, i1 true, i1 %57
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = icmp slt i32 %65, %39
  %82 = or i1 %62, %81
  %83 = icmp sgt i32 %65, %41
  %84 = select i1 %82, i1 true, i1 %83
  br i1 %84, label %90, label %86

85:                                               ; preds = %74
  br i1 %59, label %107, label %89

86:                                               ; preds = %80
  %87 = and i32 %65, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %107, label %89

89:                                               ; preds = %86, %85
  store <4 x i8> <i8 0, i8 0, i8 0, i8 -1>, ptr %64, align 1, !tbaa !35
  br label %107

90:                                               ; preds = %80
  %91 = load i8, ptr %64, align 1, !tbaa !35
  %92 = uitofp i8 %91 to float
  %93 = fmul float %92, 5.000000e-01
  %94 = getelementptr inbounds i8, ptr %64, i64 1
  %95 = load <2 x i8>, ptr %94, align 1, !tbaa !35
  %96 = uitofp <2 x i8> %95 to <2 x float>
  %97 = fmul <2 x float> %96, <float 5.000000e-01, float 5.000000e-01>
  %98 = getelementptr inbounds i8, ptr %64, i64 3
  %99 = load i8, ptr %98, align 1, !tbaa !35
  %100 = uitofp i8 %99 to float
  %101 = tail call float @llvm.fmuladd.f32(float %100, float 5.000000e-01, float 9.600000e+01)
  %102 = insertelement <4 x float> poison, float %93, i64 0
  %103 = shufflevector <2 x float> %97, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %104 = shufflevector <4 x float> %102, <4 x float> %103, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %105 = insertelement <4 x float> %104, float %101, i64 3
  %106 = fptoui <4 x float> %105 to <4 x i8>
  store <4 x i8> %106, ptr %64, align 1, !tbaa !35
  br label %107

107:                                              ; preds = %85, %90, %89, %86, %71
  %108 = phi i32 [ %72, %71 ], [ %65, %89 ], [ %65, %86 ], [ %65, %90 ], [ %65, %85 ]
  %109 = phi ptr [ %73, %71 ], [ %64, %89 ], [ %64, %86 ], [ %64, %90 ], [ %64, %85 ]
  %110 = add nsw i32 %108, 1
  %111 = getelementptr inbounds i8, ptr %109, i64 4
  %112 = icmp slt i32 %110, %1
  br i1 %112, label %63, label %113, !llvm.loop !48

113:                                              ; preds = %107, %50
  %114 = phi ptr [ %51, %50 ], [ %111, %107 ]
  %115 = add nuw nsw i32 %52, 1
  %116 = icmp eq i32 %115, %2
  br i1 %116, label %117, label %50, !llvm.loop !49

117:                                              ; preds = %113, %38
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: optsize
declare i32 @gzread(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @BLI_endian_switch_int32(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !50 {
  tail call fastcc void @BLI_endian_switch_uint32(ptr noundef %0) #9
  ret void
}

; Function Attrs: optsize
declare i64 @gzseek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @IMB_allocImBuf(i32 noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @BLI_endian_switch_uint32(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !51 {
  %2 = load i32, ptr %0, align 4, !tbaa !38
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %3, ptr %0, align 4, !tbaa !38
  ret void
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind willreturn memory(argmem: read) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }

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
!34 = !{!"thumbs_blend.c:loadblend_thumb"}
!35 = !{!36, !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!43, !44, i64 40}
!43 = !{!"ImBuf", !44, i64 0, !44, i64 8, !39, i64 16, !39, i64 20, !36, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !44, i64 40, !44, i64 48, !36, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !44, i64 88, !44, i64 96, !44, i64 104, !45, i64 112, !36, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !44, i64 296, !44, i64 304, !39, i64 312, !36, i64 316, !36, i64 1340, !44, i64 2368, !39, i64 2376, !44, i64 2384, !39, i64 2392, !39, i64 2396, !44, i64 2400, !44, i64 2408, !44, i64 2416, !44, i64 2424, !39, i64 2432, !46, i64 2436, !47, i64 2456}
!44 = !{!"any pointer", !36, i64 0}
!45 = !{!"float", !36, i64 0}
!46 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!47 = !{!"DDSData", !39, i64 0, !39, i64 4, !44, i64 8, !39, i64 16}
!48 = distinct !{!48, !41}
!49 = distinct !{!49, !41}
!50 = !{!"thumbs_blend.c:BLI_endian_switch_int32"}
!51 = !{!"thumbs_blend.c:BLI_endian_switch_uint32"}
