; ModuleID = 'DOMServices.cpp'
source_filename = "DOMServices.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1015getChildrenDataEPKNS_9XalanNodeERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1015getChildrenDataEPKNS_9XalanNodeERNS_17FormatterListenerEMS3_FvPKtjE = comdat any

$_ZN11xalanc_1_1011DOMServices13getNameOfNodeERKNS_9XalanAttrE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZL11s_XMLString = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZL24s_XMLStringWithSeparator = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZL20s_XMLNamespacePrefix = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZL17s_XMLNamespaceURI = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZL14s_XMLNamespace = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZL27s_XMLNamespaceWithSeparator = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZL29s_XMLNamespaceSeparatorString = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZL23s_XMLNamespacePrefixURI = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_1011DOMServices11s_XMLStringE = dso_local local_unnamed_addr constant ptr @_ZL11s_XMLString, align 8
@_ZN11xalanc_1_1011DOMServices24s_XMLStringWithSeparatorE = dso_local local_unnamed_addr constant ptr @_ZL24s_XMLStringWithSeparator, align 8
@_ZN11xalanc_1_1011DOMServices20s_XMLNamespacePrefixE = dso_local local_unnamed_addr constant ptr @_ZL20s_XMLNamespacePrefix, align 8
@_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE = dso_local local_unnamed_addr constant ptr @_ZL17s_XMLNamespaceURI, align 8
@_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE = dso_local local_unnamed_addr constant ptr @_ZL14s_XMLNamespace, align 8
@_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE = dso_local local_unnamed_addr constant ptr @_ZL27s_XMLNamespaceWithSeparator, align 8
@_ZN11xalanc_1_1011DOMServices29s_XMLNamespaceSeparatorStringE = dso_local local_unnamed_addr constant ptr @_ZL29s_XMLNamespaceSeparatorString, align 8
@_ZN11xalanc_1_1011DOMServices23s_XMLNamespacePrefixURIE = dso_local local_unnamed_addr constant ptr @_ZL23s_XMLNamespacePrefixURI, align 8
@_ZN11xalanc_1_1011DOMServices13s_emptyStringE = dso_local global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZL17s_XMLStringLength = internal global i32 0, align 4
@_ZN11xalanc_1_1011DOMServices17s_XMLStringLengthE = dso_local local_unnamed_addr constant ptr @_ZL17s_XMLStringLength, align 8
@_ZL30s_XMLStringWithSeparatorLength = internal global i32 0, align 4
@_ZN11xalanc_1_1011DOMServices30s_XMLStringWithSeparatorLengthE = dso_local local_unnamed_addr constant ptr @_ZL30s_XMLStringWithSeparatorLength, align 8
@_ZL26s_XMLNamespacePrefixLength = internal global i32 0, align 4
@_ZN11xalanc_1_1011DOMServices26s_XMLNamespacePrefixLengthE = dso_local local_unnamed_addr constant ptr @_ZL26s_XMLNamespacePrefixLength, align 8
@_ZL23s_XMLNamespaceURILength = internal global i32 0, align 4
@_ZN11xalanc_1_1011DOMServices23s_XMLNamespaceURILengthE = dso_local local_unnamed_addr constant ptr @_ZL23s_XMLNamespaceURILength, align 8
@_ZL20s_XMLNamespaceLength = internal global i32 0, align 4
@_ZN11xalanc_1_1011DOMServices20s_XMLNamespaceLengthE = dso_local local_unnamed_addr constant ptr @_ZL20s_XMLNamespaceLength, align 8
@_ZL33s_XMLNamespaceWithSeparatorLength = internal global i32 0, align 4
@_ZN11xalanc_1_1011DOMServices33s_XMLNamespaceWithSeparatorLengthE = dso_local local_unnamed_addr constant ptr @_ZL33s_XMLNamespaceWithSeparatorLength, align 8
@_ZL35s_XMLNamespaceSeparatorStringLength = internal global i32 0, align 4
@_ZN11xalanc_1_1011DOMServices35s_XMLNamespaceSeparatorStringLengthE = dso_local local_unnamed_addr constant ptr @_ZL35s_XMLNamespaceSeparatorStringLength, align 8
@_ZL29s_XMLNamespacePrefixURILength = internal global i32 0, align 4
@_ZN11xalanc_1_1011DOMServices29s_XMLNamespacePrefixURILengthE = dso_local local_unnamed_addr constant ptr @_ZL29s_XMLNamespacePrefixURILength, align 8
@.str = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"xml:\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"xmlns:xml\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"http://www.w3.org/XML/1998/namespace\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"xmlns\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"xmlns:\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"http://www.w3.org/2000/xmlns/\00", align 1
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_DOMServices.cpp, ptr null }]

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !49 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011DOMServices10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 align 2 !prof !50 {
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc(ptr noundef nonnull align 8 dereferenceable(36) @_ZL11s_XMLString, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str)
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc(ptr noundef nonnull align 8 dereferenceable(36) @_ZL24s_XMLStringWithSeparator, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.9)
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc(ptr noundef nonnull align 8 dereferenceable(36) @_ZL20s_XMLNamespacePrefix, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.10)
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc(ptr noundef nonnull align 8 dereferenceable(36) @_ZL17s_XMLNamespaceURI, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.11)
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc(ptr noundef nonnull align 8 dereferenceable(36) @_ZL14s_XMLNamespace, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.12)
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc(ptr noundef nonnull align 8 dereferenceable(36) @_ZL27s_XMLNamespaceWithSeparator, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.13)
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc(ptr noundef nonnull align 8 dereferenceable(36) @_ZL29s_XMLNamespaceSeparatorString, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.14)
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc(ptr noundef nonnull align 8 dereferenceable(36) @_ZL23s_XMLNamespacePrefixURI, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.15)
  %2 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL11s_XMLString, i64 0, i32 1), align 8, !tbaa !51
  store i32 %2, ptr @_ZL17s_XMLStringLength, align 4, !tbaa !59
  %3 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL24s_XMLStringWithSeparator, i64 0, i32 1), align 8, !tbaa !51
  store i32 %3, ptr @_ZL30s_XMLStringWithSeparatorLength, align 4, !tbaa !59
  %4 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL20s_XMLNamespacePrefix, i64 0, i32 1), align 8, !tbaa !51
  store i32 %4, ptr @_ZL26s_XMLNamespacePrefixLength, align 4, !tbaa !59
  %5 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL17s_XMLNamespaceURI, i64 0, i32 1), align 8, !tbaa !51
  store i32 %5, ptr @_ZL23s_XMLNamespaceURILength, align 4, !tbaa !59
  %6 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL14s_XMLNamespace, i64 0, i32 1), align 8, !tbaa !51
  store i32 %6, ptr @_ZL20s_XMLNamespaceLength, align 4, !tbaa !59
  %7 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL27s_XMLNamespaceWithSeparator, i64 0, i32 1), align 8, !tbaa !51
  store i32 %7, ptr @_ZL33s_XMLNamespaceWithSeparatorLength, align 4, !tbaa !59
  %8 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL29s_XMLNamespaceSeparatorString, i64 0, i32 1), align 8, !tbaa !51
  store i32 %8, ptr @_ZL35s_XMLNamespaceSeparatorStringLength, align 4, !tbaa !59
  %9 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL23s_XMLNamespacePrefixURI, i64 0, i32 1), align 8, !tbaa !51
  store i32 %9, ptr @_ZL29s_XMLNamespacePrefixURILength, align 4, !tbaa !59
  ret void
}

declare void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011DOMServices9terminateEv() local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %1 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %2 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #10
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %10 = load ptr, ptr %8, align 8, !tbaa !60
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !61
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !62
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  %17 = load ptr, ptr @_ZL11s_XMLString, align 8, !tbaa !60
  store ptr %17, ptr %8, align 8, !tbaa !60
  %18 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL11s_XMLString, i64 0, i32 0, i32 1), align 8, !tbaa !61
  store i64 %18, ptr %11, align 8, !tbaa !61
  %19 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL11s_XMLString, i64 0, i32 0, i32 2), align 8, !tbaa !62
  store i64 %19, ptr %13, align 8, !tbaa !62
  %20 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL11s_XMLString, i64 0, i32 0, i32 3), align 8, !tbaa !63
  store ptr %20, ptr %15, align 8, !tbaa !63
  store ptr %10, ptr @_ZL11s_XMLString, align 8, !tbaa !60
  store i64 %12, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL11s_XMLString, i64 0, i32 0, i32 1), align 8, !tbaa !61
  store i64 %14, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL11s_XMLString, i64 0, i32 0, i32 2), align 8, !tbaa !62
  store ptr %16, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL11s_XMLString, i64 0, i32 0, i32 3), align 8, !tbaa !63
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %8, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !59
  %23 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL11s_XMLString, i64 0, i32 1), align 8, !tbaa !59
  store i32 %23, ptr %21, align 8, !tbaa !59
  store i32 %22, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL11s_XMLString, i64 0, i32 1), align 8, !tbaa !59
  %24 = icmp eq i64 %19, 0
  br i1 %24, label %32, label %25, !prof !64

25:                                               ; preds = %0
  %26 = load ptr, ptr %17, align 8, !tbaa !65
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %20)
          to label %32 unwind label %29, !prof !67

29:                                               ; preds = %25
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  call void @__clang_call_terminate(ptr %31) #11
  unreachable

32:                                               ; preds = %0, %25
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #10
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %33 = load ptr, ptr %7, align 8, !tbaa !60
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !61
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !62
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !63
  %40 = load ptr, ptr @_ZL24s_XMLStringWithSeparator, align 8, !tbaa !60
  store ptr %40, ptr %7, align 8, !tbaa !60
  %41 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL24s_XMLStringWithSeparator, i64 0, i32 0, i32 1), align 8, !tbaa !61
  store i64 %41, ptr %34, align 8, !tbaa !61
  %42 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL24s_XMLStringWithSeparator, i64 0, i32 0, i32 2), align 8, !tbaa !62
  store i64 %42, ptr %36, align 8, !tbaa !62
  %43 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL24s_XMLStringWithSeparator, i64 0, i32 0, i32 3), align 8, !tbaa !63
  store ptr %43, ptr %38, align 8, !tbaa !63
  store ptr %33, ptr @_ZL24s_XMLStringWithSeparator, align 8, !tbaa !60
  store i64 %35, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL24s_XMLStringWithSeparator, i64 0, i32 0, i32 1), align 8, !tbaa !61
  store i64 %37, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL24s_XMLStringWithSeparator, i64 0, i32 0, i32 2), align 8, !tbaa !62
  store ptr %39, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL24s_XMLStringWithSeparator, i64 0, i32 0, i32 3), align 8, !tbaa !63
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !59
  %46 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL24s_XMLStringWithSeparator, i64 0, i32 1), align 8, !tbaa !59
  store i32 %46, ptr %44, align 8, !tbaa !59
  store i32 %45, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL24s_XMLStringWithSeparator, i64 0, i32 1), align 8, !tbaa !59
  %47 = icmp eq i64 %42, 0
  br i1 %47, label %55, label %48, !prof !64

