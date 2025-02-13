; ModuleID = 'XalanEXSLTCommon.cpp'
source_filename = "XalanEXSLTCommon.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanEXSLTFunctionNodeSet" = type { %"class.xalanc_1_10::FunctionNodeSet.base", [7 x i8] }
%"class.xalanc_1_10::FunctionNodeSet.base" = type <{ %"class.xalanc_1_10::Function", i8 }>
%"class.xalanc_1_10::Function" = type { ptr }
%"class.xalanc_1_10::XalanEXSLTFunctionObjectType" = type { %"class.xalanc_1_10::Function", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.0", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" = type { ptr, ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString" = type { ptr, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanEXSLTFunctionObjectType, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanEXSLTFunctionObjectType, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanAllocationGuard" = type { ptr, ptr }
%"class.xalanc_1_10::FunctionNodeSet" = type <{ %"class.xalanc_1_10::Function", i8, [7 x i8] }>

$_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeD2Ev = comdat any

$_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeD0Ev = comdat any

$_ZNK11xalanc_1_1028XalanEXSLTFunctionObjectType5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_ = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEixEm = comdat any

$_ZNK11xalanc_1_1010XObjectPtrptEv = comdat any

$_ZNK11xalanc_1_107XObject7getTypeEv = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1025XalanEXSLTFunctionNodeSetC2Ev = comdat any

$_ZN11xalanc_1_1025XalanEXSLTFunctionNodeSetD0Ev = comdat any

$_ZNK11xalanc_1_1025XalanEXSLTFunctionNodeSet5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1025XalanEXSLTFunctionNodeSet8getErrorERNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1025XalanEXSLTFunctionNodeSet27getInvalidArgumentTypeErrorERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1018XalanCopyConstructINS_25XalanEXSLTFunctionNodeSetEEEPT_RN11xercesc_2_713MemoryManagerERKS2_ = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZNK11xalanc_1_1020XalanAllocationGuard3getEv = comdat any

$_ZN11xalanc_1_1025XalanEXSLTFunctionNodeSetC2ERKS0_ = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardD2Ev = comdat any

$_ZN11xalanc_1_1015FunctionNodeSetC2ERKS0_ = comdat any

$_ZN11xalanc_1_108FunctionC2ERKS0_ = comdat any

$_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeC2ERN11xercesc_2_713MemoryManagerEi = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE3getEv = comdat any

$_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1028XalanEXSLTFunctionObjectTypeEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZTVN11xalanc_1_1025XalanEXSLTFunctionNodeSetE = comdat any

$_ZTSN11xalanc_1_1025XalanEXSLTFunctionNodeSetE = comdat any

$_ZTIN11xalanc_1_1025XalanEXSLTFunctionNodeSetE = comdat any

@_ZTVN11xalanc_1_1028XalanEXSLTFunctionObjectTypeE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1028XalanEXSLTFunctionObjectTypeE, ptr @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeD2Ev, ptr @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeD0Ev, ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionObjectType7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionObjectType5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionObjectType8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1028XalanEXSLTFunctionObjectTypeE = dso_local constant [46 x i8] c"N11xalanc_1_1028XalanEXSLTFunctionObjectTypeE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1028XalanEXSLTFunctionObjectTypeE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1028XalanEXSLTFunctionObjectTypeE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType15s_booleanStringE = dso_local constant [8 x i16] [i16 98, i16 111, i16 111, i16 108, i16 101, i16 97, i16 110, i16 0], align 16
@_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType16s_externalStringE = dso_local constant [9 x i16] [i16 101, i16 120, i16 116, i16 101, i16 114, i16 110, i16 97, i16 108, i16 0], align 16
@_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType15s_nodeSetStringE = dso_local constant [9 x i16] [i16 110, i16 111, i16 100, i16 101, i16 45, i16 115, i16 101, i16 116, i16 0], align 16
@_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType14s_numberStringE = dso_local constant [7 x i16] [i16 110, i16 117, i16 109, i16 98, i16 101, i16 114, i16 0], align 2
@_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType11s_rtfStringE = dso_local constant [4 x i16] [i16 82, i16 84, i16 70, i16 0], align 2
@_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType14s_stringStringE = dso_local constant [7 x i16] [i16 115, i16 116, i16 114, i16 105, i16 110, i16 103, i16 0], align 2
@_ZN11xalanc_1_10L24s_objectTypeFunctionNameE = internal constant [12 x i16] [i16 111, i16 98, i16 106, i16 101, i16 99, i16 116, i16 45, i16 116, i16 121, i16 112, i16 101, i16 0], align 16
@_ZN11xalanc_1_10L17s_nodesetFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionNodeSet" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1025XalanEXSLTFunctionNodeSetE = linkonce_odr dso_local unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1025XalanEXSLTFunctionNodeSetE, ptr @_ZN11xalanc_1_1015FunctionNodeSetD2Ev, ptr @_ZN11xalanc_1_1025XalanEXSLTFunctionNodeSetD0Ev, ptr @_ZNK11xalanc_1_1015FunctionNodeSet7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionNodeSet5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionNodeSet8getErrorERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionNodeSet27getInvalidArgumentTypeErrorERNS_14XalanDOMStringE] }, comdat, align 8
@_ZTSN11xalanc_1_1025XalanEXSLTFunctionNodeSetE = linkonce_odr dso_local constant [43 x i8] c"N11xalanc_1_1025XalanEXSLTFunctionNodeSetE\00", comdat, align 1
@_ZTIN11xalanc_1_1015FunctionNodeSetE = external constant ptr
@_ZTIN11xalanc_1_1025XalanEXSLTFunctionNodeSetE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1025XalanEXSLTFunctionNodeSetE, ptr @_ZTIN11xalanc_1_1015FunctionNodeSetE }, comdat, align 8
@_ZTVN11xalanc_1_1015FunctionNodeSetE = external unnamed_addr constant { [12 x ptr] }, align 8
@_ZTVN11xalanc_1_108FunctionE = external unnamed_addr constant { [11 x ptr] }, align 8
@.str = private unnamed_addr constant [11 x i8] c"node-set()\00", align 1
@_ZN11xalanc_1_10L20s_objectTypeFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionObjectType" zeroinitializer, align 8
@_ZN11xalanc_1_10L17s_commonNamespaceE = internal constant [24 x i16] [i16 104, i16 116, i16 116, i16 112, i16 58, i16 47, i16 47, i16 101, i16 120, i16 115, i16 108, i16 116, i16 46, i16 111, i16 114, i16 103, i16 47, i16 99, i16 111, i16 109, i16 109, i16 111, i16 110, i16 0], align 16
@_ZN11xalanc_1_10L16theFunctionTableE = internal constant [3 x %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry"] [%"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L21s_nodeSetFunctionNameE, ptr @_ZN11xalanc_1_10L17s_nodesetFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L24s_objectTypeFunctionNameE, ptr @_ZN11xalanc_1_10L20s_objectTypeFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" zeroinitializer], align 16
@_ZN11xalanc_1_10L21s_nodeSetFunctionNameE = internal constant [9 x i16] [i16 110, i16 111, i16 100, i16 101, i16 45, i16 115, i16 101, i16 116, i16 0], align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanEXSLTCommon.cpp, ptr null }]

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 !prof !78 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1028XalanEXSLTFunctionObjectTypeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %2) #9
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #9
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #9
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #9
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #9
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #9
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1028XalanEXSLTFunctionObjectType7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %7 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %8 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %11 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #11
  %12 = load ptr, ptr %1, align 8, !tbaa !79
  %13 = getelementptr inbounds ptr, ptr %12, i64 8
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef nonnull align 8 dereferenceable(36) ptr %14(ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(36) %11) #11
          to label %16 unwind label %21

