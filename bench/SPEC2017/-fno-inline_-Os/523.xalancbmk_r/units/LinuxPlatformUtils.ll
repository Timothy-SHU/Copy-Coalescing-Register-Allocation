; ModuleID = 'LinuxPlatformUtils.cpp'
source_filename = "LinuxPlatformUtils.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%struct.timeb = type { i64, i16, i16, i16 }
%"class.xercesc_2_7::ArrayJanitor.0" = type { ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIcEC2EPcPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIcED2Ev = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_716XMLPlatformUtils10isAnySlashEt = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_725XMLPlatformUtilsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_725XMLPlatformUtilsException7getTypeEv = comdat any

$_ZNK11xercesc_2_725XMLPlatformUtilsException9duplicateEv = comdat any

$_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIcE5resetEPc = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_725XMLPlatformUtilsExceptionE = comdat any

$_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE = comdat any

$_ZTVN11xercesc_2_725XMLPlatformUtilsExceptionE = comdat any

@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_716XMLPlatformUtils18fgUserPanicHandlerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_716XMLPlatformUtils21fgDefaultPanicHandlerE = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"LinuxPlatformUtils.cpp\00", align 1
@_ZTSN11xercesc_2_725XMLPlatformUtilsExceptionE = linkonce_odr dso_local constant [43 x i8] c"N11xercesc_2_725XMLPlatformUtilsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@_ZTVN11xercesc_2_725XMLPlatformUtilsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_725XMLPlatformUtilsExceptionD0Ev, ptr @_ZNK11xercesc_2_725XMLPlatformUtilsException7getTypeEv, ptr @_ZNK11xercesc_2_725XMLPlatformUtilsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni32fgXMLPlatformUtilsException_NameE = external constant [0 x i16], align 2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15makeNetAccessorEv() local_unnamed_addr #0 align 2 !prof !66 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils11loadAMsgSetEPKt(ptr noundef %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %2 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !68
  %3 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 16, ptr noundef %2) #16
          to label %4 unwind label %5

4:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_714InMemMsgLoaderC1EPKt(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %0) #16
          to label %23 unwind label %7

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %9

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %3, ptr noundef %2) #17
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi { ptr, i32 } [ %8, %7 ], [ %6, %5 ]
  %11 = extractvalue { ptr, i32 } %10, 1
  %12 = extractvalue { ptr, i32 } %10, 0
  %13 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #18
  %14 = icmp eq i32 %11, %13
  %15 = tail call ptr @__cxa_begin_catch(ptr %12) #18
  br i1 %14, label %16, label %17

16:                                               ; preds = %9
  invoke void @__cxa_rethrow() #19
          to label %30 unwind label %21

17:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef 4) #16
          to label %18 unwind label %19

18:                                               ; preds = %17
  tail call void @__cxa_end_catch()
  br label %23

19:                                               ; preds = %17
  %20 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %25 unwind label %27

21:                                               ; preds = %16
  %22 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %25 unwind label %27

23:                                               ; preds = %4, %18
  %24 = phi ptr [ undef, %18 ], [ %3, %4 ]
  ret ptr %24

25:                                               ; preds = %21, %19
  %26 = phi { ptr, i32 } [ %20, %19 ], [ %22, %21 ]
  resume { ptr, i32 } %26

27:                                               ; preds = %21, %19
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  tail call void @__clang_call_terminate(ptr %29) #20
  unreachable

30:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714InMemMsgLoaderC1EPKt(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef %0) local_unnamed_addr #1 align 2 !prof !67 {
  %2 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils18fgUserPanicHandlerE, align 8, !tbaa !68
  %3 = icmp eq ptr %2, null
  %4 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils21fgDefaultPanicHandlerE, align 8
  %5 = select i1 %3, ptr %4, ptr %2
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %0) #16
  ret void
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #18
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils16makeTransServiceEv() local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %1 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !68
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %1) #16
  invoke void @_ZN11xercesc_2_717IconvTransServiceC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
          to label %3 unwind label %4

3:                                                ; preds = %0
  ret ptr %2

4:                                                ; preds = %0
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %1) #17
  resume { ptr, i32 } %5
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717IconvTransServiceC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils10curFilePosEPvPNS_13MemoryManagerE(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %3 = tail call i64 @ftell(ptr noundef %0) #16
  %4 = trunc i64 %3 to i32
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  invoke void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 187, i32 noundef 40, ptr noundef %1) #16
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #18
  resume { ptr, i32 } %10

