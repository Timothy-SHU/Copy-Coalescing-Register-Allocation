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

declare i32 @imb_is_a_jpeg(ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @imb_ftype_default(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 26
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ImFileType, ptr %0, i64 0, i32 10
  %6 = load i32, ptr %5, align 4, !tbaa !43
  %7 = and i32 %6, %4
  ret i32 %7
}

declare ptr @imb_load_jpeg(ptr noundef, i64 noundef, i32 noundef, ptr noundef) #0

declare i32 @imb_savejpeg(ptr noundef, ptr noundef, i32 noundef) #0

declare i32 @imb_is_a_png(ptr noundef) #0

declare ptr @imb_loadpng(ptr noundef, i64 noundef, i32 noundef, ptr noundef) #0

declare i32 @imb_savepng(ptr noundef, ptr noundef, i32 noundef) #0

declare i32 @imb_is_a_bmp(ptr noundef) #0

declare ptr @imb_bmp_decode(ptr noundef, i64 noundef, i32 noundef, ptr noundef) #0

declare i32 @imb_savebmp(ptr noundef, ptr noundef, i32 noundef) #0

declare i32 @imb_is_a_targa(ptr noundef) #0

declare ptr @imb_loadtarga(ptr noundef, i64 noundef, i32 noundef, ptr noundef) #0

declare i32 @imb_savetarga(ptr noundef, ptr noundef, i32 noundef) #0

declare i32 @imb_is_a_iris(ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @imb_ftype_iris(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.ImBuf, ptr %1, i64 0, i32 26
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 474
  %6 = zext i1 %5 to i32
  ret i32 %6
}

declare ptr @imb_loadiris(ptr noundef, i64 noundef, i32 noundef, ptr noundef) #0

declare i32 @imb_saveiris(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local void @imb_filetypes_init() local_unnamed_addr #2 {
  %1 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !45
  %2 = icmp ugt ptr %1, @IMB_FILE_TYPES
  br i1 %2, label %3, label %12

3:                                                ; preds = %0, %8
  %4 = phi ptr [ %9, %8 ], [ @IMB_FILE_TYPES, %0 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void %5() #3
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.ImFileType, ptr %4, i64 1
  %10 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !45
  %11 = icmp ult ptr %9, %10
  br i1 %11, label %3, label %12, !llvm.loop !47

12:                                               ; preds = %8, %0
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @imb_filetypes_exit() local_unnamed_addr #2 {
  %1 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !45
  %2 = icmp ugt ptr %1, @IMB_FILE_TYPES
  br i1 %2, label %3, label %13

3:                                                ; preds = %0, %9
  %4 = phi ptr [ %10, %9 ], [ @IMB_FILE_TYPES, %0 ]
  %5 = getelementptr inbounds %struct.ImFileType, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void %6() #3
  br label %9

9:                                                ; preds = %3, %8
  %10 = getelementptr inbounds %struct.ImFileType, ptr %4, i64 1
  %11 = load ptr, ptr @IMB_FILE_TYPES_LAST, align 8, !tbaa !45
  %12 = icmp ult ptr %10, %11
  br i1 %12, label %3, label %13, !llvm.loop !51

13:                                               ; preds = %9, %0
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!34 = !{!35, !39, i64 312}
!35 = !{!"ImBuf", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20, !37, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !40, i64 112, !37, i64 120, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !36, i64 296, !36, i64 304, !39, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !39, i64 2376, !36, i64 2384, !39, i64 2392, !39, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !39, i64 2432, !41, i64 2436, !42, i64 2456}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"float", !37, i64 0}
!41 = !{!"rcti", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12}
!42 = !{!"DDSData", !39, i64 0, !39, i64 4, !36, i64 8, !39, i64 16}
!43 = !{!44, !39, i64 76}
!44 = !{!"ImFileType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !39, i64 72, !39, i64 76, !39, i64 80}
!45 = !{!36, !36, i64 0}
!46 = !{!44, !36, i64 0}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!44, !36, i64 8}
!51 = distinct !{!51, !48, !49}