16:                                               ; preds = %10
  %17 = load ptr, ptr %2, align 8, !tbaa !79
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef %3, ptr noundef %5) #11
          to label %20 unwind label %21

20:                                               ; preds = %16
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  br label %23

21:                                               ; preds = %16, %10
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  resume { ptr, i32 } %22

23:                                               ; preds = %20, %6
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %1, i64 0, i32 2
  %25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0) #11
  %26 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %25) #11
  %27 = call noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %26) #11
  switch i32 %27, label %38 [
    i32 2, label %28
    i32 5, label %30
    i32 3, label %32
    i32 6, label %34
    i32 4, label %36
  ]

28:                                               ; preds = %23
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %1, i64 0, i32 1
  br label %38

30:                                               ; preds = %23
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %1, i64 0, i32 3
  br label %38

32:                                               ; preds = %23
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %1, i64 0, i32 4
  br label %38

34:                                               ; preds = %23
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %1, i64 0, i32 5
  br label %38

36:                                               ; preds = %23
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %1, i64 0, i32 6
  br label %38

38:                                               ; preds = %23, %36, %34, %32, %30, %28
  %39 = phi ptr [ %24, %23 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ]
  %40 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %41 = load ptr, ptr %40, align 8, !tbaa !79
  %42 = getelementptr inbounds ptr, ptr %41, i64 13
  %43 = load ptr, ptr %42, align 8
  call void %43(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(36) %39) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionObjectType5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  %3 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  %4 = load ptr, ptr %1, align 8, !tbaa !79
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 248) #11
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %7) #11
  %8 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  invoke void @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(248) %8, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
          to label %9 unwind label %12