48:                                               ; preds = %32
  %49 = load ptr, ptr %40, align 8, !tbaa !65
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  invoke void %51(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef %43)
          to label %55 unwind label %52, !prof !67

52:                                               ; preds = %48
  %53 = landingpad { ptr, i32 }
          catch ptr null
  %54 = extractvalue { ptr, i32 } %53, 0
  call void @__clang_call_terminate(ptr %54) #11
  unreachable

55:                                               ; preds = %32, %48
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #10
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %56 = load ptr, ptr %6, align 8, !tbaa !60
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !61
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %60 = load i64, ptr %59, align 8, !tbaa !62
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !63
  %63 = load ptr, ptr @_ZL20s_XMLNamespacePrefix, align 8, !tbaa !60
  store ptr %63, ptr %6, align 8, !tbaa !60
  %64 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL20s_XMLNamespacePrefix, i64 0, i32 0, i32 1), align 8, !tbaa !61
  store i64 %64, ptr %57, align 8, !tbaa !61
  %65 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL20s_XMLNamespacePrefix, i64 0, i32 0, i32 2), align 8, !tbaa !62
  store i64 %65, ptr %59, align 8, !tbaa !62
  %66 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL20s_XMLNamespacePrefix, i64 0, i32 0, i32 3), align 8, !tbaa !63
  store ptr %66, ptr %61, align 8, !tbaa !63
  store ptr %56, ptr @_ZL20s_XMLNamespacePrefix, align 8, !tbaa !60
  store i64 %58, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL20s_XMLNamespacePrefix, i64 0, i32 0, i32 1), align 8, !tbaa !61
  store i64 %60, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL20s_XMLNamespacePrefix, i64 0, i32 0, i32 2), align 8, !tbaa !62
  store ptr %62, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL20s_XMLNamespacePrefix, i64 0, i32 0, i32 3), align 8, !tbaa !63
  %67 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %6, i64 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !59
  %69 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL20s_XMLNamespacePrefix, i64 0, i32 1), align 8, !tbaa !59
  store i32 %69, ptr %67, align 8, !tbaa !59
  store i32 %68, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL20s_XMLNamespacePrefix, i64 0, i32 1), align 8, !tbaa !59
  %70 = icmp eq i64 %65, 0
  br i1 %70, label %78, label %71, !prof !64

71:                                               ; preds = %55
  %72 = load ptr, ptr %63, align 8, !tbaa !65
  %73 = getelementptr inbounds ptr, ptr %72, i64 3
  %74 = load ptr, ptr %73, align 8
  invoke void %74(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef %66)
          to label %78 unwind label %75, !prof !67

75:                                               ; preds = %71
  %76 = landingpad { ptr, i32 }
          catch ptr null
  %77 = extractvalue { ptr, i32 } %76, 0
  call void @__clang_call_terminate(ptr %77) #11
  unreachable

78:                                               ; preds = %55, %71
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #10
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %79 = load ptr, ptr %5, align 8, !tbaa !60
  %80 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !61
  %82 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %83 = load i64, ptr %82, align 8, !tbaa !62
  %84 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !63
  %86 = load ptr, ptr @_ZL17s_XMLNamespaceURI, align 8, !tbaa !60
  store ptr %86, ptr %5, align 8, !tbaa !60
  %87 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL17s_XMLNamespaceURI, i64 0, i32 0, i32 1), align 8, !tbaa !61
  store i64 %87, ptr %80, align 8, !tbaa !61
  %88 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL17s_XMLNamespaceURI, i64 0, i32 0, i32 2), align 8, !tbaa !62
  store i64 %88, ptr %82, align 8, !tbaa !62
  %89 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL17s_XMLNamespaceURI, i64 0, i32 0, i32 3), align 8, !tbaa !63
  store ptr %89, ptr %84, align 8, !tbaa !63
  store ptr %79, ptr @_ZL17s_XMLNamespaceURI, align 8, !tbaa !60
  store i64 %81, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL17s_XMLNamespaceURI, i64 0, i32 0, i32 1), align 8, !tbaa !61
  store i64 %83, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL17s_XMLNamespaceURI, i64 0, i32 0, i32 2), align 8, !tbaa !62
  store ptr %85, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL17s_XMLNamespaceURI, i64 0, i32 0, i32 3), align 8, !tbaa !63
  %90 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %5, i64 0, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !59
  %92 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL17s_XMLNamespaceURI, i64 0, i32 1), align 8, !tbaa !59
  store i32 %92, ptr %90, align 8, !tbaa !59
  store i32 %91, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL17s_XMLNamespaceURI, i64 0, i32 1), align 8, !tbaa !59
  %93 = icmp eq i64 %88, 0
  br i1 %93, label %101, label %94, !prof !64

94:                                               ; preds = %78
  %95 = load ptr, ptr %86, align 8, !tbaa !65
  %96 = getelementptr inbounds ptr, ptr %95, i64 3
  %97 = load ptr, ptr %96, align 8
  invoke void %97(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef %89)
          to label %101 unwind label %98, !prof !67

98:                                               ; preds = %94
  %99 = landingpad { ptr, i32 }
          catch ptr null
  %100 = extractvalue { ptr, i32 } %99, 0
  call void @__clang_call_terminate(ptr %100) #11
  unreachable

101:                                              ; preds = %78, %94
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #10
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %102 = load ptr, ptr %4, align 8, !tbaa !60
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %104 = load i64, ptr %103, align 8, !tbaa !61
  %105 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %106 = load i64, ptr %105, align 8, !tbaa !62
  %107 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !63
  %109 = load ptr, ptr @_ZL14s_XMLNamespace, align 8, !tbaa !60
  store ptr %109, ptr %4, align 8, !tbaa !60
  %110 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL14s_XMLNamespace, i64 0, i32 0, i32 1), align 8, !tbaa !61
  store i64 %110, ptr %103, align 8, !tbaa !61
  %111 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL14s_XMLNamespace, i64 0, i32 0, i32 2), align 8, !tbaa !62
  store i64 %111, ptr %105, align 8, !tbaa !62
  %112 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL14s_XMLNamespace, i64 0, i32 0, i32 3), align 8, !tbaa !63
  store ptr %112, ptr %107, align 8, !tbaa !63
  store ptr %102, ptr @_ZL14s_XMLNamespace, align 8, !tbaa !60
  store i64 %104, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL14s_XMLNamespace, i64 0, i32 0, i32 1), align 8, !tbaa !61
  store i64 %106, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL14s_XMLNamespace, i64 0, i32 0, i32 2), align 8, !tbaa !62
  store ptr %108, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL14s_XMLNamespace, i64 0, i32 0, i32 3), align 8, !tbaa !63
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %4, i64 0, i32 1
  %114 = load i32, ptr %113, align 8, !tbaa !59
  %115 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL14s_XMLNamespace, i64 0, i32 1), align 8, !tbaa !59
  store i32 %115, ptr %113, align 8, !tbaa !59
  store i32 %114, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL14s_XMLNamespace, i64 0, i32 1), align 8, !tbaa !59
  %116 = icmp eq i64 %111, 0
  br i1 %116, label %124, label %117, !prof !64

117:                                              ; preds = %101
  %118 = load ptr, ptr %109, align 8, !tbaa !65
  %119 = getelementptr inbounds ptr, ptr %118, i64 3
  %120 = load ptr, ptr %119, align 8
  invoke void %120(ptr noundef nonnull align 8 dereferenceable(8) %109, ptr noundef %112)
          to label %124 unwind label %121, !prof !67

121:                                              ; preds = %117
  %122 = landingpad { ptr, i32 }
          catch ptr null
  %123 = extractvalue { ptr, i32 } %122, 0
  call void @__clang_call_terminate(ptr %123) #11
  unreachable

124:                                              ; preds = %101, %117
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #10
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %125 = load ptr, ptr %3, align 8, !tbaa !60
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %127 = load i64, ptr %126, align 8, !tbaa !61
  %128 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %129 = load i64, ptr %128, align 8, !tbaa !62
  %130 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !63
  %132 = load ptr, ptr @_ZL27s_XMLNamespaceWithSeparator, align 8, !tbaa !60
  store ptr %132, ptr %3, align 8, !tbaa !60
  %133 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL27s_XMLNamespaceWithSeparator, i64 0, i32 0, i32 1), align 8, !tbaa !61
  store i64 %133, ptr %126, align 8, !tbaa !61
  %134 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL27s_XMLNamespaceWithSeparator, i64 0, i32 0, i32 2), align 8, !tbaa !62
  store i64 %134, ptr %128, align 8, !tbaa !62
  %135 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL27s_XMLNamespaceWithSeparator, i64 0, i32 0, i32 3), align 8, !tbaa !63
  store ptr %135, ptr %130, align 8, !tbaa !63
  store ptr %125, ptr @_ZL27s_XMLNamespaceWithSeparator, align 8, !tbaa !60
  store i64 %127, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL27s_XMLNamespaceWithSeparator, i64 0, i32 0, i32 1), align 8, !tbaa !61
  store i64 %129, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL27s_XMLNamespaceWithSeparator, i64 0, i32 0, i32 2), align 8, !tbaa !62
  store ptr %131, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL27s_XMLNamespaceWithSeparator, i64 0, i32 0, i32 3), align 8, !tbaa !63
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 0, i32 1
  %137 = load i32, ptr %136, align 8, !tbaa !59
  %138 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL27s_XMLNamespaceWithSeparator, i64 0, i32 1), align 8, !tbaa !59
  store i32 %138, ptr %136, align 8, !tbaa !59
  store i32 %137, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL27s_XMLNamespaceWithSeparator, i64 0, i32 1), align 8, !tbaa !59
  %139 = icmp eq i64 %134, 0
  br i1 %139, label %147, label %140, !prof !64

