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
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::FunctionNodeSet" = type <{ %"class.xalanc_1_10::Function", i8, [7 x i8] }>

$_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeC2ERN11xercesc_2_713MemoryManagerEi = comdat any

$_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeD2Ev = comdat any

$_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeD0Ev = comdat any

$_ZNK11xalanc_1_1028XalanEXSLTFunctionObjectType5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1025XalanEXSLTFunctionNodeSetD0Ev = comdat any

$_ZNK11xalanc_1_1025XalanEXSLTFunctionNodeSet5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1025XalanEXSLTFunctionNodeSet8getErrorERNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1025XalanEXSLTFunctionNodeSet27getInvalidArgumentTypeErrorERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZTVN11xalanc_1_1025XalanEXSLTFunctionNodeSetE = comdat any

$_ZTSN11xalanc_1_1025XalanEXSLTFunctionNodeSetE = comdat any

$_ZTIN11xalanc_1_1025XalanEXSLTFunctionNodeSetE = comdat any

@_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType15s_booleanStringE = dso_local constant [8 x i16] [i16 98, i16 111, i16 111, i16 108, i16 101, i16 97, i16 110, i16 0], align 16
@_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType16s_externalStringE = dso_local constant [9 x i16] [i16 101, i16 120, i16 116, i16 101, i16 114, i16 110, i16 97, i16 108, i16 0], align 16
@_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType15s_nodeSetStringE = dso_local constant [9 x i16] [i16 110, i16 111, i16 100, i16 101, i16 45, i16 115, i16 101, i16 116, i16 0], align 16
@_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType14s_numberStringE = dso_local constant [7 x i16] [i16 110, i16 117, i16 109, i16 98, i16 101, i16 114, i16 0], align 2
@_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType11s_rtfStringE = dso_local constant [4 x i16] [i16 82, i16 84, i16 70, i16 0], align 2
@_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType14s_stringStringE = dso_local constant [7 x i16] [i16 115, i16 116, i16 114, i16 105, i16 110, i16 103, i16 0], align 2
@_ZN11xalanc_1_10L24s_objectTypeFunctionNameE = internal constant [12 x i16] [i16 111, i16 98, i16 106, i16 101, i16 99, i16 116, i16 45, i16 116, i16 121, i16 112, i16 101, i16 0], align 16
@_ZN11xalanc_1_10L17s_nodesetFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionNodeSet" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_10L20s_objectTypeFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionObjectType" zeroinitializer, align 8
@_ZN11xalanc_1_10L17s_commonNamespaceE = internal constant [24 x i16] [i16 104, i16 116, i16 116, i16 112, i16 58, i16 47, i16 47, i16 101, i16 120, i16 115, i16 108, i16 116, i16 46, i16 111, i16 114, i16 103, i16 47, i16 99, i16 111, i16 109, i16 109, i16 111, i16 110, i16 0], align 16
@_ZN11xalanc_1_10L16theFunctionTableE = internal constant [3 x %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry"] [%"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L21s_nodeSetFunctionNameE, ptr @_ZN11xalanc_1_10L17s_nodesetFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L24s_objectTypeFunctionNameE, ptr @_ZN11xalanc_1_10L20s_objectTypeFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" zeroinitializer], align 16
@_ZTVN11xalanc_1_1028XalanEXSLTFunctionObjectTypeE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1028XalanEXSLTFunctionObjectTypeE, ptr @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeD2Ev, ptr @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeD0Ev, ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionObjectType7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionObjectType5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionObjectType8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1028XalanEXSLTFunctionObjectTypeE = dso_local constant [46 x i8] c"N11xalanc_1_1028XalanEXSLTFunctionObjectTypeE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1028XalanEXSLTFunctionObjectTypeE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1028XalanEXSLTFunctionObjectTypeE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1025XalanEXSLTFunctionNodeSetE = linkonce_odr dso_local unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1025XalanEXSLTFunctionNodeSetE, ptr @_ZN11xalanc_1_1015FunctionNodeSetD2Ev, ptr @_ZN11xalanc_1_1025XalanEXSLTFunctionNodeSetD0Ev, ptr @_ZNK11xalanc_1_1015FunctionNodeSet7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionNodeSet5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionNodeSet8getErrorERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionNodeSet27getInvalidArgumentTypeErrorERNS_14XalanDOMStringE] }, comdat, align 8
@_ZTSN11xalanc_1_1025XalanEXSLTFunctionNodeSetE = linkonce_odr dso_local constant [43 x i8] c"N11xalanc_1_1025XalanEXSLTFunctionNodeSetE\00", comdat, align 1
@_ZTIN11xalanc_1_1015FunctionNodeSetE = external constant ptr
@_ZTIN11xalanc_1_1025XalanEXSLTFunctionNodeSetE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1025XalanEXSLTFunctionNodeSetE, ptr @_ZTIN11xalanc_1_1015FunctionNodeSetE }, comdat, align 8
@_ZTVN11xalanc_1_1015FunctionNodeSetE = external unnamed_addr constant { [12 x ptr] }, align 8
@.str = private unnamed_addr constant [11 x i8] c"node-set()\00", align 1
@_ZN11xalanc_1_10L21s_nodeSetFunctionNameE = internal constant [9 x i16] [i16 110, i16 111, i16 100, i16 101, i16 45, i16 115, i16 101, i16 116, i16 0], align 16
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanEXSLTCommon.cpp, ptr null }]

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1028XalanEXSLTFunctionObjectType7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !51
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %2, align 8, !tbaa !57
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %15 = load ptr, ptr %1, align 8, !tbaa !57
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %19 unwind label %31

