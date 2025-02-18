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

; Function Attrs: nounwind uwtable
define dso_local void @IMB_flipy(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %67, label %3

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
  %31 = icmp sgt i32 %27, 1
  br i1 %31, label %24, label %32, !llvm.loop !46

32:                                               ; preds = %24, %7
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %33(ptr noundef %15) #4
  br label %34

34:                                               ; preds = %32, %3
  %35 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !49
  %37 = icmp eq ptr %36, null
  br i1 %37, label %67, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !43
  %41 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !44
  %43 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %44 = shl nsw i32 %40, 2
  %45 = sext i32 %44 to i64
  %46 = shl nsw i64 %45, 2
  %47 = tail call ptr %43(i64 noundef %46, ptr noundef nonnull @.str.1) #4
  %48 = ashr i32 %42, 1
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %38
  %51 = shl i32 %40, 2
  %52 = add nsw i32 %42, -1
  %53 = mul i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, ptr %36, i64 %54
  %56 = sub nsw i64 0, %45
  br label %57

57:                                               ; preds = %50, %57
  %58 = phi ptr [ %55, %50 ], [ %61, %57 ]
  %59 = phi ptr [ %36, %50 ], [ %62, %57 ]
  %60 = phi i32 [ %48, %50 ], [ %63, %57 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %47, ptr align 4 %59, i64 %46, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %59, ptr align 4 %58, i64 %46, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %58, ptr align 4 %47, i64 %46, i1 false)
  %61 = getelementptr inbounds float, ptr %58, i64 %56
  %62 = getelementptr inbounds float, ptr %59, i64 %45
  %63 = add nsw i32 %60, -1
  %64 = icmp sgt i32 %60, 1
  br i1 %64, label %57, label %65, !llvm.loop !50

65:                                               ; preds = %57, %38
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %66(ptr noundef %47) #4
  br label %67

67:                                               ; preds = %34, %65, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IMB_flipx(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  %3 = icmp eq ptr %0, null
  br i1 %3, label %75, label %4

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
  br i1 %13, label %14, label %38

14:                                               ; preds = %4
  %15 = icmp sgt i32 %6, 0
  %16 = sext i32 %6 to i64
  %17 = zext nneg i32 %8 to i64
  %18 = sext i32 %6 to i64
  br label %21

19:                                               ; preds = %28, %21
  %20 = icmp sgt i64 %22, 1
  br i1 %20, label %21, label %38, !llvm.loop !51

21:                                               ; preds = %14, %19
  %22 = phi i64 [ %17, %14 ], [ %23, %19 ]
  %23 = add nsw i64 %22, -1
  br i1 %15, label %24, label %19

24:                                               ; preds = %21
  %25 = mul nsw i64 %23, %18
  %26 = getelementptr i32, ptr %10, i64 %25
  %27 = getelementptr i32, ptr %10, i64 %25
  br label %28

28:                                               ; preds = %24, %28
  %29 = phi i64 [ 0, %24 ], [ %36, %28 ]
  %30 = phi i64 [ %16, %24 ], [ %31, %28 ]
  %31 = add nsw i64 %30, -1
  %32 = getelementptr i32, ptr %26, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !52
  %34 = getelementptr i32, ptr %27, i64 %29
  %35 = load i32, ptr %34, align 4, !tbaa !52
  store i32 %35, ptr %32, align 4, !tbaa !52
  store i32 %33, ptr %34, align 4, !tbaa !52
  %36 = add nuw nsw i64 %29, 1
  %37 = icmp sgt i64 %31, %36
  br i1 %37, label %28, label %19, !llvm.loop !53

38:                                               ; preds = %19, %4
  %39 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %40 = load ptr, ptr %39, align 8, !tbaa !49
  %41 = icmp ne ptr %40, null
  %42 = icmp sgt i32 %8, 0
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %75

44:                                               ; preds = %38
  %45 = icmp sgt i32 %6, 0
  %46 = sext i32 %6 to i64
  %47 = zext nneg i32 %8 to i64
  %48 = zext i32 %6 to i64
  br label %51

49:                                               ; preds = %56, %51
  %50 = icmp sgt i64 %52, 1
  br i1 %50, label %51, label %75, !llvm.loop !54

51:                                               ; preds = %44, %49
  %52 = phi i64 [ %47, %44 ], [ %53, %49 ]
  %53 = add nsw i64 %52, -1
  br i1 %45, label %54, label %49

54:                                               ; preds = %51
  %55 = mul i64 %53, %48
  br label %56

56:                                               ; preds = %54, %56
  %57 = phi i64 [ 0, %54 ], [ %73, %56 ]
  %58 = phi i64 [ %46, %54 ], [ %59, %56 ]
  %59 = add nsw i64 %58, -1
  %60 = load ptr, ptr %39, align 8, !tbaa !49
  %61 = add i64 %59, %55
  %62 = trunc i64 %61 to i32
  %63 = shl nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, ptr %60, i64 %64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %65, i64 16, i1 false)
  %66 = add i64 %57, %55
  %67 = trunc i64 %66 to i32
  %68 = shl nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, ptr %60, i64 %69
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %65, ptr noundef nonnull align 4 dereferenceable(16) %70, i64 16, i1 false)
  %71 = load ptr, ptr %39, align 8, !tbaa !49
  %72 = getelementptr inbounds float, ptr %71, i64 %69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %72, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false)
  %73 = add nuw nsw i64 %57, 1
  %74 = icmp sgt i64 %59, %73
  br i1 %74, label %56, label %49, !llvm.loop !55

75:                                               ; preds = %49, %38, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!35, !36, i64 48}
!50 = distinct !{!50, !47, !48}
!51 = distinct !{!51, !47, !48}
!52 = !{!39, !39, i64 0}
!53 = distinct !{!53, !47, !48}
!54 = distinct !{!54, !47, !48}
!55 = distinct !{!55, !47, !48}
