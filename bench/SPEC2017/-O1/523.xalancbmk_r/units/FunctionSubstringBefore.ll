; ModuleID = 'FunctionSubstringBefore.cpp'
source_filename = "FunctionSubstringBefore.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZTVN11xalanc_1_1023FunctionSubstringBeforeE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1023FunctionSubstringBeforeE, ptr @_ZN11xalanc_1_1023FunctionSubstringBeforeD2Ev, ptr @_ZN11xalanc_1_1023FunctionSubstringBeforeD0Ev, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1023FunctionSubstringBefore7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1023FunctionSubstringBefore5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1023FunctionSubstringBefore8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZN11xalanc_1_10L14theEmptyStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [19 x i8] c"substring-before()\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1023FunctionSubstringBeforeE = dso_local constant [41 x i8] c"N11xalanc_1_1023FunctionSubstringBeforeE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1023FunctionSubstringBeforeE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1023FunctionSubstringBeforeE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_FunctionSubstringBefore.cpp, ptr null }]

@_ZN11xalanc_1_1023FunctionSubstringBeforeC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1023FunctionSubstringBeforeC2Ev
@_ZN11xalanc_1_1023FunctionSubstringBeforeD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1023FunctionSubstringBeforeD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1023FunctionSubstringBeforeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !45 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1023FunctionSubstringBeforeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  ret void
}

declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1023FunctionSubstringBeforeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !49 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1023FunctionSubstringBeforeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !50 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #3 comdat align 2 !prof !50 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1023FunctionSubstringBefore7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nocapture readnone %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5, ptr nocapture readnone %6) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %8 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %9 = load ptr, ptr %4, align 8, !tbaa !52
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds ptr, ptr %10, i64 8
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef nonnull align 8 dereferenceable(36) ptr %12(ptr noundef nonnull align 8 dereferenceable(24) %9), !prof !56
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !57
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23, !prof !62

17:                                               ; preds = %7
  %18 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !63, !noalias !66
  %20 = load ptr, ptr %19, align 8, !tbaa !46, !noalias !66
  %21 = getelementptr inbounds ptr, ptr %20, i64 13
  %22 = load ptr, ptr %21, align 8, !noalias !66
  tail call void %22(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L14theEmptyStringE)
  br label %94

23:                                               ; preds = %7
  %24 = load ptr, ptr %5, align 8, !tbaa !52
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = getelementptr inbounds ptr, ptr %25, i64 8
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef nonnull align 8 dereferenceable(36) ptr %27(ptr noundef nonnull align 8 dereferenceable(24) %24), !prof !69
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %28, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !57
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38, !prof !62

32:                                               ; preds = %23
  %33 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !63, !noalias !70
  %35 = load ptr, ptr %34, align 8, !tbaa !46, !noalias !70
  %36 = getelementptr inbounds ptr, ptr %35, i64 13
  %37 = load ptr, ptr %36, align 8, !noalias !70
  tail call void %37(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L14theEmptyStringE)
  br label %94

38:                                               ; preds = %23
  %39 = tail call noundef i32 @_ZN11xalanc_1_107indexOfERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull align 8 dereferenceable(36) %28)
  %40 = icmp eq i32 %39, %15
  br i1 %40, label %41, label %47, !prof !62

41:                                               ; preds = %38
  %42 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !63, !noalias !73
  %44 = load ptr, ptr %43, align 8, !tbaa !46, !noalias !73
  %45 = getelementptr inbounds ptr, ptr %44, i64 13
  %46 = load ptr, ptr %45, align 8, !noalias !73
  tail call void %46(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %43, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L14theEmptyStringE)
  br label %94

47:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  store ptr %2, ptr %8, align 8, !tbaa !76
  %48 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %8, i64 0, i32 1
  %49 = load ptr, ptr %2, align 8, !tbaa !46
  %50 = getelementptr inbounds ptr, ptr %49, i64 23
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef nonnull align 8 dereferenceable(36) ptr %51(ptr noundef nonnull align 8 dereferenceable(24) %2), !prof !78
  store ptr %52, ptr %48, align 8, !tbaa !79
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !80
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %52, i32 noundef 0, i32 noundef -1)
          to label %57 unwind label %80, !prof !81

57:                                               ; preds = %47
  %58 = icmp eq i64 %54, 0
  %59 = select i1 %58, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %56, !prof !62
  %60 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %52, ptr noundef %59, i32 noundef %39)
          to label %61 unwind label %80, !prof !81

