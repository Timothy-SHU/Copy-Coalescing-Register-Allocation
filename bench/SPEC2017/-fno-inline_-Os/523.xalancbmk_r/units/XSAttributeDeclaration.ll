; ModuleID = 'XSAttributeDeclaration.cpp'
source_filename = "XSAttributeDeclaration.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XSAttributeDeclaration" = type { %"class.xercesc_2_7::XSObject.base", ptr, ptr, ptr, i32, ptr }
%"class.xercesc_2_7::XSObject.base" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::SchemaAttDef" = type { %"class.xercesc_2_7::XMLAttDef", i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSObject" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::XSModel" = type <{ ptr, ptr, ptr, [14 x ptr], [14 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, [6 x i8] }>

$_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZN11xercesc_2_77XSModel16getURIStringPoolEv = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef8getValueEv = comdat any

@_ZTVN11xercesc_2_722XSAttributeDeclarationE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722XSAttributeDeclarationE, ptr @_ZN11xercesc_2_722XSAttributeDeclarationD2Ev, ptr @_ZN11xercesc_2_722XSAttributeDeclarationD0Ev, ptr @_ZN11xercesc_2_722XSAttributeDeclaration7getNameEv, ptr @_ZN11xercesc_2_722XSAttributeDeclaration12getNamespaceEv, ptr @_ZN11xercesc_2_722XSAttributeDeclaration16getNamespaceItemEv, ptr @_ZNK11xercesc_2_78XSObject5getIdEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_722XSAttributeDeclarationE = dso_local constant [40 x i8] c"N11xercesc_2_722XSAttributeDeclarationE\00", align 1
@_ZTIN11xercesc_2_78XSObjectE = external constant ptr
@_ZTIN11xercesc_2_722XSAttributeDeclarationE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722XSAttributeDeclarationE, ptr @_ZTIN11xercesc_2_78XSObjectE }, align 8

@_ZN11xercesc_2_722XSAttributeDeclarationC1EPNS_12SchemaAttDefEPNS_22XSSimpleTypeDefinitionEPNS_12XSAnnotationEPNS_7XSModelENS_11XSConstants5SCOPEEPNS_23XSComplexTypeDefinitionEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr), ptr @_ZN11xercesc_2_722XSAttributeDeclarationC2EPNS_12SchemaAttDefEPNS_22XSSimpleTypeDefinitionEPNS_12XSAnnotationEPNS_7XSModelENS_11XSConstants5SCOPEEPNS_23XSComplexTypeDefinitionEPNS_13MemoryManagerE
@_ZN11xercesc_2_722XSAttributeDeclarationD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_722XSAttributeDeclarationD2Ev

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722XSAttributeDeclarationC2EPNS_12SchemaAttDefEPNS_22XSSimpleTypeDefinitionEPNS_12XSAnnotationEPNS_7XSModelENS_11XSConstants5SCOPEEPNS_23XSComplexTypeDefinitionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_78XSObjectC2ENS_11XSConstants14COMPONENT_TYPEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 1, ptr noundef %4, ptr noundef %7) #4
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_722XSAttributeDeclarationE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %9 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !38
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 2
  store ptr %2, ptr %10, align 8, !tbaa !46
  %11 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 3
  store ptr %3, ptr %11, align 8, !tbaa !47
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 4
  store i32 %5, ptr %12, align 8, !tbaa !48
  %13 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 5
  store ptr %6, ptr %13, align 8, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XSObjectC2ENS_11XSConstants14COMPONENT_TYPEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78XSObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_722XSAttributeDeclarationD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_78XSObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_722XSAttributeDeclarationD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xercesc_2_722XSAttributeDeclarationD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722XSAttributeDeclaration7getNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %3) #4
  %5 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %4) #4
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #3 comdat align 2 !prof !50 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaAttDef", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722XSAttributeDeclaration12getNamespaceEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSObject", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XSModel16getURIStringPoolEv(ptr noundef nonnull align 8 dereferenceable(298) %3) #4
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = tail call noundef ptr @_ZNK11xercesc_2_712SchemaAttDef10getAttNameEv(ptr noundef nonnull align 8 dereferenceable(120) %6) #4
  %8 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %7) #4
  %9 = load ptr, ptr %4, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 10
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %8) #4
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_77XSModel16getURIStringPoolEv(ptr noundef nonnull align 8 dereferenceable(298) %0) local_unnamed_addr #3 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !69
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722XSAttributeDeclaration16getNamespaceItemEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSObject", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(80) %0) #4
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XSModel16getNamespaceItemEPKt(ptr noundef nonnull align 8 dereferenceable(298) %3, ptr noundef %7) #4
  ret ptr %8
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XSModel16getNamespaceItemEPKt(ptr noundef nonnull align 8 dereferenceable(298), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_722XSAttributeDeclaration17getConstraintTypeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !48
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %19

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %7) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr %6, align 8, !tbaa !38
  %12 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %11) #4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %6, align 8, !tbaa !38
  %16 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %15) #4
  %17 = icmp eq i32 %16, 3
  %18 = select i1 %17, i32 2, i32 0
  br label %19

