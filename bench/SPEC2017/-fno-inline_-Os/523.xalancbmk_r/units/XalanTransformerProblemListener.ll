; ModuleID = 'XalanTransformerProblemListener.cpp'
source_filename = "XalanTransformerProblemListener.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanTransformerProblemListener" = type { %"class.xalanc_1_10::ProblemListener", %"class.xalanc_1_10::ProblemListenerDefault", ptr, %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::ProblemListener" = type { ptr }
%"class.xalanc_1_10::ProblemListenerDefault" = type { %"class.xalanc_1_10::ProblemListener", ptr, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::DOMStringPrintWriter" = type { %"class.xalanc_1_10::PrintWriter", ptr }
%"class.xalanc_1_10::PrintWriter" = type { %"class.xalanc_1_10::Writer", i8, ptr }
%"class.xalanc_1_10::Writer" = type { ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_10lsERSoRNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1012OutputStringERSoRKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv = comdat any

@_ZTVN11xalanc_1_1031XalanTransformerProblemListenerE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1031XalanTransformerProblemListenerE, ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerD2Ev, ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerD0Ev, ptr @_ZN11xalanc_1_1031XalanTransformerProblemListener14setPrintWriterEPNS_11PrintWriterE, ptr @_ZN11xalanc_1_1031XalanTransformerProblemListener7problemENS_15ProblemListener14eProblemSourceENS1_15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementERKNS_14XalanDOMStringEPKtii] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1031XalanTransformerProblemListenerE = dso_local constant [49 x i8] c"N11xalanc_1_1031XalanTransformerProblemListenerE\00", align 1
@_ZTIN11xalanc_1_1015ProblemListenerE = external constant ptr
@_ZTIN11xalanc_1_1031XalanTransformerProblemListenerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1031XalanTransformerProblemListenerE, ptr @_ZTIN11xalanc_1_1015ProblemListenerE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1031XalanTransformerProblemListenerC1ERN11xercesc_2_713MemoryManagerEPSoPNS_11PrintWriterE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerC2ERN11xercesc_2_713MemoryManagerEPSoPNS_11PrintWriterE
@_ZN11xalanc_1_1031XalanTransformerProblemListenerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XalanTransformerProblemListenerC2ERN11xercesc_2_713MemoryManagerEPSoPNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  tail call void @_ZN11xalanc_1_1015ProblemListenerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1031XalanTransformerProblemListenerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerProblemListener", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1022ProblemListenerDefaultC1ERN11xercesc_2_713MemoryManagerEPNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %3) #7
          to label %6 unwind label %10

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerProblemListener", ptr %0, i64 0, i32 2
  store ptr %2, ptr %7, align 8, !tbaa !63
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerProblemListener", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %1) #7
          to label %9 unwind label %12

9:                                                ; preds = %6
  ret void

10:                                               ; preds = %4
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %14

12:                                               ; preds = %6
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1022ProblemListenerDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #8
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi { ptr, i32 } [ %13, %12 ], [ %11, %10 ]
  tail call void @_ZN11xalanc_1_1015ProblemListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  resume { ptr, i32 } %15
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1015ProblemListenerC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022ProblemListenerDefaultC1ERN11xercesc_2_713MemoryManagerEPNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1022ProblemListenerDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1015ProblemListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XalanTransformerProblemListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 align 2 !prof !59 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1031XalanTransformerProblemListenerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerProblemListener", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %2) #8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerProblemListener", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1022ProblemListenerDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #8
  tail call void @_ZN11xalanc_1_1015ProblemListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #3 comdat align 2 !prof !73 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XalanTransformerProblemListenerD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xalanc_1_1031XalanTransformerProblemListenerD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #8
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XalanTransformerProblemListener14setPrintWriterEPNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !74 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerProblemListener", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1022ProblemListenerDefault14setPrintWriterEPNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1) #7
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022ProblemListenerDefault14setPrintWriterEPNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XalanTransformerProblemListener7problemENS_15ProblemListener14eProblemSourceENS1_15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementERKNS_14XalanDOMStringEPKtii(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %10 = alloca %"class.xalanc_1_10::DOMStringPrintWriter", align 8
  %11 = icmp eq i32 %2, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerProblemListener", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1022ProblemListenerDefault7problemENS_15ProblemListener14eProblemSourceENS1_15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementERKNS_14XalanDOMStringEPKtii(ptr noundef nonnull align 8 dereferenceable(24) %13, i32 noundef %1, i32 noundef 2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) #7
  br label %26

14:                                               ; preds = %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerProblemListener", ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformerProblemListener", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %19, i32 noundef 0, i32 noundef -1) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #10
  call void @_ZN11xalanc_1_1020DOMStringPrintWriterC1ERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(36) %19) #7
  invoke void @_ZN11xalanc_1_1022ProblemListenerDefault7problemERNS_11PrintWriterENS_15ProblemListener14eProblemSourceENS3_15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementERKNS_14XalanDOMStringEPKtii(ptr noundef nonnull align 8 dereferenceable(24) %10, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %6, i32 noundef %7, i32 noundef %8) #7
          to label %20 unwind label %24

20:                                               ; preds = %18
  %21 = load ptr, ptr %15, align 8, !tbaa !63
  %22 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_10lsERSoRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(36) %19) #7
          to label %23 unwind label %24