140:                                              ; preds = %124
  %141 = load ptr, ptr %132, align 8, !tbaa !65
  %142 = getelementptr inbounds ptr, ptr %141, i64 3
  %143 = load ptr, ptr %142, align 8
  invoke void %143(ptr noundef nonnull align 8 dereferenceable(8) %132, ptr noundef %135)
          to label %147 unwind label %144, !prof !67

144:                                              ; preds = %140
  %145 = landingpad { ptr, i32 }
          catch ptr null
  %146 = extractvalue { ptr, i32 } %145, 0
  call void @__clang_call_terminate(ptr %146) #11
  unreachable

147:                                              ; preds = %124, %140
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #10
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %148 = load ptr, ptr %2, align 8, !tbaa !60
  %149 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %150 = load i64, ptr %149, align 8, !tbaa !61
  %151 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 2
  %152 = load i64, ptr %151, align 8, !tbaa !62
  %153 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %154 = load ptr, ptr %153, align 8, !tbaa !63
  %155 = load ptr, ptr @_ZL29s_XMLNamespaceSeparatorString, align 8, !tbaa !60
  store ptr %155, ptr %2, align 8, !tbaa !60
  %156 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL29s_XMLNamespaceSeparatorString, i64 0, i32 0, i32 1), align 8, !tbaa !61
  store i64 %156, ptr %149, align 8, !tbaa !61
  %157 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL29s_XMLNamespaceSeparatorString, i64 0, i32 0, i32 2), align 8, !tbaa !62
  store i64 %157, ptr %151, align 8, !tbaa !62
  %158 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL29s_XMLNamespaceSeparatorString, i64 0, i32 0, i32 3), align 8, !tbaa !63
  store ptr %158, ptr %153, align 8, !tbaa !63
  store ptr %148, ptr @_ZL29s_XMLNamespaceSeparatorString, align 8, !tbaa !60
  store i64 %150, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL29s_XMLNamespaceSeparatorString, i64 0, i32 0, i32 1), align 8, !tbaa !61
  store i64 %152, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL29s_XMLNamespaceSeparatorString, i64 0, i32 0, i32 2), align 8, !tbaa !62
  store ptr %154, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL29s_XMLNamespaceSeparatorString, i64 0, i32 0, i32 3), align 8, !tbaa !63
  %159 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  %160 = load i32, ptr %159, align 8, !tbaa !59
  %161 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL29s_XMLNamespaceSeparatorString, i64 0, i32 1), align 8, !tbaa !59
  store i32 %161, ptr %159, align 8, !tbaa !59
  store i32 %160, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL29s_XMLNamespaceSeparatorString, i64 0, i32 1), align 8, !tbaa !59
  %162 = icmp eq i64 %157, 0
  br i1 %162, label %170, label %163, !prof !64

163:                                              ; preds = %147
  %164 = load ptr, ptr %155, align 8, !tbaa !65
  %165 = getelementptr inbounds ptr, ptr %164, i64 3
  %166 = load ptr, ptr %165, align 8
  invoke void %166(ptr noundef nonnull align 8 dereferenceable(8) %155, ptr noundef %158)
          to label %170 unwind label %167, !prof !67

167:                                              ; preds = %163
  %168 = landingpad { ptr, i32 }
          catch ptr null
  %169 = extractvalue { ptr, i32 } %168, 0
  call void @__clang_call_terminate(ptr %169) #11
  unreachable

170:                                              ; preds = %147, %163
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %1) #10
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %171 = load ptr, ptr %1, align 8, !tbaa !60
  %172 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %173 = load i64, ptr %172, align 8, !tbaa !61
  %174 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 2
  %175 = load i64, ptr %174, align 8, !tbaa !62
  %176 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !63
  %178 = load ptr, ptr @_ZL23s_XMLNamespacePrefixURI, align 8, !tbaa !60
  store ptr %178, ptr %1, align 8, !tbaa !60
  %179 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL23s_XMLNamespacePrefixURI, i64 0, i32 0, i32 1), align 8, !tbaa !61
  store i64 %179, ptr %172, align 8, !tbaa !61
  %180 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL23s_XMLNamespacePrefixURI, i64 0, i32 0, i32 2), align 8, !tbaa !62
  store i64 %180, ptr %174, align 8, !tbaa !62
  %181 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL23s_XMLNamespacePrefixURI, i64 0, i32 0, i32 3), align 8, !tbaa !63
  store ptr %181, ptr %176, align 8, !tbaa !63
  store ptr %171, ptr @_ZL23s_XMLNamespacePrefixURI, align 8, !tbaa !60
  store i64 %173, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL23s_XMLNamespacePrefixURI, i64 0, i32 0, i32 1), align 8, !tbaa !61
  store i64 %175, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL23s_XMLNamespacePrefixURI, i64 0, i32 0, i32 2), align 8, !tbaa !62
  store ptr %177, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL23s_XMLNamespacePrefixURI, i64 0, i32 0, i32 3), align 8, !tbaa !63
  %182 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %183 = load i32, ptr %182, align 8, !tbaa !59
  %184 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL23s_XMLNamespacePrefixURI, i64 0, i32 1), align 8, !tbaa !59
  store i32 %184, ptr %182, align 8, !tbaa !59
  store i32 %183, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL23s_XMLNamespacePrefixURI, i64 0, i32 1), align 8, !tbaa !59
  %185 = icmp eq i64 %180, 0
  br i1 %185, label %193, label %186, !prof !64

186:                                              ; preds = %170
  %187 = load ptr, ptr %178, align 8, !tbaa !65
  %188 = getelementptr inbounds ptr, ptr %187, i64 3
  %189 = load ptr, ptr %188, align 8
  invoke void %189(ptr noundef nonnull align 8 dereferenceable(8) %178, ptr noundef %181)
          to label %193 unwind label %190, !prof !67

190:                                              ; preds = %186
  %191 = landingpad { ptr, i32 }
          catch ptr null
  %192 = extractvalue { ptr, i32 } %191, 0
  call void @__clang_call_terminate(ptr %192) #11
  unreachable

193:                                              ; preds = %170, %186
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %1) #10
  store i32 0, ptr @_ZL17s_XMLStringLength, align 4, !tbaa !59
  store i32 0, ptr @_ZL30s_XMLStringWithSeparatorLength, align 4, !tbaa !59
  store i32 0, ptr @_ZL26s_XMLNamespacePrefixLength, align 4, !tbaa !59
  store i32 0, ptr @_ZL23s_XMLNamespaceURILength, align 4, !tbaa !59
  store i32 0, ptr @_ZL20s_XMLNamespaceLength, align 4, !tbaa !59
  store i32 0, ptr @_ZL33s_XMLNamespaceWithSeparatorLength, align 4, !tbaa !59
  store i32 0, ptr @_ZL35s_XMLNamespaceSeparatorStringLength, align 4, !tbaa !59
  store i32 0, ptr @_ZL29s_XMLNamespacePrefixURILength, align 4, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #5 align 2 !prof !68 {
  %3 = load ptr, ptr %0, align 8, !tbaa !65
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !69
  switch i32 %6, label %74 [
    i32 11, label %7
    i32 9, label %8
    i32 1, label %13
    i32 3, label %18
    i32 4, label %18
    i32 2, label %32
    i32 8, label %46
    i32 7, label %60
  ], !prof !70

7:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_21XalanDocumentFragmentERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br label %74

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !65
  %10 = getelementptr inbounds ptr, ptr %9, i64 38
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %0)
  tail call void @_ZN11xalanc_1_1015getChildrenDataEPKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br label %74

13:                                               ; preds = %2
  %14 = load ptr, ptr %0, align 8, !tbaa !65
  %15 = getelementptr inbounds ptr, ptr %14, i64 7
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !71
  tail call void @_ZN11xalanc_1_1015getChildrenDataEPKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef %17, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br label %74

18:                                               ; preds = %2, %2
  %19 = load ptr, ptr %0, align 8, !tbaa !65
  %20 = getelementptr inbounds ptr, ptr %19, i64 28
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef nonnull align 8 dereferenceable(36) ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %22, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !61
  %25 = icmp eq i64 %24, 0
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %22, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8
  %28 = select i1 %25, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %27
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %22, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !51
  %31 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %28, i32 noundef %30)
  br label %74

32:                                               ; preds = %2
  %33 = load ptr, ptr %0, align 8, !tbaa !65
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef nonnull align 8 dereferenceable(36) ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !72
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %36, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !61
  %39 = icmp eq i64 %38, 0
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %36, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8
  %42 = select i1 %39, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %41, !prof !73
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %36, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !51
  %45 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %42, i32 noundef %44)
  br label %74

46:                                               ; preds = %2
  %47 = load ptr, ptr %0, align 8, !tbaa !65
  %48 = getelementptr inbounds ptr, ptr %47, i64 28
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef nonnull align 8 dereferenceable(36) ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %50, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !61
  %53 = icmp eq i64 %52, 0
  %54 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %50, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8
  %56 = select i1 %53, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %55
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %50, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !51
  %59 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %56, i32 noundef %58)
  br label %74

60:                                               ; preds = %2
  %61 = load ptr, ptr %0, align 8, !tbaa !65
  %62 = getelementptr inbounds ptr, ptr %61, i64 29
  %63 = load ptr, ptr %62, align 8
  %64 = tail call noundef nonnull align 8 dereferenceable(36) ptr %63(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %64, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !61
  %67 = icmp eq i64 %66, 0
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %64, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8
  %70 = select i1 %67, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %69
  %71 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %64, i64 0, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !51
  %73 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %70, i32 noundef %72)
  br label %74

74:                                               ; preds = %2, %60, %46, %32, %18, %13, %8, %7
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_21XalanDocumentFragmentERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #3 align 2 !prof !49 {
  %3 = load ptr, ptr %0, align 8, !tbaa !65
  %4 = getelementptr inbounds ptr, ptr %3, i64 7
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %38, %2
  ret void

9:                                                ; preds = %2, %38
  %10 = phi ptr [ %42, %38 ], [ %6, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef i32 %13(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8, !tbaa !65
  %18 = getelementptr inbounds ptr, ptr %17, i64 7
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %10)
  tail call void @_ZN11xalanc_1_1015getChildrenDataEPKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br label %38

21:                                               ; preds = %9
  %22 = add i32 %14, -3
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load ptr, ptr %10, align 8, !tbaa !65
  %26 = getelementptr inbounds ptr, ptr %25, i64 28
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef nonnull align 8 dereferenceable(36) ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %28, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !61
  %31 = icmp eq i64 %30, 0
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %28, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = select i1 %31, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %33
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %28, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !51
  %37 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %34, i32 noundef %36)
  br label %38

