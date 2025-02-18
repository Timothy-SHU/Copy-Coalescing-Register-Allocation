; ModuleID = 'blender/source/blender/imbuf/intern/writeimage.c'
source_filename = "blender/source/blender/imbuf/intern/writeimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImFileType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

@IMB_FILE_TYPES = external global [0 x %struct.ImFileType], align 8
@IMB_FILE_TYPES_LAST = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [24 x i8] c"Couldn't save picture.\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local signext i16 @IMB_saveiff(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  store i32 %2, ptr %6, align 8, !tbaa !34
  %7 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !43
  %8 = icmp ugt ptr %7, @IMB_FILE_TYPES
  br i1 %8, label %9, label %44

9:                                                ; preds = %5, %40
  %10 = phi ptr [ %41, %40 ], [ @IMB_FILE_TYPES, %5 ]
  %11 = getelementptr inbounds %struct.ImFileType, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = icmp eq ptr %12, null
  br i1 %13, label %40, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ImFileType, ptr %10, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = tail call i32 %16(ptr noundef nonnull %10, ptr noundef nonnull %0) #3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ImFileType, ptr %10, i64 0, i32 7
  %21 = getelementptr inbounds %struct.ImFileType, ptr %10, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !47
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !48
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !49
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = tail call ptr @colormanage_colorspace_get_roled(i32 noundef 4) #3
  %35 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 34
  store ptr %34, ptr %35, align 8, !tbaa !50
  tail call void @IMB_rect_from_float(ptr noundef nonnull %0) #3
  br label %36

36:                                               ; preds = %19, %25, %29, %33
  %37 = load ptr, ptr %20, align 8, !tbaa !44
  %38 = tail call i32 %37(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #3
  %39 = trunc i32 %38 to i16
  br label %47

40:                                               ; preds = %9, %14
  %41 = getelementptr inbounds %struct.ImFileType, ptr %10, i64 1
  %42 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !43
  %43 = icmp ult ptr %41, %42
  br i1 %43, label %9, label %44, !llvm.loop !51

44:                                               ; preds = %40, %5
  %45 = load ptr, ptr @stderr, align 8, !tbaa !43
  %46 = tail call i64 @fwrite(ptr nonnull @.str, i64 23, i64 1, ptr %45) #4
  br label %47

47:                                               ; preds = %36, %3, %44
  %48 = phi i16 [ 0, %44 ], [ 0, %3 ], [ %39, %36 ]
  ret i16 %48
}

declare ptr @colormanage_colorspace_get_roled(i32 noundef) local_unnamed_addr #1

declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind }
attributes #4 = { cold }

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
!34 = !{!35, !39, i64 32}
!35 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !41, i64 2436, !42, i64 2456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!42 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!43 = !{!36, !36, i64 0}
!44 = !{!45, !36, i64 56}
!45 = !{!"ImFileType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !39, i64 72, !39, i64 76, !39, i64 80}
!46 = !{!45, !36, i64 32}
!47 = !{!45, !39, i64 72}
!48 = !{!35, !36, i64 40}
!49 = !{!35, !36, i64 48}
!50 = !{!35, !36, i64 2400}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
