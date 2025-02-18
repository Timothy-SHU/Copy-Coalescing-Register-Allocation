; ModuleID = 'XalanCompiledStylesheetDefault.cpp'
source_filename = "XalanCompiledStylesheetDefault.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanCompiledStylesheetDefault" = type { %"class.xalanc_1_10::XalanCompiledStylesheet", %"class.xalanc_1_10::XPathFactoryBlock", %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr }
%"class.xalanc_1_10::XalanCompiledStylesheet" = type { ptr }
%"class.xalanc_1_10::XPathFactoryBlock" = type { %"class.xalanc_1_10::XPathFactory", %"class.xalanc_1_10::XPathAllocator" }
%"class.xalanc_1_10::XPathFactory" = type { ptr }
%"class.xalanc_1_10::XPathAllocator" = type { %"class.xalanc_1_10::ArenaAllocator" }
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::StylesheetConstructionContextDefault" = type { %"class.xalanc_1_10::StylesheetConstructionContext", ptr, ptr, %"class.xalanc_1_10::XalanMemMgrAutoPtr", %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanDOMStringPool", %"class.xalanc_1_10::XalanArrayAllocator", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanQNameByValue", %"class.xalanc_1_10::XalanDOMStringCache", %"class.xalanc_1_10::XalanAVTAllocator", %"class.xalanc_1_10::XalanAVTPartSimpleAllocator", %"class.xalanc_1_10::XalanAVTPartXPathAllocator", %"class.xalanc_1_10::XalanQNameByValueAllocator", %"class.xalanc_1_10::XalanQNameByReference", %"class.xalanc_1_10::XalanArrayAllocator.15", %"class.xalanc_1_10::XalanVector.17", %"class.xalanc_1_10::XalanElemApplyTemplatesAllocator", %"class.xalanc_1_10::XalanElemAttributeAllocator", %"class.xalanc_1_10::XalanElemAttributeSetAllocator", %"class.xalanc_1_10::XalanElemCallTemplateAllocator", %"class.xalanc_1_10::XalanElemElementAllocator", %"class.xalanc_1_10::XalanElemLiteralResultAllocator", %"class.xalanc_1_10::XalanElemTemplateAllocator", %"class.xalanc_1_10::XalanElemTextLiteralAllocator", %"class.xalanc_1_10::XalanElemValueOfAllocator", %"class.xalanc_1_10::XalanElemVariableAllocator", %"class.xalanc_1_10::XalanMatchPatternDataAllocator", %"class.xalanc_1_10::XalanQNameByReference" }
%"class.xalanc_1_10::StylesheetConstructionContext" = type { %"class.xalanc_1_10::XPathConstructionContext" }
%"class.xalanc_1_10::XPathConstructionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathProcessor>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathProcessor>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMStringPool" = type { ptr, %"class.xalanc_1_10::XalanDOMStringAllocator", i64, %"class.xalanc_1_10::XalanDOMStringHashTable" }
%"class.xalanc_1_10::XalanDOMStringAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.0" }
%"class.xalanc_1_10::ArenaAllocator.0" = type { ptr, i64, %"class.xalanc_1_10::XalanList.1" }
%"class.xalanc_1_10::XalanList.1" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDOMStringHashTable" = type <{ i64, i64, %"class.xalanc_1_10::XalanMemMgrAutoPtrArray", i64, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" = type { ptr, ptr, i64 }
%"class.xalanc_1_10::XalanArrayAllocator" = type { %"class.xalanc_1_10::XalanList.2", i64, ptr }
%"class.xalanc_1_10::XalanList.2" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.3", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanQNameByValue" = type { %"class.xalanc_1_10::XalanQName", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanQName" = type { ptr }
%"class.xalanc_1_10::XalanDOMStringCache" = type { %"class.xalanc_1_10::XalanVector.4", %"class.xalanc_1_10::XalanVector.4", i32, [4 x i8], %"class.xalanc_1_10::XalanDOMStringReusableAllocator" }
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMStringReusableAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator" }
%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator.5", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.5" = type { ptr, i16, %"class.xalanc_1_10::XalanList.6" }
%"class.xalanc_1_10::XalanList.6" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanAVTAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.7" }
%"class.xalanc_1_10::ArenaAllocator.7" = type { ptr, i64, %"class.xalanc_1_10::XalanList.8" }
%"class.xalanc_1_10::XalanList.8" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanAVTPartSimpleAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.9" }
%"class.xalanc_1_10::ArenaAllocator.9" = type { ptr, i64, %"class.xalanc_1_10::XalanList.10" }
%"class.xalanc_1_10::XalanList.10" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanAVTPartXPathAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.11" }
%"class.xalanc_1_10::ArenaAllocator.11" = type { ptr, i64, %"class.xalanc_1_10::XalanList.12" }
%"class.xalanc_1_10::XalanList.12" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanQNameByValueAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.13" }
%"class.xalanc_1_10::ArenaAllocator.13" = type { ptr, i64, %"class.xalanc_1_10::XalanList.14" }
%"class.xalanc_1_10::XalanList.14" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanArrayAllocator.15" = type { %"class.xalanc_1_10::XalanList.16", i64, ptr }
%"class.xalanc_1_10::XalanList.16" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.17" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanElemApplyTemplatesAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.18" }
%"class.xalanc_1_10::ArenaAllocator.18" = type { ptr, i64, %"class.xalanc_1_10::XalanList.19" }
%"class.xalanc_1_10::XalanList.19" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemAttributeAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.20" }
%"class.xalanc_1_10::ArenaAllocator.20" = type { ptr, i64, %"class.xalanc_1_10::XalanList.21" }
%"class.xalanc_1_10::XalanList.21" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemAttributeSetAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.22" }
%"class.xalanc_1_10::ArenaAllocator.22" = type { ptr, i64, %"class.xalanc_1_10::XalanList.23" }
%"class.xalanc_1_10::XalanList.23" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemCallTemplateAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.24" }
%"class.xalanc_1_10::ArenaAllocator.24" = type { ptr, i64, %"class.xalanc_1_10::XalanList.25" }
%"class.xalanc_1_10::XalanList.25" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemElementAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.26" }
%"class.xalanc_1_10::ArenaAllocator.26" = type { ptr, i64, %"class.xalanc_1_10::XalanList.27" }
%"class.xalanc_1_10::XalanList.27" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemLiteralResultAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.28" }
%"class.xalanc_1_10::ArenaAllocator.28" = type { ptr, i64, %"class.xalanc_1_10::XalanList.29" }
%"class.xalanc_1_10::XalanList.29" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemTemplateAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.30" }
%"class.xalanc_1_10::ArenaAllocator.30" = type { ptr, i64, %"class.xalanc_1_10::XalanList.31" }
%"class.xalanc_1_10::XalanList.31" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemTextLiteralAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.32" }
%"class.xalanc_1_10::ArenaAllocator.32" = type { ptr, i64, %"class.xalanc_1_10::XalanList.33" }
%"class.xalanc_1_10::XalanList.33" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemValueOfAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.34" }
%"class.xalanc_1_10::ArenaAllocator.34" = type { ptr, i64, %"class.xalanc_1_10::XalanList.35" }
%"class.xalanc_1_10::XalanList.35" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemVariableAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.36" }
%"class.xalanc_1_10::ArenaAllocator.36" = type { ptr, i64, %"class.xalanc_1_10::XalanList.37" }
%"class.xalanc_1_10::XalanList.37" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanMatchPatternDataAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.38" }
%"class.xalanc_1_10::ArenaAllocator.38" = type { ptr, i64, %"class.xalanc_1_10::XalanList.39" }
%"class.xalanc_1_10::XalanList.39" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanQNameByReference" = type { %"class.xalanc_1_10::XalanQName", ptr, ptr }