11:                                               ; preds = %2
  ret i32 %4
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_725XMLPlatformUtilsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #16
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils9closeFileEPvPNS_13MemoryManagerE(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %3 = tail call i32 @fclose(ptr noundef %0) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5, !prof !75

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  invoke void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 197, i32 noundef 33, ptr noundef %1) #16
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #18
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils8fileSizeEPvPNS_13MemoryManagerE(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %3 = tail call i64 @ftell(ptr noundef %0) #16
  %4 = icmp eq i64 %3, -1
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  invoke void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 207, i32 noundef 32, ptr noundef %1) #16
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %36

10:                                               ; preds = %2
  %11 = tail call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 2) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  invoke void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str, i32 noundef 212, i32 noundef 34, ptr noundef %1) #16
          to label %15 unwind label %16

15:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %36

18:                                               ; preds = %10
  %19 = tail call i64 @ftell(ptr noundef %0) #16
  %20 = icmp eq i64 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  invoke void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 34, ptr noundef %1) #16
          to label %23 unwind label %24

23:                                               ; preds = %21
  tail call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %36

26:                                               ; preds = %18
  %27 = tail call i32 @fseek(ptr noundef %0, i64 noundef %3, i32 noundef 0) #16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  invoke void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef nonnull @.str, i32 noundef 223, i32 noundef 35, ptr noundef %1) #16
          to label %31 unwind label %32

31:                                               ; preds = %29
  tail call void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

32:                                               ; preds = %29
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %36

34:                                               ; preds = %26
  %35 = trunc i64 %19 to i32
  ret i32 %35

36:                                               ; preds = %24, %32, %16, %8
  %37 = phi ptr [ %22, %24 ], [ %30, %32 ], [ %14, %16 ], [ %6, %8 ]
  %38 = phi { ptr, i32 } [ %25, %24 ], [ %33, %32 ], [ %17, %16 ], [ %9, %8 ]
  tail call void @__cxa_free_exception(ptr %37) #18
  resume { ptr, i32 } %38
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils8openFileEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @_ZN11xercesc_2_712ArrayJanitorIcEC2EPcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4, ptr noundef %1) #16
  %5 = call noalias ptr @fopen(ptr noundef %4, ptr noundef nonnull @.str.1) #16
  call void @_ZN11xercesc_2_712ArrayJanitorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIcEC2EPcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !76 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store ptr %1, ptr %0, align 8, !tbaa !77
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !79
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIcE5resetEPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #16
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #20
  unreachable
}

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils8openFileEPKcPNS_13MemoryManagerE(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) local_unnamed_addr #9 align 2 !prof !67 {
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.1) #16
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15openFileToWriteEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @_ZN11xercesc_2_712ArrayJanitorIcEC2EPcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4, ptr noundef %1) #16
  %5 = call noalias ptr @fopen(ptr noundef %4, ptr noundef nonnull @.str.2) #16
  call void @_ZN11xercesc_2_712ArrayJanitorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15openFileToWriteEPKcPNS_13MemoryManagerE(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) local_unnamed_addr #9 align 2 !prof !67 {
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.2) #16
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15openStdInHandleEPNS_13MemoryManagerE(ptr nocapture noundef readnone %0) local_unnamed_addr #8 align 2 !prof !67 {
  %2 = tail call i32 @dup(i32 noundef 0) #17
  %3 = tail call noalias ptr @fdopen(i32 noundef %2, ptr noundef nonnull @.str.1) #17
  ret ptr %3
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nounwind optsize
declare i32 @dup(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils14readFileBufferEPvjPhPNS_13MemoryManagerE(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %5 = zext i32 %1 to i64
  %6 = tail call i64 @fread(ptr noundef %2, i64 noundef 1, i64 noundef %5, ptr noundef %0) #16
  %7 = tail call i32 @ferror(ptr noundef %0) #17
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !81

9:                                                ; preds = %4
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  invoke void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 280, i32 noundef 37, ptr noundef %3) #16
          to label %11 unwind label %12

11:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #18
  resume { ptr, i32 } %13

14:                                               ; preds = %4
  %15 = trunc i64 %6 to i32
  ret i32 %15
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils17writeBufferToFileEPvlPKhPNS_13MemoryManagerE(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %5 = icmp ne ptr %0, null
  %6 = icmp sgt i64 %1, 0
  %7 = and i1 %5, %6
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %4
  %11 = tail call i64 @fwrite(ptr noundef nonnull %2, i64 noundef 1, i64 noundef %1, ptr noundef nonnull %0) #16
  %12 = tail call i32 @ferror(ptr noundef nonnull %0) #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %24, %10
  %15 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  invoke void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str, i32 noundef 306, i32 noundef 38, ptr noundef %3) #16
          to label %16 unwind label %17

16:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %15) #18
  resume { ptr, i32 } %18

