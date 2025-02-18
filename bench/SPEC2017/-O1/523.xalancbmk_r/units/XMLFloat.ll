; ModuleID = 'XMLFloat.cpp'
source_filename = "XMLFloat.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::XMLAbstractDoubleFloat" = type { %"class.xercesc_2_7::XMLNumber", double, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLNumber" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::XSerializable" = type { ptr }

@_ZTVN11xercesc_2_78XMLFloatE = dso_local unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_78XMLFloatE, ptr @_ZN11xercesc_2_78XMLFloatD2Ev, ptr @_ZN11xercesc_2_78XMLFloatD0Ev, ptr @_ZNK11xercesc_2_78XMLFloat14isSerializableEv, ptr @_ZN11xercesc_2_78XMLFloat9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_78XMLFloat12getProtoTypeEv, ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat8toStringEv, ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat10getRawDataEv, ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat18getFormattedStringEv, ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat7getSignEv, ptr @_ZN11xercesc_2_78XMLFloat13checkBoundaryEPc] }, align 8
@.str = private unnamed_addr constant [9 x i8] c"XMLFloat\00", align 1
@_ZN11xercesc_2_78XMLFloat13classXMLFloatE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_78XMLFloat12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_78XMLFloatE = dso_local constant [25 x i8] c"N11xercesc_2_78XMLFloatE\00", align 1
@_ZTIN11xercesc_2_722XMLAbstractDoubleFloatE = external constant ptr
@_ZTIN11xercesc_2_78XMLFloatE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78XMLFloatE, ptr @_ZTIN11xercesc_2_722XMLAbstractDoubleFloatE }, align 8

@_ZN11xercesc_2_78XMLFloatC1EPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_78XMLFloatC2EPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_78XMLFloatD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_78XMLFloatD2Ev
@_ZN11xercesc_2_78XMLFloatC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_78XMLFloatC2EPNS_13MemoryManagerE

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78XMLFloatC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_722XMLAbstractDoubleFloatC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %2)
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_78XMLFloatE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_722XMLAbstractDoubleFloat4initEPKt(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1)
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_722XMLAbstractDoubleFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #5
  resume { ptr, i32 } %6
}

declare void @_ZN11xercesc_2_722XMLAbstractDoubleFloatC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_722XMLAbstractDoubleFloat4initEPKt(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_722XMLAbstractDoubleFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_78XMLFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_722XMLAbstractDoubleFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #5
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_78XMLFloatD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_722XMLAbstractDoubleFloatD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78XMLFloat13checkBoundaryEPc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_722XMLAbstractDoubleFloat7convertEPc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1)
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 4, !tbaa !38, !range !48, !noundef !49
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 1
  %8 = load double, ptr %7, align 8, !tbaa !50
  %9 = fcmp olt double %8, 0xC7EFFFFFE0000000
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  store i32 0, ptr %11, align 8, !tbaa !51
  store i8 1, ptr %3, align 4, !tbaa !38
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 4
  store i8 1, ptr %12, align 1, !tbaa !52
  br label %28

13:                                               ; preds = %6
  %14 = fcmp ogt double %8, 0xB810000000000000
  %15 = fcmp olt double %8, 0.000000e+00
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8 1, ptr %3, align 4, !tbaa !38
  store double 0.000000e+00, ptr %7, align 8, !tbaa !50
  br label %28

18:                                               ; preds = %13
  %19 = fcmp ogt double %8, 0.000000e+00
  %20 = fcmp olt double %8, 0x3810000000000000
  %21 = and i1 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i8 1, ptr %3, align 4, !tbaa !38
  store double 0.000000e+00, ptr %7, align 8, !tbaa !50
  br label %28

23:                                               ; preds = %18
  %24 = fcmp ogt double %8, 0x47EFFFFFE0000000
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  store i32 1, ptr %26, align 8, !tbaa !51
  store i8 1, ptr %3, align 4, !tbaa !38
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 4
  store i8 1, ptr %27, align 1, !tbaa !52
  br label %28

28:                                               ; preds = %10, %22, %25, %23, %17, %2
  ret void
}

declare void @_ZN11xercesc_2_722XMLAbstractDoubleFloat7convertEPc(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78XMLFloat12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %0)
  invoke void @_ZN11xercesc_2_722XMLAbstractDoubleFloatC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_78XMLFloatE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !35
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #5
  resume { ptr, i32 } %5
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_78XMLFloat14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #4 align 2 !prof !34 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_78XMLFloat12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #4 align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_78XMLFloat13classXMLFloatE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78XMLFloatC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_722XMLAbstractDoubleFloatC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1)
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_78XMLFloatE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_78XMLFloat9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_722XMLAbstractDoubleFloat9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  ret void
}

declare void @_ZN11xercesc_2_722XMLAbstractDoubleFloat9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #1

declare noundef ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat8toStringEv(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

declare noundef ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat10getRawDataEv(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

declare noundef ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat18getFormattedStringEv(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

declare noundef i32 @_ZNK11xercesc_2_722XMLAbstractDoubleFloat7getSignEv(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!38 = !{!39, !45, i64 20}
!39 = !{!"_ZTSN11xercesc_2_722XMLAbstractDoubleFloatE", !40, i64 0, !42, i64 8, !44, i64 16, !45, i64 20, !45, i64 21, !46, i64 24, !47, i64 32, !47, i64 40, !47, i64 48}
!40 = !{!"_ZTSN11xercesc_2_79XMLNumberE", !41, i64 0}
!41 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!42 = !{!"double", !43, i64 0}
!43 = !{!"omnipotent char", !37, i64 0}
!44 = !{!"_ZTSN11xercesc_2_722XMLAbstractDoubleFloat11LiteralTypeE", !43, i64 0}
!45 = !{!"bool", !43, i64 0}
!46 = !{!"int", !43, i64 0}
!47 = !{!"any pointer", !43, i64 0}
!48 = !{i8 0, i8 2}
!49 = !{}
!50 = !{!39, !42, i64 8}
!51 = !{!39, !44, i64 16}
!52 = !{!39, !45, i64 21}
