; ModuleID = 'XSElementDeclaration.cpp'
source_filename = "XSElementDeclaration.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XSElementDeclaration" = type { %"class.xercesc_2_7::XSObject.base", i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSObject.base" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::XSObject" = type <{ ptr, i32, [4 x i8], ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XSNamedMap" = type { ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSModel" = type <{ ptr, ptr, ptr, [14 x ptr], [14 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, [6 x i8] }>

$_ZNK11xercesc_2_717SchemaElementDecl11getBlockSetEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl11getFinalSetEv = comdat any

$_ZN11xercesc_2_710XSNamedMapINS_15XSIDCDefinitionEED2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEED2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE9removeAllEv = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE7isEmptyEv = comdat any

$_ZN11xercesc_2_714XMLElementDecl14getElementNameEv = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZN11xercesc_2_77XSModel16getURIStringPoolEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl6getURIEv = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl12getMiscFlagsEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl15getDefaultValueEv = comdat any

@_ZTVN11xercesc_2_720XSElementDeclarationE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720XSElementDeclarationE, ptr @_ZN11xercesc_2_720XSElementDeclarationD2Ev, ptr @_ZN11xercesc_2_720XSElementDeclarationD0Ev, ptr @_ZN11xercesc_2_720XSElementDeclaration7getNameEv, ptr @_ZN11xercesc_2_720XSElementDeclaration12getNamespaceEv, ptr @_ZN11xercesc_2_720XSElementDeclaration16getNamespaceItemEv, ptr @_ZNK11xercesc_2_78XSObject5getIdEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720XSElementDeclarationE = dso_local constant [38 x i8] c"N11xercesc_2_720XSElementDeclarationE\00", align 1
@_ZTIN11xercesc_2_78XSObjectE = external constant ptr
@_ZTIN11xercesc_2_720XSElementDeclarationE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720XSElementDeclarationE, ptr @_ZTIN11xercesc_2_78XSObjectE }, align 8

@_ZN11xercesc_2_720XSElementDeclarationC1EPNS_17SchemaElementDeclEPNS_16XSTypeDefinitionEPS0_PNS_12XSAnnotationEPNS_10XSNamedMapINS_15XSIDCDefinitionEEEPNS_7XSModelENS_11XSConstants5SCOPEEPNS_23XSComplexTypeDefinitionEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr), ptr @_ZN11xercesc_2_720XSElementDeclarationC2EPNS_17SchemaElementDeclEPNS_16XSTypeDefinitionEPS0_PNS_12XSAnnotationEPNS_10XSNamedMapINS_15XSIDCDefinitionEEEPNS_7XSModelENS_11XSConstants5SCOPEEPNS_23XSComplexTypeDefinitionEPNS_13MemoryManagerE
@_ZN11xercesc_2_720XSElementDeclarationD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_720XSElementDeclarationD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_720XSElementDeclarationD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_720XSElementDeclarationD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_720XSElementDeclaration7getNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = tail call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %3) #7
  %5 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %4) #7
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_720XSElementDeclaration12getNamespaceEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSObject", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XSModel16getURIStringPoolEv(ptr noundef nonnull align 8 dereferenceable(298) %3) #7
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = tail call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl6getURIEv(ptr noundef nonnull align 8 dereferenceable(33) %6) #7
  %8 = load ptr, ptr %4, align 8, !tbaa !50
  %9 = getelementptr inbounds ptr, ptr %8, i64 10
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %7) #7
  ret ptr %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_720XSElementDeclaration16getNamespaceItemEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSObject", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = load ptr, ptr %0, align 8, !tbaa !50
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(96) %0) #7
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XSModel16getNamespaceItemEPKt(ptr noundef nonnull align 8 dereferenceable(298) %3, ptr noundef %7) #7
  ret ptr %8
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_78XSObject5getIdEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_720XSElementDeclarationC2EPNS_17SchemaElementDeclEPNS_16XSTypeDefinitionEPS0_PNS_12XSAnnotationEPNS_10XSNamedMapINS_15XSIDCDefinitionEEEPNS_7XSModelENS_11XSConstants5SCOPEEPNS_23XSComplexTypeDefinitionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_78XSObjectC2ENS_11XSConstants14COMPONENT_TYPEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 2, ptr noundef %6, ptr noundef %9) #7
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_720XSElementDeclarationE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %11 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 1
  store i16 0, ptr %11, align 4, !tbaa !52
  %12 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 2
  store i16 0, ptr %12, align 2, !tbaa !53
  %13 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 3
  store i32 %7, ptr %13, align 8, !tbaa !54
  %14 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 4
  store ptr %1, ptr %14, align 8, !tbaa !39
  %15 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 5
  store ptr %2, ptr %15, align 8, !tbaa !55
  %16 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 6
  store ptr %8, ptr %16, align 8, !tbaa !56
  %17 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 7
  store ptr %3, ptr %17, align 8, !tbaa !57
  %18 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 8
  store ptr %4, ptr %18, align 8, !tbaa !58
  %19 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 9
  store ptr %5, ptr %19, align 8, !tbaa !59
  %20 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl11getBlockSetEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #7
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %10
  %23 = and i32 %20, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i16, ptr %11, align 4, !tbaa !52
  %27 = or i16 %26, 1
  store i16 %27, ptr %11, align 4, !tbaa !52
  br label %28