19:                                               ; preds = %10, %24
  %20 = phi i64 [ %27, %24 ], [ %11, %10 ]
  %21 = phi i64 [ %26, %24 ], [ %1, %10 ]
  %22 = phi ptr [ %25, %24 ], [ %2, %10 ]
  %23 = icmp slt i64 %20, %21
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds i8, ptr %22, i64 %20
  %26 = sub i64 %21, %20
  %27 = tail call i64 @fwrite(ptr noundef %25, i64 noundef 1, i64 noundef %26, ptr noundef nonnull %0) #16
  %28 = tail call i32 @ferror(ptr noundef nonnull %0) #17
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %19, label %14, !llvm.loop !82

30:                                               ; preds = %19, %4
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils9resetFileEPvPNS_13MemoryManagerE(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %3 = tail call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 0) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #18
  invoke void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 328, i32 noundef 39, ptr noundef %1) #16
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #18
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils11getFullPathEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = alloca [4097 x i8], align 16
  %5 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @_ZN11xercesc_2_712ArrayJanitorIcEC2EPcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %5, ptr noundef %1) #16
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %4) #18
  %6 = call ptr @realpath(ptr noundef %5, ptr noundef nonnull %4) #17
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %15, !prof !85

8:                                                ; preds = %2
  %9 = call ptr @__cxa_allocate_exception(i64 48) #18
  invoke void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 353, i32 noundef 41, ptr noundef %1) #16
          to label %10 unwind label %11

10:                                               ; preds = %8
  invoke void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
          to label %20 unwind label %13

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %9) #18
  br label %18

13:                                               ; preds = %15, %10
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %18

15:                                               ; preds = %2
  %16 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef nonnull %4, ptr noundef %1) #16
          to label %17 unwind label %13

17:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %4) #18
  call void @_ZN11xercesc_2_712ArrayJanitorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret ptr %16

18:                                               ; preds = %13, %11
  %19 = phi { ptr, i32 } [ %14, %13 ], [ %12, %11 ]
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %4) #18
  call void @_ZN11xercesc_2_712ArrayJanitorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  resume { ptr, i32 } %19

20:                                               ; preds = %10
  unreachable
}

; Function Attrs: nofree nounwind optsize
declare noundef ptr @realpath(ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_716XMLPlatformUtils10isRelativeEPKtPNS_13MemoryManagerE(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) local_unnamed_addr #11 align 2 !prof !66 {
  %3 = load i16, ptr %0, align 2, !tbaa !86
  %4 = icmp ne i16 %3, 0
  %5 = icmp ne i16 %3, 47
  %6 = and i1 %4, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils19getCurrentDirectoryEPNS_13MemoryManagerE(ptr noundef %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %2 = alloca [4098 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4098, ptr nonnull %2) #18
  %3 = call ptr @getcwd(ptr noundef nonnull %2, i64 noundef 4097) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = call ptr @__cxa_allocate_exception(i64 48) #18
  invoke void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 385, i32 noundef 41, ptr noundef %0) #16
          to label %7 unwind label %8

7:                                                ; preds = %5
  call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %6) #18
  call void @llvm.lifetime.end.p0(i64 4098, ptr nonnull %2) #18
  resume { ptr, i32 } %9

10:                                               ; preds = %1
  %11 = call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef nonnull %3, ptr noundef %0) #16
  call void @llvm.lifetime.end.p0(i64 4098, ptr nonnull %2) #18
  ret ptr %11
}