19:                                               ; preds = %10
  %20 = load ptr, ptr %2, align 8, !tbaa !57
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %3, ptr noundef %5)
          to label %23 unwind label %31

23:                                               ; preds = %19
  %24 = load ptr, ptr %2, align 8, !tbaa !57
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %41 unwind label %28

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #9
  unreachable

31:                                               ; preds = %19, %10
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = load ptr, ptr %2, align 8, !tbaa !57
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #9
  unreachable

40:                                               ; preds = %31
  resume { ptr, i32 } %32

41:                                               ; preds = %23, %6
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %1, i64 0, i32 2
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !59
  %45 = load ptr, ptr %44, align 8, !tbaa !60
  %46 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %45, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !62
  switch i32 %47, label %58 [
    i32 2, label %48
    i32 5, label %50
    i32 3, label %52
    i32 6, label %54
    i32 4, label %56
  ]

48:                                               ; preds = %41
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %1, i64 0, i32 1
  br label %58

50:                                               ; preds = %41
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %1, i64 0, i32 3
  br label %58

52:                                               ; preds = %41
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %1, i64 0, i32 4
  br label %58

54:                                               ; preds = %41
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %1, i64 0, i32 5
  br label %58

56:                                               ; preds = %41
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %1, i64 0, i32 6
  br label %58

58:                                               ; preds = %41, %56, %54, %52, %50, %48
  %59 = phi ptr [ %42, %41 ], [ %57, %56 ], [ %55, %54 ], [ %53, %52 ], [ %51, %50 ], [ %49, %48 ]
  %60 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !67
  %62 = load ptr, ptr %61, align 8, !tbaa !57
  %63 = getelementptr inbounds ptr, ptr %62, i64 13
  %64 = load ptr, ptr %63, align 8
  tail call void %64(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %61, ptr noundef nonnull align 8 dereferenceable(36) %59)
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionObjectType8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !50 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 145, ptr noundef nonnull @_ZN11xalanc_1_10L24s_objectTypeFunctionNameE, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1015FunctionNodeSetD2Ev(ptr noundef nonnull align 8 dereferenceable(9)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeC2ERN11xercesc_2_713MemoryManagerEi(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1028XalanEXSLTFunctionObjectTypeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %5 unwind label %16, !prof !71

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %7 unwind label %18, !prof !71

7:                                                ; preds = %5
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %9 unwind label %20, !prof !71

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %11 unwind label %22, !prof !71

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %13 unwind label %24, !prof !71

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %14, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %15 unwind label %26, !prof !71

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
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #10
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %25, %24 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #10
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %23, %22 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #10
  br label %32

32:                                               ; preds = %30, %20
  %33 = phi { ptr, i32 } [ %31, %30 ], [ %21, %20 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  br label %34

34:                                               ; preds = %32, %18
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %19, %18 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  br label %36

36:                                               ; preds = %34, %16
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %17, %16 ]
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  resume { ptr, i32 } %37
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #4 comdat align 2 !prof !70 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1028XalanEXSLTFunctionObjectTypeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #10
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #10
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller12installLocalERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #0 align 2 !prof !50 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller14doInstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull @_ZN11xalanc_1_10L17s_commonNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE, ptr noundef nonnull align 8 dereferenceable(280) %0)
  ret void
}

declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller14doInstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !70 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L17s_commonNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE)
  ret void
}

declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller14uninstallLocalERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #0 align 2 !prof !50 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller16doUninstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull @_ZN11xalanc_1_10L17s_commonNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE, ptr noundef nonnull align 8 dereferenceable(280) %0)
  ret void
}

declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller16doUninstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !70 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L17s_commonNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE)
  ret void
}

declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #4 comdat align 2 !prof !50 {
  tail call void @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) #10
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionObjectType5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %3 = load ptr, ptr %1, align 8, !tbaa !57
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 248), !prof !72
  invoke void @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(248) %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %7 unwind label %8, !prof !71

7:                                                ; preds = %2
  ret ptr %6

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = icmp eq ptr %6, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %1, align 8, !tbaa !57
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %6)
          to label %18 unwind label %15

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  tail call void @__clang_call_terminate(ptr %17) #9
  unreachable

18:                                               ; preds = %8, %11
  resume { ptr, i32 } %9
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !50 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xalanc_1_1015FunctionNodeSetC2Eb(ptr noundef nonnull align 8 dereferenceable(9), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanEXSLTFunctionNodeSetD0Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #4 comdat align 2 !prof !50 {
  tail call void @_ZN11xalanc_1_1015FunctionNodeSetD2Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) #10
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

declare void @_ZNK11xalanc_1_1015FunctionNodeSet7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(9), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionNodeSet5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %3 = load ptr, ptr %1, align 8, !tbaa !57
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 16), !prof !72
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xalanc_1_1015FunctionNodeSetE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !57
  %7 = getelementptr inbounds %"class.xalanc_1_10::FunctionNodeSet", ptr %6, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::FunctionNodeSet", ptr %0, i64 0, i32 1
  %9 = load i8, ptr %8, align 8, !tbaa !73, !range !77, !noundef !78
  store i8 %9, ptr %7, align 8, !tbaa !73
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xalanc_1_1025XalanEXSLTFunctionNodeSetE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !57
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionNodeSet8getErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 comdat align 2 !prof !50 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 145, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %1
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionNodeSet27getInvalidArgumentTypeErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 comdat align 2 !prof !50 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 82, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %1
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !80
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !82

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = load ptr, ptr %0, align 8, !tbaa !84
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !85

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #9
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1028XalanEXSLTFunctionObjectTypeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType15s_booleanStringE, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1)
          to label %4 unwind label %15, !prof !71

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType16s_externalStringE, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1)
          to label %6 unwind label %17, !prof !71

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType15s_nodeSetStringE, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1)
          to label %8 unwind label %19, !prof !71

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType14s_numberStringE, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1)
          to label %10 unwind label %21, !prof !71

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType11s_rtfStringE, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1)
          to label %12 unwind label %23, !prof !71

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanEXSLTFunctionObjectType", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectType14s_stringStringE, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef -1)
          to label %14 unwind label %25, !prof !71

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
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #10
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #10
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %22, %21 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #10
  br label %31

31:                                               ; preds = %29, %19
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %20, %19 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #10
  br label %33