38:                                               ; preds = %16, %21, %24
  %39 = load ptr, ptr %10, align 8, !tbaa !65
  %40 = getelementptr inbounds ptr, ptr %39, i64 10
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %43 = icmp eq ptr %42, null
  br i1 %43, label %8, label %9, !llvm.loop !74
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_13XalanDocumentERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #3 align 2 !prof !49 {
  %3 = load ptr, ptr %0, align 8, !tbaa !65
  %4 = getelementptr inbounds ptr, ptr %3, i64 38
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0)
  tail call void @_ZN11xalanc_1_1015getChildrenDataEPKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_12XalanElementERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #3 align 2 !prof !49 {
  %3 = load ptr, ptr %0, align 8, !tbaa !65
  %4 = getelementptr inbounds ptr, ptr %3, i64 7
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0)
  tail call void @_ZN11xalanc_1_1015getChildrenDataEPKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1015getChildrenDataEPKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #6 comdat !prof !77 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %39, label %4, !prof !78

4:                                                ; preds = %2, %33
  %5 = phi ptr [ %37, %33 ], [ %0, %2 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(8) %5), !prof !79
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %16, !prof !80

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 8, !tbaa !65
  %13 = getelementptr inbounds ptr, ptr %12, i64 7
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %5), !prof !81
  tail call void @_ZN11xalanc_1_1015getChildrenDataEPKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br label %33

16:                                               ; preds = %4
  %17 = add i32 %9, -3
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %19, label %33, !prof !82

19:                                               ; preds = %16
  %20 = load ptr, ptr %5, align 8, !tbaa !65
  %21 = getelementptr inbounds ptr, ptr %20, i64 28
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef nonnull align 8 dereferenceable(36) ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %5), !prof !83
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %23, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !61
  %26 = icmp eq i64 %25, 0
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %23, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = select i1 %26, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %28, !prof !84
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %23, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !51
  %32 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %29, i32 noundef %31)
  br label %33

33:                                               ; preds = %11, %16, %19
  %34 = load ptr, ptr %5, align 8, !tbaa !65
  %35 = getelementptr inbounds ptr, ptr %34, i64 10
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %5), !prof !85
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %4, !prof !86, !llvm.loop !87

39:                                               ; preds = %33, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) local_unnamed_addr #5 align 2 !prof !88 {
  %5 = load ptr, ptr %0, align 8, !tbaa !65
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !89
  switch i32 %8, label %128 [
    i32 11, label %9
    i32 9, label %10
    i32 1, label %15
    i32 3, label %20
    i32 4, label %20
    i32 2, label %47
    i32 8, label %74
    i32 7, label %101
  ], !prof !90

9:                                                ; preds = %4
  tail call void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_21XalanDocumentFragmentERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3)
  br label %128

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !65
  %12 = getelementptr inbounds ptr, ptr %11, i64 38
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %0)
  tail call void @_ZN11xalanc_1_1015getChildrenDataEPKNS_9XalanNodeERNS_17FormatterListenerEMS3_FvPKtjE(ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3)
  br label %128

15:                                               ; preds = %4
  %16 = load ptr, ptr %0, align 8, !tbaa !65
  %17 = getelementptr inbounds ptr, ptr %16, i64 7
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !91
  tail call void @_ZN11xalanc_1_1015getChildrenDataEPKNS_9XalanNodeERNS_17FormatterListenerEMS3_FvPKtjE(ptr noundef %19, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3)
  br label %128

20:                                               ; preds = %4, %4
  %21 = load ptr, ptr %0, align 8, !tbaa !65
  %22 = getelementptr inbounds ptr, ptr %21, i64 28
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef nonnull align 8 dereferenceable(36) ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !51
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %128, label %28

28:                                               ; preds = %20
  %29 = getelementptr inbounds i8, ptr %1, i64 %3
  %30 = and i64 %2, 1
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %29, align 8, !tbaa !65
  %34 = getelementptr i8, ptr %33, i64 %2
  %35 = getelementptr i8, ptr %34, i64 -1
  %36 = load ptr, ptr %35, align 8, !nosanitize !92
  br label %39

37:                                               ; preds = %28
  %38 = inttoptr i64 %2 to ptr
  br label %39

39:                                               ; preds = %37, %32
  %40 = phi ptr [ %36, %32 ], [ %38, %37 ]
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %24, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !61
  %43 = icmp eq i64 %42, 0
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %24, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8
  %46 = select i1 %43, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %45
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef %46, i32 noundef %26)
  br label %128

47:                                               ; preds = %4
  %48 = load ptr, ptr %0, align 8, !tbaa !65
  %49 = getelementptr inbounds ptr, ptr %48, i64 3
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef nonnull align 8 dereferenceable(36) ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !93
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %51, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !51
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %128, label %55, !prof !94

55:                                               ; preds = %47
  %56 = getelementptr inbounds i8, ptr %1, i64 %3
  %57 = and i64 %2, 1
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %64, label %59, !prof !94

59:                                               ; preds = %55
  %60 = load ptr, ptr %56, align 8, !tbaa !65
  %61 = getelementptr i8, ptr %60, i64 %2
  %62 = getelementptr i8, ptr %61, i64 -1
  %63 = load ptr, ptr %62, align 8, !nosanitize !92
  br label %66

64:                                               ; preds = %55
  %65 = inttoptr i64 %2 to ptr
  br label %66

66:                                               ; preds = %64, %59
  %67 = phi ptr [ %63, %59 ], [ %65, %64 ]
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %51, i64 0, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !61
  %70 = icmp eq i64 %69, 0
  %71 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %51, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8
  %73 = select i1 %70, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %72, !prof !94
  tail call void %67(ptr noundef nonnull align 8 dereferenceable(24) %56, ptr noundef %73, i32 noundef %53), !prof !95
  br label %128

74:                                               ; preds = %4
  %75 = load ptr, ptr %0, align 8, !tbaa !65
  %76 = getelementptr inbounds ptr, ptr %75, i64 28
  %77 = load ptr, ptr %76, align 8
  %78 = tail call noundef nonnull align 8 dereferenceable(36) ptr %77(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %79 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %78, i64 0, i32 1
  %80 = load i32, ptr %79, align 8, !tbaa !51
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %128, label %82

82:                                               ; preds = %74
  %83 = getelementptr inbounds i8, ptr %1, i64 %3
  %84 = and i64 %2, 1
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %83, align 8, !tbaa !65
  %88 = getelementptr i8, ptr %87, i64 %2
  %89 = getelementptr i8, ptr %88, i64 -1
  %90 = load ptr, ptr %89, align 8, !nosanitize !92
  br label %93

91:                                               ; preds = %82
  %92 = inttoptr i64 %2 to ptr
  br label %93

93:                                               ; preds = %91, %86
  %94 = phi ptr [ %90, %86 ], [ %92, %91 ]
  %95 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %78, i64 0, i32 1
  %96 = load i64, ptr %95, align 8, !tbaa !61
  %97 = icmp eq i64 %96, 0
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %78, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8
  %100 = select i1 %97, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %99
  tail call void %94(ptr noundef nonnull align 8 dereferenceable(24) %83, ptr noundef %100, i32 noundef %80)
  br label %128

101:                                              ; preds = %4
  %102 = load ptr, ptr %0, align 8, !tbaa !65
  %103 = getelementptr inbounds ptr, ptr %102, i64 29
  %104 = load ptr, ptr %103, align 8
  %105 = tail call noundef nonnull align 8 dereferenceable(36) ptr %104(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %106 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %105, i64 0, i32 1
  %107 = load i32, ptr %106, align 8, !tbaa !51
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %128, label %109

109:                                              ; preds = %101
  %110 = getelementptr inbounds i8, ptr %1, i64 %3
  %111 = and i64 %2, 1
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr %110, align 8, !tbaa !65
  %115 = getelementptr i8, ptr %114, i64 %2
  %116 = getelementptr i8, ptr %115, i64 -1
  %117 = load ptr, ptr %116, align 8, !nosanitize !92
  br label %120

118:                                              ; preds = %109
  %119 = inttoptr i64 %2 to ptr
  br label %120

120:                                              ; preds = %118, %113
  %121 = phi ptr [ %117, %113 ], [ %119, %118 ]
  %122 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %105, i64 0, i32 1
  %123 = load i64, ptr %122, align 8, !tbaa !61
  %124 = icmp eq i64 %123, 0
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %105, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8
  %127 = select i1 %124, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %126
  tail call void %121(ptr noundef nonnull align 8 dereferenceable(24) %110, ptr noundef %127, i32 noundef %107)
  br label %128

128:                                              ; preds = %20, %120, %101, %93, %74, %66, %47, %39, %4, %15, %10, %9
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_21XalanDocumentFragmentERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) local_unnamed_addr #5 align 2 !prof !96 {
  %5 = load ptr, ptr %0, align 8, !tbaa !65
  %6 = getelementptr inbounds ptr, ptr %5, i64 7
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !97
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !98

10:                                               ; preds = %52, %4
  ret void

11:                                               ; preds = %4, %52
  %12 = phi ptr [ %56, %52 ], [ %8, %4 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(8) %12)
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load ptr, ptr %12, align 8, !tbaa !65
  %20 = getelementptr inbounds ptr, ptr %19, i64 7
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %12)
  tail call void @_ZN11xalanc_1_1015getChildrenDataEPKNS_9XalanNodeERNS_17FormatterListenerEMS3_FvPKtjE(ptr noundef %22, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3)
  br label %52

23:                                               ; preds = %11
  %24 = add i32 %16, -3
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %26, label %52

26:                                               ; preds = %23
  %27 = load ptr, ptr %12, align 8, !tbaa !65
  %28 = getelementptr inbounds ptr, ptr %27, i64 28
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef nonnull align 8 dereferenceable(36) ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %12)
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !51
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds i8, ptr %1, i64 %3
  %36 = and i64 %2, 1
  %37 = icmp eq i64 %36, 0
  %38 = inttoptr i64 %2 to ptr
  br i1 %37, label %44, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %35, align 8, !tbaa !65
  %41 = getelementptr i8, ptr %40, i64 %2
  %42 = getelementptr i8, ptr %41, i64 -1
  %43 = load ptr, ptr %42, align 8, !nosanitize !92
  br label %44

