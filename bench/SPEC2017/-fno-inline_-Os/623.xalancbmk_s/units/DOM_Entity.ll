; ModuleID = 'DOM_Entity.cpp'
source_filename = "DOM_Entity.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMString" = type { ptr }
%"class.xercesc_2_7::DOM_Node" = type { ptr }
%"class.xercesc_2_7::DOM_NodeList" = type { ptr }

@_ZN11xercesc_2_710DOM_EntityC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_710DOM_EntityC2Ev
@_ZN11xercesc_2_710DOM_EntityC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_710DOM_EntityC2ERKS0_
@_ZN11xercesc_2_710DOM_EntityC1EPNS_10EntityImplE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_710DOM_EntityC2EPNS_10EntityImplE
@_ZN11xercesc_2_710DOM_EntityD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_710DOM_EntityD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DOM_EntityC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_78DOM_NodeC2EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #5
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_NodeC2EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DOM_EntityC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_78DOM_NodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_NodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DOM_EntityC2EPNS_10EntityImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_78DOM_NodeC2EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710DOM_EntityD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_78DOM_NodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78DOM_NodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_710DOM_EntityaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 !prof !35 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #5
  ret ptr %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_710DOM_EntityaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !35 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #5
  ret ptr %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_710DOM_Entity11getPublicIdEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %4 = load ptr, ptr %1, align 8, !tbaa !36
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = getelementptr inbounds ptr, ptr %5, i64 47
  %7 = load ptr, ptr %6, align 8
  call void %7(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %4) #5
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #5
          to label %8 unwind label %9

8:                                                ; preds = %2
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_710DOM_Entity11getSystemIdEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %4 = load ptr, ptr %1, align 8, !tbaa !36
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = getelementptr inbounds ptr, ptr %5, i64 48
  %7 = load ptr, ptr %6, align 8
  call void %7(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %4) #5
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #5
          to label %8 unwind label %9

8:                                                ; preds = %2
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_710DOM_Entity15getNotationNameEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %4 = load ptr, ptr %1, align 8, !tbaa !36
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = getelementptr inbounds ptr, ptr %5, i64 49
  %7 = load ptr, ptr %6, align 8
  call void %7(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(120) %4) #5
  invoke void @_ZNK11xercesc_2_79DOMString5cloneEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #5
          to label %8 unwind label %9

8:                                                ; preds = %2
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_710DOM_Entity13getFirstChildEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 !prof !35 {
  %3 = load ptr, ptr %1, align 8, !tbaa !36
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = getelementptr inbounds ptr, ptr %4, i64 20
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(84) %3) #5
  tail call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7) #5
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_710DOM_Entity12getLastChildEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 !prof !35 {
  %3 = load ptr, ptr %1, align 8, !tbaa !36
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = getelementptr inbounds ptr, ptr %4, i64 21
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(84) %3) #5
  tail call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7) #5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_710DOM_Entity13getChildNodesEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.xercesc_2_7::DOM_NodeList") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 !prof !35 {
  %3 = load ptr, ptr %1, align 8, !tbaa !36
  tail call void @_ZN11xercesc_2_712DOM_NodeListC1EPNS_12NodeListImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %3) #5
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOM_NodeListC1EPNS_12NodeListImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_710DOM_Entity13hasChildNodesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = getelementptr inbounds ptr, ptr %3, i64 30
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(84) %2) #5
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_710DOM_Entity18getPreviousSiblingEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 !prof !35 {
  %3 = load ptr, ptr %1, align 8, !tbaa !36
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = getelementptr inbounds ptr, ptr %4, i64 28
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(48) %3) #5
  tail call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7) #5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_710DOM_Entity14getNextSiblingEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 !prof !35 {
  %3 = load ptr, ptr %1, align 8, !tbaa !36
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = getelementptr inbounds ptr, ptr %4, i64 22
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(48) %3) #5
  tail call void @_ZN11xercesc_2_78DOM_NodeC1EPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7) #5
  ret void
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind }

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
!36 = !{!37, !38, i64 0}
!37 = !{!"_ZTSN11xercesc_2_78DOM_NodeE", !38, i64 0}
!38 = !{!"any pointer", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!42, !42, i64 0}
!42 = !{!"vtable pointer", !40, i64 0}