23:                                               ; preds = %20
  call void @_ZN11xalanc_1_1020DOMStringPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #10
  br label %26

24:                                               ; preds = %20, %18
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1020DOMStringPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #10
  resume { ptr, i32 } %25

26:                                               ; preds = %14, %23, %12
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022ProblemListenerDefault7problemENS_15ProblemListener14eProblemSourceENS1_15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementERKNS_14XalanDOMStringEPKtii(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1020DOMStringPrintWriterC1ERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1022ProblemListenerDefault7problemERNS_11PrintWriterENS_15ProblemListener14eProblemSourceENS3_15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementERKNS_14XalanDOMStringEPKtii(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_10lsERSoRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 comdat !prof !74 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %1) #7
  tail call void @_ZN11xalanc_1_1012OutputStringERSoRKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %3) #7
  ret ptr %0
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1020DOMStringPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !76
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !77

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #7
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #7
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !79 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !80 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !81

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #7
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !82, !llvm.loop !83

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !85 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !86 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !80 {
  %3 = load ptr, ptr %0, align 8, !tbaa !87
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #3 comdat align 2 !prof !88 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !90
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1012OutputStringERSoRKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat !prof !74 {
  %4 = tail call noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1) #7
  tail call void @_ZN11xalanc_1_1012OutputStringERSoPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !91 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1012OutputStringERSoPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat !prof !92 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #7
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !93 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #7
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  br i1 %2, label %5, label %3, !prof !94

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #7
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #3 comdat align 2 !prof !95 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !96 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !90
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !97 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !98 {
  %2 = load ptr, ptr %0, align 8, !tbaa !87
  ret ptr %2
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize }
attributes #9 = { builtin nounwind optsize }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!58}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!35 = !{ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerC2ERN11xercesc_2_713MemoryManagerEPSoPNS_11PrintWriterE, ptr @_ZN11xalanc_1_1015ProblemListenerC2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerC2ERN11xercesc_2_713MemoryManagerEPSoPNS_11PrintWriterE, ptr @_ZN11xalanc_1_1022ProblemListenerDefaultC1ERN11xercesc_2_713MemoryManagerEPNS_11PrintWriterE, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerC2ERN11xercesc_2_713MemoryManagerEPSoPNS_11PrintWriterE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerD2Ev, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerD2Ev, ptr @_ZN11xalanc_1_1022ProblemListenerDefaultD1Ev, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerD2Ev, ptr @_ZN11xalanc_1_1015ProblemListenerD2Ev, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!50 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!51 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!52 = !{ptr @_ZN11xalanc_1_1014XalanDOMString16getMemoryManagerEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE16getMemoryManagerEv, i64 832918}
!53 = !{ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 12093723}
!54 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!55 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!56 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!57 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!58 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!59 = !{!"function_entry_count", i64 1}
!60 = !{!61, !61, i64 0}
!61 = !{!"vtable pointer", !62, i64 0}
!62 = !{!"Simple C++ TBAA"}
!63 = !{!64, !67, i64 32}
!64 = !{!"_ZTSN11xalanc_1_1031XalanTransformerProblemListenerE", !65, i64 0, !66, i64 8, !67, i64 32, !69, i64 40}
!65 = !{!"_ZTSN11xalanc_1_1015ProblemListenerE"}
!66 = !{!"_ZTSN11xalanc_1_1022ProblemListenerDefaultE", !65, i64 0, !67, i64 8, !67, i64 16}
!67 = !{!"any pointer", !68, i64 0}
!68 = !{!"omnipotent char", !62, i64 0}
!69 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !70, i64 0, !72, i64 32}
!70 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !67, i64 0, !71, i64 8, !71, i64 16, !67, i64 24}
!71 = !{!"long", !68, i64 0}
!72 = !{!"int", !68, i64 0}
!73 = !{!"function_entry_count", i64 43398227}
!74 = !{!"function_entry_count", i64 0}
!75 = !{!"function_entry_count", i64 128698679}
!76 = !{!70, !71, i64 16}
!77 = !{!"branch_weights", i32 43398290, i32 85300391}
!78 = !{!70, !67, i64 24}
!79 = !{!"function_entry_count", i64 6521798493}
!80 = !{!"function_entry_count", i64 85300390}
!81 = !{!"branch_weights", i32 1, i32 12185770}
!82 = !{!"branch_weights", i32 12185770, i32 -193930396}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!"function_entry_count", i64 227375739}
!86 = !{!"function_entry_count", i64 568333389}
!87 = !{!70, !67, i64 0}
!88 = !{!"function_entry_count", i64 30137156660}
!89 = !{!"function_entry_count", i64 825654971}
!90 = !{!70, !71, i64 8}
!91 = !{!"function_entry_count", i64 832918}
!92 = !{!"function_entry_count", i64 12093723}
!93 = !{!"function_entry_count", i64 967143541}
!94 = !{!"branch_weights", i32 403628487, i32 563515056}
!95 = !{!"function_entry_count", i64 3070433834}
!96 = !{!"function_entry_count", i64 1083116306}
!97 = !{!"function_entry_count", i64 565220908}
!98 = !{!"function_entry_count", i64 833358}