44:                                               ; preds = %34, %39
  %45 = phi ptr [ %43, %39 ], [ %38, %34 ]
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %30, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !61
  %48 = icmp eq i64 %47, 0
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %30, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8
  %51 = select i1 %48, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %50
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef %51, i32 noundef %32)
  br label %52

52:                                               ; preds = %18, %23, %26, %44
  %53 = load ptr, ptr %12, align 8, !tbaa !65
  %54 = getelementptr inbounds ptr, ptr %53, i64 10
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %12)
  %57 = icmp eq ptr %56, null
  br i1 %57, label %10, label %11, !prof !98, !llvm.loop !99
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_13XalanDocumentERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) local_unnamed_addr #3 align 2 !prof !49 {
  %5 = load ptr, ptr %0, align 8, !tbaa !65
  %6 = getelementptr inbounds ptr, ptr %5, i64 38
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0)
  tail call void @_ZN11xalanc_1_1015getChildrenDataEPKNS_9XalanNodeERNS_17FormatterListenerEMS3_FvPKtjE(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_12XalanElementERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) local_unnamed_addr #3 align 2 !prof !49 {
  %5 = load ptr, ptr %0, align 8, !tbaa !65
  %6 = getelementptr inbounds ptr, ptr %5, i64 7
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0)
  tail call void @_ZN11xalanc_1_1015getChildrenDataEPKNS_9XalanNodeERNS_17FormatterListenerEMS3_FvPKtjE(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1015getChildrenDataEPKNS_9XalanNodeERNS_17FormatterListenerEMS3_FvPKtjE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3) local_unnamed_addr #6 comdat !prof !100 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %54, label %6, !prof !101

6:                                                ; preds = %4
  %7 = getelementptr inbounds i8, ptr %1, i64 %3
  %8 = and i64 %2, 1
  %9 = icmp eq i64 %8, 0
  %10 = inttoptr i64 %2 to ptr
  br label %11

11:                                               ; preds = %6, %48
  %12 = phi ptr [ %0, %6 ], [ %52, %48 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(8) %12), !prof !102
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %23, !prof !103

18:                                               ; preds = %11
  %19 = load ptr, ptr %12, align 8, !tbaa !65
  %20 = getelementptr inbounds ptr, ptr %19, i64 7
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %12), !prof !104
  tail call void @_ZN11xalanc_1_1015getChildrenDataEPKNS_9XalanNodeERNS_17FormatterListenerEMS3_FvPKtjE(ptr noundef %22, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3)
  br label %48

23:                                               ; preds = %11
  %24 = add i32 %16, -3
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %26, label %48, !prof !105

26:                                               ; preds = %23
  %27 = load ptr, ptr %12, align 8, !tbaa !65
  %28 = getelementptr inbounds ptr, ptr %27, i64 28
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef nonnull align 8 dereferenceable(36) ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %12), !prof !106
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !51
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %48, label %34, !prof !107

34:                                               ; preds = %26
  br i1 %9, label %40, label %35, !prof !107

35:                                               ; preds = %34
  %36 = load ptr, ptr %7, align 8, !tbaa !65
  %37 = getelementptr i8, ptr %36, i64 %2
  %38 = getelementptr i8, ptr %37, i64 -1
  %39 = load ptr, ptr %38, align 8, !nosanitize !92
  br label %40

40:                                               ; preds = %34, %35
  %41 = phi ptr [ %39, %35 ], [ %10, %34 ]
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %30, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !61
  %44 = icmp eq i64 %43, 0
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %30, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8
  %47 = select i1 %44, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %46, !prof !107
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %47, i32 noundef %32), !prof !108
  br label %48

48:                                               ; preds = %26, %40, %18, %23
  %49 = load ptr, ptr %12, align 8, !tbaa !65
  %50 = getelementptr inbounds ptr, ptr %49, i64 10
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %12), !prof !109
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %11, !prof !110, !llvm.loop !111

54:                                               ; preds = %48, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1011DOMServices13getNameOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 align 2 !prof !112 {
  %2 = load ptr, ptr %0, align 8, !tbaa !65
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !113
  switch i32 %5, label %18 [
    i32 2, label %6
    i32 1, label %8
    i32 7, label %13
  ], !prof !114

6:                                                ; preds = %1
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1011DOMServices13getNameOfNodeERKNS_9XalanAttrE(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %18

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8, !tbaa !65
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef nonnull align 8 dereferenceable(36) ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !115
  br label %18

13:                                               ; preds = %1
  %14 = load ptr, ptr %0, align 8, !tbaa !65
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef nonnull align 8 dereferenceable(36) ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %18

18:                                               ; preds = %1, %13, %8, %6
  %19 = phi ptr [ %7, %6 ], [ %12, %8 ], [ %17, %13 ], [ @_ZN11xalanc_1_1011DOMServices13s_emptyStringE, %1 ]
  ret ptr %19
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1011DOMServices13getNameOfNodeERKNS_9XalanAttrE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !49 {
  %2 = load ptr, ptr %0, align 8, !tbaa !65
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !61
  %8 = icmp eq i64 %7, 0
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = select i1 %8, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %10
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %5, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !51
  %14 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL27s_XMLNamespaceWithSeparator, i64 0, i32 0, i32 1), align 8, !tbaa !61
  %15 = icmp eq i64 %14, 0
  %16 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL27s_XMLNamespaceWithSeparator, i64 0, i32 0, i32 3), align 8
  %17 = select i1 %15, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %16
  %18 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL27s_XMLNamespaceWithSeparator, i64 0, i32 1), align 8, !tbaa !51
  %19 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %11, i32 noundef %13, ptr noundef %17, i32 noundef %18)
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load ptr, ptr %0, align 8, !tbaa !65
  %22 = getelementptr inbounds ptr, ptr %21, i64 24
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef nonnull align 8 dereferenceable(36) ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %28

25:                                               ; preds = %1
  %26 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) @_ZL14s_XMLNamespace)
  %27 = select i1 %26, ptr @_ZN11xalanc_1_1011DOMServices13s_emptyStringE, ptr %5
  br label %28

28:                                               ; preds = %25, %20
  %29 = phi ptr [ %24, %20 ], [ %27, %25 ]
  ret ptr %29
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1011DOMServices18getNamespaceOfNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 align 2 !prof !49 {
  %2 = load ptr, ptr %0, align 8, !tbaa !65
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %6 = icmp eq i32 %5, 2
  %7 = load ptr, ptr %0, align 8, !tbaa !65
  br i1 %6, label %8, label %30

8:                                                ; preds = %1
  %9 = getelementptr inbounds ptr, ptr %7, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !61
  %14 = icmp eq i64 %13, 0
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = select i1 %14, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %16
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %11, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !51
  %20 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL27s_XMLNamespaceWithSeparator, i64 0, i32 0, i32 1), align 8, !tbaa !61
  %21 = icmp eq i64 %20, 0
  %22 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL27s_XMLNamespaceWithSeparator, i64 0, i32 0, i32 3), align 8
  %23 = select i1 %21, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %22
  %24 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL27s_XMLNamespaceWithSeparator, i64 0, i32 1), align 8, !tbaa !51
  %25 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %17, i32 noundef %19, ptr noundef %23, i32 noundef %24)
  br i1 %25, label %35, label %26

26:                                               ; preds = %8
  %27 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(36) @_ZL14s_XMLNamespace)
  br i1 %27, label %35, label %28

28:                                               ; preds = %26
  %29 = load ptr, ptr %0, align 8, !tbaa !65
  br label %30

30:                                               ; preds = %1, %28
  %31 = phi ptr [ %29, %28 ], [ %7, %1 ]
  %32 = getelementptr inbounds ptr, ptr %31, i64 22
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef nonnull align 8 dereferenceable(36) ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %35

35:                                               ; preds = %30, %26, %8
  %36 = phi ptr [ @_ZN11xalanc_1_1011DOMServices13s_emptyStringE, %26 ], [ @_ZN11xalanc_1_1011DOMServices13s_emptyStringE, %8 ], [ %34, %30 ]
  ret ptr %36
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1011DOMServices21getNamespaceForPrefixERKNS_14XalanDOMStringERKNS_12XalanElementE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 !prof !49 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) @_ZL11s_XMLString)
  br i1 %3, label %96, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !51
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  br label %10

10:                                               ; preds = %4, %81
  %11 = phi ptr [ null, %4 ], [ %82, %81 ]
  %12 = phi ptr [ %1, %4 ], [ %92, %81 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(8) %12)
  switch i32 %16, label %96 [
    i32 1, label %17
    i32 5, label %81
  ]

17:                                               ; preds = %10
  %18 = load ptr, ptr %12, align 8, !tbaa !65
  %19 = getelementptr inbounds ptr, ptr %18, i64 11
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %12)
  %22 = load ptr, ptr %21, align 8, !tbaa !65
  %23 = getelementptr inbounds ptr, ptr %22, i64 5
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef i32 %24(ptr noundef nonnull align 8 dereferenceable(8) %21)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %81, label %27

27:                                               ; preds = %17, %75
  %28 = phi ptr [ %77, %75 ], [ null, %17 ]
  %29 = phi i32 [ %78, %75 ], [ 0, %17 ]
  %30 = load ptr, ptr %21, align 8, !tbaa !65
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef %29)
  %34 = load ptr, ptr %33, align 8, !tbaa !65
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef nonnull align 8 dereferenceable(36) ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %33)
  br i1 %7, label %38, label %40

38:                                               ; preds = %27
  %39 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %37, ptr noundef nonnull align 8 dereferenceable(36) @_ZL14s_XMLNamespace)
  br i1 %39, label %70, label %75

40:                                               ; preds = %27
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %37, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !61
  %43 = icmp eq i64 %42, 0
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %37, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8
  %46 = select i1 %43, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %45
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %37, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !51
  %49 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL27s_XMLNamespaceWithSeparator, i64 0, i32 0, i32 1), align 8, !tbaa !61
  %50 = icmp eq i64 %49, 0
  %51 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL27s_XMLNamespaceWithSeparator, i64 0, i32 0, i32 3), align 8
  %52 = select i1 %50, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %51
  %53 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL27s_XMLNamespaceWithSeparator, i64 0, i32 1), align 8, !tbaa !51
  %54 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %46, i32 noundef %48, ptr noundef %52, i32 noundef %53)
  br i1 %54, label %55, label %75