61:                                               ; preds = %57
  %62 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !63
  %64 = load ptr, ptr %63, align 8, !tbaa !46
  %65 = getelementptr inbounds ptr, ptr %64, i64 15
  %66 = load ptr, ptr %65, align 8
  invoke void %66(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %63, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %67 unwind label %80, !prof !82

67:                                               ; preds = %61
  %68 = load ptr, ptr %48, align 8, !tbaa !79
  %69 = icmp eq ptr %68, null
  br i1 %69, label %79, label %70, !prof !81

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !tbaa !76
  %72 = load ptr, ptr %71, align 8, !tbaa !46
  %73 = getelementptr inbounds ptr, ptr %72, i64 24
  %74 = load ptr, ptr %73, align 8
  %75 = invoke noundef zeroext i1 %74(ptr noundef nonnull align 8 dereferenceable(24) %71, ptr noundef nonnull align 8 dereferenceable(36) %68)
          to label %79 unwind label %76

76:                                               ; preds = %70
  %77 = landingpad { ptr, i32 }
          catch ptr null
  %78 = extractvalue { ptr, i32 } %77, 0
  call void @__clang_call_terminate(ptr %78) #13
  unreachable

79:                                               ; preds = %67, %70
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  br label %94

80:                                               ; preds = %57, %47, %61
  %81 = landingpad { ptr, i32 }
          cleanup
  %82 = load ptr, ptr %48, align 8, !tbaa !79
  %83 = icmp eq ptr %82, null
  br i1 %83, label %93, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %8, align 8, !tbaa !76
  %86 = load ptr, ptr %85, align 8, !tbaa !46
  %87 = getelementptr inbounds ptr, ptr %86, i64 24
  %88 = load ptr, ptr %87, align 8
  %89 = invoke noundef zeroext i1 %88(ptr noundef nonnull align 8 dereferenceable(24) %85, ptr noundef nonnull align 8 dereferenceable(36) %82)
          to label %93 unwind label %90

90:                                               ; preds = %84
  %91 = landingpad { ptr, i32 }
          catch ptr null
  %92 = extractvalue { ptr, i32 } %91, 0
  call void @__clang_call_terminate(ptr %92) #13
  unreachable

93:                                               ; preds = %80, %84
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  resume { ptr, i32 } %81

94:                                               ; preds = %32, %79, %41, %17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

declare noundef i32 @_ZN11xalanc_1_107indexOfERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1023FunctionSubstringBefore5cloneERN11xercesc_2_713MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %3 = load ptr, ptr %1, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !83
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1023FunctionSubstringBeforeE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !46
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1023FunctionSubstringBefore8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !50 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 6, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 1, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !85
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !86

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = load ptr, ptr %0, align 8, !tbaa !88
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !89

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #13
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat !prof !50 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_FunctionSubstringBefore.cpp() #10 section ".text.startup" !prof !45 !PGOFuncName !90 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L14theEmptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L14theEmptyStringE, ptr nonnull @__dso_handle) #11
  ret void
}

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @_ZN11xalanc_1_1023FunctionSubstringBeforeC2Ev, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1023FunctionSubstringBeforeD2Ev, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 2}
!37 = !{ptr @_ZNK11xalanc_1_1023FunctionSubstringBefore7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_107indexOfERKNS_14XalanDOMStringES2_, i64 20910}
!38 = !{ptr @_ZNK11xalanc_1_1023FunctionSubstringBefore7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 20910}
!39 = !{ptr @_ZNK11xalanc_1_1023FunctionSubstringBefore7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 20910}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!41 = !{ptr @_GLOBAL__sub_I_FunctionSubstringBefore.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!42 = !{ptr @_GLOBAL__sub_I_FunctionSubstringBefore.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!43 = !{ptr @_GLOBAL__sub_I_FunctionSubstringBefore.cpp, ptr @__cxa_atexit, i64 1}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 1}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!"function_entry_count", i64 2}
!50 = !{!"function_entry_count", i64 0}
!51 = !{!"function_entry_count", i64 20910}
!52 = !{!53, !54, i64 0}
!53 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !54, i64 0}
!54 = !{!"any pointer", !55, i64 0}
!55 = !{!"omnipotent char", !48, i64 0}
!56 = !{!"VP", i32 0, i64 20910, i64 395431303520872022, i64 20910}
!57 = !{!58, !61, i64 32}
!58 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !59, i64 0, !61, i64 32}
!59 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !54, i64 0, !60, i64 8, !60, i64 16, !54, i64 24}
!60 = !{!"long", !55, i64 0}
!61 = !{!"int", !55, i64 0}
!62 = !{!"branch_weights", i32 0, i32 20910}
!63 = !{!64, !54, i64 16}
!64 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !65, i64 0, !54, i64 16}
!65 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !54, i64 8}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE: argument 0"}
!68 = distinct !{!68, !"_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE"}
!69 = !{!"VP", i32 0, i64 20910, i64 -8852451835775796565, i64 20910}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE: argument 0"}
!72 = distinct !{!72, !"_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE: argument 0"}
!75 = distinct !{!75, !"_ZN11xalanc_1_1017createEmptyStringERNS_21XPathExecutionContextE"}
!76 = !{!77, !54, i64 0}
!77 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringE", !54, i64 0, !54, i64 8}
!78 = !{!"VP", i32 0, i64 20910, i64 513632834810131310, i64 20910}
!79 = !{!77, !54, i64 8}
!80 = !{!59, !60, i64 8}
!81 = !{!"branch_weights", i32 20910, i32 0}
!82 = !{!"VP", i32 0, i64 20910, i64 -7816232719051370402, i64 20910}
!83 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!84 = !{!"function_entry_count", i64 42470003}
!85 = !{!59, !60, i64 16}
!86 = !{!"branch_weights", i32 52000, i32 42418003}
!87 = !{!59, !54, i64 24}
!88 = !{!59, !54, i64 0}
!89 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!90 = !{!"FunctionSubstringBefore.cpp;_GLOBAL__sub_I_FunctionSubstringBefore.cpp"}
