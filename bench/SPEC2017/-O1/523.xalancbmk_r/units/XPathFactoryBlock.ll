; ModuleID = 'XPathFactoryBlock.cpp'
source_filename = "XPathFactoryBlock.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XPathFactoryBlock" = type { %"class.xalanc_1_10::XPathFactory", %"class.xalanc_1_10::XPathAllocator" }
%"class.xalanc_1_10::XPathFactory" = type { ptr }
%"class.xalanc_1_10::XPathAllocator" = type { %"class.xalanc_1_10::ArenaAllocator" }
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }
%"class.xalanc_1_10::XPath" = type <{ %"class.xalanc_1_10::XPathExpression", ptr, i8, [7 x i8] }>
%"class.xalanc_1_10::XPathExpression" = type { %"class.xalanc_1_10::XalanVector", i32, %"class.xalanc_1_10::XalanVector.0", i32, ptr, %"class.xalanc_1_10::XalanVector.1" }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }

$_ZNK11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_ = comdat any

@_ZTVN11xalanc_1_1017XPathFactoryBlockE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1017XPathFactoryBlockE, ptr @_ZN11xalanc_1_1017XPathFactoryBlockD2Ev, ptr @_ZN11xalanc_1_1017XPathFactoryBlockD0Ev, ptr @_ZN11xalanc_1_1017XPathFactoryBlock5resetEv, ptr @_ZN11xalanc_1_1017XPathFactoryBlock6createEv, ptr @_ZN11xalanc_1_1017XPathFactoryBlock14doReturnObjectEPKNS_5XPathEb] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1017XPathFactoryBlockE = dso_local constant [35 x i8] c"N11xalanc_1_1017XPathFactoryBlockE\00", align 1
@_ZTIN11xalanc_1_1012XPathFactoryE = external constant ptr
@_ZTIN11xalanc_1_1017XPathFactoryBlockE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1017XPathFactoryBlockE, ptr @_ZTIN11xalanc_1_1012XPathFactoryE }, align 8

@_ZN11xalanc_1_1017XPathFactoryBlockC1ERN11xercesc_2_713MemoryManagerEj = dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN11xalanc_1_1017XPathFactoryBlockC2ERN11xercesc_2_713MemoryManagerEj
@_ZN11xalanc_1_1017XPathFactoryBlockD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017XPathFactoryBlockD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XPathFactoryBlockC2ERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  tail call void @_ZN11xalanc_1_1012XPathFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1017XPathFactoryBlockE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathFactoryBlock", ptr %0, i64 0, i32 1
  %5 = zext i32 %2 to i64
  invoke void @_ZN11xalanc_1_1014XPathAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %5)
          to label %6 unwind label %7, !prof !46

6:                                                ; preds = %3
  ret void

7:                                                ; preds = %3
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1012XPathFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  resume { ptr, i32 } %8
}

declare void @_ZN11xalanc_1_1012XPathFactoryC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1014XPathAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1012XPathFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017XPathFactoryBlockD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 align 2 !prof !42 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1017XPathFactoryBlockE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathFactoryBlock", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1014XPathAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #6
  tail call void @_ZN11xalanc_1_1012XPathFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1014XPathAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017XPathFactoryBlockD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 align 2 !prof !47 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1017XPathFactoryBlockE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathFactoryBlock", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1014XPathAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #6
  tail call void @_ZN11xalanc_1_1012XPathFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  tail call void @_ZdlPv(ptr noundef %0) #7
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XPathFactoryBlock5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathFactoryBlock", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1014XPathAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
  ret void
}

declare void @_ZN11xalanc_1_1014XPathAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1017XPathFactoryBlock14doReturnObjectEPKNS_5XPathEb(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 zeroext %2) unnamed_addr #0 align 2 !prof !47 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathFactoryBlock", ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %1)
  ret i1 %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1017XPathFactoryBlock6createEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 align 2 !prof !49 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathFactoryBlock", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZN11xalanc_1_1014XPathAllocator6createEv(ptr noundef nonnull align 8 dereferenceable(40) %2)
  ret ptr %3
}