55:                                               ; preds = %40
  %56 = load i64, ptr %41, align 8, !tbaa !61
  %57 = icmp eq i64 %56, 0
  %58 = load ptr, ptr %44, align 8
  %59 = select i1 %57, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %58
  %60 = load i32, ptr @_ZL33s_XMLNamespaceWithSeparatorLength, align 4, !tbaa !59
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i16, ptr %59, i64 %61
  %63 = load i64, ptr %8, align 8, !tbaa !61
  %64 = icmp eq i64 %63, 0
  %65 = load ptr, ptr %9, align 8
  %66 = select i1 %64, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %65
  %67 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %66)
  %68 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %62)
  %69 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %66, i32 noundef %67, ptr noundef %62, i32 noundef %68)
  br i1 %69, label %70, label %75

70:                                               ; preds = %55, %38
  %71 = load ptr, ptr %33, align 8, !tbaa !65
  %72 = getelementptr inbounds ptr, ptr %71, i64 3
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef nonnull align 8 dereferenceable(36) ptr %73(ptr noundef nonnull align 8 dereferenceable(8) %33)
  br label %75

75:                                               ; preds = %70, %38, %55, %40
  %76 = phi i1 [ true, %40 ], [ true, %55 ], [ true, %38 ], [ false, %70 ]
  %77 = phi ptr [ %28, %40 ], [ %28, %55 ], [ %28, %38 ], [ %74, %70 ]
  %78 = add nuw i32 %29, 1
  %79 = icmp ult i32 %78, %25
  %80 = and i1 %76, %79
  br i1 %80, label %27, label %81, !llvm.loop !116

81:                                               ; preds = %75, %17, %10
  %82 = phi ptr [ null, %10 ], [ null, %17 ], [ %77, %75 ]
  %83 = load ptr, ptr %12, align 8, !tbaa !65
  %84 = getelementptr inbounds ptr, ptr %83, i64 4
  %85 = load ptr, ptr %84, align 8
  %86 = tail call noundef i32 %85(ptr noundef nonnull align 8 dereferenceable(8) %12)
  %87 = icmp eq i32 %86, 2
  %88 = load ptr, ptr %12, align 8, !tbaa !65
  %89 = select i1 %87, i64 32, i64 5
  %90 = getelementptr inbounds ptr, ptr %88, i64 %89
  %91 = load ptr, ptr %90, align 8
  %92 = tail call noundef ptr %91(ptr noundef nonnull align 8 dereferenceable(8) %12)
  %93 = icmp ne ptr %92, null
  %94 = icmp eq ptr %82, null
  %95 = select i1 %93, i1 %94, i1 false
  br i1 %95, label %10, label %96, !llvm.loop !117

96:                                               ; preds = %81, %10, %2
  %97 = phi ptr [ @_ZL17s_XMLNamespaceURI, %2 ], [ %82, %81 ], [ %11, %10 ]
  ret ptr %97
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1011DOMServices21getNamespaceForPrefixEPKtRKNS_14PrefixResolverEbRNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(36) %3) local_unnamed_addr #3 align 2 !prof !49 {
  br label %5

5:                                                ; preds = %5, %4
  %6 = phi ptr [ %0, %4 ], [ %9, %5 ]
  %7 = load i16, ptr %6, align 2, !tbaa !118
  %8 = icmp eq i16 %7, 0
  %9 = getelementptr inbounds i16, ptr %6, i64 1
  br i1 %8, label %10, label %5, !llvm.loop !120

10:                                               ; preds = %5
  %11 = ptrtoint ptr %6 to i64
  %12 = ptrtoint ptr %0 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 1
  %15 = trunc i64 %14 to i32
  %16 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL14s_XMLNamespace, i64 0, i32 1), align 8
  %17 = icmp eq i32 %16, %15
  %18 = select i1 %2, i1 %17, i1 false
  br i1 %18, label %19, label %25

19:                                               ; preds = %10
  %20 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL14s_XMLNamespace, i64 0, i32 0, i32 1), align 8, !tbaa !61
  %21 = icmp eq i64 %20, 0
  %22 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL14s_XMLNamespace, i64 0, i32 0, i32 3), align 8
  %23 = select i1 %21, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %22
  %24 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %23, ptr noundef %0, i32 noundef %15)
  br i1 %24, label %59, label %25

25:                                               ; preds = %19, %10
  br label %26

26:                                               ; preds = %25, %29
  %27 = phi ptr [ %30, %29 ], [ %0, %25 ]
  %28 = load i16, ptr %27, align 2, !tbaa !118
  switch i16 %28, label %29 [
    i16 58, label %31
    i16 0, label %31
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds i16, ptr %27, i64 1
  br label %26, !llvm.loop !121

31:                                               ; preds = %26, %26
  %32 = ptrtoint ptr %27 to i64
  %33 = sub i64 %32, %12
  %34 = lshr exact i64 %33, 1
  %35 = trunc i64 %34 to i32
  %36 = icmp eq i32 %35, %15
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !61
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load i64, ptr %38, align 8, !tbaa !61
  %43 = sub i64 %42, %39
  store i64 %43, ptr %38, align 8, !tbaa !61
  br label %44

44:                                               ; preds = %41, %37
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 0, i32 1
  store i32 0, ptr %45, align 8, !tbaa !51
  br i1 %2, label %59, label %53

46:                                               ; preds = %31
  %47 = icmp eq i32 %35, -1
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 0, i32 noundef -1)
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0)
  br label %50

50:                                               ; preds = %46, %48
  %51 = phi i32 [ %49, %48 ], [ %35, %46 ]
  %52 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef %0, i32 noundef %51)
  br label %53

53:                                               ; preds = %44, %50
  %54 = phi ptr [ %3, %50 ], [ @_ZN11xalanc_1_1011DOMServices13s_emptyStringE, %44 ]
  %55 = load ptr, ptr %1, align 8, !tbaa !65
  %56 = getelementptr inbounds ptr, ptr %55, i64 2
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %54)
  br label %59

