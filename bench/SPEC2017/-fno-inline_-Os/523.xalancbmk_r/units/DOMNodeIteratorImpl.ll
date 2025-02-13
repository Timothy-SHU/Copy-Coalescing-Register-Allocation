; ModuleID = 'DOMNodeIteratorImpl.cpp'
source_filename = "DOMNodeIteratorImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMNodeIteratorImpl" = type <{ %"class.xercesc_2_7::DOMNodeIterator", ptr, ptr, i64, ptr, i8, i8, [6 x i8], ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::DOMNodeIterator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$_ZN11xercesc_2_715DOMNodeIteratorC2Ev = comdat any

$_ZN11xercesc_2_715DOMNodeIteratorC2ERKS0_ = comdat any

$_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_715DOMNodeIteratorD2Ev = comdat any

$_ZN11xercesc_2_715DOMNodeIteratorD0Ev = comdat any

$_ZTSN11xercesc_2_715DOMNodeIteratorE = comdat any

$_ZTIN11xercesc_2_715DOMNodeIteratorE = comdat any

$_ZTVN11xercesc_2_715DOMNodeIteratorE = comdat any

@_ZTVN11xercesc_2_719DOMNodeIteratorImplE = dso_local unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719DOMNodeIteratorImplE, ptr @_ZN11xercesc_2_719DOMNodeIteratorImplD2Ev, ptr @_ZN11xercesc_2_719DOMNodeIteratorImplD0Ev, ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl7getRootEv, ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl13getWhatToShowEv, ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl9getFilterEv, ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl25getExpandEntityReferencesEv, ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl8nextNodeEv, ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl12previousNodeEv, ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl6detachEv, ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl7releaseEv] }, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_719DOMNodeIteratorImplE = dso_local constant [37 x i8] c"N11xercesc_2_719DOMNodeIteratorImplE\00", align 1
@_ZTSN11xercesc_2_715DOMNodeIteratorE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715DOMNodeIteratorE\00", comdat, align 1
@_ZTIN11xercesc_2_715DOMNodeIteratorE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715DOMNodeIteratorE }, comdat, align 8
@_ZTIN11xercesc_2_719DOMNodeIteratorImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719DOMNodeIteratorImplE, ptr @_ZTIN11xercesc_2_715DOMNodeIteratorE }, align 8
@_ZTVN11xercesc_2_715DOMNodeIteratorE = linkonce_odr dso_local unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715DOMNodeIteratorE, ptr @_ZN11xercesc_2_715DOMNodeIteratorD2Ev, ptr @_ZN11xercesc_2_715DOMNodeIteratorD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8

