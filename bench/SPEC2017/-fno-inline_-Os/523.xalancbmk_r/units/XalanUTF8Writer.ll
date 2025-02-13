; ModuleID = 'XalanUTF8Writer.cpp'
source_filename = "XalanUTF8Writer.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanUTF8Writer" = type <{ %"class.xalanc_1_10::XalanFormatterWriter.base", [512 x i8], [4 x i8], ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanFormatterWriter.base" = type <{ ptr, ptr, ptr, %"class.xalanc_1_10::XalanDOMString", ptr, i32 }>
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanFormatterWriter" = type <{ ptr, ptr, ptr, %"class.xalanc_1_10::XalanDOMString", ptr, i32, [4 x i8] }>

$_ZN11xalanc_1_1020XalanFormatterWriterC2ERNS_6WriterERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1020XalanFormatterWriterD2Ev = comdat any

$_ZN11xalanc_1_1015XalanUTF8WriterD0Ev = comdat any

$_ZN11xalanc_1_1017XalanOutputStream20defaultNewlineStringEv = comdat any

$_ZN11xalanc_1_106lengthEPKt = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1020XalanFormatterWriterD0Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZTVN11xalanc_1_1015XalanUTF8WriterE = comdat any

$_ZTSN11xalanc_1_1015XalanUTF8WriterE = comdat any

$_ZTSN11xalanc_1_1020XalanFormatterWriterE = comdat any

$_ZTIN11xalanc_1_1020XalanFormatterWriterE = comdat any

$_ZTIN11xalanc_1_1015XalanUTF8WriterE = comdat any

$_ZTVN11xalanc_1_1020XalanFormatterWriterE = comdat any

@_ZTVN11xalanc_1_1015XalanUTF8WriterE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1015XalanUTF8WriterE, ptr @_ZN11xalanc_1_1020XalanFormatterWriterD2Ev, ptr @_ZN11xalanc_1_1015XalanUTF8WriterD0Ev] }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1015XalanUTF8WriterE = linkonce_odr dso_local constant [33 x i8] c"N11xalanc_1_1015XalanUTF8WriterE\00", comdat, align 1
@_ZTSN11xalanc_1_1020XalanFormatterWriterE = linkonce_odr dso_local constant [38 x i8] c"N11xalanc_1_1020XalanFormatterWriterE\00", comdat, align 1
@_ZTIN11xalanc_1_1020XalanFormatterWriterE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1020XalanFormatterWriterE }, comdat, align 8
@_ZTIN11xalanc_1_1015XalanUTF8WriterE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1015XalanUTF8WriterE, ptr @_ZTIN11xalanc_1_1020XalanFormatterWriterE }, comdat, align 8
@_ZTVN11xalanc_1_1020XalanFormatterWriterE = linkonce_odr dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1020XalanFormatterWriterE, ptr @_ZN11xalanc_1_1020XalanFormatterWriterD2Ev, ptr @_ZN11xalanc_1_1020XalanFormatterWriterD0Ev] }, comdat, align 8
@_ZN11xalanc_1_1017XalanOutputStream10s_nlStringE = external constant [0 x i16], align 2

@_ZN11xalanc_1_1015XalanUTF8WriterC1ERNS_6WriterERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1015XalanUTF8WriterC2ERNS_6WriterERN11xercesc_2_713MemoryManagerE

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XalanUTF8WriterC2ERNS_6WriterERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(604) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 !prof !51 {
  tail call void @_ZN11xalanc_1_1020XalanFormatterWriterC2ERNS_6WriterERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #6
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1015XalanUTF8WriterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanUTF8Writer", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(512) %4, i8 0, i64 512, i1 false)
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanUTF8Writer", ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanUTF8Writer", ptr %0, i64 0, i32 4
  store i32 512, ptr %6, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanFormatterWriterC2ERNS_6WriterERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1020XalanFormatterWriterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanFormatterWriter", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanFormatterWriter", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanFormatterWriter", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1EjtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef 5, i16 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(8) %2) #6
  %7 = load ptr, ptr %1, align 8, !tbaa !52
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
          to label %11 unwind label %15

11:                                               ; preds = %3
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %17, !prof !66

13:                                               ; preds = %11
  %14 = tail call noundef ptr @_ZN11xalanc_1_1017XalanOutputStream20defaultNewlineStringEv() #6
  br label %22

15:                                               ; preds = %17, %3
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #7
  resume { ptr, i32 } %16

17:                                               ; preds = %11
  %18 = load ptr, ptr %10, align 8, !tbaa !52
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(144) %10) #6
          to label %22 unwind label %15