$__clang_call_terminate = comdat any

$_ZTSN11xalanc_1_1023XalanCompiledStylesheetE = comdat any

$_ZTIN11xalanc_1_1023XalanCompiledStylesheetE = comdat any

@_ZTVN11xalanc_1_1030XalanCompiledStylesheetDefaultE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1030XalanCompiledStylesheetDefaultE, ptr @_ZN11xalanc_1_1030XalanCompiledStylesheetDefaultD2Ev, ptr @_ZN11xalanc_1_1030XalanCompiledStylesheetDefaultD0Ev, ptr @_ZNK11xalanc_1_1030XalanCompiledStylesheetDefault17getStylesheetRootEv] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1030XalanCompiledStylesheetDefaultE = dso_local constant [48 x i8] c"N11xalanc_1_1030XalanCompiledStylesheetDefaultE\00", align 1
@_ZTSN11xalanc_1_1023XalanCompiledStylesheetE = linkonce_odr dso_local constant [41 x i8] c"N11xalanc_1_1023XalanCompiledStylesheetE\00", comdat, align 1
@_ZTIN11xalanc_1_1023XalanCompiledStylesheetE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1023XalanCompiledStylesheetE }, comdat, align 8
@_ZTIN11xalanc_1_1030XalanCompiledStylesheetDefaultE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1030XalanCompiledStylesheetDefaultE, ptr @_ZTIN11xalanc_1_1023XalanCompiledStylesheetE }, align 8