@_ZN11xercesc_2_719DOMNodeIteratorImplC1EPNS_11DOMDocumentEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb = dso_local unnamed_addr alias void (ptr, ptr, ptr, i64, ptr, i1), ptr @_ZN11xercesc_2_719DOMNodeIteratorImplC2EPNS_11DOMDocumentEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb
@_ZN11xercesc_2_719DOMNodeIteratorImplC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_719DOMNodeIteratorImplC2ERKS0_
@_ZN11xercesc_2_719DOMNodeIteratorImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_719DOMNodeIteratorImplD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMNodeIteratorImplC2EPNS_11DOMDocumentEPNS_7DOMNodeEmPNS_13DOMNodeFilterEb(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #1 align 2 !prof !34 {
  %7 = zext i1 %5 to i8
  tail call void @_ZN11xercesc_2_715DOMNodeIteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMNodeIteratorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 1
  store ptr %2, ptr %8, align 8, !tbaa !38
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !45
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 3
  store i64 %3, ptr %10, align 8, !tbaa !46
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 4
  store ptr %4, ptr %11, align 8, !tbaa !47
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 5
  store i8 %7, ptr %12, align 8, !tbaa !48
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 6
  store i8 0, ptr %13, align 1, !tbaa !49
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 8
  store ptr null, ptr %14, align 8, !tbaa !50
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 9
  store i8 1, ptr %15, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715DOMNodeIteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMNodeIteratorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMNodeIteratorImplC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(57) %1) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_715DOMNodeIteratorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMNodeIteratorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 1
  %5 = load <2 x ptr>, ptr %4, align 8, !tbaa !52
  store <2 x ptr> %5, ptr %3, align 8, !tbaa !52
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 3
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !46
  store i64 %8, ptr %6, align 8, !tbaa !46
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  store ptr %11, ptr %9, align 8, !tbaa !47
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 5
  %14 = load i8, ptr %13, align 8, !tbaa !48, !range !53, !noundef !54
  store i8 %14, ptr %12, align 8, !tbaa !48
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 6
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !49, !range !53, !noundef !54
  store i8 %17, ptr %15, align 1, !tbaa !49
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 8
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !50
  store ptr %20, ptr %18, align 8, !tbaa !50
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 9
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 9
  %23 = load i8, ptr %22, align 8, !tbaa !51, !range !53, !noundef !54
  store i8 %23, ptr %21, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715DOMNodeIteratorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMNodeIteratorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 8 dereferenceable(57) ptr @_ZN11xercesc_2_719DOMNodeIteratorImplaSERKS0_(ptr noundef nonnull returned writeonly align 8 dereferenceable(57) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 8
  store ptr %4, ptr %6, align 8, !tbaa !50
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 3
  store i64 %8, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 4
  store ptr %11, ptr %12, align 8, !tbaa !47
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 9
  %14 = load i8, ptr %13, align 8, !tbaa !51, !range !53, !noundef !54
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 9
  store i8 %14, ptr %15, align 8, !tbaa !51
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 6
  %17 = load i8, ptr %16, align 1, !tbaa !49, !range !53, !noundef !54
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 6
  store i8 %17, ptr %18, align 1, !tbaa !49
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 5
  %20 = load i8, ptr %19, align 8, !tbaa !48, !range !53, !noundef !54
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 5
  store i8 %20, ptr %21, align 8, !tbaa !48
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !45
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMNodeIteratorImplD2Ev(ptr noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #1 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMNodeIteratorImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 6
  store i8 0, ptr %2, align 1, !tbaa !49
  tail call void @_ZN11xercesc_2_715DOMNodeIteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMNodeIteratorImplD0Ev(ptr noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN11xercesc_2_719DOMNodeIteratorImplD2Ev(ptr noundef nonnull align 8 dereferenceable(57) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMNodeIteratorImpl6detachEv(ptr noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 6
  store i8 1, ptr %2, align 1, !tbaa !49
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 85
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(293) %4, ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl7getRootEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0) unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZN11xercesc_2_719DOMNodeIteratorImpl13getWhatToShowEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0) unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !46
  ret i64 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl9getFilterEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0) unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_719DOMNodeIteratorImpl25getExpandEntityReferencesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0) unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 8, !tbaa !48, !range !53, !noundef !54
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl8nextNodeEv(ptr nocapture noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 1, !tbaa !49, !range !53, !noundef !54
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %8) #8
  br label %14

12:                                               ; preds = %5
  %13 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !52
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 11, ptr noundef null, ptr noundef %15) #8
          to label %16 unwind label %17

16:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #11
  resume { ptr, i32 } %18

19:                                               ; preds = %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  %22 = icmp eq ptr %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  %26 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 9
  br label %27

27:                                               ; preds = %40, %23
  %28 = phi ptr [ %25, %23 ], [ %38, %40 ]
  %29 = load i8, ptr %26, align 8, !tbaa !51, !range !53, !noundef !54
  %30 = icmp eq i8 %29, 0
  %31 = icmp ne ptr %28, null
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load ptr, ptr %24, align 8, !tbaa !50
  br label %37

35:                                               ; preds = %27
  %36 = tail call noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl8nextNodeEPNS_7DOMNodeEb(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef %28, i1 noundef zeroext true) #8
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi ptr [ %34, %33 ], [ %36, %35 ]
  store i8 1, ptr %26, align 8, !tbaa !51
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = tail call noundef zeroext i1 @_ZN11xercesc_2_719DOMNodeIteratorImpl10acceptNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %38) #8
  br i1 %41, label %42, label %27, !llvm.loop !55

42:                                               ; preds = %40
  store ptr %38, ptr %24, align 8, !tbaa !50
  br label %43