9:                                                ; preds = %2
  %10 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
          to label %11 unwind label %12

11:                                               ; preds = %9
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret ptr %8

12:                                               ; preds = %9, %2
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionObjectType8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 align 2 !prof !82 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 145, ptr noundef nonnull @_ZN11xalanc_1_10L24s_objectTypeFunctionNameE, ptr noundef null, ptr noundef null, ptr noundef null) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !83 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !84
  ret i64 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !89 {
  store ptr %1, ptr %0, align 8, !tbaa !90
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !79
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  store ptr %7, ptr %3, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !93 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !95

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !90
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  %8 = getelementptr inbounds ptr, ptr %7, i64 24
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(36) %3) #11
          to label %11 unwind label %12

11:                                               ; preds = %5, %1
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #13
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !82 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !97 {
  %2 = load ptr, ptr %0, align 8, !tbaa !98
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_107XObject7getTypeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !100 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !101
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !106 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !110 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #5 section ".text.startup" {
  tail call void @_ZN11xalanc_1_1025XalanEXSLTFunctionNodeSetC2Ev(ptr noundef nonnull align 8 dereferenceable(9) @_ZN11xalanc_1_10L17s_nodesetFunctionE) #11
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1015FunctionNodeSetD2Ev, ptr nonnull @_ZN11xalanc_1_10L17s_nodesetFunctionE, ptr nonnull @__dso_handle) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanEXSLTFunctionNodeSetC2Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #1 comdat align 2 !prof !78 {
  tail call void @_ZN11xalanc_1_1015FunctionNodeSetC2Eb(ptr noundef nonnull align 8 dereferenceable(9) %0, i1 noundef zeroext true) #11
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xalanc_1_1025XalanEXSLTFunctionNodeSetE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1015FunctionNodeSetD2Ev(ptr noundef nonnull align 8 dereferenceable(9)) unnamed_addr #6

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1015FunctionNodeSetC2Eb(ptr noundef nonnull align 8 dereferenceable(9), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanEXSLTFunctionNodeSetD0Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_1015FunctionNodeSetD2Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1015FunctionNodeSet7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(9), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionNodeSet5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !78 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25XalanEXSLTFunctionNodeSetEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(9) %0) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionNodeSet8getErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 comdat align 2 !prof !82 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 145, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null) #11
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionNodeSet27getInvalidArgumentTypeErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 comdat align 2 !prof !82 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 82, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null) #11
  ret ptr %1
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25XalanEXSLTFunctionNodeSetEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !78 {
  %3 = alloca %"class.xalanc_1_10::XalanAllocationGuard", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 16) #11
  %4 = call noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  call void @_ZN11xalanc_1_1025XalanEXSLTFunctionNodeSetC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(9) %1) #9
  call void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !111 {
  store ptr %1, ptr %0, align 8, !tbaa !112
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %1, align 8, !tbaa !79
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) #11
  store ptr %8, ptr %4, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !111 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanEXSLTFunctionNodeSetC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_1015FunctionNodeSetC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) #9
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xalanc_1_1025XalanEXSLTFunctionNodeSetE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !111 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !115

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !116
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %3) #11
          to label %10 unwind label %11

