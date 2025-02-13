; ModuleID = 'XMLUTF16Transcoder.cpp'
source_filename = "XMLUTF16Transcoder.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLUTF16Transcoder" = type <{ %"class.xercesc_2_7::XMLTranscoder", i8, [7 x i8] }>
%"class.xercesc_2_7::XMLTranscoder" = type { ptr, i32, ptr, ptr }

$_ZN11xercesc_2_76BitOps9swapBytesEt = comdat any

@_ZTVN11xercesc_2_718XMLUTF16TranscoderE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718XMLUTF16TranscoderE, ptr @_ZN11xercesc_2_718XMLUTF16TranscoderD2Ev, ptr @_ZN11xercesc_2_718XMLUTF16TranscoderD0Ev, ptr @_ZN11xercesc_2_718XMLUTF16Transcoder13transcodeFromEPKhjPtjRjPh, ptr @_ZN11xercesc_2_718XMLUTF16Transcoder11transcodeToEPKtjPhjRjNS_13XMLTranscoder9UnRepOptsE, ptr @_ZNK11xercesc_2_718XMLUTF16Transcoder14canTranscodeToEj] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_718XMLUTF16TranscoderE = dso_local constant [36 x i8] c"N11xercesc_2_718XMLUTF16TranscoderE\00", align 1
@_ZTIN11xercesc_2_713XMLTranscoderE = external constant ptr
@_ZTIN11xercesc_2_718XMLUTF16TranscoderE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_718XMLUTF16TranscoderE, ptr @_ZTIN11xercesc_2_713XMLTranscoderE }, align 8

@_ZN11xercesc_2_718XMLUTF16TranscoderC1EPKtjbPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, i1, ptr), ptr @_ZN11xercesc_2_718XMLUTF16TranscoderC2EPKtjbPNS_13MemoryManagerE
@_ZN11xercesc_2_718XMLUTF16TranscoderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_718XMLUTF16TranscoderD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_718XMLUTF16TranscoderD0Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_718XMLUTF16TranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_718XMLUTF16Transcoder13transcodeFromEPKhjPtjRjPh(ptr nocapture noundef nonnull readonly align 8 dereferenceable(33) %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, ptr nocapture noundef writeonly %6) unnamed_addr #0 align 2 !prof !35 {
  %8 = lshr i32 %2, 1
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 %4)
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLUTF16Transcoder", ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !36, !range !44, !noundef !45
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %7
  %14 = icmp eq i32 %9, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %13, %15
  %16 = phi i32 [ %23, %15 ], [ 0, %13 ]
  %17 = phi ptr [ %22, %15 ], [ %3, %13 ]
  %18 = phi ptr [ %19, %15 ], [ %1, %13 ]
  %19 = getelementptr inbounds i16, ptr %18, i64 1
  %20 = load i16, ptr %18, align 2, !tbaa !46
  %21 = tail call noundef zeroext i16 @_ZN11xercesc_2_76BitOps9swapBytesEt(i16 noundef zeroext %20) #9
  %22 = getelementptr inbounds i16, ptr %17, i64 1
  store i16 %21, ptr %17, align 2, !tbaa !46
  %23 = add nuw nsw i32 %16, 1
  %24 = icmp eq i32 %23, %9
  br i1 %24, label %28, label %15, !llvm.loop !48

25:                                               ; preds = %7
  %26 = shl nuw i32 %9, 1
  %27 = zext i32 %26 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %3, ptr align 1 %1, i64 %27, i1 false)
  br label %28

28:                                               ; preds = %15, %13, %25
  %29 = zext nneg i32 %9 to i64
  %30 = shl nuw i32 %9, 1
  store i32 %30, ptr %5, align 4, !tbaa !50
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 2, i64 %29, i1 false)
  ret i32 %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_718XMLUTF16Transcoder11transcodeToEPKtjPhjRjNS_13XMLTranscoder9UnRepOptsE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(33) %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, i32 %6) unnamed_addr #0 align 2 !prof !35 {
  %8 = lshr i32 %4, 1
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 %2)
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLUTF16Transcoder", ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !36, !range !44, !noundef !45
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %7
  %14 = icmp eq i32 %9, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %13, %15
  %16 = phi ptr [ %22, %15 ], [ %3, %13 ]
  %17 = phi i32 [ %23, %15 ], [ 0, %13 ]
  %18 = phi ptr [ %19, %15 ], [ %1, %13 ]
  %19 = getelementptr inbounds i16, ptr %18, i64 1
  %20 = load i16, ptr %18, align 2, !tbaa !46
  %21 = tail call noundef zeroext i16 @_ZN11xercesc_2_76BitOps9swapBytesEt(i16 noundef zeroext %20) #9
  %22 = getelementptr inbounds i16, ptr %16, i64 1
  store i16 %21, ptr %16, align 2, !tbaa !46
  %23 = add nuw nsw i32 %17, 1
  %24 = icmp eq i32 %23, %9
  br i1 %24, label %28, label %15, !llvm.loop !51

25:                                               ; preds = %7
  %26 = shl nuw i32 %9, 1
  %27 = zext i32 %26 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 2 %1, i64 %27, i1 false)
  br label %28

28:                                               ; preds = %15, %13, %25
  store i32 %9, ptr %5, align 4, !tbaa !50
  %29 = shl nuw i32 %9, 1
  ret i32 %29
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_718XMLUTF16Transcoder14canTranscodeToEj(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #1 align 2 !prof !35 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_718XMLUTF16TranscoderC2EPKtjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #2 align 2 !prof !35 {
  %6 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_713XMLTranscoderC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #9
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_718XMLUTF16TranscoderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLUTF16Transcoder", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !36
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLTranscoderC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_718XMLUTF16TranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i16 @_ZN11xercesc_2_76BitOps9swapBytesEt(i16 noundef zeroext %0) local_unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = tail call i16 @llvm.bswap.i16(i16 %0)
  ret i16 %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !43, i64 32}
!37 = !{!"_ZTSN11xercesc_2_718XMLUTF16TranscoderE", !38, i64 0, !43, i64 32}
!38 = !{!"_ZTSN11xercesc_2_713XMLTranscoderE", !39, i64 8, !42, i64 16, !42, i64 24}
!39 = !{!"int", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"any pointer", !40, i64 0}
!43 = !{!"bool", !40, i64 0}
!44 = !{i8 0, i8 2}
!45 = !{}
!46 = !{!47, !47, i64 0}
!47 = !{!"short", !40, i64 0}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!39, !39, i64 0}
!51 = distinct !{!51, !49}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !41, i64 0}