59:                                               ; preds = %53, %44, %19
  %60 = phi ptr [ @_ZL23s_XMLNamespacePrefixURI, %19 ], [ null, %44 ], [ %58, %53 ]
  ret ptr %60
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1011DOMServices11isNodeAfterERKNS_9XalanNodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 !prof !49 {
  %3 = load ptr, ptr %0, align 8, !tbaa !65
  %4 = getelementptr inbounds ptr, ptr %3, i64 26
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %7 = load ptr, ptr %0, align 8, !tbaa !65
  br i1 %6, label %8, label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds ptr, ptr %7, i64 27
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i64 %10(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %12 = load ptr, ptr %1, align 8, !tbaa !65
  %13 = getelementptr inbounds ptr, ptr %12, i64 27
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef i64 %14(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %16 = icmp ugt i64 %11, %15
  br label %155

17:                                               ; preds = %2
  %18 = getelementptr inbounds ptr, ptr %7, i64 4
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef i32 %19(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %21 = icmp eq i32 %20, 2
  %22 = load ptr, ptr %0, align 8, !tbaa !65
  %23 = select i1 %21, i64 32, i64 5
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %27 = load ptr, ptr %1, align 8, !tbaa !65
  %28 = getelementptr inbounds ptr, ptr %27, i64 4
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef i32 %29(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %31 = icmp eq i32 %30, 2
  %32 = select i1 %31, i64 32, i64 5
  %33 = load ptr, ptr %1, align 8, !tbaa !65
  %34 = getelementptr inbounds ptr, ptr %33, i64 %32
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %37 = icmp eq ptr %26, %36
  br i1 %37, label %40, label %38

38:                                               ; preds = %17
  %39 = icmp eq ptr %26, null
  br i1 %39, label %42, label %45

40:                                               ; preds = %17
  %41 = tail call noundef zeroext i1 @_ZN11xalanc_1_1011DOMServices18isNodeAfterSiblingERKNS_9XalanNodeES3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %155

42:                                               ; preds = %45, %38
  %43 = phi i32 [ 2, %38 ], [ %48, %45 ]
  %44 = icmp eq ptr %36, null
  br i1 %44, label %75, label %60

45:                                               ; preds = %38, %45
  %46 = phi i32 [ %48, %45 ], [ 2, %38 ]
  %47 = phi ptr [ %58, %45 ], [ %26, %38 ]
  %48 = add nuw nsw i32 %46, 1
  %49 = load ptr, ptr %47, align 8, !tbaa !65
  %50 = getelementptr inbounds ptr, ptr %49, i64 4
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef i32 %51(ptr noundef nonnull align 8 dereferenceable(8) %47)
  %53 = icmp eq i32 %52, 2
  %54 = load ptr, ptr %47, align 8, !tbaa !65
  %55 = select i1 %53, i64 32, i64 5
  %56 = getelementptr inbounds ptr, ptr %54, i64 %55
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %47)
  %59 = icmp eq ptr %58, null
  br i1 %59, label %42, label %45, !llvm.loop !122

60:                                               ; preds = %42, %60
  %61 = phi i32 [ %63, %60 ], [ 2, %42 ]
  %62 = phi ptr [ %73, %60 ], [ %36, %42 ]
  %63 = add nuw nsw i32 %61, 1
  %64 = load ptr, ptr %62, align 8, !tbaa !65
  %65 = getelementptr inbounds ptr, ptr %64, i64 4
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef i32 %66(ptr noundef nonnull align 8 dereferenceable(8) %62)
  %68 = icmp eq i32 %67, 2
  %69 = load ptr, ptr %62, align 8, !tbaa !65
  %70 = select i1 %68, i64 32, i64 5
  %71 = getelementptr inbounds ptr, ptr %69, i64 %70
  %72 = load ptr, ptr %71, align 8
  %73 = tail call noundef ptr %72(ptr noundef nonnull align 8 dereferenceable(8) %62)
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %60, !llvm.loop !123

75:                                               ; preds = %60, %42
  %76 = phi i32 [ 2, %42 ], [ %63, %60 ]
  %77 = icmp ult i32 %43, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %75
  %79 = sub nsw i32 %76, %43
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %116

81:                                               ; preds = %78, %81
  %82 = phi i32 [ %94, %81 ], [ 0, %78 ]
  %83 = phi ptr [ %93, %81 ], [ %1, %78 ]
  %84 = load ptr, ptr %83, align 8, !tbaa !65
  %85 = getelementptr inbounds ptr, ptr %84, i64 4
  %86 = load ptr, ptr %85, align 8
  %87 = tail call noundef i32 %86(ptr noundef nonnull align 8 dereferenceable(8) %83)
  %88 = icmp eq i32 %87, 2
  %89 = load ptr, ptr %83, align 8, !tbaa !65
  %90 = select i1 %88, i64 32, i64 5
  %91 = getelementptr inbounds ptr, ptr %89, i64 %90
  %92 = load ptr, ptr %91, align 8
  %93 = tail call noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %83)
  %94 = add nuw nsw i32 %82, 1
  %95 = icmp eq i32 %94, %79
  br i1 %95, label %116, label %81, !llvm.loop !124

96:                                               ; preds = %75
  %97 = icmp ugt i32 %43, %76
  br i1 %97, label %98, label %116

98:                                               ; preds = %96
  %99 = sub nsw i32 %43, %76
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %98, %101
  %102 = phi i32 [ %114, %101 ], [ 0, %98 ]
  %103 = phi ptr [ %113, %101 ], [ %0, %98 ]
  %104 = load ptr, ptr %103, align 8, !tbaa !65
  %105 = getelementptr inbounds ptr, ptr %104, i64 4
  %106 = load ptr, ptr %105, align 8
  %107 = tail call noundef i32 %106(ptr noundef nonnull align 8 dereferenceable(8) %103)
  %108 = icmp eq i32 %107, 2
  %109 = load ptr, ptr %103, align 8, !tbaa !65
  %110 = select i1 %108, i64 32, i64 5
  %111 = getelementptr inbounds ptr, ptr %109, i64 %110
  %112 = load ptr, ptr %111, align 8
  %113 = tail call noundef ptr %112(ptr noundef nonnull align 8 dereferenceable(8) %103)
  %114 = add nuw nsw i32 %102, 1
  %115 = icmp eq i32 %114, %99
  br i1 %115, label %116, label %101, !llvm.loop !125

116:                                              ; preds = %101, %81, %98, %78, %96
  %117 = phi ptr [ %0, %96 ], [ %0, %78 ], [ %0, %98 ], [ %0, %81 ], [ %113, %101 ]
  %118 = phi ptr [ %1, %96 ], [ %1, %78 ], [ %1, %98 ], [ %93, %81 ], [ %1, %101 ]
  %119 = icmp eq ptr %117, null
  br i1 %119, label %155, label %120

120:                                              ; preds = %116
  %121 = icmp eq ptr %117, %118
  br i1 %121, label %124, label %131

122:                                              ; preds = %131
  %123 = icmp eq ptr %143, %153
  br i1 %123, label %124, label %131, !llvm.loop !126

124:                                              ; preds = %122, %120
  %125 = phi ptr [ null, %120 ], [ %133, %122 ]
  %126 = phi ptr [ null, %120 ], [ %132, %122 ]
  %127 = phi ptr [ %117, %120 ], [ %143, %122 ]
  %128 = icmp eq ptr %126, null
  br i1 %128, label %155, label %129

129:                                              ; preds = %124
  %130 = tail call noundef zeroext i1 @_ZN11xalanc_1_1011DOMServices18isNodeAfterSiblingERKNS_9XalanNodeES3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %127, ptr noundef nonnull align 8 dereferenceable(8) %126, ptr noundef nonnull align 8 dereferenceable(8) %125)
  br label %155

131:                                              ; preds = %120, %122
  %132 = phi ptr [ %143, %122 ], [ %117, %120 ]
  %133 = phi ptr [ %153, %122 ], [ %118, %120 ]
  %134 = load ptr, ptr %132, align 8, !tbaa !65
  %135 = getelementptr inbounds ptr, ptr %134, i64 4
  %136 = load ptr, ptr %135, align 8
  %137 = tail call noundef i32 %136(ptr noundef nonnull align 8 dereferenceable(8) %132)
  %138 = icmp eq i32 %137, 2
  %139 = load ptr, ptr %132, align 8, !tbaa !65
  %140 = select i1 %138, i64 32, i64 5
  %141 = getelementptr inbounds ptr, ptr %139, i64 %140
  %142 = load ptr, ptr %141, align 8
  %143 = tail call noundef ptr %142(ptr noundef nonnull align 8 dereferenceable(8) %132)
  %144 = load ptr, ptr %133, align 8, !tbaa !65
  %145 = getelementptr inbounds ptr, ptr %144, i64 4
  %146 = load ptr, ptr %145, align 8
  %147 = tail call noundef i32 %146(ptr noundef nonnull align 8 dereferenceable(8) %133)
  %148 = icmp eq i32 %147, 2
  %149 = select i1 %148, i64 32, i64 5
  %150 = load ptr, ptr %133, align 8, !tbaa !65
  %151 = getelementptr inbounds ptr, ptr %150, i64 %149
  %152 = load ptr, ptr %151, align 8
  %153 = tail call noundef ptr %152(ptr noundef nonnull align 8 dereferenceable(8) %133)
  %154 = icmp eq ptr %143, null
  br i1 %154, label %155, label %122, !llvm.loop !126

155:                                              ; preds = %131, %116, %40, %124, %129, %8
  %156 = phi i1 [ %16, %8 ], [ %41, %40 ], [ %130, %129 ], [ %77, %124 ], [ false, %116 ], [ false, %131 ]
  ret i1 %156
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1011DOMServices18isNodeAfterSiblingERKNS_9XalanNodeES3_S3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 align 2 !prof !49 {
  %4 = load ptr, ptr %1, align 8, !tbaa !65
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %8 = load ptr, ptr %2, align 8, !tbaa !65
  %9 = getelementptr inbounds ptr, ptr %8, i64 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %12 = icmp ne i32 %7, 2
  %13 = icmp eq i32 %11, 2
  %14 = and i1 %12, %13
  br i1 %14, label %85, label %15

15:                                               ; preds = %3
  %16 = icmp eq i32 %7, 2
  %17 = icmp ne i32 %11, 2
  %18 = and i1 %16, %17
  br i1 %18, label %85, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %0, align 8, !tbaa !65
  br i1 %16, label %21, label %59

21:                                               ; preds = %19
  %22 = getelementptr inbounds ptr, ptr %20, i64 11
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %25 = load ptr, ptr %24, align 8, !tbaa !65
  %26 = getelementptr inbounds ptr, ptr %25, i64 5
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef i32 %27(ptr noundef nonnull align 8 dereferenceable(8) %24)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %85, label %30

30:                                               ; preds = %21, %51
  %31 = phi i8 [ %55, %51 ], [ 0, %21 ]
  %32 = phi i32 [ %56, %51 ], [ 0, %21 ]
  %33 = phi i8 [ %53, %51 ], [ 0, %21 ]
  %34 = phi i8 [ %52, %51 ], [ 0, %21 ]
  %35 = load ptr, ptr %24, align 8, !tbaa !65
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef %32)
  %39 = icmp eq ptr %38, %1
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = and i8 %33, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %48, label %51

43:                                               ; preds = %30
  %44 = icmp eq ptr %38, %2
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = and i8 %34, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45, %40, %43
  %49 = phi i8 [ %34, %43 ], [ 1, %40 ], [ %34, %45 ]
  %50 = phi i8 [ %33, %43 ], [ %33, %40 ], [ 1, %45 ]
  br label %51

51:                                               ; preds = %45, %40, %48
  %52 = phi i8 [ %49, %48 ], [ %34, %40 ], [ %34, %45 ]
  %53 = phi i8 [ %50, %48 ], [ %33, %40 ], [ %33, %45 ]
  %54 = phi i1 [ false, %48 ], [ true, %40 ], [ true, %45 ]
  %55 = phi i8 [ %31, %48 ], [ 1, %40 ], [ 0, %45 ]
  %56 = add nuw i32 %32, 1
  %57 = icmp eq i32 %56, %28
  %58 = select i1 %54, i1 true, i1 %57
  br i1 %58, label %85, label %30, !llvm.loop !127

59:                                               ; preds = %19
  %60 = getelementptr inbounds ptr, ptr %20, i64 7
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %63 = icmp eq ptr %62, null
  br i1 %63, label %85, label %64

64:                                               ; preds = %59, %77
  %65 = phi i8 [ %79, %77 ], [ 0, %59 ]
  %66 = phi i8 [ %78, %77 ], [ 0, %59 ]
  %67 = phi ptr [ %83, %77 ], [ %62, %59 ]
  %68 = icmp eq ptr %67, %1
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = and i8 %65, 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %77, label %85

72:                                               ; preds = %64
  %73 = icmp eq ptr %67, %2
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = and i8 %66, 1
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74, %69, %72
  %78 = phi i8 [ %66, %72 ], [ 1, %69 ], [ %66, %74 ]
  %79 = phi i8 [ %65, %72 ], [ %65, %69 ], [ 1, %74 ]
  %80 = load ptr, ptr %67, align 8, !tbaa !65
  %81 = getelementptr inbounds ptr, ptr %80, i64 10
  %82 = load ptr, ptr %81, align 8
  %83 = tail call noundef ptr %82(ptr noundef nonnull align 8 dereferenceable(8) %67)
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %64, !llvm.loop !128

85:                                               ; preds = %69, %77, %74, %51, %59, %21, %15, %3
  %86 = phi i8 [ 1, %3 ], [ 0, %15 ], [ 0, %21 ], [ 0, %59 ], [ %55, %51 ], [ 0, %74 ], [ 0, %77 ], [ 1, %69 ]
  %87 = and i8 %86, 1
  %88 = icmp ne i8 %87, 0
  ret i1 %88
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1011DOMServices16findOwnerElementERKNS_9XalanNodeERS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 align 2 !prof !49 {
  %3 = load ptr, ptr %1, align 8, !tbaa !65
  %4 = getelementptr inbounds ptr, ptr %3, i64 11
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !65
  %10 = getelementptr inbounds ptr, ptr %9, i64 5
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %24, label %17

14:                                               ; preds = %17
  %15 = add nuw i32 %18, 1
  %16 = icmp eq i32 %15, %12
  br i1 %16, label %24, label %17, !llvm.loop !129

17:                                               ; preds = %8, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %8 ]
  %19 = load ptr, ptr %6, align 8, !tbaa !65
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %18)
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %24, label %14

24:                                               ; preds = %17, %14, %8, %2
  %25 = phi ptr [ null, %2 ], [ null, %8 ], [ null, %14 ], [ %1, %17 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %62

27:                                               ; preds = %24
  %28 = load ptr, ptr %1, align 8, !tbaa !65
  %29 = getelementptr inbounds ptr, ptr %28, i64 7
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %32 = icmp eq ptr %31, null
  br i1 %32, label %62, label %33

33:                                               ; preds = %27, %56
  %34 = phi ptr [ %57, %56 ], [ %31, %27 ]
  %35 = phi i8 [ %48, %56 ], [ 0, %27 ]
  %36 = phi ptr [ %47, %56 ], [ null, %27 ]
  %37 = load ptr, ptr %34, align 8, !tbaa !65
  %38 = getelementptr inbounds ptr, ptr %37, i64 4
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef i32 %39(ptr noundef nonnull align 8 dereferenceable(8) %34)
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = tail call noundef ptr @_ZN11xalanc_1_1011DOMServices16findOwnerElementERKNS_9XalanNodeERS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %34)
  %44 = icmp eq ptr %43, null
  %45 = select i1 %44, i8 %35, i8 1
  br label %46

46:                                               ; preds = %42, %33
  %47 = phi ptr [ %36, %33 ], [ %43, %42 ]
  %48 = phi i8 [ %35, %33 ], [ %45, %42 ]
  %49 = and i8 %48, 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load ptr, ptr %34, align 8, !tbaa !65
  %53 = getelementptr inbounds ptr, ptr %52, i64 10
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %34)
  br label %56

