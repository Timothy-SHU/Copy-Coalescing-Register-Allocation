; ModuleID = 'ContentLeafNameTypeVector.cpp'
source_filename = "ContentLeafNameTypeVector.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::ContentLeafNameTypeVector" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_725ContentLeafNameTypeVector4initEj = comdat any

$_ZN11xercesc_2_725ContentLeafNameTypeVector7cleanUpEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@.str = private unnamed_addr constant [30 x i8] c"ContentLeafNameTypeVector.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_725ContentLeafNameTypeVectorC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_725ContentLeafNameTypeVectorC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_725ContentLeafNameTypeVectorC1EPPNS_5QNameEPNS_15ContentSpecNode9NodeTypesEjPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_725ContentLeafNameTypeVectorC2EPPNS_5QNameEPNS_15ContentSpecNode9NodeTypesEjPNS_13MemoryManagerE
@_ZN11xercesc_2_725ContentLeafNameTypeVectorC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_725ContentLeafNameTypeVectorC2ERKS0_
@_ZN11xercesc_2_725ContentLeafNameTypeVectorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_725ContentLeafNameTypeVectorD2Ev

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_725ContentLeafNameTypeVectorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #7
  store ptr %1, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::ContentLeafNameTypeVector", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !41 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_725ContentLeafNameTypeVectorC2EPPNS_5QNameEPNS_15ContentSpecNode9NodeTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #7
  store ptr %4, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentLeafNameTypeVector", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, i8 0, i64 20, i1 false)
  tail call void @_ZN11xercesc_2_725ContentLeafNameTypeVector9setValuesEPPNS_5QNameEPNS_15ContentSpecNode9NodeTypesEj(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_725ContentLeafNameTypeVector9setValuesEPPNS_5QNameEPNS_15ContentSpecNode9NodeTypesEj(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #2 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_725ContentLeafNameTypeVector7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(28) %0) #7
  tail call void @_ZN11xercesc_2_725ContentLeafNameTypeVector4initEj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %3) #7
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xercesc_2_7::ContentLeafNameTypeVector", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xercesc_2_7::ContentLeafNameTypeVector", ptr %0, i64 0, i32 2
  %9 = zext i32 %3 to i64
  br label %11

10:                                               ; preds = %11, %4
  ret void

11:                                               ; preds = %6, %11
  %12 = phi i64 [ 0, %6 ], [ %21, %11 ]
  %13 = getelementptr inbounds ptr, ptr %1, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = load ptr, ptr %7, align 8, !tbaa !43
  %16 = getelementptr inbounds ptr, ptr %15, i64 %12
  store ptr %14, ptr %16, align 8, !tbaa !42
  %17 = getelementptr inbounds i32, ptr %2, i64 %12
  %18 = load i32, ptr %17, align 4, !tbaa !44
  %19 = load ptr, ptr %8, align 8, !tbaa !46
  %20 = getelementptr inbounds i32, ptr %19, i64 %12
  store i32 %18, ptr %20, align 4, !tbaa !44
  %21 = add nuw nsw i64 %12, 1
  %22 = icmp eq i64 %21, %9
  br i1 %22, label %10, label %11, !llvm.loop !47
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_725ContentLeafNameTypeVectorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(28) %1) unnamed_addr #2 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  store ptr %3, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xercesc_2_7::ContentLeafNameTypeVector", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ContentLeafNameTypeVector", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ContentLeafNameTypeVector", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, i8 0, i64 20, i1 false)
  %7 = tail call noundef i32 @_ZNK11xercesc_2_725ContentLeafNameTypeVector12getLeafCountEv(ptr noundef nonnull align 8 dereferenceable(28) %1) #7
  store i32 %7, ptr %6, align 8, !tbaa !49
  tail call void @_ZN11xercesc_2_725ContentLeafNameTypeVector4initEj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %7) #7
  %8 = load i32, ptr %6, align 8, !tbaa !49
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %11, %2
  ret void