22:                                               ; preds = %17, %13
  %23 = phi ptr [ %14, %13 ], [ %21, %17 ]
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanFormatterWriter", ptr %0, i64 0, i32 4
  store ptr %23, ptr %24, align 8, !tbaa !67
  %25 = tail call noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %23) #6
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanFormatterWriter", ptr %0, i64 0, i32 5
  store i32 %25, ptr %26, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanFormatterWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(76) %0) unnamed_addr #3 comdat align 2 !prof !51 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1020XalanFormatterWriterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !52
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanFormatterWriter", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %2) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1015XalanUTF8WriterD0Ev(ptr noundef nonnull align 8 dereferenceable(604) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xalanc_1_1020XalanFormatterWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(604) %0) #7
  tail call void @_ZdlPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1EjtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i16 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1017XalanOutputStream20defaultNewlineStringEv() local_unnamed_addr #3 comdat align 2 !prof !51 {
  ret ptr @_ZN11xalanc_1_1017XalanOutputStream10s_nlStringE
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthEPKt(ptr noundef %0) local_unnamed_addr #3 comdat !prof !69 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i16, ptr %3, align 2, !tbaa !70
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds i16, ptr %3, i64 1
  br i1 %5, label %7, label %2, !prof !72, !llvm.loop !73

7:                                                ; preds = %2
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 1
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #3 comdat align 2 !prof !75 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanFormatterWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(76) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xalanc_1_1020XalanFormatterWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(76) %0) #7
  tail call void @_ZdlPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #6
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !77
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !78

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #6
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #6
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #6
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #6
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #9
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !80 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #9
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !81 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !82

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #6
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !83, !llvm.loop !84

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !85 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #6
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !86 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #6
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #6
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !81 {
  %3 = load ptr, ptr %0, align 8, !tbaa !87
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #3 comdat align 2 !prof !88 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !89 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !90
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { builtin nounwind optsize }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!50}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!35 = !{ptr @_ZN11xalanc_1_1015XalanUTF8WriterC2ERNS_6WriterERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1020XalanFormatterWriterC2ERNS_6WriterERN11xercesc_2_713MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1020XalanFormatterWriterC2ERNS_6WriterERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1EjtRN11xercesc_2_713MemoryManagerE, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1020XalanFormatterWriterC2ERNS_6WriterERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_106lengthEPKt, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1020XalanFormatterWriterD2Ev, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = !{!"function_entry_count", i64 1}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !54, i64 0}
!54 = !{!"Simple C++ TBAA"}
!55 = !{!56, !58, i64 592}
!56 = !{!"_ZTSN11xalanc_1_1015XalanUTF8WriterE", !57, i64 0, !59, i64 76, !58, i64 592, !63, i64 600}
!57 = !{!"_ZTSN11xalanc_1_1020XalanFormatterWriterE", !58, i64 8, !58, i64 16, !60, i64 24, !58, i64 64, !63, i64 72}
!58 = !{!"any pointer", !59, i64 0}
!59 = !{!"omnipotent char", !54, i64 0}
!60 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !61, i64 0, !63, i64 32}
!61 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !58, i64 0, !62, i64 8, !62, i64 16, !58, i64 24}
!62 = !{!"long", !59, i64 0}
!63 = !{!"int", !59, i64 0}
!64 = !{!56, !63, i64 600}
!65 = !{!58, !58, i64 0}
!66 = !{!"branch_weights", i32 1, i32 2}
!67 = !{!57, !58, i64 64}
!68 = !{!57, !63, i64 72}
!69 = !{!"function_entry_count", i64 21552397}
!70 = !{!71, !71, i64 0}
!71 = !{!"short", !59, i64 0}
!72 = !{!"branch_weights", i32 21552398, i32 128560690}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"function_entry_count", i64 43398227}
!76 = !{!"function_entry_count", i64 128698679}
!77 = !{!61, !62, i64 16}
!78 = !{!"branch_weights", i32 43398290, i32 85300391}
!79 = !{!61, !58, i64 24}
!80 = !{!"function_entry_count", i64 6521798493}
!81 = !{!"function_entry_count", i64 85300390}
!82 = !{!"branch_weights", i32 1, i32 12185770}
!83 = !{!"branch_weights", i32 12185770, i32 -193930396}
!84 = distinct !{!84, !74}
!85 = !{!"function_entry_count", i64 227375739}
!86 = !{!"function_entry_count", i64 568333389}
!87 = !{!61, !58, i64 0}
!88 = !{!"function_entry_count", i64 30137156660}
!89 = !{!"function_entry_count", i64 825654971}
!90 = !{!61, !62, i64 8}
