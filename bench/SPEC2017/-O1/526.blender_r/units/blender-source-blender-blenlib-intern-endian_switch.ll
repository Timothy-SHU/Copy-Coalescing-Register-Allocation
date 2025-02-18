; ModuleID = 'blender/source/blender/blenlib/intern/endian_switch.c'
source_filename = "blender/source/blender/blenlib/intern/endian_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_endian_switch_int16_array(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr i16, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %1, %4 ], [ %11, %7 ]
  %9 = phi ptr [ %6, %4 ], [ %10, %7 ]
  %10 = getelementptr inbounds i16, ptr %9, i64 -1
  %11 = add nsw i32 %8, -1
  %12 = load i16, ptr %10, align 2, !tbaa !34
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  store i16 %13, ptr %10, align 2, !tbaa !34
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %15, label %7, !llvm.loop !38

15:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_endian_switch_uint16_array(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr i16, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %1, %4 ], [ %11, %7 ]
  %9 = phi ptr [ %6, %4 ], [ %10, %7 ]
  %10 = getelementptr inbounds i16, ptr %9, i64 -1
  %11 = add nsw i32 %8, -1
  %12 = load i16, ptr %10, align 2, !tbaa !34
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  store i16 %13, ptr %10, align 2, !tbaa !34
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %15, label %7, !llvm.loop !41

15:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_endian_switch_int32_array(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr i32, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %1, %4 ], [ %11, %7 ]
  %9 = phi ptr [ %6, %4 ], [ %10, %7 ]
  %10 = getelementptr inbounds i32, ptr %9, i64 -1
  %11 = add nsw i32 %8, -1
  %12 = load i32, ptr %10, align 4, !tbaa !42
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  store i32 %13, ptr %10, align 4, !tbaa !42
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %15, label %7, !llvm.loop !44

15:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_endian_switch_uint32_array(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr i32, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %1, %4 ], [ %11, %7 ]
  %9 = phi ptr [ %6, %4 ], [ %10, %7 ]
  %10 = getelementptr inbounds i32, ptr %9, i64 -1
  %11 = add nsw i32 %8, -1
  %12 = load i32, ptr %10, align 4, !tbaa !42
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  store i32 %13, ptr %10, align 4, !tbaa !42
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %15, label %7, !llvm.loop !45

15:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_endian_switch_float_array(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr float, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %1, %4 ], [ %11, %7 ]
  %9 = phi ptr [ %6, %4 ], [ %10, %7 ]
  %10 = getelementptr inbounds float, ptr %9, i64 -1
  %11 = add nsw i32 %8, -1
  %12 = load i32, ptr %10, align 4, !tbaa !42
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  store i32 %13, ptr %10, align 4, !tbaa !42
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %15, label %7, !llvm.loop !46

15:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_endian_switch_int64_array(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr i64, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %1, %4 ], [ %11, %7 ]
  %9 = phi ptr [ %6, %4 ], [ %10, %7 ]
  %10 = getelementptr inbounds i64, ptr %9, i64 -1
  %11 = add nsw i32 %8, -1
  %12 = load i64, ptr %10, align 8, !tbaa !47
  %13 = tail call i64 @llvm.bswap.i64(i64 %12)
  store i64 %13, ptr %10, align 8, !tbaa !47
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %15, label %7, !llvm.loop !49

15:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_endian_switch_uint64_array(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr i64, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %1, %4 ], [ %11, %7 ]
  %9 = phi ptr [ %6, %4 ], [ %10, %7 ]
  %10 = getelementptr inbounds i64, ptr %9, i64 -1
  %11 = add nsw i32 %8, -1
  %12 = load i64, ptr %10, align 8, !tbaa !47
  %13 = tail call i64 @llvm.bswap.i64(i64 %12)
  store i64 %13, ptr %10, align 8, !tbaa !47
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %15, label %7, !llvm.loop !50

15:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_endian_switch_double_array(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr double, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %1, %4 ], [ %11, %7 ]
  %9 = phi ptr [ %6, %4 ], [ %10, %7 ]
  %10 = getelementptr inbounds double, ptr %9, i64 -1
  %11 = add nsw i32 %8, -1
  %12 = load i64, ptr %10, align 8, !tbaa !47
  %13 = tail call i64 @llvm.bswap.i64(i64 %12)
  store i64 %13, ptr %10, align 8, !tbaa !47
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %15, label %7, !llvm.loop !51

15:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #1

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!35 = !{!"short", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !39, !40}
!42 = !{!43, !43, i64 0}
!43 = !{!"int", !36, i64 0}
!44 = distinct !{!44, !39, !40}
!45 = distinct !{!45, !39, !40}
!46 = distinct !{!46, !39, !40}
!47 = !{!48, !48, i64 0}
!48 = !{!"long", !36, i64 0}
!49 = distinct !{!49, !39, !40}
!50 = distinct !{!50, !39, !40}
!51 = distinct !{!51, !39, !40}
