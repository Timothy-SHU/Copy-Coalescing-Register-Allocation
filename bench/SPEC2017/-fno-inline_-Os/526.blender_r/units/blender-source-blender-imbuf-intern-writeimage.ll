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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local signext i16 @IMB_saveiff(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ImBuf, ptr %0, i64 0, i32 6
  store i32 %2, ptr %6, align 8, !tbaa !34
  %7 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !43
  %8 = icmp ugt ptr %7, @IMB_FILE_TYPES
  br i1 %8, label %9, label %32

9:                                                ; preds = %5, %28
  %10 = phi ptr [ %29, %28 ], [ %7, %5 ]
  %11 = phi ptr [ %30, %28 ], [ @IMB_FILE_TYPES, %5 ]
  %12 = getelementptr inbounds %struct.ImFileType, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.ImFileType, ptr %11, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = tail call i32 %17(ptr noundef nonnull %11, ptr noundef nonnull %0) #3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !43
  br label %28

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.ImFileType, ptr %11, i64 0, i32 7
  %24 = tail call fastcc ptr @prepare_write_imbuf(ptr noundef nonnull %11, ptr noundef nonnull %0) #4
  %25 = load ptr, ptr %23, align 8, !tbaa !44
  %26 = tail call i32 %25(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #3
  %27 = trunc i32 %26 to i16
  br label %35

28:                                               ; preds = %20, %9
  %29 = phi ptr [ %21, %20 ], [ %10, %9 ]
  %30 = getelementptr inbounds %struct.ImFileType, ptr %11, i64 1
  %31 = icmp ult ptr %30, %29
  br i1 %31, label %9, label %32, !llvm.loop !47

32:                                               ; preds = %28, %5
  %33 = load ptr, ptr @stderr, align 8, !tbaa !43
  %34 = tail call i64 @fwrite(ptr nonnull @.str, i64 23, i64 1, ptr %33) #5
  br label %35

35:                                               ; preds = %22, %3, %32
  %36 = phi i16 [ 0, %32 ], [ 0, %3 ], [ %27, %22 ]
  ret i16 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @prepare_write_imbuf(ptr nocapture noundef readonly %0, ptr noundef returned %1) unnamed_addr #0 !PGOFuncName !49 {
  %3 = getelementptr inbounds %struct.ImFileType, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @colormanage_colorspace_get_roled(i32 noundef 4) #3
  %17 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 34
  store ptr %16, ptr %17, align 8, !tbaa !53
  tail call void @IMB_rect_from_float(ptr noundef nonnull %1) #3
  br label %18

18:                                               ; preds = %7, %11, %15, %2
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @colormanage_colorspace_get_roled(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IMB_rect_from_float(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }
attributes #5 = { cold }

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
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"writeimage.c:prepare_write_imbuf"}
!50 = !{!45, !39, i64 72}
!51 = !{!35, !36, i64 40}
!52 = !{!35, !36, i64 48}
!53 = !{!35, !36, i64 2400}