; Function Attrs: nounwind optsize
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i64 @_ZN11xercesc_2_716XMLPlatformUtils16getCurrentMillisEv() local_unnamed_addr #1 align 2 !prof !67 {
  %1 = alloca %struct.timeb, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #18
  %2 = call i32 @ftime(ptr noundef nonnull %1) #16
  %3 = load i64, ptr %1, align 8, !tbaa !88
  %4 = mul nsw i64 %3, 1000
  %5 = getelementptr inbounds %struct.timeb, ptr %1, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !91
  %7 = zext i16 %6 to i64
  %8 = add nsw i64 %4, %7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #18
  ret i64 %8
}

; Function Attrs: optsize
declare i32 @ftime(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils12platformInitEv() local_unnamed_addr #0 align 2 !prof !66 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils9makeMutexEPNS_13MemoryManagerE(ptr nocapture noundef readnone %0) local_unnamed_addr #0 align 2 !prof !92 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils10closeMutexEPv(ptr nocapture noundef readnone %0) local_unnamed_addr #0 align 2 !prof !67 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils9lockMutexEPv(ptr nocapture noundef readnone %0) local_unnamed_addr #0 align 2 !prof !93 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils11unlockMutexEPv(ptr nocapture noundef readnone %0) local_unnamed_addr #0 align 2 !prof !93 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #12 align 2 !prof !94 {
  %4 = load ptr, ptr %0, align 8, !tbaa !68
  %5 = icmp eq ptr %4, %2
  br i1 %5, label %6, label %7, !prof !95

6:                                                ; preds = %3
  store ptr %1, ptr %0, align 8, !tbaa !68
  br label %7

7:                                                ; preds = %6, %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr nocapture noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #12 align 2 !prof !67 {
  %2 = load i32, ptr %0, align 4, !tbaa !96
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr %0, align 4, !tbaa !96
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr nocapture noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #12 align 2 !prof !67 {
  %2 = load i32, ptr %0, align 4, !tbaa !96
  %3 = add nsw i32 %2, -1
  store i32 %3, ptr %0, align 4, !tbaa !96
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils12platformTermEv() local_unnamed_addr #0 align 2 !prof !66 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10weavePathsEPKtS2_PNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 !prof !66 {
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) #16
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #16
  %6 = add i32 %4, 2
  %7 = add i32 %6, %5
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 1
  %10 = load ptr, ptr %2, align 8, !tbaa !72
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %9) #16
  store i16 0, ptr %13, align 2, !tbaa !86
  %14 = icmp eq ptr %0, null
  br i1 %14, label %18, label %15, !prof !98

15:                                               ; preds = %3
  %16 = load i16, ptr %0, align 2, !tbaa !86
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %19, !prof !98

18:                                               ; preds = %15, %3
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %13, ptr noundef %1) #16
  br label %40

19:                                               ; preds = %15
  %20 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #16
  %21 = add i32 %20, -1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i16, ptr %0, i64 %22
  br label %24

24:                                               ; preds = %19, %28
  %25 = phi ptr [ %29, %28 ], [ %23, %19 ]
  %26 = load i16, ptr %25, align 2, !tbaa !86
  %27 = tail call noundef zeroext i1 @_ZN11xercesc_2_716XMLPlatformUtils10isAnySlashEt(i16 noundef zeroext %26) #16
  br i1 %27, label %32, label %28, !prof !99

28:                                               ; preds = %24
  %29 = getelementptr inbounds i16, ptr %25, i64 -1
  %30 = icmp ult ptr %29, %0
  br i1 %30, label %31, label %24, !prof !100, !llvm.loop !101

31:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %13, ptr noundef %1) #16
  br label %40

32:                                               ; preds = %24
  %33 = ptrtoint ptr %25 to i64
  %34 = ptrtoint ptr %0 to i64
  %35 = sub i64 %33, %34
  %36 = ashr exact i64 %35, 1
  %37 = add nsw i64 %36, 1
  %38 = trunc i64 %37 to i32
  tail call void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef nonnull %13, ptr noundef nonnull %0, i32 noundef 0, i32 noundef %38, ptr noundef nonnull %2) #16
  %39 = getelementptr inbounds i16, ptr %13, i64 %37
  store i16 0, ptr %39, align 2, !tbaa !86
  tail call void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef nonnull %13, ptr noundef %1) #16
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils14removeDotSlashEPtPNS_13MemoryManagerE(ptr noundef nonnull %13, ptr noundef nonnull %2) #16
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils17removeDotDotSlashEPtPNS_13MemoryManagerE(ptr noundef nonnull %13, ptr noundef nonnull %2) #16
  br label %40

