; ModuleID = 'XMLUTF16Transcoder.cpp'
source_filename = "XMLUTF16Transcoder.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLUTF16Transcoder" = type <{ %"class.xercesc_2_7::XMLTranscoder", i8, [7 x i8] }>
%"class.xercesc_2_7::XMLTranscoder" = type { ptr, i32, ptr, ptr }

@_ZTVN11xercesc_2_718XMLUTF16TranscoderE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718XMLUTF16TranscoderE, ptr @_ZN11xercesc_2_718XMLUTF16TranscoderD2Ev, ptr @_ZN11xercesc_2_718XMLUTF16TranscoderD0Ev, ptr @_ZN11xercesc_2_718XMLUTF16Transcoder13transcodeFromEPKhjPtjRjPh, ptr @_ZN11xercesc_2_718XMLUTF16Transcoder11transcodeToEPKtjPhjRjNS_13XMLTranscoder9UnRepOptsE, ptr @_ZNK11xercesc_2_718XMLUTF16Transcoder14canTranscodeToEj] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_718XMLUTF16TranscoderE = dso_local constant [36 x i8] c"N11xercesc_2_718XMLUTF16TranscoderE\00", align 1
@_ZTIN11xercesc_2_713XMLTranscoderE = external constant ptr
@_ZTIN11xercesc_2_718XMLUTF16TranscoderE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_718XMLUTF16TranscoderE, ptr @_ZTIN11xercesc_2_713XMLTranscoderE }, align 8

@_ZN11xercesc_2_718XMLUTF16TranscoderC1EPKtjbPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, i1, ptr), ptr @_ZN11xercesc_2_718XMLUTF16TranscoderC2EPKtjbPNS_13MemoryManagerE
@_ZN11xercesc_2_718XMLUTF16TranscoderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_718XMLUTF16TranscoderD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_718XMLUTF16TranscoderC2EPKtjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 align 2 !prof !34 {
  %6 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_713XMLTranscoderC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_718XMLUTF16TranscoderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLUTF16Transcoder", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !38
  ret void
}

declare void @_ZN11xercesc_2_713XMLTranscoderC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_718XMLUTF16TranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_718XMLUTF16TranscoderD0Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_718XMLUTF16Transcoder13transcodeFromEPKhjPtjRjPh(ptr nocapture noundef nonnull readonly align 8 dereferenceable(33) %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, ptr nocapture noundef writeonly %6) unnamed_addr #4 align 2 !prof !34 {
  %8 = lshr i32 %2, 1
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 %4)
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLUTF16Transcoder", ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !38, !range !45, !noundef !46
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
  %20 = load i16, ptr %18, align 2, !tbaa !47
  %21 = tail call noundef i16 @llvm.bswap.i16(i16 %20)
  %22 = getelementptr inbounds i16, ptr %17, i64 1
  store i16 %21, ptr %17, align 2, !tbaa !47
  %23 = add nuw nsw i32 %16, 1
  %24 = icmp eq i32 %23, %9
  br i1 %24, label %28, label %15, !llvm.loop !49

25:                                               ; preds = %7
  %26 = shl nuw i32 %9, 1
  %27 = zext i32 %26 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %3, ptr align 1 %1, i64 %27, i1 false)
  br label %28

28:                                               ; preds = %15, %13, %25
  %29 = zext nneg i32 %9 to i64
  %30 = shl nuw i32 %9, 1
  store i32 %30, ptr %5, align 4, !tbaa !52
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 2, i64 %29, i1 false)
  ret i32 %9
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_718XMLUTF16Transcoder11transcodeToEPKtjPhjRjNS_13XMLTranscoder9UnRepOptsE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(33) %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, i32 %6) unnamed_addr #4 align 2 !prof !34 {
  %8 = lshr i32 %4, 1
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 %2)
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLUTF16Transcoder", ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !38, !range !45, !noundef !46
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
  %20 = load i16, ptr %18, align 2, !tbaa !47
  %21 = tail call noundef i16 @llvm.bswap.i16(i16 %20)
  %22 = getelementptr inbounds i16, ptr %16, i64 1
  store i16 %21, ptr %16, align 2, !tbaa !47
  %23 = add nuw nsw i32 %17, 1
  %24 = icmp eq i32 %23, %9
  br i1 %24, label %28, label %15, !llvm.loop !53

25:                                               ; preds = %7
  %26 = shl nuw i32 %9, 1
  %27 = zext i32 %26 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 2 %1, i64 %27, i1 false)
  br label %28

28:                                               ; preds = %15, %13, %25
  store i32 %9, ptr %5, align 4, !tbaa !52
  %29 = shl nuw i32 %9, 1
  ret i32 %29
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_718XMLUTF16Transcoder14canTranscodeToEj(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #7 align 2 !prof !34 {
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #8

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !44, i64 32}
!39 = !{!"_ZTSN11xercesc_2_718XMLUTF16TranscoderE", !40, i64 0, !44, i64 32}
!40 = !{!"_ZTSN11xercesc_2_713XMLTranscoderE", !41, i64 8, !43, i64 16, !43, i64 24}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"any pointer", !42, i64 0}
!44 = !{!"bool", !42, i64 0}
!45 = !{i8 0, i8 2}
!46 = !{}
!47 = !{!48, !48, i64 0}
!48 = !{!"short", !42, i64 0}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!41, !41, i64 0}
!53 = distinct !{!53, !50, !51}
