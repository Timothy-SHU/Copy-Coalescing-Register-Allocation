; ModuleID = 'XSModelGroupDefinition.cpp'
source_filename = "XSModelGroupDefinition.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XSModelGroupDefinition" = type { %"class.xercesc_2_7::XSObject.base", ptr, ptr, ptr }
%"class.xercesc_2_7::XSObject.base" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::XSObject" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::XSModel" = type <{ ptr, ptr, ptr, [14 x ptr], [14 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::XercesGroupInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$_ZN11xercesc_2_77XSModel16getURIStringPoolEv = comdat any

$_ZNK11xercesc_2_715XercesGroupInfo9getNameIdEv = comdat any

$_ZNK11xercesc_2_715XercesGroupInfo14getNamespaceIdEv = comdat any

@_ZTVN11xercesc_2_722XSModelGroupDefinitionE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722XSModelGroupDefinitionE, ptr @_ZN11xercesc_2_722XSModelGroupDefinitionD2Ev, ptr @_ZN11xercesc_2_722XSModelGroupDefinitionD0Ev, ptr @_ZN11xercesc_2_722XSModelGroupDefinition7getNameEv, ptr @_ZN11xercesc_2_722XSModelGroupDefinition12getNamespaceEv, ptr @_ZN11xercesc_2_722XSModelGroupDefinition16getNamespaceItemEv, ptr @_ZNK11xercesc_2_78XSObject5getIdEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_722XSModelGroupDefinitionE = dso_local constant [40 x i8] c"N11xercesc_2_722XSModelGroupDefinitionE\00", align 1
@_ZTIN11xercesc_2_78XSObjectE = external constant ptr
@_ZTIN11xercesc_2_722XSModelGroupDefinitionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722XSModelGroupDefinitionE, ptr @_ZTIN11xercesc_2_78XSObjectE }, align 8

@_ZN11xercesc_2_722XSModelGroupDefinitionC1EPNS_15XercesGroupInfoEPNS_10XSParticleEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_722XSModelGroupDefinitionC2EPNS_15XercesGroupInfoEPNS_10XSParticleEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE
@_ZN11xercesc_2_722XSModelGroupDefinitionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_722XSModelGroupDefinitionD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722XSModelGroupDefinitionC2EPNS_15XercesGroupInfoEPNS_10XSParticleEPNS_12XSAnnotationEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_78XSObjectC2ENS_11XSConstants14COMPONENT_TYPEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 6, ptr noundef %4, ptr noundef %5) #4
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_722XSModelGroupDefinitionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds %"class.xercesc_2_7::XSModelGroupDefinition", ptr %0, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !38
  %8 = getelementptr inbounds %"class.xercesc_2_7::XSModelGroupDefinition", ptr %0, i64 0, i32 2
  store ptr %2, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSModelGroupDefinition", ptr %0, i64 0, i32 3
  store ptr %3, ptr %9, align 8, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XSObjectC2ENS_11XSConstants14COMPONENT_TYPEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_722XSModelGroupDefinitionD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_722XSModelGroupDefinitionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSModelGroupDefinition", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(56) %3) #5
  br label %9

9:                                                ; preds = %5, %1
  tail call void @_ZN11xercesc_2_78XSObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #5
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78XSObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_722XSModelGroupDefinitionD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xercesc_2_722XSModelGroupDefinitionD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722XSModelGroupDefinition7getNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSObject", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XSModel16getURIStringPoolEv(ptr noundef nonnull align 8 dereferenceable(298) %3) #4
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSModelGroupDefinition", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = tail call noundef i32 @_ZNK11xercesc_2_715XercesGroupInfo9getNameIdEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #4
  %8 = load ptr, ptr %4, align 8, !tbaa !35
  %9 = getelementptr inbounds ptr, ptr %8, i64 10
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %7) #4
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_77XSModel16getURIStringPoolEv(ptr noundef nonnull align 8 dereferenceable(298) %0) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715XercesGroupInfo9getNameIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !51
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722XSModelGroupDefinition12getNamespaceEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSObject", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XSModel16getURIStringPoolEv(ptr noundef nonnull align 8 dereferenceable(298) %3) #4
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSModelGroupDefinition", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = tail call noundef i32 @_ZNK11xercesc_2_715XercesGroupInfo14getNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #4
  %8 = load ptr, ptr %4, align 8, !tbaa !35
  %9 = getelementptr inbounds ptr, ptr %8, i64 10
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %7) #4
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715XercesGroupInfo14getNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XercesGroupInfo", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !54
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722XSModelGroupDefinition16getNamespaceItemEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSObject", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(64) %0) #4
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XSModel16getNamespaceItemEPKt(ptr noundef nonnull align 8 dereferenceable(298) %3, ptr noundef %7) #4
  ret ptr %8
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XSModel16getNamespaceItemEPKt(ptr noundef nonnull align 8 dereferenceable(298), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722XSModelGroupDefinition13getModelGroupEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(64) %0) local_unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSModelGroupDefinition", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xercesc_2_710XSParticle17getModelGroupTermEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #4
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710XSParticle17getModelGroupTermEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_78XSObject5getIdEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize }
attributes #5 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
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
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
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
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !43, i64 40}
!39 = !{!"_ZTSN11xercesc_2_722XSModelGroupDefinitionE", !40, i64 0, !43, i64 40, !43, i64 48, !43, i64 56}
!40 = !{!"_ZTSN11xercesc_2_78XSObjectE", !41, i64 8, !43, i64 16, !43, i64 24, !44, i64 32}
!41 = !{!"_ZTSN11xercesc_2_711XSConstants14COMPONENT_TYPEE", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"any pointer", !42, i64 0}
!44 = !{!"int", !42, i64 0}
!45 = !{!39, !43, i64 48}
!46 = !{!39, !43, i64 56}
!47 = !{!40, !43, i64 16}
!48 = !{!49, !43, i64 248}
!49 = !{!"_ZTSN11xercesc_2_77XSModelE", !43, i64 0, !43, i64 8, !43, i64 16, !42, i64 24, !42, i64 136, !43, i64 248, !43, i64 256, !43, i64 264, !43, i64 272, !43, i64 280, !43, i64 288, !50, i64 296, !50, i64 297}
!50 = !{!"bool", !42, i64 0}
!51 = !{!52, !44, i64 16}
!52 = !{!"_ZTSN11xercesc_2_715XercesGroupInfoE", !53, i64 0, !50, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48}
!53 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!54 = !{!52, !44, i64 20}