40:                                               ; preds = %31, %32, %18
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #8 comdat align 2 !prof !102 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !103

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !86
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !104

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !86
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !105, !llvm.loop !106

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %3, %11
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_716XMLPlatformUtils10isAnySlashEt(i16 noundef zeroext %0) local_unnamed_addr #8 comdat align 2 !prof !107 {
  %2 = icmp eq i16 %0, 92
  %3 = icmp eq i16 %0, 47
  %4 = or i1 %2, %3
  ret i1 %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils14removeDotSlashEPtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor.0", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %54, label %5

5:                                                ; preds = %2
  %6 = load i16, ptr %0, align 2, !tbaa !86
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %54, label %8

8:                                                ; preds = %5
  %9 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %0, ptr noundef %1) #16
  %10 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %9) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %9, ptr noundef %1) #16
  %11 = load i16, ptr %9, align 2, !tbaa !86
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %52, label %13

13:                                               ; preds = %8, %46
  %14 = phi i16 [ %50, %46 ], [ %11, %8 ]
  %15 = phi ptr [ %49, %46 ], [ %0, %8 ]
  %16 = phi i32 [ %48, %46 ], [ %10, %8 ]
  %17 = phi ptr [ %47, %46 ], [ %9, %8 ]
  %18 = icmp sgt i32 %16, 2
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = call noundef zeroext i1 @_ZN11xercesc_2_716XMLPlatformUtils10isAnySlashEt(i16 noundef zeroext %14) #16
  br i1 %20, label %21, label %31

21:                                               ; preds = %19
  %22 = getelementptr inbounds i16, ptr %17, i64 1
  %23 = load i16, ptr %22, align 2, !tbaa !86
  %24 = icmp eq i16 %23, 46
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = getelementptr inbounds i16, ptr %17, i64 2
  %27 = load i16, ptr %26, align 2, !tbaa !86
  %28 = call noundef zeroext i1 @_ZN11xercesc_2_716XMLPlatformUtils10isAnySlashEt(i16 noundef zeroext %27) #16
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = add nsw i32 %16, -2
  br label %46

31:                                               ; preds = %25, %21, %19
  %32 = getelementptr inbounds i16, ptr %17, i64 1
  %33 = load i16, ptr %17, align 2, !tbaa !86
  %34 = getelementptr inbounds i16, ptr %15, i64 1
  store i16 %33, ptr %15, align 2, !tbaa !86
  %35 = add nsw i32 %16, -1
  br label %46

36:                                               ; preds = %13
  switch i32 %16, label %46 [
    i32 1, label %37
    i32 2, label %40
  ]

37:                                               ; preds = %36
  %38 = getelementptr inbounds i16, ptr %17, i64 1
  %39 = getelementptr inbounds i16, ptr %15, i64 1
  store i16 %14, ptr %15, align 2, !tbaa !86
  br label %46

40:                                               ; preds = %36
  %41 = getelementptr inbounds i16, ptr %17, i64 1
  %42 = getelementptr inbounds i16, ptr %15, i64 1
  store i16 %14, ptr %15, align 2, !tbaa !86
  %43 = getelementptr inbounds i16, ptr %17, i64 2
  %44 = load i16, ptr %41, align 2, !tbaa !86
  %45 = getelementptr inbounds i16, ptr %15, i64 2
  store i16 %44, ptr %42, align 2, !tbaa !86
  br label %46

46:                                               ; preds = %36, %37, %40, %29, %31
  %47 = phi ptr [ %26, %29 ], [ %32, %31 ], [ %38, %37 ], [ %43, %40 ], [ %17, %36 ]
  %48 = phi i32 [ %30, %29 ], [ %35, %31 ], [ 1, %37 ], [ 2, %40 ], [ %16, %36 ]
  %49 = phi ptr [ %15, %29 ], [ %34, %31 ], [ %39, %37 ], [ %45, %40 ], [ %15, %36 ]
  %50 = load i16, ptr %47, align 2, !tbaa !86
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %13, !llvm.loop !108