43:                                               ; preds = %37, %42, %19
  %44 = phi ptr [ null, %19 ], [ %38, %42 ], [ null, %37 ]
  ret ptr %44
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #1 comdat align 2 !prof !57 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !58
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #6

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl8nextNodeEPNS_7DOMNodeEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 6
  %5 = load i8, ptr %4, align 1, !tbaa !49, !range !53, !noundef !54
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %10) #8
  br label %16

14:                                               ; preds = %7
  %15 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !52
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi ptr [ %13, %12 ], [ %15, %14 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %8, i16 noundef signext 11, ptr noundef null, ptr noundef %17) #8
          to label %18 unwind label %19

18:                                               ; preds = %16
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #11
  resume { ptr, i32 } %20

21:                                               ; preds = %3
  %22 = icmp eq ptr %1, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !38
  br label %82

26:                                               ; preds = %21
  br i1 %2, label %27, label %47

27:                                               ; preds = %26
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 5
  %29 = load i8, ptr %28, align 8, !tbaa !48, !range !53, !noundef !54
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load ptr, ptr %1, align 8, !tbaa !35
  %33 = getelementptr inbounds ptr, ptr %32, i64 4
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef signext i16 %34(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %36 = icmp eq i16 %35, 5
  br i1 %36, label %47, label %37

37:                                               ; preds = %31, %27
  %38 = load ptr, ptr %1, align 8, !tbaa !35
  %39 = getelementptr inbounds ptr, ptr %38, i64 18
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef zeroext i1 %40(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load ptr, ptr %1, align 8, !tbaa !35
  %44 = getelementptr inbounds ptr, ptr %43, i64 7
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  br label %82

47:                                               ; preds = %31, %37, %26
  %48 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !38
  %50 = icmp eq ptr %49, %1
  br i1 %50, label %82, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %1, align 8, !tbaa !35
  %53 = getelementptr inbounds ptr, ptr %52, i64 10
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %82

57:                                               ; preds = %51
  %58 = load ptr, ptr %1, align 8, !tbaa !35
  %59 = getelementptr inbounds ptr, ptr %58, i64 5
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %62 = icmp eq ptr %61, null
  %63 = load ptr, ptr %48, align 8
  %64 = icmp eq ptr %61, %63
  %65 = select i1 %62, i1 true, i1 %64
  br i1 %65, label %82, label %66

66:                                               ; preds = %57, %73
  %67 = phi ptr [ %77, %73 ], [ %61, %57 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !35
  %69 = getelementptr inbounds ptr, ptr %68, i64 10
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(8) %67) #8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = load ptr, ptr %67, align 8, !tbaa !35
  %75 = getelementptr inbounds ptr, ptr %74, i64 5
  %76 = load ptr, ptr %75, align 8
  %77 = tail call noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(8) %67) #8
  %78 = icmp eq ptr %77, null
  %79 = load ptr, ptr %48, align 8
  %80 = icmp eq ptr %77, %79
  %81 = select i1 %78, i1 true, i1 %80
  br i1 %81, label %82, label %66, !llvm.loop !73

82:                                               ; preds = %66, %73, %57, %47, %42, %51, %23
  %83 = phi ptr [ %25, %23 ], [ %46, %42 ], [ %55, %51 ], [ null, %47 ], [ null, %57 ], [ %71, %66 ], [ null, %73 ]
  ret ptr %83
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_719DOMNodeIteratorImpl10acceptNodeEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 6
  %4 = load i8, ptr %3, align 1, !tbaa !49, !range !53, !noundef !54
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %9) #8
  br label %15

13:                                               ; preds = %6
  %14 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !52
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %16) #8
          to label %17 unwind label %18

17:                                               ; preds = %15
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %19

20:                                               ; preds = %2
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 3
  %25 = load i64, ptr %24, align 8, !tbaa !46
  %26 = load ptr, ptr %1, align 8, !tbaa !35
  %27 = getelementptr inbounds ptr, ptr %26, i64 4
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef signext i16 %28(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %30 = sext i16 %29 to i32
  %31 = add nsw i32 %30, -1
  %32 = shl nuw i32 1, %31
  %33 = sext i32 %32 to i64
  %34 = and i64 %25, %33
  br i1 %23, label %35, label %37

35:                                               ; preds = %20
  %36 = icmp ne i64 %34, 0
  br label %46

37:                                               ; preds = %20
  %38 = icmp eq i64 %34, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %37
  %40 = load ptr, ptr %21, align 8, !tbaa !47
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef signext i16 %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %1) #8
  %45 = icmp eq i16 %44, 1
  br label %46

