; ModuleID = 'XSElementDeclaration.cpp'
source_filename = "XSElementDeclaration.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XSElementDeclaration" = type { %"class.xercesc_2_7::XSObject.base", i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSObject.base" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XSNamedMap" = type { ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSObject" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::XSModel" = type <{ ptr, ptr, ptr, [14 x ptr], [14 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>

$_ZN11xercesc_2_710XSNamedMapINS_15XSIDCDefinitionEED2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEED2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE9removeAllEv = comdat any

$__clang_call_terminate = comdat any

@_ZTVN11xercesc_2_720XSElementDeclarationE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720XSElementDeclarationE, ptr @_ZN11xercesc_2_720XSElementDeclarationD2Ev, ptr @_ZN11xercesc_2_720XSElementDeclarationD0Ev, ptr @_ZN11xercesc_2_720XSElementDeclaration7getNameEv, ptr @_ZN11xercesc_2_720XSElementDeclaration12getNamespaceEv, ptr @_ZN11xercesc_2_720XSElementDeclaration16getNamespaceItemEv, ptr @_ZNK11xercesc_2_78XSObject5getIdEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720XSElementDeclarationE = dso_local constant [38 x i8] c"N11xercesc_2_720XSElementDeclarationE\00", align 1
@_ZTIN11xercesc_2_78XSObjectE = external constant ptr
@_ZTIN11xercesc_2_720XSElementDeclarationE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720XSElementDeclarationE, ptr @_ZTIN11xercesc_2_78XSObjectE }, align 8

@_ZN11xercesc_2_720XSElementDeclarationC1EPNS_17SchemaElementDeclEPNS_16XSTypeDefinitionEPS0_PNS_12XSAnnotationEPNS_10XSNamedMapINS_15XSIDCDefinitionEEEPNS_7XSModelENS_11XSConstants5SCOPEEPNS_23XSComplexTypeDefinitionEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr), ptr @_ZN11xercesc_2_720XSElementDeclarationC2EPNS_17SchemaElementDeclEPNS_16XSTypeDefinitionEPS0_PNS_12XSAnnotationEPNS_10XSNamedMapINS_15XSIDCDefinitionEEEPNS_7XSModelENS_11XSConstants5SCOPEEPNS_23XSComplexTypeDefinitionEPNS_13MemoryManagerE
@_ZN11xercesc_2_720XSElementDeclarationD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_720XSElementDeclarationD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_720XSElementDeclarationC2EPNS_17SchemaElementDeclEPNS_16XSTypeDefinitionEPS0_PNS_12XSAnnotationEPNS_10XSNamedMapINS_15XSIDCDefinitionEEEPNS_7XSModelENS_11XSConstants5SCOPEEPNS_23XSComplexTypeDefinitionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_78XSObjectC2ENS_11XSConstants14COMPONENT_TYPEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 2, ptr noundef %6, ptr noundef %9)
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_720XSElementDeclarationE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %11 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 1
  store i16 0, ptr %11, align 4, !tbaa !38
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 2
  store i16 0, ptr %12, align 2, !tbaa !47
  %13 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 3
  store i32 %7, ptr %13, align 8, !tbaa !48
  %14 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 4
  store ptr %1, ptr %14, align 8, !tbaa !49
  %15 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 5
  store ptr %2, ptr %15, align 8, !tbaa !50
  %16 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 6
  store ptr %8, ptr %16, align 8, !tbaa !51
  %17 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 7
  store ptr %3, ptr %17, align 8, !tbaa !52
  %18 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 8
  store ptr %4, ptr %18, align 8, !tbaa !53
  %19 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 9
  store ptr %5, ptr %19, align 8, !tbaa !54
  %20 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 8
  %21 = load i32, ptr %20, align 4, !tbaa !55
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %10
  %24 = and i32 %21, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i16 1, ptr %11, align 4, !tbaa !38
  br label %27

27:                                               ; preds = %26, %23
  %28 = and i32 %21, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i16, ptr %11, align 4, !tbaa !38
  %32 = or i16 %31, 2
  store i16 %32, ptr %11, align 4, !tbaa !38
  br label %33

33:                                               ; preds = %30, %27
  %34 = and i32 %21, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i16, ptr %11, align 4, !tbaa !38
  %38 = or i16 %37, 4
  store i16 %38, ptr %11, align 4, !tbaa !38
  br label %39

39:                                               ; preds = %33, %36, %10
  %40 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !65
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %39
  %44 = and i32 %41, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i16 1, ptr %12, align 2, !tbaa !47
  br label %47

47:                                               ; preds = %46, %43
  %48 = and i32 %41, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i16, ptr %12, align 2, !tbaa !47
  %52 = or i16 %51, 2
  store i16 %52, ptr %12, align 2, !tbaa !47
  br label %53

53:                                               ; preds = %47, %50, %39
  ret void
}