52:                                               ; preds = %46, %8
  %53 = phi ptr [ %0, %8 ], [ %49, %46 ]
  store i16 0, ptr %53, align 2, !tbaa !86
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  br label %54

54:                                               ; preds = %2, %5, %52
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils17removeDotDotSlashEPtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor.0", align 8
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor.0", align 8
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) #16
  %6 = add nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !72
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %12, ptr noundef nonnull %1) #16
  %13 = load ptr, ptr %1, align 8, !tbaa !72
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #16
          to label %17 unwind label %39

17:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %16, ptr noundef nonnull %1) #16
  %18 = getelementptr inbounds i16, ptr %0, i64 1
  %19 = call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils22searchSlashDotDotSlashEPt(ptr noundef nonnull %18) #16
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %72, label %21

21:                                               ; preds = %17, %66
  %22 = phi i32 [ %70, %66 ], [ %19, %17 ]
  %23 = phi i32 [ %67, %66 ], [ 1, %17 ]
  %24 = add nsw i32 %22, %23
  %25 = add nsw i32 %24, -1
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %0, i32 noundef 0, i32 noundef %25, ptr noundef nonnull %1) #16
          to label %26 unwind label %41

26:                                               ; preds = %21
  %27 = icmp sgt i32 %24, 0
  br i1 %27, label %28, label %64

28:                                               ; preds = %26
  %29 = zext nneg i32 %25 to i64
  br label %30

30:                                               ; preds = %28, %35
  %31 = phi i64 [ %29, %28 ], [ %36, %35 ]
  %32 = getelementptr inbounds i16, ptr %12, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !86
  %34 = call noundef zeroext i1 @_ZN11xercesc_2_716XMLPlatformUtils10isAnySlashEt(i16 noundef zeroext %33) #16
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = add nsw i64 %31, -1
  %37 = trunc i64 %31 to i32
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %30, label %64, !llvm.loop !109

39:                                               ; preds = %2
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %73

41:                                               ; preds = %61, %60, %57, %56, %21
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  br label %73

43:                                               ; preds = %30
  %44 = trunc i64 %31 to i32
  %45 = getelementptr i16, ptr %0, i64 %31
  %46 = getelementptr i16, ptr %45, i64 1
  %47 = load i16, ptr %46, align 2, !tbaa !86
  %48 = icmp eq i16 %47, 46
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = getelementptr i16, ptr %45, i64 2
  %51 = load i16, ptr %50, align 2, !tbaa !86
  %52 = icmp eq i16 %51, 46
  %53 = add nuw nsw i32 %44, 3
  %54 = icmp eq i32 %53, %24
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %64, label %56

56:                                               ; preds = %49, %43
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef nonnull %12, ptr noundef nonnull %0, i32 noundef 0, i32 noundef %44, ptr noundef nonnull %1) #16
          to label %57 unwind label %41

57:                                               ; preds = %56
  %58 = add nuw nsw i32 %24, 3
  %59 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #16
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %16, ptr noundef nonnull %0, i32 noundef %58, i32 noundef %59, ptr noundef nonnull %1) #16
          to label %60 unwind label %41

60:                                               ; preds = %57
  store i16 0, ptr %0, align 2, !tbaa !86
  invoke void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef nonnull %0, ptr noundef nonnull %12) #16
          to label %61 unwind label %41

61:                                               ; preds = %60
  invoke void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef nonnull %0, ptr noundef %16) #16
          to label %62 unwind label %41

62:                                               ; preds = %61
  %63 = call i32 @llvm.umax.i32(i32 %44, i32 1)
  br label %66

64:                                               ; preds = %35, %26, %49
  %65 = add nsw i32 %23, 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i16, ptr %0, i64 %68
  %70 = call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils22searchSlashDotDotSlashEPt(ptr noundef %69) #16
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %21, !llvm.loop !110

72:                                               ; preds = %66, %17
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret void