56:                                               ; preds = %51, %46
  %57 = phi ptr [ %55, %51 ], [ %34, %46 ]
  %58 = icmp ne ptr %57, null
  %59 = and i8 %48, 1
  %60 = icmp eq i8 %59, 0
  %61 = and i1 %58, %60
  br i1 %61, label %33, label %62, !llvm.loop !130

62:                                               ; preds = %56, %27, %24
  %63 = phi ptr [ %25, %24 ], [ null, %27 ], [ %47, %56 ]
  ret ptr %63
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !131 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !62
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !132

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = load ptr, ptr %0, align 8, !tbaa !60
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !133

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #11
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat !prof !49 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_DOMServices.cpp() #9 section ".text.startup" !prof !50 !PGOFuncName !134 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZL11s_XMLString, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZL11s_XMLString, ptr nonnull @__dso_handle) #10
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZL24s_XMLStringWithSeparator, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %4 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZL24s_XMLStringWithSeparator, ptr nonnull @__dso_handle) #10
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZL20s_XMLNamespacePrefix, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %6 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZL20s_XMLNamespacePrefix, ptr nonnull @__dso_handle) #10
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZL17s_XMLNamespaceURI, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %8 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZL17s_XMLNamespaceURI, ptr nonnull @__dso_handle) #10
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZL14s_XMLNamespace, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %10 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZL14s_XMLNamespace, ptr nonnull @__dso_handle) #10
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZL27s_XMLNamespaceWithSeparator, ptr noundef nonnull align 8 dereferenceable(8) %11)
  %12 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZL27s_XMLNamespaceWithSeparator, ptr nonnull @__dso_handle) #10
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZL29s_XMLNamespaceSeparatorString, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %14 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZL29s_XMLNamespaceSeparatorString, ptr nonnull @__dso_handle) #10
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZL23s_XMLNamespacePrefixURI, ptr noundef nonnull align 8 dereferenceable(8) %15)
  %16 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZL23s_XMLNamespacePrefixURI, ptr nonnull @__dso_handle) #10
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1011DOMServices13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %17)
  %18 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_1011DOMServices13s_emptyStringE, ptr nonnull @__dso_handle) #10
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!48}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!35 = !{ptr @_ZN11xalanc_1_1011DOMServices10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc, i64 8}
!36 = !{ptr @_ZN11xalanc_1_1011DOMServices9terminateEv, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1011DOMServices9terminateEv, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 8}
!38 = !{ptr @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1015getChildrenDataEPKNS_9XalanNodeERNS_14XalanDOMStringE, i64 294818}
!39 = !{ptr @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 53855}
!40 = !{ptr @_ZN11xalanc_1_1015getChildrenDataEPKNS_9XalanNodeERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1015getChildrenDataEPKNS_9XalanNodeERNS_14XalanDOMStringE, i64 67157}
!41 = !{ptr @_ZN11xalanc_1_1015getChildrenDataEPKNS_9XalanNodeERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 429132}
!42 = !{ptr @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_17FormatterListenerEMS4_FvPKtjE, ptr @_ZN11xalanc_1_1015getChildrenDataEPKNS_9XalanNodeERNS_17FormatterListenerEMS3_FvPKtjE, i64 288779}
!43 = !{ptr @_ZN11xalanc_1_1015getChildrenDataEPKNS_9XalanNodeERNS_17FormatterListenerEMS3_FvPKtjE, ptr @_ZN11xalanc_1_1015getChildrenDataEPKNS_9XalanNodeERNS_17FormatterListenerEMS3_FvPKtjE, i64 134314}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!45 = !{ptr @_GLOBAL__sub_I_DOMServices.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 9}
!46 = !{ptr @_GLOBAL__sub_I_DOMServices.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 9}
!47 = !{ptr @_GLOBAL__sub_I_DOMServices.cpp, ptr @__cxa_atexit, i64 9}
!48 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!49 = !{!"function_entry_count", i64 0}
!50 = !{!"function_entry_count", i64 1}
!51 = !{!52, !58, i64 32}
!52 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !53, i64 0, !58, i64 32}
!53 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !54, i64 0, !57, i64 8, !57, i64 16, !54, i64 24}
!54 = !{!"any pointer", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C++ TBAA"}
!57 = !{!"long", !55, i64 0}
!58 = !{!"int", !55, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!53, !54, i64 0}
!61 = !{!53, !57, i64 8}
!62 = !{!53, !57, i64 16}
!63 = !{!53, !54, i64 24}
!64 = !{!"branch_weights", i32 0, i32 1}
!65 = !{!66, !66, i64 0}
!66 = !{!"vtable pointer", !56, i64 0}
!67 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!68 = !{!"function_entry_count", i64 348673}
!69 = !{!"VP", i32 0, i64 348673, i64 5575636727286712827, i64 294818, i64 7640389117638268357, i64 53855}
!70 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 294818, i32 0, i32 0, i32 53855, i32 0, i32 0}
!71 = !{!"VP", i32 0, i64 294818, i64 543931881986103364, i64 294818}
!72 = !{!"VP", i32 0, i64 53855, i64 -6859805290484076677, i64 53855}
!73 = !{!"branch_weights", i32 0, i32 53855}
!74 = distinct !{!74, !75, !76}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = !{!"function_entry_count", i64 361975}
!78 = !{!"branch_weights", i32 1, i32 361974}
!79 = !{!"VP", i32 0, i64 496289, i64 -2905376512939438276, i64 429132, i64 5575636727286712827, i64 67157}
!80 = !{!"branch_weights", i32 67157, i32 429132}
!81 = !{!"VP", i32 0, i64 67157, i64 543931881986103364, i64 67157}
!82 = !{!"branch_weights", i32 429132, i32 0}
!83 = !{!"VP", i32 0, i64 429132, i64 -2076242382826092449, i64 429132}
!84 = !{!"branch_weights", i32 0, i32 429132}
!85 = !{!"VP", i32 0, i64 496289, i64 -853211046839366833, i64 429132, i64 7650302809387452093, i64 67157}
!86 = !{!"branch_weights", i32 361974, i32 134315}
!87 = distinct !{!87, !75, !76}
!88 = !{!"function_entry_count", i64 446372}
!89 = !{!"VP", i32 0, i64 446372, i64 5575636727286712827, i64 288779, i64 7640389117638268357, i64 157593}
!90 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 288779, i32 0, i32 0, i32 157593, i32 0, i32 0}
!91 = !{!"VP", i32 0, i64 288779, i64 543931881986103364, i64 288779}
!92 = !{}
!93 = !{!"VP", i32 0, i64 157593, i64 -6859805290484076677, i64 157593}
!94 = !{!"branch_weights", i32 0, i32 157593}
!95 = !{!"VP", i32 0, i64 157593, i64 7358946498439485224, i64 157593}
!96 = !{!"function_entry_count", i64 3869}
!97 = !{!"VP", i32 0, i64 3869, i64 5676555952161286401, i64 3869}
!98 = !{!"branch_weights", i32 1, i32 0}
!99 = distinct !{!99, !75, !76}
!100 = !{!"function_entry_count", i64 423093}
!101 = !{!"branch_weights", i32 1, i32 423092}
!102 = !{!"VP", i32 0, i64 690359, i64 -2905376512939438276, i64 556045, i64 5575636727286712827, i64 134314}
!103 = !{!"branch_weights", i32 134314, i32 556045}
!104 = !{!"VP", i32 0, i64 134314, i64 543931881986103364, i64 134314}
!105 = !{!"branch_weights", i32 556045, i32 0}
!106 = !{!"VP", i32 0, i64 556045, i64 -2076242382826092449, i64 556045}
!107 = !{!"branch_weights", i32 0, i32 556045}
!108 = !{!"VP", i32 0, i64 556045, i64 -5696338583226168735, i64 335440, i64 7358946498439485224, i64 195051, i64 6376661219797957484, i64 19152}
!109 = !{!"VP", i32 0, i64 690359, i64 -853211046839366833, i64 556045, i64 7650302809387452093, i64 134314}
!110 = !{!"branch_weights", i32 423092, i32 267267}
!111 = distinct !{!111, !75, !76}
!112 = !{!"function_entry_count", i64 6}
!113 = !{!"VP", i32 0, i64 6, i64 5575636727286712827, i64 6}
!114 = !{!"branch_weights", i32 0, i32 0, i32 6, i32 0}
!115 = !{!"VP", i32 0, i64 6, i64 -2895607987861478864, i64 6}
!116 = distinct !{!116, !75, !76}
!117 = distinct !{!117, !75, !76}
!118 = !{!119, !119, i64 0}
!119 = !{!"short", !55, i64 0}
!120 = distinct !{!120, !75, !76}
!121 = distinct !{!121, !75, !76}
!122 = distinct !{!122, !75, !76}
!123 = distinct !{!123, !75, !76}
!124 = distinct !{!124, !75, !76}
!125 = distinct !{!125, !75, !76}
!126 = distinct !{!126, !75, !76}
!127 = distinct !{!127, !75, !76}
!128 = distinct !{!128, !75, !76}
!129 = distinct !{!129, !75, !76}
!130 = distinct !{!130, !75, !76}
!131 = !{!"function_entry_count", i64 42470003}
!132 = !{!"branch_weights", i32 52000, i32 42418003}
!133 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!134 = !{!"DOMServices.cpp;_GLOBAL__sub_I_DOMServices.cpp"}