11:                                               ; preds = %2, %11
  %12 = phi i64 [ %20, %11 ], [ 0, %2 ]
  %13 = trunc i64 %12 to i32
  %14 = tail call noundef ptr @_ZNK11xercesc_2_725ContentLeafNameTypeVector13getLeafNameAtEj(ptr noundef nonnull align 8 dereferenceable(28) %1, i32 noundef %13) #7
  %15 = load ptr, ptr %4, align 8, !tbaa !43
  %16 = getelementptr inbounds ptr, ptr %15, i64 %12
  store ptr %14, ptr %16, align 8, !tbaa !42
  %17 = tail call noundef i32 @_ZNK11xercesc_2_725ContentLeafNameTypeVector13getLeafTypeAtEj(ptr noundef nonnull align 8 dereferenceable(28) %1, i32 noundef %13) #7
  %18 = load ptr, ptr %5, align 8, !tbaa !46
  %19 = getelementptr inbounds i32, ptr %18, i64 %12
  store i32 %17, ptr %19, align 4, !tbaa !44
  %20 = add nuw nsw i64 %12, 1
  %21 = load i32, ptr %6, align 8, !tbaa !49
  %22 = zext i32 %21 to i64
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %11, label %10, !llvm.loop !50
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_725ContentLeafNameTypeVector12getLeafCountEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(28) %0) local_unnamed_addr #3 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ContentLeafNameTypeVector", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !49
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_725ContentLeafNameTypeVector4initEj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = zext i32 %1 to i64
  %5 = shl nuw nsw i64 %4, 3
  %6 = load ptr, ptr %3, align 8, !tbaa !51
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %5) #7
  %10 = getelementptr inbounds %"class.xercesc_2_7::ContentLeafNameTypeVector", ptr %0, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !43
  %11 = load ptr, ptr %0, align 8, !tbaa !35
  %12 = shl nuw nsw i64 %4, 2
  %13 = load ptr, ptr %11, align 8, !tbaa !51
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %12) #7
  %17 = getelementptr inbounds %"class.xercesc_2_7::ContentLeafNameTypeVector", ptr %0, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !46
  %18 = getelementptr inbounds %"class.xercesc_2_7::ContentLeafNameTypeVector", ptr %0, i64 0, i32 3
  store i32 %1, ptr %18, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_725ContentLeafNameTypeVector13getLeafNameAtEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(28) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ContentLeafNameTypeVector", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !49
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %8 = load ptr, ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 116, ptr noundef %8) #7
          to label %9 unwind label %10

9:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #8
  resume { ptr, i32 } %11

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::ContentLeafNameTypeVector", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = zext i32 %1 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_725ContentLeafNameTypeVector13getLeafTypeAtEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(28) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ContentLeafNameTypeVector", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !49
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %8 = load ptr, ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 121, i32 noundef 116, ptr noundef %8) #7
          to label %9 unwind label %10

9:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #8
  resume { ptr, i32 } %11

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::ContentLeafNameTypeVector", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = zext i32 %1 to i64
  %16 = getelementptr inbounds i32, ptr %14, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !44
  ret i32 %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_725ContentLeafNameTypeVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  invoke void @_ZN11xercesc_2_725ContentLeafNameTypeVector7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(28) %0) #7
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #10
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_725ContentLeafNameTypeVector7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #2 comdat align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds %"class.xercesc_2_7::ContentLeafNameTypeVector", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = load ptr, ptr %2, align 8, !tbaa !51
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #7
  %8 = load ptr, ptr %0, align 8, !tbaa !35
  %9 = getelementptr inbounds %"class.xercesc_2_7::ContentLeafNameTypeVector", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = load ptr, ptr %8, align 8, !tbaa !51
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %10) #7
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #7
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #7
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #7
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #7
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !51
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { optsize }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind optsize }

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
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSN11xercesc_2_725ContentLeafNameTypeVectorE", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"function_entry_count", i64 5836268}
!42 = !{!37, !37, i64 0}
!43 = !{!36, !37, i64 8}
!44 = !{!45, !45, i64 0}
!45 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !38, i64 0}
!46 = !{!36, !37, i64 16}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!36, !40, i64 24}
!50 = distinct !{!50, !48}
!51 = !{!52, !52, i64 0}
!52 = !{!"vtable pointer", !39, i64 0}
!53 = !{!54, !37, i64 40}
!54 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !55, i64 8, !37, i64 16, !40, i64 24, !37, i64 32, !37, i64 40}
!55 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !38, i64 0}