10:                                               ; preds = %5, %1
  ret void

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  tail call void @__clang_call_terminate(ptr %13) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1015FunctionNodeSetC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_108FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xalanc_1_1015FunctionNodeSetE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  %3 = getelementptr inbounds %"class.xalanc_1_10::FunctionNodeSet", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::FunctionNodeSet", ptr %1, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !117, !range !121, !noundef !122
  store i8 %5, ptr %3, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_108FunctionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #5 section ".text.startup" {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() #11
  tail call void @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeC2ERN11xercesc_2_713MemoryManagerEi(ptr noundef nonnull align 8 dereferenceable(248) @_ZN11xalanc_1_10L20s_objectTypeFunctionE, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1) #11
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeD2Ev, ptr nonnull @_ZN11xalanc_1_10L20s_objectTypeFunctionE, ptr nonnull @__dso_handle) #12
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeC2ERN11xercesc_2_713MemoryManagerEi(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1028XalanEXSLTFunctionObjectTypeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
          to label %5 unwind label %16

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
          to label %7 unwind label %18

7:                                                ; preds = %5
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
          to label %9 unwind label %20

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
          to label %11 unwind label %22

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
          to label %13 unwind label %24

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %14, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
          to label %15 unwind label %26

15:                                               ; preds = %13
  ret void

16:                                               ; preds = %3
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %36

18:                                               ; preds = %5
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %34

20:                                               ; preds = %7
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %32

22:                                               ; preds = %9
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %30

24:                                               ; preds = %11
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %28

26:                                               ; preds = %13
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %12) #9
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %25, %24 ]
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %10) #9
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %23, %22 ]
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %8) #9
  br label %32

32:                                               ; preds = %30, %20
  %33 = phi { ptr, i32 } [ %31, %30 ], [ %21, %20 ]
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #9
  br label %34

34:                                               ; preds = %32, %18
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %19, %18 ]
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #9
  br label %36

36:                                               ; preds = %34, %16
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %17, %16 ]
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  resume { ptr, i32 } %37
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 !prof !123 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !124 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !125
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !127

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #11
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !128
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #11
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !129 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !130 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !131

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #11
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !132, !llvm.loop !133

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !135 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !128
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !136 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !130 {
  %3 = load ptr, ptr %0, align 8, !tbaa !137
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #0 comdat align 2 !prof !138 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !139 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !128
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !140
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller12installLocalERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #1 align 2 !prof !82 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller14doInstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull @_ZN11xalanc_1_10L17s_commonNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE, ptr noundef nonnull align 8 dereferenceable(280) %0) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller14doInstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 !prof !78 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L17s_commonNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller14uninstallLocalERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #1 align 2 !prof !82 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller16doUninstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull @_ZN11xalanc_1_10L17s_commonNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE, ptr noundef nonnull align 8 dereferenceable(280) %0) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller16doUninstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 !prof !78 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L17s_commonNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !78 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !78 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1028XalanEXSLTFunctionObjectTypeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !79
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType15s_booleanStringE, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1) #11
          to label %4 unwind label %15

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType16s_externalStringE, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1) #11
          to label %6 unwind label %17

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType15s_nodeSetStringE, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1) #11
          to label %8 unwind label %19

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType14s_numberStringE, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1) #11
          to label %10 unwind label %21

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType11s_rtfStringE, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1) #11
          to label %12 unwind label %23

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType14s_stringStringE, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1) #11
          to label %14 unwind label %25