19:                                               ; preds = %14, %10, %5, %1
  %20 = phi i32 [ 0, %1 ], [ 1, %5 ], [ 2, %10 ], [ %18, %14 ]
  ret i32 %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !70 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !71
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722XSAttributeDeclaration18getConstraintValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !48
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = tail call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %7) #4
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi ptr [ %8, %5 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_722XSAttributeDeclaration11getRequiredEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSAttributeDeclaration", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !38
  %8 = tail call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %7) #4
  %9 = icmp eq i32 %8, 3
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ true, %1 ], [ %9, %6 ]
  ret i1 %11
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_78XSObject5getIdEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

attributes #0 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!39 = !{!"_ZTSN11xercesc_2_722XSAttributeDeclarationE", !40, i64 0, !43, i64 40, !43, i64 48, !43, i64 56, !45, i64 64, !43, i64 72}
!40 = !{!"_ZTSN11xercesc_2_78XSObjectE", !41, i64 8, !43, i64 16, !43, i64 24, !44, i64 32}
!41 = !{!"_ZTSN11xercesc_2_711XSConstants14COMPONENT_TYPEE", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"any pointer", !42, i64 0}
!44 = !{!"int", !42, i64 0}
!45 = !{!"_ZTSN11xercesc_2_711XSConstants5SCOPEE", !42, i64 0}
!46 = !{!39, !43, i64 48}
!47 = !{!39, !43, i64 56}
!48 = !{!39, !45, i64 64}
!49 = !{!39, !43, i64 72}
!50 = !{!"function_entry_count", i64 9774}
!51 = !{!52, !43, i64 72}
!52 = !{!"_ZTSN11xercesc_2_712SchemaAttDefE", !53, i64 0, !44, i64 56, !59, i64 60, !60, i64 64, !61, i64 68, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112}
!53 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !54, i64 0, !55, i64 8, !56, i64 12, !57, i64 16, !58, i64 20, !58, i64 21, !44, i64 24, !43, i64 32, !43, i64 40, !43, i64 48}
!54 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!55 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !42, i64 0}
!56 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !42, i64 0}
!57 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !42, i64 0}
!58 = !{!"bool", !42, i64 0}
!59 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !42, i64 0}
!60 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !42, i64 0}
!61 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !42, i64 0}
!62 = !{!"function_entry_count", i64 2192223}
!63 = !{!64, !43, i64 32}
!64 = !{!"_ZTSN11xercesc_2_75QNameE", !54, i64 0, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48}
!65 = !{!40, !43, i64 16}
!66 = !{!67, !43, i64 248}
!67 = !{!"_ZTSN11xercesc_2_77XSModelE", !43, i64 0, !43, i64 8, !43, i64 16, !42, i64 24, !42, i64 136, !43, i64 248, !43, i64 256, !43, i64 264, !43, i64 272, !43, i64 280, !43, i64 288, !58, i64 296, !58, i64 297}
!68 = !{!"function_entry_count", i64 6553673}
!69 = !{!64, !44, i64 20}
!70 = !{!"function_entry_count", i64 401820}
!71 = !{!53, !55, i64 8}
!72 = !{!"function_entry_count", i64 19496}
!73 = !{!53, !43, i64 32}