46:                                               ; preds = %37, %39, %35
  %47 = phi i1 [ %36, %35 ], [ false, %37 ], [ %45, %39 ]
  ret i1 %47
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl12previousNodeEv(ptr nocapture noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 1, !tbaa !49, !range !53, !noundef !54
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %8) #8
  br label %14

12:                                               ; preds = %5
  %13 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !52
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 11, ptr noundef null, ptr noundef %15) #8
          to label %16 unwind label %17

16:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #11
  resume { ptr, i32 } %18

19:                                               ; preds = %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  %22 = icmp eq ptr %21, null
  br i1 %22, label %43, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  %26 = icmp eq ptr %25, null
  br i1 %26, label %43, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 9
  br label %29

29:                                               ; preds = %27, %40
  %30 = phi ptr [ %38, %40 ], [ %25, %27 ]
  %31 = load i8, ptr %28, align 8, !tbaa !51, !range !53, !noundef !54
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %24, align 8, !tbaa !50
  br label %37

35:                                               ; preds = %29
  %36 = tail call noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl12previousNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %30) #8
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi ptr [ %34, %33 ], [ %36, %35 ]
  store i8 0, ptr %28, align 8, !tbaa !51
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = tail call noundef zeroext i1 @_ZN11xercesc_2_719DOMNodeIteratorImpl10acceptNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %38) #8
  br i1 %41, label %42, label %29, !llvm.loop !74

42:                                               ; preds = %40
  store ptr %38, ptr %24, align 8, !tbaa !50
  br label %43

43:                                               ; preds = %37, %42, %19, %23
  %44 = phi ptr [ null, %23 ], [ null, %19 ], [ %38, %42 ], [ null, %37 ]
  ret ptr %44
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl12previousNodeEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 6
  %4 = load i8, ptr %3, align 1, !tbaa !49, !range !53, !noundef !54
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %9) #8
  br label %15

13:                                               ; preds = %6
  %14 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !52
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %16) #8
          to label %17 unwind label %18

17:                                               ; preds = %15
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %19

20:                                               ; preds = %2
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %62, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %1, align 8, !tbaa !35
  %26 = getelementptr inbounds ptr, ptr %25, i64 9
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load ptr, ptr %1, align 8, !tbaa !35
  %32 = getelementptr inbounds ptr, ptr %31, i64 5
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  br label %62

35:                                               ; preds = %24
  %36 = load ptr, ptr %28, align 8, !tbaa !35
  %37 = getelementptr inbounds ptr, ptr %36, i64 18
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef zeroext i1 %38(ptr noundef nonnull align 8 dereferenceable(8) %28) #8
  br i1 %39, label %40, label %62

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 5
  br label %42

42:                                               ; preds = %40, %57
  %43 = phi ptr [ %61, %57 ], [ %28, %40 ]
  %44 = load i8, ptr %41, align 8, !tbaa !48, !range !53, !noundef !54
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load ptr, ptr %43, align 8, !tbaa !35
  %48 = getelementptr inbounds ptr, ptr %47, i64 4
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef signext i16 %49(ptr noundef nonnull align 8 dereferenceable(8) %43) #8
  %51 = icmp eq i16 %50, 5
  br i1 %51, label %62, label %52

52:                                               ; preds = %46, %42
  %53 = load ptr, ptr %43, align 8, !tbaa !35
  %54 = getelementptr inbounds ptr, ptr %53, i64 18
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef zeroext i1 %55(ptr noundef nonnull align 8 dereferenceable(8) %43) #8
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load ptr, ptr %43, align 8, !tbaa !35
  %59 = getelementptr inbounds ptr, ptr %58, i64 8
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %43) #8
  br label %42, !llvm.loop !75

62:                                               ; preds = %46, %52, %35, %20, %30
  %63 = phi ptr [ %34, %30 ], [ null, %20 ], [ %28, %35 ], [ %43, %52 ], [ %43, %46 ]
  ret ptr %63
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl17matchNodeOrParentEPNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(57) %0, ptr noundef readnone %1) local_unnamed_addr #3 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %18, label %8