28:                                               ; preds = %25, %22
  %29 = and i32 %20, 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i16, ptr %11, align 4, !tbaa !52
  %33 = or i16 %32, 2
  store i16 %33, ptr %11, align 4, !tbaa !52
  br label %34

34:                                               ; preds = %31, %28
  %35 = and i32 %20, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i16, ptr %11, align 4, !tbaa !52
  %39 = or i16 %38, 4
  store i16 %39, ptr %11, align 4, !tbaa !52
  br label %40

40:                                               ; preds = %34, %37, %10
  %41 = load ptr, ptr %14, align 8, !tbaa !39
  %42 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl11getFinalSetEv(ptr noundef nonnull align 8 dereferenceable(147) %41) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %40
  %45 = and i32 %42, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i16, ptr %12, align 2, !tbaa !53
  %49 = or i16 %48, 1
  store i16 %49, ptr %12, align 2, !tbaa !53
  br label %50

50:                                               ; preds = %47, %44
  %51 = and i32 %42, 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i16, ptr %12, align 2, !tbaa !53
  %55 = or i16 %54, 2
  store i16 %55, ptr %12, align 2, !tbaa !53
  br label %56

56:                                               ; preds = %50, %53, %40
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XSObjectC2ENS_11XSConstants14COMPONENT_TYPEEPNS_7XSModelEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl11getBlockSetEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #0 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !60
  ret i32 %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl11getFinalSetEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #0 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !70
  ret i32 %3
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78XSObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_720XSElementDeclarationD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 align 2 !prof !38 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_720XSElementDeclarationE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710XSNamedMapINS_15XSIDCDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #6
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZN11xercesc_2_78XSObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XSNamedMapINS_15XSIDCDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !50
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #6
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::XSNamedMap", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #6
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %11) #6
  br label %14

14:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #7
          to label %2 unwind label %18

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !74
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = load ptr, ptr %3, align 8, !tbaa !50
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #7
          to label %9 unwind label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !50
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #6
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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !38 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #7
  br i1 %2, label %48, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !78
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %11, align 4, !tbaa !79
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !76
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !80
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !81
  %23 = load i8, ptr %9, align 8, !tbaa !83, !range !84, !noundef !85
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !86
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !50
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(72) %26) #6
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !74
  %34 = load ptr, ptr %33, align 8, !tbaa !50
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #7
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !87

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !76
  %40 = load i32, ptr %4, align 8, !tbaa !78
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !80
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !llvm.loop !89

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #8
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !79
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #0 comdat align 2 !prof !90 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !92 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_77XSModel16getURIStringPoolEv(ptr noundef nonnull align 8 dereferenceable(298) %0) local_unnamed_addr #0 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSModel", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714XMLElementDecl6getURIEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #1 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  %4 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #7
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !98 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !99
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XSModel16getNamespaceItemEPKt(ptr noundef nonnull align 8 dereferenceable(298), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_720XSElementDeclaration17getConstraintTypeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getMiscFlagsEv(ptr noundef nonnull align 8 dereferenceable(147) %3) #7
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !39
  %9 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(147) %8) #7
  %10 = icmp ne ptr %9, null
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i32 [ 2, %1 ], [ %11, %7 ]
  ret i32 %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getMiscFlagsEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #0 comdat align 2 !prof !100 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !101
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #0 comdat align 2 !prof !102 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_720XSElementDeclaration18getConstraintValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl15getDefaultValueEv(ptr noundef nonnull align 8 dereferenceable(147) %3) #7
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_720XSElementDeclaration11getNillableEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getMiscFlagsEv(ptr noundef nonnull align 8 dereferenceable(147) %3) #7
  %5 = and i32 %4, 1
  %6 = icmp ne i32 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_720XSElementDeclaration28isSubstitutionGroupExclusionENS_11XSConstants15DERIVATION_TYPEE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #5 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 2
  %4 = load i16, ptr %3, align 2, !tbaa !53
  %5 = sext i16 %4 to i32
  %6 = and i32 %5, %1
  %7 = icmp ne i32 %6, 0
  ret i1 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_720XSElementDeclaration24isDisallowedSubstitutionENS_11XSConstants15DERIVATION_TYPEE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, i32 noundef %1) local_unnamed_addr #5 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 4, !tbaa !52
  %5 = sext i16 %4 to i32
  %6 = and i32 %5, %1
  %7 = icmp ne i32 %6, 0
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_720XSElementDeclaration11getAbstractEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSElementDeclaration", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getMiscFlagsEv(ptr noundef nonnull align 8 dereferenceable(147) %3) #7
  %5 = and i32 %4, 2
  %6 = icmp ne i32 %5, 0
  ret i1 %6
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!37}

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
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36}
!36 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl6getURIEv, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 79}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !45, i64 48}
!40 = !{!"_ZTSN11xercesc_2_720XSElementDeclarationE", !41, i64 0, !47, i64 36, !47, i64 38, !48, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88}
!41 = !{!"_ZTSN11xercesc_2_78XSObjectE", !42, i64 8, !45, i64 16, !45, i64 24, !46, i64 32}
!42 = !{!"_ZTSN11xercesc_2_711XSConstants14COMPONENT_TYPEE", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!"any pointer", !43, i64 0}
!46 = !{!"int", !43, i64 0}
!47 = !{!"short", !43, i64 0}
!48 = !{!"_ZTSN11xercesc_2_711XSConstants5SCOPEE", !43, i64 0}
!49 = !{!41, !45, i64 16}
!50 = !{!51, !51, i64 0}
!51 = !{!"vtable pointer", !44, i64 0}
!52 = !{!40, !47, i64 36}
!53 = !{!40, !47, i64 38}
!54 = !{!40, !48, i64 40}
!55 = !{!40, !45, i64 56}
!56 = !{!40, !45, i64 64}
!57 = !{!40, !45, i64 72}
!58 = !{!40, !45, i64 80}
!59 = !{!40, !45, i64 88}
!60 = !{!61, !46, i64 60}
!61 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !62, i64 0, !66, i64 36, !67, i64 40, !68, i64 44, !69, i64 48, !46, i64 52, !46, i64 56, !46, i64 60, !46, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !65, i64 144, !65, i64 145, !65, i64 146}
!62 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !63, i64 0, !45, i64 8, !45, i64 16, !64, i64 24, !46, i64 28, !65, i64 32}
!63 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!64 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !43, i64 0}
!65 = !{!"bool", !43, i64 0}
!66 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !43, i64 0}
!67 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !43, i64 0}
!68 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !43, i64 0}
!69 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !43, i64 0}
!70 = !{!61, !46, i64 56}
!71 = !{!72, !45, i64 16}
!72 = !{!"_ZTSN11xercesc_2_710XSNamedMapINS_15XSIDCDefinitionEEE", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24}
!73 = !{!72, !45, i64 24}
!74 = !{!75, !45, i64 0}
!75 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_15XSIDCDefinitionEEE", !45, i64 0, !65, i64 8, !45, i64 16, !46, i64 24, !46, i64 28, !45, i64 32}
!76 = !{!75, !45, i64 16}
!77 = !{!75, !45, i64 32}
!78 = !{!75, !46, i64 24}
!79 = !{!75, !46, i64 28}
!80 = !{!45, !45, i64 0}
!81 = !{!82, !45, i64 8}
!82 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_15XSIDCDefinitionEEE", !45, i64 0, !45, i64 8, !45, i64 16, !46, i64 24}
!83 = !{!75, !65, i64 8}
!84 = !{i8 0, i8 2}
!85 = !{}
!86 = !{!82, !45, i64 0}
!87 = distinct !{!87, !88}
!88 = !{!"llvm.loop.mustprogress"}
!89 = distinct !{!89, !88}
!90 = !{!"function_entry_count", i64 833744}
!91 = !{!62, !45, i64 16}
!92 = !{!"function_entry_count", i64 2192223}
!93 = !{!94, !45, i64 32}
!94 = !{!"_ZTSN11xercesc_2_75QNameE", !63, i64 0, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48}
!95 = !{!96, !45, i64 248}
!96 = !{!"_ZTSN11xercesc_2_77XSModelE", !45, i64 0, !45, i64 8, !45, i64 16, !43, i64 24, !43, i64 136, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !45, i64 280, !45, i64 288, !65, i64 296, !65, i64 297}
!97 = !{!"function_entry_count", i64 79}
!98 = !{!"function_entry_count", i64 6553673}
!99 = !{!94, !46, i64 20}
!100 = !{!"function_entry_count", i64 992866}
!101 = !{!61, !46, i64 64}
!102 = !{!"function_entry_count", i64 336748}
!103 = !{!61, !45, i64 72}