@_ZN11xalanc_1_1030XalanCompiledStylesheetDefaultC1ERN11xercesc_2_713MemoryManagerERKNS_15XSLTInputSourceERNS_14XSLTEngineImplEPNS1_12ErrorHandlerEPNS1_14EntityResolverE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1030XalanCompiledStylesheetDefaultC2ERN11xercesc_2_713MemoryManagerERKNS_15XSLTInputSourceERNS_14XSLTEngineImplEPNS1_12ErrorHandlerEPNS1_14EntityResolverE
@_ZN11xalanc_1_1030XalanCompiledStylesheetDefaultD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1030XalanCompiledStylesheetDefaultD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1030XalanCompiledStylesheetDefaultC2ERN11xercesc_2_713MemoryManagerERKNS_15XSLTInputSourceERNS_14XSLTEngineImplEPNS1_12ErrorHandlerEPNS1_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(1264) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(1000) %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  store i64 0, ptr %0, align 8
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1030XalanCompiledStylesheetDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanCompiledStylesheetDefault", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1017XPathFactoryBlockC1ERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 20)
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanCompiledStylesheetDefault", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC1ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm(ptr noundef nonnull align 8 dereferenceable(1200) %8, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(1000) %3, ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 1024, i64 noundef 128, i64 noundef 128, i64 noundef 128, i64 noundef 32, i64 noundef 512)
          to label %9 unwind label %66

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 8, !tbaa !35
  %11 = getelementptr inbounds ptr, ptr %10, i64 12
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef nonnull align 8 dereferenceable(8) ptr %12(ptr noundef nonnull align 8 dereferenceable(1000) %3)
          to label %14 unwind label %68

14:                                               ; preds = %9
  %15 = load ptr, ptr %13, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 16
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %19 unwind label %68

19:                                               ; preds = %14
  %20 = load ptr, ptr %13, align 8, !tbaa !35
  %21 = getelementptr inbounds ptr, ptr %20, i64 14
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %24 unwind label %68

24:                                               ; preds = %19
  %25 = icmp eq ptr %4, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %13, align 8, !tbaa !35
  %28 = getelementptr inbounds ptr, ptr %27, i64 17
  %29 = load ptr, ptr %28, align 8
  invoke void %29(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %4)
          to label %30 unwind label %68

30:                                               ; preds = %26, %24
  %31 = icmp eq ptr %5, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr %13, align 8, !tbaa !35
  %34 = getelementptr inbounds ptr, ptr %33, i64 15
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %5)
          to label %36 unwind label %68

36:                                               ; preds = %30, %32
  %37 = load ptr, ptr %3, align 8, !tbaa !35
  %38 = getelementptr inbounds ptr, ptr %37, i64 4
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(1000) %3, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %41 unwind label %52

41:                                               ; preds = %36
  %42 = load ptr, ptr %13, align 8, !tbaa !35
  %43 = getelementptr inbounds ptr, ptr %42, i64 15
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %23)
          to label %45 unwind label %49

45:                                               ; preds = %41
  %46 = load ptr, ptr %13, align 8, !tbaa !35
  %47 = getelementptr inbounds ptr, ptr %46, i64 17
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %64 unwind label %49