8:                                                ; preds = %2, %11
  %9 = phi ptr [ %15, %11 ], [ %4, %2 ]
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %9, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 5
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #8
  %16 = load ptr, ptr %5, align 8, !tbaa !38
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %8, !llvm.loop !76

18:                                               ; preds = %11, %8, %2
  %19 = phi ptr [ null, %2 ], [ %1, %8 ], [ null, %11 ]
  ret ptr %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMNodeIteratorImpl10removeNodeEPNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(57) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 6
  %4 = load i8, ptr %3, align 1, !tbaa !49, !range !53, !noundef !54
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %9) #8
  br label %15

13:                                               ; preds = %6
  %14 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !52
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 11, ptr noundef null, ptr noundef %16) #8
          to label %17 unwind label %18

17:                                               ; preds = %15
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %19

20:                                               ; preds = %2
  %21 = icmp eq ptr %1, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %20
  %23 = tail call noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl17matchNodeOrParentEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %1) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 9
  %27 = load i8, ptr %26, align 8, !tbaa !51, !range !53, !noundef !54
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = tail call noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl12previousNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %23) #8
  %31 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 8
  store ptr %30, ptr %31, align 8, !tbaa !50
  br label %40

32:                                               ; preds = %25
  %33 = tail call noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl8nextNodeEPNS_7DOMNodeEb(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %23, i1 noundef zeroext false) #8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 8
  store ptr %33, ptr %36, align 8, !tbaa !50
  br label %40

37:                                               ; preds = %32
  %38 = tail call noundef ptr @_ZN11xercesc_2_719DOMNodeIteratorImpl12previousNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull %23) #8
  %39 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeIteratorImpl", ptr %0, i64 0, i32 8
  store ptr %38, ptr %39, align 8, !tbaa !50
  store i8 1, ptr %26, align 8, !tbaa !51
  br label %40

40:                                               ; preds = %22, %35, %37, %29, %20
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMNodeIteratorImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #3 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds ptr, ptr %2, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(57) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715DOMNodeIteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715DOMNodeIteratorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #13
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { builtin nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }

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
!39 = !{!"_ZTSN11xercesc_2_719DOMNodeIteratorImplE", !40, i64 0, !41, i64 8, !41, i64 16, !43, i64 24, !41, i64 32, !44, i64 40, !44, i64 41, !41, i64 48, !44, i64 56}
!40 = !{!"_ZTSN11xercesc_2_715DOMNodeIteratorE"}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"long", !42, i64 0}
!44 = !{!"bool", !42, i64 0}
!45 = !{!39, !41, i64 16}
!46 = !{!39, !43, i64 24}
!47 = !{!39, !41, i64 32}
!48 = !{!39, !44, i64 40}
!49 = !{!39, !44, i64 41}
!50 = !{!39, !41, i64 48}
!51 = !{!39, !44, i64 56}
!52 = !{!41, !41, i64 0}
!53 = !{i8 0, i8 2}
!54 = !{}
!55 = distinct !{!55, !56}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"function_entry_count", i64 2954}
!58 = !{!59, !41, i64 280}
!59 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !60, i64 0, !65, i64 32, !67, i64 48, !41, i64 80, !41, i64 88, !41, i64 96, !44, i64 104, !41, i64 112, !41, i64 120, !41, i64 128, !70, i64 136, !41, i64 176, !41, i64 184, !41, i64 192, !43, i64 200, !41, i64 208, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !72, i64 288, !44, i64 292}
!60 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !61, i64 0, !62, i64 8, !63, i64 16, !64, i64 24}
!61 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!62 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!63 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!64 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!65 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !41, i64 0, !66, i64 8}
!66 = !{!"short", !42, i64 0}
!67 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !41, i64 0, !41, i64 8, !68, i64 16}
!68 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !69, i64 0, !41, i64 8}
!69 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!70 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !71, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !72, i64 32, !72, i64 36}
!71 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!72 = !{!"int", !42, i64 0}
!73 = distinct !{!73, !56}
!74 = distinct !{!74, !56}
!75 = distinct !{!75, !56}
!76 = distinct !{!76, !56}