33:                                               ; preds = %31, %17
  %34 = phi { ptr, i32 } [ %32, %31 ], [ %18, %17 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  br label %35

35:                                               ; preds = %33, %15
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %16, %15 ]
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  resume { ptr, i32 } %36
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XalanEXSLTCommon.cpp() #8 section ".text.startup" !prof !70 !PGOFuncName !86 {
  tail call void @_ZN11xalanc_1_1015FunctionNodeSetC2Eb(ptr noundef nonnull align 8 dereferenceable(9) @_ZN11xalanc_1_10L17s_nodesetFunctionE, i1 noundef zeroext true)
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xalanc_1_1025XalanEXSLTFunctionNodeSetE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L17s_nodesetFunctionE, align 8, !tbaa !57
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1015FunctionNodeSetD2Ev, ptr nonnull @_ZN11xalanc_1_10L17s_nodesetFunctionE, ptr nonnull @__dso_handle) #10
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeC2ERN11xercesc_2_713MemoryManagerEi(ptr noundef nonnull align 8 dereferenceable(248) @_ZN11xalanc_1_10L20s_objectTypeFunctionE, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 1)
  %3 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeD2Ev, ptr nonnull @_ZN11xalanc_1_10L20s_objectTypeFunctionE, ptr nonnull @__dso_handle) #10
  ret void
}

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!49}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!35 = !{ptr @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeC2ERN11xercesc_2_713MemoryManagerEi, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeC2ERN11xercesc_2_713MemoryManagerEi, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 6}
!37 = !{ptr @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 6}
!38 = !{ptr @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeD2Ev, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, i64 1}
!41 = !{ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionObjectType5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!43 = !{ptr @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 1}
!44 = !{ptr @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj, i64 6}
!45 = !{ptr @_GLOBAL__sub_I_XalanEXSLTCommon.cpp, ptr @_ZN11xalanc_1_1015FunctionNodeSetC2Eb, i64 1}
!46 = !{ptr @_GLOBAL__sub_I_XalanEXSLTCommon.cpp, ptr @__cxa_atexit, i64 2}
!47 = !{ptr @_GLOBAL__sub_I_XalanEXSLTCommon.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!48 = !{ptr @_GLOBAL__sub_I_XalanEXSLTCommon.cpp, ptr @_ZN11xalanc_1_1028XalanEXSLTFunctionObjectTypeC2ERN11xercesc_2_713MemoryManagerEi, i64 1}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = !{!"function_entry_count", i64 0}
!51 = !{!52, !56, i64 8}
!52 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEE", !53, i64 0, !56, i64 8, !56, i64 16, !53, i64 24}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C++ TBAA"}
!56 = !{!"long", !54, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"vtable pointer", !55, i64 0}
!59 = !{!52, !53, i64 24}
!60 = !{!61, !53, i64 0}
!61 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !53, i64 0}
!62 = !{!63, !66, i64 12}
!63 = !{!"_ZTSN11xalanc_1_107XObjectE", !64, i64 0, !66, i64 12, !53, i64 16}
!64 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !65, i64 8}
!65 = !{!"int", !54, i64 0}
!66 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !54, i64 0}
!67 = !{!68, !53, i64 16}
!68 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !69, i64 0, !53, i64 16}
!69 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !53, i64 8}
!70 = !{!"function_entry_count", i64 1}
!71 = !{!"branch_weights", i32 1, i32 0}
!72 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!73 = !{!74, !76, i64 8}
!74 = !{!"_ZTSN11xalanc_1_1015FunctionNodeSetE", !75, i64 0, !76, i64 8}
!75 = !{!"_ZTSN11xalanc_1_108FunctionE"}
!76 = !{!"bool", !54, i64 0}
!77 = !{i8 0, i8 2}
!78 = !{}
!79 = !{!"function_entry_count", i64 42470003}
!80 = !{!81, !56, i64 16}
!81 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !53, i64 0, !56, i64 8, !56, i64 16, !53, i64 24}
!82 = !{!"branch_weights", i32 52000, i32 42418003}
!83 = !{!81, !53, i64 24}
!84 = !{!81, !53, i64 0}
!85 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!86 = !{!"XalanEXSLTCommon.cpp;_GLOBAL__sub_I_XalanEXSLTCommon.cpp"}