declare void @_ZN11xercesc_2_78XSObjectC2ENS_11XSConstants14COMPONENT_TYPEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78XSObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_720XSElementDeclarationD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_720XSElementDeclarationE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710XSNamedMapINS_15XSIDCDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #7
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZN11xercesc_2_78XSObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XSNamedMapINS_15XSIDCDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #7
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !68
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %11) #7
  br label %14

14:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_720XSElementDeclarationD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_720XSElementDeclarationD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_720XSElementDeclaration7getNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !70
  ret ptr %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_720XSElementDeclaration12getNamespaceEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSObject", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !69
  %10 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %9, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !75
  %12 = load ptr, ptr %5, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 10
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %11)
  ret ptr %15
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_720XSElementDeclaration16getNamespaceItemEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSObject", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(96) %0)
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XSModel16getNamespaceItemEPKt(ptr noundef nonnull align 8 dereferenceable(298) %3, ptr noundef %7)
  ret ptr %8
}

declare noundef ptr @_ZN11xercesc_2_77XSModel16getNamespaceItemEPKt(ptr noundef nonnull align 8 dereferenceable(298), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_720XSElementDeclaration17getConstraintTypeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) local_unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !76
  %6 = and i32 %5, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %3, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %8, %1
  %14 = phi i32 [ 2, %1 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_720XSElementDeclaration18getConstraintValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) local_unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %3, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  ret ptr %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_720XSElementDeclaration11getNillableEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) local_unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !76
  %6 = and i32 %5, 1
  %7 = icmp ne i32 %6, 0
  ret i1 %7
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_720XSElementDeclaration28isSubstitutionGroupExclusionENS_11XSConstants15DERIVATION_TYPEE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #5 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 2, !tbaa !47
  %5 = sext i16 %4 to i32
  %6 = and i32 %5, %1
  %7 = icmp ne i32 %6, 0
  ret i1 %7
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_720XSElementDeclaration24isDisallowedSubstitutionENS_11XSConstants15DERIVATION_TYPEE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #5 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 4, !tbaa !38
  %5 = sext i16 %4 to i32
  %6 = and i32 %5, %1
  %7 = icmp ne i32 %6, 0
  ret i1 %7
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_720XSElementDeclaration11getAbstractEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) local_unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 8, !tbaa !76
  %6 = and i32 %5, 2
  %7 = icmp ne i32 %6, 0
  ret i1 %7
}

declare noundef i32 @_ZNK11xercesc_2_78XSObject5getIdEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %2 unwind label %18

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !78
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  %6 = load ptr, ptr %3, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !81
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !35
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #7
  br label %17

17:                                               ; preds = %13, %9
  ret void

18:                                               ; preds = %2, %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #8
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !82
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !83
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %38, %5
  store i32 0, ptr %2, align 4, !tbaa !82
  br label %45

13:                                               ; preds = %9, %38
  %14 = phi i64 [ 0, %9 ], [ %41, %38 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !80
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !84
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !85
  %23 = load i8, ptr %11, align 8, !tbaa !87, !range !88, !noundef !89
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !90
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !35
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(72) %26) #7
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !78
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20)
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !91

