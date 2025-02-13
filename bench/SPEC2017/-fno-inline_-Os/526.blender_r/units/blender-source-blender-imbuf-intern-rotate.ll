; ModuleID = 'blender/source/blender/imbuf/intern/rotate.c'
source_filename = "blender/source/blender/imbuf/intern/rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"linebuf\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"linebuff\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IMB_flipy(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %66, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !44
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %13 = sext i32 %9 to i64
  %14 = shl nsw i64 %13, 2
  %15 = tail call ptr %12(i64 noundef %14, ptr noundef nonnull @.str) #4
  %16 = ashr i32 %11, 1
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %7
  %19 = add nsw i32 %11, -1
  %20 = mul nsw i32 %19, %9
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %5, i64 %21
  %23 = sub nsw i64 0, %13
  br label %24

24:                                               ; preds = %18, %24
  %25 = phi ptr [ %22, %18 ], [ %28, %24 ]
  %26 = phi ptr [ %5, %18 ], [ %29, %24 ]
  %27 = phi i32 [ %16, %18 ], [ %30, %24 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %15, ptr align 4 %26, i64 %14, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %26, ptr align 4 %25, i64 %14, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %25, ptr align 4 %15, i64 %14, i1 false)
  %28 = getelementptr inbounds i32, ptr %25, i64 %23
  %29 = getelementptr inbounds i32, ptr %26, i64 %13
  %30 = add nsw i32 %27, -1
  %31 = icmp ugt i32 %27, 1
  br i1 %31, label %24, label %32, !llvm.loop !46

32:                                               ; preds = %24, %7
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %33(ptr noundef %15) #4
  br label %34

34:                                               ; preds = %32, %3
  %35 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !48
  %37 = icmp eq ptr %36, null
  br i1 %37, label %66, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !43
  %41 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !44
  %43 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %44 = shl i32 %40, 2
  %45 = sext i32 %44 to i64
  %46 = shl nsw i64 %45, 2
  %47 = tail call ptr %43(i64 noundef %46, ptr noundef nonnull @.str.1) #4
  %48 = ashr i32 %42, 1
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %38
  %51 = add nsw i32 %42, -1
  %52 = mul i32 %44, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, ptr %36, i64 %53
  %55 = sub nsw i64 0, %45
  br label %56

56:                                               ; preds = %50, %56
  %57 = phi ptr [ %54, %50 ], [ %60, %56 ]
  %58 = phi ptr [ %36, %50 ], [ %61, %56 ]
  %59 = phi i32 [ %48, %50 ], [ %62, %56 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %47, ptr align 4 %58, i64 %46, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %58, ptr align 4 %57, i64 %46, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %57, ptr align 4 %47, i64 %46, i1 false)
  %60 = getelementptr inbounds float, ptr %57, i64 %55
  %61 = getelementptr inbounds float, ptr %58, i64 %45
  %62 = add nsw i32 %59, -1
  %63 = icmp ugt i32 %59, 1
  br i1 %63, label %56, label %64, !llvm.loop !49

64:                                               ; preds = %56, %38
  %65 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %65(ptr noundef %47) #4
  br label %66

66:                                               ; preds = %34, %64, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_flipx(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %73, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !44
  %9 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp ne ptr %10, null
  %12 = icmp sgt i32 %8, 0
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %37

14:                                               ; preds = %4
  %15 = icmp sgt i32 %6, 0
  %16 = sext i32 %6 to i64
  %17 = zext nneg i32 %8 to i64
  br label %20

18:                                               ; preds = %27, %20
  %19 = icmp sgt i64 %21, 1
  br i1 %19, label %20, label %37, !llvm.loop !50

20:                                               ; preds = %14, %18
  %21 = phi i64 [ %17, %14 ], [ %22, %18 ]
  %22 = add nsw i64 %21, -1
  br i1 %15, label %23, label %18

23:                                               ; preds = %20
  %24 = mul nsw i64 %22, %16
  %25 = getelementptr i32, ptr %10, i64 %24
  %26 = getelementptr i32, ptr %10, i64 %24
  br label %27

27:                                               ; preds = %23, %27
  %28 = phi i64 [ 0, %23 ], [ %35, %27 ]
  %29 = phi i64 [ %16, %23 ], [ %30, %27 ]
  %30 = add nsw i64 %29, -1
  %31 = getelementptr i32, ptr %25, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !51
  %33 = getelementptr i32, ptr %26, i64 %28
  %34 = load i32, ptr %33, align 4, !tbaa !51
  store i32 %34, ptr %31, align 4, !tbaa !51
  store i32 %32, ptr %33, align 4, !tbaa !51
  %35 = add nuw nsw i64 %28, 1
  %36 = icmp sgt i64 %30, %35
  br i1 %36, label %27, label %18, !llvm.loop !52

37:                                               ; preds = %18, %4
  %38 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !48
  %40 = icmp ne ptr %39, null
  %41 = icmp sgt i32 %8, 0
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %73

43:                                               ; preds = %37
  %44 = icmp sgt i32 %6, 0
  %45 = sext i32 %6 to i64
  %46 = zext nneg i32 %8 to i64
  br label %49

47:                                               ; preds = %54, %49
  %48 = icmp sgt i64 %50, 1
  br i1 %48, label %49, label %73, !llvm.loop !53

49:                                               ; preds = %43, %47
  %50 = phi i64 [ %46, %43 ], [ %51, %47 ]
  %51 = add nsw i64 %50, -1
  br i1 %44, label %52, label %47

52:                                               ; preds = %49
  %53 = mul nsw i64 %51, %45
  br label %54

54:                                               ; preds = %52, %54
  %55 = phi i64 [ 0, %52 ], [ %71, %54 ]
  %56 = phi i64 [ %45, %52 ], [ %57, %54 ]
  %57 = add nsw i64 %56, -1
  %58 = load ptr, ptr %38, align 8, !tbaa !48
  %59 = add nsw i64 %57, %53
  %60 = trunc i64 %59 to i32
  %61 = shl nsw i32 %60, 2
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, ptr %58, i64 %62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %63, i64 16, i1 false)
  %64 = add nsw i64 %55, %53
  %65 = trunc i64 %64 to i32
  %66 = shl nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds float, ptr %58, i64 %67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %63, ptr noundef nonnull align 4 dereferenceable(16) %68, i64 16, i1 false)
  %69 = load ptr, ptr %38, align 8, !tbaa !48
  %70 = getelementptr inbounds float, ptr %69, i64 %67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %70, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false)
  %71 = add nuw nsw i64 %55, 1
  %72 = icmp sgt i64 %57, %71
  br i1 %72, label %54, label %47, !llvm.loop !54

73:                                               ; preds = %47, %37, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }

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
!34 = !{!35, !36, i64 40}
!35 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !41, i64 2436, !42, i64 2456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!42 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!43 = !{!35, !39, i64 16}
!44 = !{!35, !39, i64 20}
!45 = !{!36, !36, i64 0}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!35, !36, i64 48}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !47}
!51 = !{!39, !39, i64 0}
!52 = distinct !{!52, !47}
!53 = distinct !{!53, !47}
!54 = distinct !{!54, !47}