14:                                               ; preds = %12
  ret void

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %35

17:                                               ; preds = %4
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %33

19:                                               ; preds = %6
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %31

21:                                               ; preds = %8
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %29

23:                                               ; preds = %10
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %27

25:                                               ; preds = %12
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %11) #9
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %9) #9
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %22, %21 ]
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #9
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %20, %19 ]
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #9
  br label %33

33:                                               ; preds = %31, %17
  %34 = phi { ptr, i32 } [ %32, %31 ], [ %18, %17 ]
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #9
  br label %35

35:                                               ; preds = %33, %15
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %16, %15 ]
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  resume { ptr, i32 } %36
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !78 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #11
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !78 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !112
  store ptr %2, ptr %5, align 8, !tbaa !112
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1028XalanEXSLTFunctionObjectTypeEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1028XalanEXSLTFunctionObjectTypeEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !78 {
  %4 = load ptr, ptr %1, align 8, !tbaa !112
  store ptr %4, ptr %0, align 8, !tbaa !143
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !112
  store ptr %6, ptr %5, align 8, !tbaa !141
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !144 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !78 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  store ptr %1, ptr %0, align 8, !tbaa !143
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !141
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !78 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  br i1 %2, label %3, label %10, !prof !145

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !143
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !141
  %7 = load ptr, ptr %4, align 8, !tbaa !79
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #11
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !78 {
  %2 = load ptr, ptr %0, align 8, !tbaa !143
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XalanEXSLTCommon.cpp() #5 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  ret void
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { builtin nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!77}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76}
!36 = !{ptr @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeD2Ev, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 6}
!37 = !{ptr @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeD2Ev, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 1}
!38 = !{ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionObjectType5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_, i64 1}
!39 = !{ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionObjectType5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE3getEv, i64 1}
!40 = !{ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionObjectType5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!41 = !{ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionObjectType5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE7releaseEv, i64 1}
!42 = !{ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionObjectType5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EED2Ev, i64 1}
!43 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 5}
!44 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, ptr @__clang_call_terminate, i64 64}
!45 = !{ptr @_ZN11xalanc_1_1025XalanEXSLTFunctionNodeSetC2Ev, ptr @_ZN11xalanc_1_1015FunctionNodeSetC2Eb, i64 1}
!46 = !{ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionNodeSet5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25XalanEXSLTFunctionNodeSetEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, i64 1}
!47 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25XalanEXSLTFunctionNodeSetEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!48 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25XalanEXSLTFunctionNodeSetEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv, i64 1}
!49 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25XalanEXSLTFunctionNodeSetEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1025XalanEXSLTFunctionNodeSetC2ERKS0_, i64 1}
!50 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25XalanEXSLTFunctionNodeSetEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv, i64 1}
!51 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25XalanEXSLTFunctionNodeSetEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev, i64 1}
!52 = !{ptr @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeC2ERN11xercesc_2_713MemoryManagerEi, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 1}
!53 = !{ptr @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeC2ERN11xercesc_2_713MemoryManagerEi, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 6}
!54 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!55 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!56 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!57 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!59 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!61 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!62 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!63 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!64 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!65 = !{ptr @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, i64 1}
!66 = !{ptr @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, i64 1}
!67 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, i64 1}
!68 = !{ptr @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 1}
!69 = !{ptr @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj, i64 6}
!70 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE7releaseEv, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, i64 1}
!71 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EED2Ev, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData10deallocateEv, i64 1}
!72 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1028XalanEXSLTFunctionObjectTypeEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_, i64 1}
!73 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData10invariantsEv, i64 1}
!74 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData10invariantsEv, i64 2}
!75 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData10invariantsEv, i64 1}
!76 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_28XalanEXSLTFunctionObjectTypeELb0EE17MemMgrAutoPtrData12isInitilizedEv, i64 1}
!77 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!78 = !{!"function_entry_count", i64 1}
!79 = !{!80, !80, i64 0}
!80 = !{!"vtable pointer", !81, i64 0}
!81 = !{!"Simple C++ TBAA"}
!82 = !{!"function_entry_count", i64 0}
!83 = !{!"function_entry_count", i64 5}
!84 = !{!85, !88, i64 8}
!85 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEE", !86, i64 0, !88, i64 8, !88, i64 16, !86, i64 24}
!86 = !{!"any pointer", !87, i64 0}
!87 = !{!"omnipotent char", !81, i64 0}
!88 = !{!"long", !87, i64 0}
!89 = !{!"function_entry_count", i64 67594463}
!90 = !{!91, !86, i64 0}
!91 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringE", !86, i64 0, !86, i64 8}
!92 = !{!91, !86, i64 8}
!93 = !{!"function_entry_count", i64 201578993}
!94 = !{!"function_entry_count", i64 134708288}
!95 = !{!"branch_weights", i32 67113826, i32 67594464}
!96 = !{!85, !86, i64 24}
!97 = !{!"function_entry_count", i64 246321862}
!98 = !{!99, !86, i64 0}
!99 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !86, i64 0}
!100 = !{!"function_entry_count", i64 44780017}
!101 = !{!102, !105, i64 12}
!102 = !{!"_ZTSN11xalanc_1_107XObjectE", !103, i64 0, !105, i64 12, !86, i64 16}
!103 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !104, i64 8}
!104 = !{!"int", !87, i64 0}
!105 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !87, i64 0}
!106 = !{!"function_entry_count", i64 201666166}
!107 = !{!108, !86, i64 16}
!108 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !109, i64 0, !86, i64 16}
!109 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !86, i64 8}
!110 = !{!"function_entry_count", i64 2037554}
!111 = !{!"function_entry_count", i64 50702}
!112 = !{!86, !86, i64 0}
!113 = !{!114, !86, i64 8}
!114 = !{!"_ZTSN11xalanc_1_1020XalanAllocationGuardE", !86, i64 0, !86, i64 8}
!115 = !{!"branch_weights", i32 50703, i32 1}
!116 = !{!114, !86, i64 0}
!117 = !{!118, !120, i64 8}
!118 = !{!"_ZTSN11xalanc_1_1015FunctionNodeSetE", !119, i64 0, !120, i64 8}
!119 = !{!"_ZTSN11xalanc_1_108FunctionE"}
!120 = !{!"bool", !87, i64 0}
!121 = !{i8 0, i8 2}
!122 = !{}
!123 = !{!"function_entry_count", i64 43398227}
!124 = !{!"function_entry_count", i64 128698679}
!125 = !{!126, !88, i64 16}
!126 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !86, i64 0, !88, i64 8, !88, i64 16, !86, i64 24}
!127 = !{!"branch_weights", i32 43398290, i32 85300391}
!128 = !{!126, !86, i64 24}
!129 = !{!"function_entry_count", i64 6521798503}
!130 = !{!"function_entry_count", i64 85300390}
!131 = !{!"branch_weights", i32 1, i32 12185770}
!132 = !{!"branch_weights", i32 12185770, i32 -193930395}
!133 = distinct !{!133, !134}
!134 = !{!"llvm.loop.mustprogress"}
!135 = !{!"function_entry_count", i64 227375739}
!136 = !{!"function_entry_count", i64 568333389}
!137 = !{!126, !86, i64 0}
!138 = !{!"function_entry_count", i64 30137156670}
!139 = !{!"function_entry_count", i64 825654975}
!140 = !{!126, !88, i64 8}
!141 = !{!142, !86, i64 8}
!142 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1028XalanEXSLTFunctionObjectTypeEE", !86, i64 0, !86, i64 8}
!143 = !{!142, !86, i64 0}
!144 = !{!"function_entry_count", i64 4}
!145 = !{!"branch_weights", i32 1, i32 2}
