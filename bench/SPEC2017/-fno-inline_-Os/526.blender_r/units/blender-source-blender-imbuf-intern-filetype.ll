; ModuleID = 'blender/source/blender/imbuf/intern/filetype.c'
source_filename = "blender/source/blender/imbuf/intern/filetype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ImFileType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }

@IMB_FILE_TYPES = dso_local global [6 x %struct.ImFileType] [%struct.ImFileType { ptr null, ptr null, ptr @imb_is_a_jpeg, ptr null, ptr @imb_ftype_default, ptr @imb_load_jpeg, ptr null, ptr @imb_savejpeg, ptr null, i32 0, i32 134217728, i32 4 }, %struct.ImFileType { ptr null, ptr null, ptr @imb_is_a_png, ptr null, ptr @imb_ftype_default, ptr @imb_loadpng, ptr null, ptr @imb_savepng, ptr null, i32 0, i32 1073741824, i32 4 }, %struct.ImFileType { ptr null, ptr null, ptr @imb_is_a_bmp, ptr null, ptr @imb_ftype_default, ptr @imb_bmp_decode, ptr null, ptr @imb_savebmp, ptr null, i32 0, i32 67108864, i32 4 }, %struct.ImFileType { ptr null, ptr null, ptr @imb_is_a_targa, ptr null, ptr @imb_ftype_default, ptr @imb_loadtarga, ptr null, ptr @imb_savetarga, ptr null, i32 0, i32 268435456, i32 4 }, %struct.ImFileType { ptr null, ptr null, ptr @imb_is_a_iris, ptr null, ptr @imb_ftype_iris, ptr @imb_loadiris, ptr null, ptr @imb_saveiris, ptr null, i32 0, i32 474, i32 4 }, %struct.ImFileType zeroinitializer], align 16
@IMB_FILE_TYPES_LAST = dso_local local_unnamed_addr global ptr getelementptr inbounds ([6 x %struct.ImFileType], ptr @IMB_FILE_TYPES, i64 0, i64 5, i32 0), align 8

; Function Attrs: optsize
declare i32 @imb_is_a_jpeg(ptr noundef) #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @imb_ftype_default(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !34 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 26
  %4 = load i32, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.ImFileType, ptr %0, i64 0, i32 10
  %6 = load i32, ptr %5, align 4, !tbaa !44
  %7 = and i32 %6, %4
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @imb_load_jpeg(ptr noundef, i64 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @imb_savejpeg(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: optsize
declare i32 @imb_is_a_png(ptr noundef) #0

; Function Attrs: optsize
declare ptr @imb_loadpng(ptr noundef, i64 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @imb_savepng(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: optsize
declare i32 @imb_is_a_bmp(ptr noundef) #0

; Function Attrs: optsize
declare ptr @imb_bmp_decode(ptr noundef, i64 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @imb_savebmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: optsize
declare i32 @imb_is_a_targa(ptr noundef) #0

; Function Attrs: optsize
declare ptr @imb_loadtarga(ptr noundef, i64 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @imb_savetarga(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: optsize
declare i32 @imb_is_a_iris(ptr noundef) #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @imb_ftype_iris(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !46 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 26
  %4 = load i32, ptr %3, align 8, !tbaa !35
  %5 = icmp eq i32 %4, 474
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @imb_loadiris(ptr noundef, i64 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: optsize
declare i32 @imb_saveiris(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @imb_filetypes_init() local_unnamed_addr #2 {
  %1 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !47
  %2 = icmp ugt ptr %1, @IMB_FILE_TYPES
  br i1 %2, label %3, label %14

3:                                                ; preds = %0, %10
  %4 = phi ptr [ %11, %10 ], [ %1, %0 ]
  %5 = phi ptr [ %12, %10 ], [ @IMB_FILE_TYPES, %0 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  tail call void %6() #3
  %9 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !47
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi ptr [ %4, %3 ], [ %9, %8 ]
  %12 = getelementptr inbounds %struct.ImFileType, ptr %5, i64 1
  %13 = icmp ult ptr %12, %11
  br i1 %13, label %3, label %14, !llvm.loop !49

14:                                               ; preds = %10, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @imb_filetypes_exit() local_unnamed_addr #2 {
  %1 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !47
  %2 = icmp ugt ptr %1, @IMB_FILE_TYPES
  br i1 %2, label %3, label %15

3:                                                ; preds = %0, %11
  %4 = phi ptr [ %12, %11 ], [ %1, %0 ]
  %5 = phi ptr [ %13, %11 ], [ @IMB_FILE_TYPES, %0 ]
  %6 = getelementptr inbounds %struct.ImFileType, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  tail call void %7() #3
  %10 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !47
  br label %11

11:                                               ; preds = %3, %9
  %12 = phi ptr [ %4, %3 ], [ %10, %9 ]
  %13 = getelementptr inbounds %struct.ImFileType, ptr %5, i64 1
  %14 = icmp ult ptr %13, %12
  br i1 %14, label %3, label %15, !llvm.loop !52

15:                                               ; preds = %11, %0
  ret void
}

attributes #0 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }

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
!34 = !{!"filetype.c:imb_ftype_default"}
!35 = !{!36, !40, i64 312}
!36 = !{!"ImBuf", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20, !38, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !37, i64 40, !37, i64 48, !38, i64 56, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !37, i64 88, !37, i64 96, !37, i64 104, !41, i64 112, !38, i64 120, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !37, i64 296, !37, i64 304, !40, i64 312, !38, i64 316, !38, i64 1340, !37, i64 2368, !40, i64 2376, !37, i64 2384, !40, i64 2392, !40, i64 2396, !37, i64 2400, !37, i64 2408, !37, i64 2416, !37, i64 2424, !40, i64 2432, !42, i64 2436, !43, i64 2456}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!43 = !{!"DDSData", !40, i64 0, !40, i64 4, !37, i64 8, !40, i64 16}
!44 = !{!45, !40, i64 76}
!45 = !{!"ImFileType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !40, i64 72, !40, i64 76, !40, i64 80}
!46 = !{!"filetype.c:imb_ftype_iris"}
!47 = !{!37, !37, i64 0}
!48 = !{!45, !37, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!45, !37, i64 8}
!52 = distinct !{!52, !50}