73:                                               ; preds = %41, %39
  %74 = phi { ptr, i32 } [ %42, %41 ], [ %40, %39 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  resume { ptr, i32 } %74
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !111 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !112

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #16
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !72
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 comdat align 2 !prof !113 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store ptr %1, ptr %0, align 8, !tbaa !114
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #16
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #20
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils22searchSlashDotDotSlashEPt(ptr noundef %0) local_unnamed_addr #8 align 2 !prof !67 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %42, label %3

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !86
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %3
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #16
  %8 = load i16, ptr %0, align 2, !tbaa !86
  %9 = icmp ne i16 %8, 0
  %10 = icmp sgt i32 %7, 3
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %6, %35
  %13 = phi i16 [ %38, %35 ], [ %8, %6 ]
  %14 = phi i32 [ %37, %35 ], [ %7, %6 ]
  %15 = phi ptr [ %36, %35 ], [ %0, %6 ]
  %16 = tail call noundef zeroext i1 @_ZN11xercesc_2_716XMLPlatformUtils10isAnySlashEt(i16 noundef zeroext %13) #16
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = getelementptr inbounds i16, ptr %15, i64 1
  %19 = load i16, ptr %18, align 2, !tbaa !86
  %20 = icmp eq i16 %19, 46
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = getelementptr inbounds i16, ptr %15, i64 2
  %23 = load i16, ptr %22, align 2, !tbaa !86
  %24 = icmp eq i16 %23, 46
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = getelementptr inbounds i16, ptr %15, i64 3
  %27 = load i16, ptr %26, align 2, !tbaa !86
  %28 = tail call noundef zeroext i1 @_ZN11xercesc_2_716XMLPlatformUtils10isAnySlashEt(i16 noundef zeroext %27) #16
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = ptrtoint ptr %15 to i64
  %31 = ptrtoint ptr %0 to i64
  %32 = sub i64 %30, %31
  %33 = lshr exact i64 %32, 1
  %34 = trunc i64 %33 to i32
  br label %42

35:                                               ; preds = %25, %21, %17, %12
  %36 = getelementptr inbounds i16, ptr %15, i64 1
  %37 = add nsw i32 %14, -1
  %38 = load i16, ptr %36, align 2, !tbaa !86
  %39 = icmp ne i16 %38, 0
  %40 = icmp sgt i32 %14, 4
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %12, label %42, !llvm.loop !118

42:                                               ; preds = %35, %6, %29, %1, %3
  %43 = phi i32 [ -1, %3 ], [ -1, %1 ], [ %34, %29 ], [ -1, %6 ], [ -1, %35 ]
  ret i32 %43
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_725XMLPlatformUtilsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !67 {
  ret ptr @_ZN11xercesc_2_76XMLUni32fgXMLPlatformUtilsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_725XMLPlatformUtilsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #16
  invoke void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #16
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #17
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !67 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_725XMLPlatformUtilsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !72
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #8 comdat align 2 !prof !122 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIcE5resetEPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !76 {
  %3 = load ptr, ptr %0, align 8, !tbaa !77
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !123

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !79
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !123

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !72
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #16
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #21
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !77
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !79
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !117 {
  %3 = load ptr, ptr %0, align 8, !tbaa !114
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !124

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !116
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !125

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !72
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #16
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #21
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !114
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !116
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind memory(none) }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!65}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!35 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils16makeTransServiceEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils16makeTransServiceEv, ptr @_ZN11xercesc_2_717IconvTransServiceC1Ev, i64 1}
!37 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils9closeFileEPvPNS_13MemoryManagerE, ptr @fclose, i64 3}
!38 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils9closeFileEPvPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!39 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils9closeFileEPvPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!40 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils8openFileEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9transcodeEPKtPNS_13MemoryManagerE, i64 3}
!41 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils8openFileEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712ArrayJanitorIcEC2EPcPNS_13MemoryManagerE, i64 3}
!42 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils8openFileEPKtPNS_13MemoryManagerE, ptr @fopen, i64 3}
!43 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils8openFileEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712ArrayJanitorIcED2Ev, i64 3}
!44 = !{ptr @_ZN11xercesc_2_712ArrayJanitorIcEC2EPcPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 27}
!45 = !{ptr @_ZN11xercesc_2_712ArrayJanitorIcED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorIcE5resetEPc, i64 27}
!46 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils14readFileBufferEPvjPhPNS_13MemoryManagerE, ptr @fread, i64 1186}
!47 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils14readFileBufferEPvjPhPNS_13MemoryManagerE, ptr @ferror, i64 1186}
!48 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils14readFileBufferEPvjPhPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!49 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils14readFileBufferEPvjPhPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!50 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils11getFullPathEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9transcodeEPKtPNS_13MemoryManagerE, i64 4}
!51 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils11getFullPathEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712ArrayJanitorIcEC2EPcPNS_13MemoryManagerE, i64 4}
!52 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils11getFullPathEPKtPNS_13MemoryManagerE, ptr @realpath, i64 4}
!53 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils11getFullPathEPKtPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!54 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils11getFullPathEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!55 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils11getFullPathEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE, i64 3}
!56 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils11getFullPathEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712ArrayJanitorIcED2Ev, i64 4}
!57 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils10weavePathsEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 2}
!58 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils10weavePathsEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString10copyStringEPtPKt, i64 1}
!59 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils10weavePathsEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716XMLPlatformUtils10isAnySlashEt, i64 1}
!60 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!61 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!62 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!63 = !{ptr @_ZN11xercesc_2_712ArrayJanitorIcE5resetEPc, ptr @_ZdaPv, i64 1}
!64 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!65 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!66 = !{!"function_entry_count", i64 1}
!67 = !{!"function_entry_count", i64 0}
!68 = !{!69, !69, i64 0}
!69 = !{!"any pointer", !70, i64 0}
!70 = !{!"omnipotent char", !71, i64 0}
!71 = !{!"Simple C++ TBAA"}
!72 = !{!73, !73, i64 0}
!73 = !{!"vtable pointer", !71, i64 0}
!74 = !{!"function_entry_count", i64 3}
!75 = !{!"branch_weights", i32 4, i32 1}
!76 = !{!"function_entry_count", i64 27}
!77 = !{!78, !69, i64 0}
!78 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIcEE", !69, i64 0, !69, i64 8}
!79 = !{!78, !69, i64 8}
!80 = !{!"function_entry_count", i64 1186}
!81 = !{!"branch_weights", i32 1187, i32 1}
!82 = distinct !{!82, !83}
!83 = !{!"llvm.loop.mustprogress"}
!84 = !{!"function_entry_count", i64 4}
!85 = !{!"branch_weights", i32 1, i32 5}
!86 = !{!87, !87, i64 0}
!87 = !{!"short", !70, i64 0}
!88 = !{!89, !90, i64 0}
!89 = !{!"_ZTS5timeb", !90, i64 0, !87, i64 8, !87, i64 10, !87, i64 12}
!90 = !{!"long", !70, i64 0}
!91 = !{!89, !87, i64 8}
!92 = !{!"function_entry_count", i64 10}
!93 = !{!"function_entry_count", i64 35}
!94 = !{!"function_entry_count", i64 2}
!95 = !{!"branch_weights", i32 3, i32 1}
!96 = !{!97, !97, i64 0}
!97 = !{!"int", !70, i64 0}
!98 = !{!"branch_weights", i32 1, i32 2}
!99 = !{!"branch_weights", i32 2, i32 7}
!100 = !{!"branch_weights", i32 127, i32 321}
!101 = distinct !{!101, !83}
!102 = !{!"function_entry_count", i64 2453164456}
!103 = !{!"branch_weights", i32 1, i32 -1841802839}
!104 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!105 = !{!"branch_weights", i32 408669070, i32 -279908794}
!106 = distinct !{!106, !83}
!107 = !{!"function_entry_count", i64 6}
!108 = distinct !{!108, !83}
!109 = distinct !{!109, !83}
!110 = distinct !{!110, !83}
!111 = !{!"function_entry_count", i64 558789}
!112 = !{!"branch_weights", i32 158605, i32 400186}
!113 = !{!"function_entry_count", i64 52059}
!114 = !{!115, !69, i64 0}
!115 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !69, i64 0, !69, i64 8}
!116 = !{!115, !69, i64 8}
!117 = !{!"function_entry_count", i64 243874}
!118 = distinct !{!118, !83}
!119 = !{!120, !69, i64 40}
!120 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !121, i64 8, !69, i64 16, !97, i64 24, !69, i64 32, !69, i64 40}
!121 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !70, i64 0}
!122 = !{!"function_entry_count", i64 5836268}
!123 = !{!"branch_weights", i32 1, i32 28}
!124 = !{!"branch_weights", i32 191816, i32 52060}
!125 = !{!"branch_weights", i32 1, i32 52060}