38:                                               ; preds = %32, %13
  %39 = load ptr, ptr %10, align 8, !tbaa !80
  %40 = getelementptr inbounds ptr, ptr %39, i64 %14
  store ptr null, ptr %40, align 8, !tbaa !84
  %41 = add nuw nsw i64 %14, 1
  %42 = load i32, ptr %6, align 8, !tbaa !83
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %13, label %12, !llvm.loop !94

45:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #7
  tail call void @_ZSt9terminatev() #8
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
!38 = !{!39, !45, i64 36}
!39 = !{!"_ZTSN11xercesc_2_720XSElementDeclarationE", !40, i64 0, !45, i64 36, !45, i64 38, !46, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88}
!40 = !{!"_ZTSN11xercesc_2_78XSObjectE", !41, i64 8, !43, i64 16, !43, i64 24, !44, i64 32}
!41 = !{!"_ZTSN11xercesc_2_711XSConstants14COMPONENT_TYPEE", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"any pointer", !42, i64 0}
!44 = !{!"int", !42, i64 0}
!45 = !{!"short", !42, i64 0}
!46 = !{!"_ZTSN11xercesc_2_711XSConstants5SCOPEE", !42, i64 0}
!47 = !{!39, !45, i64 38}
!48 = !{!39, !46, i64 40}
!49 = !{!39, !43, i64 48}
!50 = !{!39, !43, i64 56}
!51 = !{!39, !43, i64 64}
!52 = !{!39, !43, i64 72}
!53 = !{!39, !43, i64 80}
!54 = !{!39, !43, i64 88}
!55 = !{!56, !44, i64 60}
!56 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !57, i64 0, !61, i64 36, !62, i64 40, !63, i64 44, !64, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !44, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !60, i64 144, !60, i64 145, !60, i64 146}
!57 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !58, i64 0, !43, i64 8, !43, i64 16, !59, i64 24, !44, i64 28, !60, i64 32}
!58 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!59 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !42, i64 0}
!60 = !{!"bool", !42, i64 0}
!61 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !42, i64 0}
!62 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !42, i64 0}
!63 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !42, i64 0}
!64 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !42, i64 0}
!65 = !{!56, !44, i64 56}
!66 = !{!67, !43, i64 16}
!67 = !{!"_ZTSN11xercesc_2_710XSNamedMapINS_15XSIDCDefinitionEEE", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24}
!68 = !{!67, !43, i64 24}
!69 = !{!57, !43, i64 16}
!70 = !{!71, !43, i64 32}
!71 = !{!"_ZTSN11xercesc_2_75QNameE", !58, i64 0, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48}
!72 = !{!40, !43, i64 16}
!73 = !{!74, !43, i64 248}
!74 = !{!"_ZTSN11xercesc_2_77XSModelE", !43, i64 0, !43, i64 8, !43, i64 16, !42, i64 24, !42, i64 136, !43, i64 248, !43, i64 256, !43, i64 264, !43, i64 272, !43, i64 280, !43, i64 288, !60, i64 296, !60, i64 297}
!75 = !{!71, !44, i64 20}
!76 = !{!56, !44, i64 64}
!77 = !{!56, !43, i64 72}
!78 = !{!79, !43, i64 0}
!79 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEEE", !43, i64 0, !60, i64 8, !43, i64 16, !44, i64 24, !44, i64 28, !43, i64 32}
!80 = !{!79, !43, i64 16}
!81 = !{!79, !43, i64 32}
!82 = !{!79, !44, i64 28}
!83 = !{!79, !44, i64 24}
!84 = !{!43, !43, i64 0}
!85 = !{!86, !43, i64 8}
!86 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEE", !43, i64 0, !43, i64 8, !43, i64 16, !44, i64 24}
!87 = !{!79, !60, i64 8}
!88 = !{i8 0, i8 2}
!89 = !{}
!90 = !{!86, !43, i64 0}
!91 = distinct !{!91, !92, !93}
!92 = !{!"llvm.loop.mustprogress"}
!93 = !{!"llvm.loop.unroll.disable"}
!94 = distinct !{!94, !92, !93}
