; ModuleID = 'blender/source/blender/blenlib/intern/endian_switch.c'
source_filename = "blender/source/blender/blenlib/intern/endian_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_endian_switch_int16_array(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr i16, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %1, %4 ], [ %11, %7 ]
  %9 = phi ptr [ %6, %4 ], [ %10, %7 ]
  %10 = getelementptr inbounds i16, ptr %9, i64 -1
  %11 = add nsw i32 %8, -1
  tail call fastcc void @BLI_endian_switch_int16(ptr noundef nonnull %10) #3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %7, !llvm.loop !34

13:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @BLI_endian_switch_int16(ptr nocapture noundef %0) unnamed_addr #1 !PGOFuncName !36 {
  tail call fastcc void @BLI_endian_switch_uint16(ptr noundef %0) #3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_endian_switch_uint16_array(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr i16, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %1, %4 ], [ %11, %7 ]
  %9 = phi ptr [ %6, %4 ], [ %10, %7 ]
  %10 = getelementptr inbounds i16, ptr %9, i64 -1
  %11 = add nsw i32 %8, -1
  tail call fastcc void @BLI_endian_switch_uint16(ptr noundef nonnull %10) #3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %7, !llvm.loop !37

13:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @BLI_endian_switch_uint16(ptr nocapture noundef %0) unnamed_addr #1 !PGOFuncName !38 {
  %2 = load i16, ptr %0, align 2, !tbaa !39
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  store i16 %3, ptr %0, align 2, !tbaa !39
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_endian_switch_int32_array(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr i32, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %1, %4 ], [ %11, %7 ]
  %9 = phi ptr [ %6, %4 ], [ %10, %7 ]
  %10 = getelementptr inbounds i32, ptr %9, i64 -1
  %11 = add nsw i32 %8, -1
  tail call fastcc void @BLI_endian_switch_int32(ptr noundef nonnull %10) #3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %7, !llvm.loop !43

13:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @BLI_endian_switch_int32(ptr nocapture noundef %0) unnamed_addr #1 !PGOFuncName !44 {
  tail call fastcc void @BLI_endian_switch_uint32(ptr noundef %0) #3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_endian_switch_uint32_array(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr i32, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %1, %4 ], [ %11, %7 ]
  %9 = phi ptr [ %6, %4 ], [ %10, %7 ]
  %10 = getelementptr inbounds i32, ptr %9, i64 -1
  %11 = add nsw i32 %8, -1
  tail call fastcc void @BLI_endian_switch_uint32(ptr noundef nonnull %10) #3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %7, !llvm.loop !45

13:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @BLI_endian_switch_uint32(ptr nocapture noundef %0) unnamed_addr #1 !PGOFuncName !46 {
  %2 = load i32, ptr %0, align 4, !tbaa !47
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %3, ptr %0, align 4, !tbaa !47
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_endian_switch_float_array(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr float, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %1, %4 ], [ %11, %7 ]
  %9 = phi ptr [ %6, %4 ], [ %10, %7 ]
  %10 = getelementptr inbounds float, ptr %9, i64 -1
  %11 = add nsw i32 %8, -1
  tail call fastcc void @BLI_endian_switch_float(ptr noundef nonnull %10) #3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %7, !llvm.loop !49

13:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @BLI_endian_switch_float(ptr nocapture noundef %0) unnamed_addr #1 !PGOFuncName !50 {
  tail call fastcc void @BLI_endian_switch_uint32(ptr noundef %0) #3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_endian_switch_int64_array(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr i64, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %1, %4 ], [ %11, %7 ]
  %9 = phi ptr [ %6, %4 ], [ %10, %7 ]
  %10 = getelementptr inbounds i64, ptr %9, i64 -1
  %11 = add nsw i32 %8, -1
  tail call fastcc void @BLI_endian_switch_int64(ptr noundef nonnull %10) #3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %7, !llvm.loop !51

13:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @BLI_endian_switch_int64(ptr nocapture noundef %0) unnamed_addr #1 !PGOFuncName !52 {
  tail call fastcc void @BLI_endian_switch_uint64(ptr noundef %0) #3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_endian_switch_uint64_array(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr i64, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %1, %4 ], [ %11, %7 ]
  %9 = phi ptr [ %6, %4 ], [ %10, %7 ]
  %10 = getelementptr inbounds i64, ptr %9, i64 -1
  %11 = add nsw i32 %8, -1
  tail call fastcc void @BLI_endian_switch_uint64(ptr noundef nonnull %10) #3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %7, !llvm.loop !53

13:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @BLI_endian_switch_uint64(ptr nocapture noundef %0) unnamed_addr #1 !PGOFuncName !54 {
  %2 = load i64, ptr %0, align 8, !tbaa !55
  %3 = tail call i64 @llvm.bswap.i64(i64 %2)
  store i64 %3, ptr %0, align 8, !tbaa !55
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_endian_switch_double_array(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = getelementptr double, ptr %0, i64 %5
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %1, %4 ], [ %11, %7 ]
  %9 = phi ptr [ %6, %4 ], [ %10, %7 ]
  %10 = getelementptr inbounds double, ptr %9, i64 -1
  %11 = add nsw i32 %8, -1
  tail call fastcc void @BLI_endian_switch_double(ptr noundef nonnull %10) #3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %7, !llvm.loop !57

13:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @BLI_endian_switch_double(ptr nocapture noundef %0) unnamed_addr #1 !PGOFuncName !58 {
  tail call fastcc void @BLI_endian_switch_uint64(ptr noundef %0) #3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #2

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { optsize }

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
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"endian_switch.c:BLI_endian_switch_int16"}
!37 = distinct !{!37, !35}
!38 = !{!"endian_switch.c:BLI_endian_switch_uint16"}
!39 = !{!40, !40, i64 0}
!40 = !{!"short", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = distinct !{!43, !35}
!44 = !{!"endian_switch.c:BLI_endian_switch_int32"}
!45 = distinct !{!45, !35}
!46 = !{!"endian_switch.c:BLI_endian_switch_uint32"}
!47 = !{!48, !48, i64 0}
!48 = !{!"int", !41, i64 0}
!49 = distinct !{!49, !35}
!50 = !{!"endian_switch.c:BLI_endian_switch_float"}
!51 = distinct !{!51, !35}
!52 = !{!"endian_switch.c:BLI_endian_switch_int64"}
!53 = distinct !{!53, !35}
!54 = !{!"endian_switch.c:BLI_endian_switch_uint64"}
!55 = !{!56, !56, i64 0}
!56 = !{!"long", !41, i64 0}
!57 = distinct !{!57, !35}
!58 = !{!"endian_switch.c:BLI_endian_switch_double"}