49:                                               ; preds = %45, %41
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  tail call void @__clang_call_terminate(ptr %51) #7
  unreachable

52:                                               ; preds = %36
  %53 = landingpad { ptr, i32 }
          cleanup
  %54 = load ptr, ptr %13, align 8, !tbaa !35
  %55 = getelementptr inbounds ptr, ptr %54, i64 15
  %56 = load ptr, ptr %55, align 8
  invoke void %56(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %23)
          to label %57 unwind label %61

57:                                               ; preds = %52
  %58 = load ptr, ptr %13, align 8, !tbaa !35
  %59 = getelementptr inbounds ptr, ptr %58, i64 17
  %60 = load ptr, ptr %59, align 8
  invoke void %60(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %70 unwind label %61

61:                                               ; preds = %57, %52
  %62 = landingpad { ptr, i32 }
          catch ptr null
  %63 = extractvalue { ptr, i32 } %62, 0
  tail call void @__clang_call_terminate(ptr %63) #7
  unreachable

64:                                               ; preds = %45
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanCompiledStylesheetDefault", ptr %0, i64 0, i32 3
  store ptr %40, ptr %65, align 8, !tbaa !38
  ret void

66:                                               ; preds = %6
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %72

68:                                               ; preds = %32, %26, %19, %14, %9
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %70

70:                                               ; preds = %57, %68
  %71 = phi { ptr, i32 } [ %69, %68 ], [ %53, %57 ]
  tail call void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(1200) %8) #8
  br label %72

72:                                               ; preds = %70, %66
  %73 = phi { ptr, i32 } [ %71, %70 ], [ %67, %66 ]
  tail call void @_ZN11xalanc_1_1017XPathFactoryBlockD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #8
  resume { ptr, i32 } %73
}

declare void @_ZN11xalanc_1_1017XPathFactoryBlockC1ERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC1ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm(ptr noundef nonnull align 8 dereferenceable(1200), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(1200)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XPathFactoryBlockD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1030XalanCompiledStylesheetDefault6createERN11xercesc_2_713MemoryManagerERKNS_15XSLTInputSourceERNS_14XSLTEngineImplEPNS1_12ErrorHandlerEPNS1_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(1000) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 1264)
  invoke void @_ZN11xalanc_1_1030XalanCompiledStylesheetDefaultC2ERN11xercesc_2_713MemoryManagerERKNS_15XSLTInputSourceERNS_14XSLTEngineImplEPNS1_12ErrorHandlerEPNS1_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(1264) %9, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(1000) %2, ptr noundef %3, ptr noundef %4)
          to label %10 unwind label %11

10:                                               ; preds = %5
  ret ptr %9

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = icmp eq ptr %9, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %0, align 8, !tbaa !35
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %9)
          to label %21 unwind label %18

18:                                               ; preds = %14
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #7
  unreachable