declare noundef ptr @_ZN11xalanc_1_1014XPathAllocator6createEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEE10ownsObjectEPKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !47 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator", ptr %0, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !50, !noalias !54
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !57, !noalias !54
  %9 = load ptr, ptr %8, align 8, !tbaa !43, !noalias !54
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !54
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 24), !noalias !54
  store ptr %12, ptr %4, align 8, !tbaa !50, !noalias !54
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !58, !noalias !54
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !60, !noalias !54
  br label %15

15:                                               ; preds = %2, %7
  %16 = load ptr, ptr %4, align 8, !tbaa !50, !noalias !61
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !58, !noalias !54
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load ptr, ptr %3, align 8, !tbaa !57, !noalias !62
  %22 = load ptr, ptr %21, align 8, !tbaa !43, !noalias !62
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8, !noalias !62
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef 24), !noalias !62
  store ptr %25, ptr %4, align 8, !tbaa !50, !noalias !62
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %25, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !58, !noalias !62
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %25, i64 0, i32 1
  store ptr %25, ptr %27, align 8, !tbaa !60, !noalias !62
  br label %28

28:                                               ; preds = %15, %20
  %29 = load ptr, ptr %4, align 8, !tbaa !50, !noalias !62
  br label %30

30:                                               ; preds = %33, %28
  %31 = phi ptr [ %29, %28 ], [ %35, %33 ]
  %32 = icmp ne ptr %31, %18
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XPath> *>::Node", ptr %31, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !60
  %36 = load ptr, ptr %35, align 8, !tbaa !65
  %37 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !66
  %39 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !70
  %41 = tail call i64 @llvm.umin.i64(i64 %40, i64 %38)
  %42 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %36, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !71
  %44 = icmp ule ptr %43, %1
  %45 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %43, i64 %41
  %46 = icmp ugt ptr %45, %1
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %30, !llvm.loop !72

48:                                               ; preds = %33, %30
  ret i1 %32
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!41}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @_ZN11xalanc_1_1017XPathFactoryBlockC2ERN11xercesc_2_713MemoryManagerEj, ptr @_ZN11xalanc_1_1012XPathFactoryC2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1017XPathFactoryBlockC2ERN11xercesc_2_713MemoryManagerEj, ptr @_ZN11xalanc_1_1014XPathAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1017XPathFactoryBlockD2Ev, ptr @_ZN11xalanc_1_1014XPathAllocatorD1Ev, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1017XPathFactoryBlockD2Ev, ptr @_ZN11xalanc_1_1012XPathFactoryD2Ev, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1017XPathFactoryBlock5resetEv, ptr @_ZN11xalanc_1_1014XPathAllocator5resetEv, i64 3}
!40 = !{ptr @_ZN11xalanc_1_1017XPathFactoryBlock6createEv, ptr @_ZN11xalanc_1_1014XPathAllocator6createEv, i64 164}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 1}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!"branch_weights", i32 1, i32 0}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!"function_entry_count", i64 3}
!49 = !{!"function_entry_count", i64 164}
!50 = !{!51, !52, i64 8}
!51 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEEE", !52, i64 0, !52, i64 8, !52, i64 16}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !45, i64 0}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE4rendEv: argument 0"}
!56 = distinct !{!56, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE4rendEv"}
!57 = !{!51, !52, i64 0}
!58 = !{!59, !52, i64 16}
!59 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE4NodeE", !52, i64 0, !52, i64 8, !52, i64 16}
!60 = !{!59, !52, i64 8}
!61 = !{}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE6rbeginEv: argument 0"}
!64 = distinct !{!64, !"_ZNK11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEE6rbeginEv"}
!65 = !{!52, !52, i64 0}
!66 = !{!67, !69, i64 8}
!67 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_5XPathEmEE", !68, i64 0, !69, i64 8, !69, i64 16, !52, i64 24}
!68 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_5XPathEEE", !52, i64 0}
!69 = !{!"long", !53, i64 0}
!70 = !{!67, !69, i64 16}
!71 = !{!67, !52, i64 24}
!72 = distinct !{!72, !73, !74}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"llvm.loop.unroll.disable"}
