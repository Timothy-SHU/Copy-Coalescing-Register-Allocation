; ModuleID = 'XercesNamedNodeMapAttributeList.cpp'
source_filename = "XercesNamedNodeMapAttributeList.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XercesNamedNodeMapAttributeList" = type { %"class.xercesc_2_7::AttributeList", ptr, i64 }
%"class.xercesc_2_7::AttributeList" = type { ptr }

$_ZN11xercesc_2_713AttributeListC2Ev = comdat any

$_ZN11xercesc_2_713AttributeListD2Ev = comdat any

$_ZN11xercesc_2_713AttributeListD0Ev = comdat any

$_ZTSN11xercesc_2_713AttributeListE = comdat any

$_ZTIN11xercesc_2_713AttributeListE = comdat any

$_ZTVN11xercesc_2_713AttributeListE = comdat any

@_ZN11xalanc_1_1031XercesNamedNodeMapAttributeList12s_typeStringE = dso_local constant [6 x i16] [i16 67, i16 68, i16 65, i16 84, i16 65, i16 0], align 2
@_ZTVN11xalanc_1_1031XercesNamedNodeMapAttributeListE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1031XercesNamedNodeMapAttributeListE, ptr @_ZN11xalanc_1_1031XercesNamedNodeMapAttributeListD2Ev, ptr @_ZN11xalanc_1_1031XercesNamedNodeMapAttributeListD0Ev, ptr @_ZNK11xalanc_1_1031XercesNamedNodeMapAttributeList9getLengthEv, ptr @_ZNK11xalanc_1_1031XercesNamedNodeMapAttributeList7getNameEj, ptr @_ZNK11xalanc_1_1031XercesNamedNodeMapAttributeList7getTypeEj, ptr @_ZNK11xalanc_1_1031XercesNamedNodeMapAttributeList8getValueEj, ptr @_ZNK11xalanc_1_1031XercesNamedNodeMapAttributeList7getTypeEPKt, ptr @_ZNK11xalanc_1_1031XercesNamedNodeMapAttributeList8getValueEPKt, ptr @_ZNK11xalanc_1_1031XercesNamedNodeMapAttributeList8getValueEPKc] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1031XercesNamedNodeMapAttributeListE = dso_local constant [49 x i8] c"N11xalanc_1_1031XercesNamedNodeMapAttributeListE\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713AttributeListE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713AttributeListE\00", comdat, align 1
@_ZTIN11xercesc_2_713AttributeListE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713AttributeListE }, comdat, align 8
@_ZTIN11xalanc_1_1031XercesNamedNodeMapAttributeListE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1031XercesNamedNodeMapAttributeListE, ptr @_ZTIN11xercesc_2_713AttributeListE }, align 8
@_ZTVN11xercesc_2_713AttributeListE = linkonce_odr dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713AttributeListE, ptr @_ZN11xercesc_2_713AttributeListD2Ev, ptr @_ZN11xercesc_2_713AttributeListD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8

@_ZN11xalanc_1_1031XercesNamedNodeMapAttributeListC1EPKN11xercesc_2_715DOMNamedNodeMapE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1031XercesNamedNodeMapAttributeListC2EPKN11xercesc_2_715DOMNamedNodeMapE
@_ZN11xalanc_1_1031XercesNamedNodeMapAttributeListD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1031XercesNamedNodeMapAttributeListD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XercesNamedNodeMapAttributeListC2EPKN11xercesc_2_715DOMNamedNodeMapE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_713AttributeListC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #6
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1031XercesNamedNodeMapAttributeListE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesNamedNodeMapAttributeList", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !38
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = invoke noundef i64 %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
          to label %8 unwind label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XercesNamedNodeMapAttributeList", ptr %0, i64 0, i32 2
  %10 = add i64 %7, -1
  store i64 %10, ptr %9, align 8, !tbaa !44
  ret void

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_713AttributeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713AttributeListC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !45 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_713AttributeListE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XercesNamedNodeMapAttributeListD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_713AttributeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XercesNamedNodeMapAttributeListD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN11xalanc_1_1031XercesNamedNodeMapAttributeListD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  tail call void @_ZdlPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1031XercesNamedNodeMapAttributeList9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesNamedNodeMapAttributeList", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !44
  %4 = trunc i64 %3 to i32
  %5 = add i32 %4, 1
  ret i32 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1031XercesNamedNodeMapAttributeList7getNameEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesNamedNodeMapAttributeList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesNamedNodeMapAttributeList", ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !44
  %7 = zext i32 %1 to i64
  %8 = sub i64 %6, %7
  %9 = load ptr, ptr %4, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %8) #6
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12) #6
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xalanc_1_1031XercesNamedNodeMapAttributeList7getTypeEj(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #4 align 2 !prof !34 {
  ret ptr @_ZN11xalanc_1_1031XercesNamedNodeMapAttributeList12s_typeStringE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1031XercesNamedNodeMapAttributeList8getValueEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesNamedNodeMapAttributeList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesNamedNodeMapAttributeList", ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !44
  %7 = zext i32 %1 to i64
  %8 = sub i64 %6, %7
  %9 = load ptr, ptr %4, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %8) #6
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12) #6
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xalanc_1_1031XercesNamedNodeMapAttributeList7getTypeEPKt(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #4 align 2 !prof !34 {
  ret ptr @_ZN11xalanc_1_1031XercesNamedNodeMapAttributeList12s_typeStringE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1031XercesNamedNodeMapAttributeList8getValueEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesNamedNodeMapAttributeList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %8, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %8) #6
  br label %15

15:                                               ; preds = %2, %10
  %16 = phi ptr [ %14, %10 ], [ null, %2 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1031XercesNamedNodeMapAttributeList8getValueEPKc(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #4 align 2 !prof !34 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713AttributeListD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !45 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713AttributeListD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #9
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #5

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { builtin nounwind optsize }
attributes #9 = { noreturn nounwind }

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
!38 = !{!39, !41, i64 8}
!39 = !{!"_ZTSN11xalanc_1_1031XercesNamedNodeMapAttributeListE", !40, i64 0, !41, i64 8, !43, i64 16}
!40 = !{!"_ZTSN11xercesc_2_713AttributeListE"}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"long", !42, i64 0}
!44 = !{!39, !43, i64 16}
!45 = !{!"function_entry_count", i64 9}