21:                                               ; preds = %11, %14
  resume { ptr, i32 } %12
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1030XalanCompiledStylesheetDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(1264) %0) unnamed_addr #4 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1030XalanCompiledStylesheetDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanCompiledStylesheetDefault", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(1200) %2) #8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanCompiledStylesheetDefault", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1017XPathFactoryBlockD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1030XalanCompiledStylesheetDefaultD0Ev(ptr noundef nonnull align 8 dereferenceable(1264) %0) unnamed_addr #4 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1030XalanCompiledStylesheetDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanCompiledStylesheetDefault", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(1200) %2) #8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanCompiledStylesheetDefault", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1017XPathFactoryBlockD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #8
  tail call void @_ZdlPv(ptr noundef %0) #9
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1030XalanCompiledStylesheetDefault17getStylesheetRootEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1264) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanCompiledStylesheetDefault", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  ret ptr %3
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #7
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }

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
!38 = !{!39, !48, i64 1256}
!39 = !{!"_ZTSN11xalanc_1_1030XalanCompiledStylesheetDefaultE", !40, i64 0, !41, i64 8, !49, i64 56, !48, i64 1256}
!40 = !{!"_ZTSN11xalanc_1_1023XalanCompiledStylesheetE"}
!41 = !{!"_ZTSN11xalanc_1_1017XPathFactoryBlockE", !42, i64 0, !43, i64 8}
!42 = !{!"_ZTSN11xalanc_1_1012XPathFactoryE"}
!43 = !{!"_ZTSN11xalanc_1_1014XPathAllocatorE", !44, i64 0}
!44 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_5XPathENS_10ArenaBlockIS1_mEEEE", !45, i64 8, !47, i64 16}
!45 = !{!"long", !46, i64 0}
!46 = !{!"omnipotent char", !37, i64 0}
!47 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_5XPathEmEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!48 = !{!"any pointer", !46, i64 0}
!49 = !{!"_ZTSN11xalanc_1_1036StylesheetConstructionContextDefaultE", !50, i64 0, !48, i64 16, !48, i64 24, !52, i64 32, !55, i64 48, !56, i64 80, !64, i64 192, !66, i64 232, !68, i64 272, !70, i64 360, !78, i64 480, !81, i64 520, !84, i64 560, !87, i64 600, !90, i64 640, !91, i64 664, !93, i64 704, !94, i64 736, !97, i64 776, !100, i64 816, !103, i64 856, !106, i64 896, !109, i64 936, !112, i64 976, !115, i64 1016, !118, i64 1056, !121, i64 1096, !124, i64 1136, !90, i64 1176}
!50 = !{!"_ZTSN11xalanc_1_1029StylesheetConstructionContextE", !51, i64 0}
!51 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContextE", !48, i64 8}
!52 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XPathProcessorELb1EEE", !53, i64 0}
!53 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XPathProcessorELb1EE17MemMgrAutoPtrDataE", !54, i64 0}
!54 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1014XPathProcessorEE", !48, i64 0, !48, i64 8}
!55 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEEE", !48, i64 0, !45, i64 8, !45, i64 16, !48, i64 24}
!56 = !{!"_ZTSN11xalanc_1_1018XalanDOMStringPoolE", !57, i64 8, !45, i64 48, !60, i64 56}
!57 = !{!"_ZTSN11xalanc_1_1023XalanDOMStringAllocatorE", !58, i64 0}
!58 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEEE", !45, i64 8, !59, i64 16}
!59 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!60 = !{!"_ZTSN11xalanc_1_1023XalanDOMStringHashTableE", !45, i64 0, !45, i64 8, !61, i64 16, !45, i64 40, !63, i64 48}
!61 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEEE", !62, i64 0}
!62 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayDataE", !48, i64 0, !48, i64 8, !45, i64 16}
!63 = !{!"int", !46, i64 0}
!64 = !{!"_ZTSN11xalanc_1_1019XalanArrayAllocatorItEE", !65, i64 0, !45, i64 24, !48, i64 32}
!65 = !{!"_ZTSN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!66 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !67, i64 0, !63, i64 32}
!67 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !48, i64 0, !45, i64 8, !45, i64 16, !48, i64 24}
!68 = !{!"_ZTSN11xalanc_1_1017XalanQNameByValueE", !69, i64 0, !66, i64 8, !66, i64 48}
!69 = !{!"_ZTSN11xalanc_1_1010XalanQNameE"}
!70 = !{!"_ZTSN11xalanc_1_1019XalanDOMStringCacheE", !71, i64 0, !71, i64 32, !63, i64 64, !72, i64 72}
!71 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEE", !48, i64 0, !45, i64 8, !45, i64 16, !48, i64 24}
!72 = !{!"_ZTSN11xalanc_1_1031XalanDOMStringReusableAllocatorE", !73, i64 0}
!73 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE", !74, i64 0, !77, i64 40}
!74 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE", !75, i64 8, !76, i64 16}
!75 = !{!"short", !46, i64 0}
!76 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!77 = !{!"bool", !46, i64 0}
!78 = !{!"_ZTSN11xalanc_1_1017XalanAVTAllocatorE", !79, i64 0}
!79 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEEE", !45, i64 8, !80, i64 16}
!80 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!81 = !{!"_ZTSN11xalanc_1_1027XalanAVTPartSimpleAllocatorE", !82, i64 0}
!82 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEEE", !45, i64 8, !83, i64 16}
!83 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!84 = !{!"_ZTSN11xalanc_1_1026XalanAVTPartXPathAllocatorE", !85, i64 0}
!85 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_12AVTPartXPathENS_10ArenaBlockIS1_mEEEE", !45, i64 8, !86, i64 16}
!86 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12AVTPartXPathEmEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!87 = !{!"_ZTSN11xalanc_1_1026XalanQNameByValueAllocatorE", !88, i64 0}
!88 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_17XalanQNameByValueENS_10ArenaBlockIS1_mEEEE", !45, i64 8, !89, i64 16}
!89 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XalanQNameByValueEmEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!90 = !{!"_ZTSN11xalanc_1_1021XalanQNameByReferenceE", !69, i64 0, !48, i64 8, !48, i64 16}
!91 = !{!"_ZTSN11xalanc_1_1019XalanArrayAllocatorIPKvEE", !92, i64 0, !45, i64 24, !48, i64 32}
!92 = !{!"_ZTSN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!93 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEEE", !48, i64 0, !45, i64 8, !45, i64 16, !48, i64 24}
!94 = !{!"_ZTSN11xalanc_1_1032XalanElemApplyTemplatesAllocatorE", !95, i64 0}
!95 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEEE", !45, i64 8, !96, i64 16}
!96 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!97 = !{!"_ZTSN11xalanc_1_1027XalanElemAttributeAllocatorE", !98, i64 0}
!98 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_13ElemAttributeENS_10ArenaBlockIS1_mEEEE", !45, i64 8, !99, i64 16}
!99 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13ElemAttributeEmEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!100 = !{!"_ZTSN11xalanc_1_1030XalanElemAttributeSetAllocatorE", !101, i64 0}
!101 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_16ElemAttributeSetENS_10ArenaBlockIS1_mEEEE", !45, i64 8, !102, i64 16}
!102 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemAttributeSetEmEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!103 = !{!"_ZTSN11xalanc_1_1030XalanElemCallTemplateAllocatorE", !104, i64 0}
!104 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_16ElemCallTemplateENS_10ArenaBlockIS1_mEEEE", !45, i64 8, !105, i64 16}
!105 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemCallTemplateEmEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!106 = !{!"_ZTSN11xalanc_1_1025XalanElemElementAllocatorE", !107, i64 0}
!107 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_11ElemElementENS_10ArenaBlockIS1_mEEEE", !45, i64 8, !108, i64 16}
!108 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemElementEmEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!109 = !{!"_ZTSN11xalanc_1_1031XalanElemLiteralResultAllocatorE", !110, i64 0}
!110 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_17ElemLiteralResultENS_10ArenaBlockIS1_mEEEE", !45, i64 8, !111, i64 16}
!111 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17ElemLiteralResultEmEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!112 = !{!"_ZTSN11xalanc_1_1026XalanElemTemplateAllocatorE", !113, i64 0}
!113 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_12ElemTemplateENS_10ArenaBlockIS1_mEEEE", !45, i64 8, !114, i64 16}
!114 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemTemplateEmEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!115 = !{!"_ZTSN11xalanc_1_1029XalanElemTextLiteralAllocatorE", !116, i64 0}
!116 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_15ElemTextLiteralENS_10ArenaBlockIS1_mEEEE", !45, i64 8, !117, i64 16}
!117 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_15ElemTextLiteralEmEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!118 = !{!"_ZTSN11xalanc_1_1025XalanElemValueOfAllocatorE", !119, i64 0}
!119 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_11ElemValueOfENS_10ArenaBlockIS1_mEEEE", !45, i64 8, !120, i64 16}
!120 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemValueOfEmEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!121 = !{!"_ZTSN11xalanc_1_1026XalanElemVariableAllocatorE", !122, i64 0}
!122 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_12ElemVariableENS_10ArenaBlockIS1_mEEEE", !45, i64 8, !123, i64 16}
!123 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemVariableEmEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
!124 = !{!"_ZTSN11xalanc_1_1030XalanMatchPatternDataAllocatorE", !125, i64 0}
!125 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEEE", !45, i64 8, !126, i64 16}
!126 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEEE", !48, i64 0, !48, i64 8, !48, i64 16}
