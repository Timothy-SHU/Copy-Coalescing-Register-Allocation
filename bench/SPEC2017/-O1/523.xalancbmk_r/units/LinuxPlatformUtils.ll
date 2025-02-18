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

$_ZN11xercesc_2_712ArrayJanitorIcED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_725XMLPlatformUtilsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_725XMLPlatformUtilsException7getTypeEv = comdat any

$_ZNK11xercesc_2_725XMLPlatformUtilsException9duplicateEv = comdat any

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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15makeNetAccessorEv() local_unnamed_addr #0 align 2 !prof !49 {
  ret ptr null
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils11loadAMsgSetEPKt(ptr noundef %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %2 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !51
  %3 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 16, ptr noundef %2)
          to label %4 unwind label %5

4:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_714InMemMsgLoaderC1EPKt(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %0)
          to label %30 unwind label %7

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %9

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %3, ptr noundef %2) #20
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi { ptr, i32 } [ %8, %7 ], [ %6, %5 ]
  %11 = extractvalue { ptr, i32 } %10, 1
  %12 = extractvalue { ptr, i32 } %10, 0
  %13 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #20
  %14 = icmp eq i32 %11, %13
  %15 = tail call ptr @__cxa_begin_catch(ptr %12) #20
  br i1 %14, label %16, label %17

16:                                               ; preds = %9
  invoke void @__cxa_rethrow() #21
          to label %37 unwind label %28

17:                                               ; preds = %9
  %18 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils18fgUserPanicHandlerE, align 8, !tbaa !51
  %19 = icmp eq ptr %18, null
  %20 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils21fgDefaultPanicHandlerE, align 8
  %21 = select i1 %19, ptr %20, ptr %18
  %22 = load ptr, ptr %21, align 8, !tbaa !55
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  invoke void %24(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 4)
          to label %25 unwind label %26

25:                                               ; preds = %17
  tail call void @__cxa_end_catch()
  br label %30

26:                                               ; preds = %17
  %27 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %32 unwind label %34

28:                                               ; preds = %16
  %29 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %32 unwind label %34

30:                                               ; preds = %4, %25
  %31 = phi ptr [ undef, %25 ], [ %3, %4 ]
  ret ptr %31

32:                                               ; preds = %28, %26
  %33 = phi { ptr, i32 } [ %27, %26 ], [ %29, %28 ]
  resume { ptr, i32 } %33

34:                                               ; preds = %28, %26
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  tail call void @__clang_call_terminate(ptr %36) #22
  unreachable

37:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xercesc_2_714InMemMsgLoaderC1EPKt(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef %0) local_unnamed_addr #1 align 2 !prof !50 {
  %2 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils18fgUserPanicHandlerE, align 8, !tbaa !51
  %3 = icmp eq ptr %2, null
  %4 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils21fgDefaultPanicHandlerE, align 8
  %5 = select i1 %3, ptr %4, ptr %2
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %0)
  ret void
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !50 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #20
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils16makeTransServiceEv() local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !49 {
  %1 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !51
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %1)
  invoke void @_ZN11xercesc_2_717IconvTransServiceC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %3 unwind label %4, !prof !57

3:                                                ; preds = %0
  ret ptr %2

4:                                                ; preds = %0
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %1) #20
  resume { ptr, i32 } %5
}

declare void @_ZN11xercesc_2_717IconvTransServiceC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils10curFilePosEPvPNS_13MemoryManagerE(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %3 = tail call i64 @ftell(ptr noundef %0)
  %4 = trunc i64 %3 to i32
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  invoke void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 187, i32 noundef 40, ptr noundef %1)
          to label %8 unwind label %9

8:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #20
  resume { ptr, i32 } %10

11:                                               ; preds = %2
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_725XMLPlatformUtilsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !55
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils9closeFileEPvPNS_13MemoryManagerE(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %3 = tail call i32 @fclose(ptr noundef %0)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5, !prof !59

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  invoke void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 197, i32 noundef 33, ptr noundef %1)
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #20
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils8fileSizeEPvPNS_13MemoryManagerE(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %3 = tail call i64 @ftell(ptr noundef %0)
  %4 = icmp eq i64 %3, -1
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  invoke void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 207, i32 noundef 32, ptr noundef %1)
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %36

10:                                               ; preds = %2
  %11 = tail call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 2)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  invoke void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str, i32 noundef 212, i32 noundef 34, ptr noundef %1)
          to label %15 unwind label %16

15:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %36

18:                                               ; preds = %10
  %19 = tail call i64 @ftell(ptr noundef %0)
  %20 = icmp eq i64 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  invoke void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull @.str, i32 noundef 217, i32 noundef 34, ptr noundef %1)
          to label %23 unwind label %24

23:                                               ; preds = %21
  tail call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %36

26:                                               ; preds = %18
  %27 = tail call i32 @fseek(ptr noundef %0, i64 noundef %3, i32 noundef 0)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  invoke void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef nonnull @.str, i32 noundef 223, i32 noundef 35, ptr noundef %1)
          to label %31 unwind label %32

31:                                               ; preds = %29
  tail call void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
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
  tail call void @__cxa_free_exception(ptr %37) #20
  resume { ptr, i32 } %38
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils8openFileEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  store ptr %4, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %3, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !62
  %6 = tail call noalias ptr @fopen(ptr noundef %4, ptr noundef nonnull @.str.1)
  call void @_ZN11xercesc_2_712ArrayJanitorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret ptr %6
}

declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %2 = load ptr, ptr %0, align 8, !tbaa !60
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !64

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !64

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !55
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !65

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #23
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #22
  unreachable
}

; Function Attrs: cold mustprogress nofree nounwind uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils8openFileEPKcPNS_13MemoryManagerE(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) local_unnamed_addr #9 align 2 !prof !50 {
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.1)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15openFileToWriteEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  store ptr %4, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %3, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !62
  %6 = tail call noalias ptr @fopen(ptr noundef %4, ptr noundef nonnull @.str.2)
  call void @_ZN11xercesc_2_712ArrayJanitorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret ptr %6
}

; Function Attrs: cold mustprogress nofree nounwind uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15openFileToWriteEPKcPNS_13MemoryManagerE(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) local_unnamed_addr #9 align 2 !prof !50 {
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.2)
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils15openStdInHandleEPNS_13MemoryManagerE(ptr nocapture noundef readnone %0) local_unnamed_addr #8 align 2 !prof !50 {
  %2 = tail call i32 @dup(i32 noundef 0) #20
  %3 = tail call noalias ptr @fdopen(i32 noundef %2, ptr noundef nonnull @.str.1) #20
  ret ptr %3
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @dup(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils14readFileBufferEPvjPhPNS_13MemoryManagerE(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr noundef %3) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !66 {
  %5 = zext i32 %1 to i64
  %6 = tail call i64 @fread(ptr noundef %2, i64 noundef 1, i64 noundef %5, ptr noundef %0)
  %7 = tail call i32 @ferror(ptr noundef %0) #20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !67

9:                                                ; preds = %4
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  invoke void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 280, i32 noundef 37, ptr noundef %3)
          to label %11 unwind label %12

11:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #20
  resume { ptr, i32 } %13

14:                                               ; preds = %4
  %15 = trunc i64 %6 to i32
  ret i32 %15
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils17writeBufferToFileEPvlPKhPNS_13MemoryManagerE(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %5 = icmp ne ptr %0, null
  %6 = icmp sgt i64 %1, 0
  %7 = and i1 %5, %6
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %4
  %11 = tail call i64 @fwrite(ptr noundef nonnull %2, i64 noundef 1, i64 noundef %1, ptr noundef nonnull %0)
  %12 = tail call i32 @ferror(ptr noundef nonnull %0) #20
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %24, %10
  %15 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  invoke void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str, i32 noundef 306, i32 noundef 38, ptr noundef %3)
          to label %16 unwind label %17

16:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %15) #20
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
  %27 = tail call i64 @fwrite(ptr noundef %25, i64 noundef 1, i64 noundef %26, ptr noundef nonnull %0)
  %28 = tail call i32 @ferror(ptr noundef nonnull %0) #20
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %19, label %14, !llvm.loop !68

30:                                               ; preds = %19, %4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils9resetFileEPvPNS_13MemoryManagerE(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %3 = tail call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 0)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  invoke void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 328, i32 noundef 39, ptr noundef %1)
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #20
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils11getFullPathEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = alloca [4097 x i8], align 16
  %5 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  store ptr %5, ptr %3, align 8, !tbaa !60
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %3, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %4) #20
  %7 = call ptr @realpath(ptr noundef %5, ptr noundef nonnull %4) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %16, !prof !72

9:                                                ; preds = %2
  %10 = call ptr @__cxa_allocate_exception(i64 48) #20
  invoke void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 353, i32 noundef 41, ptr noundef %1)
          to label %11 unwind label %12

11:                                               ; preds = %9
  invoke void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
          to label %21 unwind label %14

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %10) #20
  br label %19

14:                                               ; preds = %16, %11
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %19

16:                                               ; preds = %2
  %17 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef nonnull %4, ptr noundef %1)
          to label %18 unwind label %14, !prof !73

18:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %4) #20
  call void @_ZN11xercesc_2_712ArrayJanitorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret ptr %17

19:                                               ; preds = %14, %12
  %20 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %4) #20
  call void @_ZN11xercesc_2_712ArrayJanitorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  resume { ptr, i32 } %20

21:                                               ; preds = %11
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef ptr @realpath(ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #7

declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_716XMLPlatformUtils10isRelativeEPKtPNS_13MemoryManagerE(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) local_unnamed_addr #12 align 2 !prof !49 {
  %3 = load i16, ptr %0, align 2, !tbaa !74
  %4 = icmp ne i16 %3, 0
  %5 = icmp ne i16 %3, 47
  %6 = and i1 %4, %5
  ret i1 %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils19getCurrentDirectoryEPNS_13MemoryManagerE(ptr noundef %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %2 = alloca [4098 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4098, ptr nonnull %2) #20
  %3 = call ptr @getcwd(ptr noundef nonnull %2, i64 noundef 4097) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = call ptr @__cxa_allocate_exception(i64 48) #20
  invoke void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 385, i32 noundef 41, ptr noundef %0)
          to label %7 unwind label %8

7:                                                ; preds = %5
  call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_725XMLPlatformUtilsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %6) #20
  call void @llvm.lifetime.end.p0(i64 4098, ptr nonnull %2) #20
  resume { ptr, i32 } %9

10:                                               ; preds = %1
  %11 = call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef nonnull %3, ptr noundef %0)
  call void @llvm.lifetime.end.p0(i64 4098, ptr nonnull %2) #20
  ret ptr %11
}

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i64 @_ZN11xercesc_2_716XMLPlatformUtils16getCurrentMillisEv() local_unnamed_addr #1 align 2 !prof !50 {
  %1 = alloca %struct.timeb, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #20
  %2 = call i32 @ftime(ptr noundef nonnull %1)
  %3 = load i64, ptr %1, align 8, !tbaa !76
  %4 = mul nsw i64 %3, 1000
  %5 = getelementptr inbounds %struct.timeb, ptr %1, i64 0, i32 1
  %6 = load i16, ptr %5, align 8, !tbaa !79
  %7 = zext i16 %6 to i64
  %8 = add nsw i64 %4, %7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #20
  ret i64 %8
}

declare i32 @ftime(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils12platformInitEv() local_unnamed_addr #0 align 2 !prof !49 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils9makeMutexEPNS_13MemoryManagerE(ptr nocapture noundef readnone %0) local_unnamed_addr #0 align 2 !prof !80 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils10closeMutexEPv(ptr nocapture noundef readnone %0) local_unnamed_addr #0 align 2 !prof !50 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils9lockMutexEPv(ptr nocapture noundef readnone %0) local_unnamed_addr #0 align 2 !prof !81 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils11unlockMutexEPv(ptr nocapture noundef readnone %0) local_unnamed_addr #0 align 2 !prof !81 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #13 align 2 !prof !82 {
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  %5 = icmp eq ptr %4, %2
  br i1 %5, label %6, label %7, !prof !83

6:                                                ; preds = %3
  store ptr %1, ptr %0, align 8, !tbaa !51
  br label %7

7:                                                ; preds = %6, %3
  ret ptr %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicIncrementERi(ptr nocapture noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #13 align 2 !prof !50 {
  %2 = load i32, ptr %0, align 4, !tbaa !84
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr %0, align 4, !tbaa !84
  ret i32 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils15atomicDecrementERi(ptr nocapture noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #13 align 2 !prof !50 {
  %2 = load i32, ptr %0, align 4, !tbaa !84
  %3 = add nsw i32 %2, -1
  store i32 %3, ptr %0, align 4, !tbaa !84
  ret i32 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils12platformTermEv() local_unnamed_addr #0 align 2 !prof !49 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10weavePathsEPKtS2_PNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 2 !prof !49 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %18, label %5, !prof !86

5:                                                ; preds = %3
  %6 = load i16, ptr %0, align 2, !tbaa !74
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %18, label %8, !prof !86

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %10, %8 ], [ %0, %5 ]
  %10 = getelementptr inbounds i16, ptr %9, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !74
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %8, !prof !87, !llvm.loop !88

13:                                               ; preds = %8
  %14 = ptrtoint ptr %10 to i64
  %15 = ptrtoint ptr %0 to i64
  %16 = sub i64 %14, %15
  %17 = lshr exact i64 %16, 1
  br label %18

18:                                               ; preds = %3, %5, %13
  %19 = phi i64 [ %17, %13 ], [ 0, %5 ], [ 0, %3 ]
  %20 = icmp eq ptr %1, null
  br i1 %20, label %34, label %21, !prof !86

21:                                               ; preds = %18
  %22 = load i16, ptr %1, align 2, !tbaa !74
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %34, label %24, !prof !86

24:                                               ; preds = %21, %24
  %25 = phi ptr [ %26, %24 ], [ %1, %21 ]
  %26 = getelementptr inbounds i16, ptr %25, i64 1
  %27 = load i16, ptr %26, align 2, !tbaa !74
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %24, !prof !89, !llvm.loop !88

29:                                               ; preds = %24
  %30 = ptrtoint ptr %26 to i64
  %31 = ptrtoint ptr %1 to i64
  %32 = sub i64 %30, %31
  %33 = lshr exact i64 %32, 1
  br label %34

34:                                               ; preds = %18, %21, %29
  %35 = phi i64 [ %33, %29 ], [ 0, %21 ], [ 0, %18 ]
  %36 = add nuw i64 %35, %19
  %37 = shl i64 %36, 1
  %38 = add i64 %37, 4
  %39 = and i64 %38, 8589934590
  %40 = load ptr, ptr %2, align 8, !tbaa !55
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %39), !prof !90
  store i16 0, ptr %43, align 2, !tbaa !74
  br i1 %4, label %47, label %44, !prof !86

44:                                               ; preds = %34
  %45 = load i16, ptr %0, align 2, !tbaa !74
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %48, !prof !86

47:                                               ; preds = %44, %34
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %43, ptr noundef %1)
  br label %75

48:                                               ; preds = %44, %48
  %49 = phi ptr [ %50, %48 ], [ %0, %44 ]
  %50 = getelementptr inbounds i16, ptr %49, i64 1
  %51 = load i16, ptr %50, align 2, !tbaa !74
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %48, !prof !87, !llvm.loop !88

53:                                               ; preds = %48
  %54 = ptrtoint ptr %0 to i64
  %55 = ptrtoint ptr %50 to i64
  %56 = sub i64 %55, %54
  %57 = lshr exact i64 %56, 1
  %58 = add nuw i64 %57, 4294967295
  %59 = and i64 %58, 4294967295
  %60 = getelementptr inbounds i16, ptr %0, i64 %59
  br label %61

61:                                               ; preds = %53, %64
  %62 = phi ptr [ %65, %64 ], [ %60, %53 ]
  %63 = load i16, ptr %62, align 2, !tbaa !74
  switch i16 %63, label %64 [
    i16 92, label %68
    i16 47, label %68
  ], !prof !91

64:                                               ; preds = %61
  %65 = getelementptr inbounds i16, ptr %62, i64 -1
  %66 = icmp ult ptr %65, %0
  br i1 %66, label %67, label %61, !prof !92, !llvm.loop !93

67:                                               ; preds = %64
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %43, ptr noundef %1)
  br label %75

68:                                               ; preds = %61, %61
  %69 = ptrtoint ptr %62 to i64
  %70 = sub i64 %69, %54
  %71 = ashr exact i64 %70, 1
  %72 = add nsw i64 %71, 1
  %73 = trunc i64 %72 to i32
  tail call void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef nonnull %43, ptr noundef nonnull %0, i32 noundef 0, i32 noundef %73, ptr noundef nonnull %2)
  %74 = getelementptr inbounds i16, ptr %43, i64 %72
  store i16 0, ptr %74, align 2, !tbaa !74
  tail call void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef nonnull %43, ptr noundef %1)
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils14removeDotSlashEPtPNS_13MemoryManagerE(ptr noundef nonnull %43, ptr noundef nonnull %2)
  tail call void @_ZN11xercesc_2_716XMLPlatformUtils17removeDotDotSlashEPtPNS_13MemoryManagerE(ptr noundef nonnull %43, ptr noundef nonnull %2)
  br label %75

75:                                               ; preds = %67, %68, %47
  ret ptr %43
}

declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils14removeDotSlashEPtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor.0", align 8
  %4 = icmp eq ptr %0, null
  br i1 %4, label %81, label %5

5:                                                ; preds = %2
  %6 = load i16, ptr %0, align 2, !tbaa !74
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %81, label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %10, %8 ], [ %0, %5 ]
  %10 = getelementptr inbounds i16, ptr %9, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !74
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %8, !llvm.loop !88

13:                                               ; preds = %8
  %14 = ptrtoint ptr %10 to i64
  %15 = ptrtoint ptr %0 to i64
  %16 = sub i64 %14, %15
  %17 = add i64 %16, 2
  %18 = and i64 %17, 8589934590
  %19 = load ptr, ptr %1, align 8, !tbaa !55
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %18)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %22, ptr nonnull align 2 %0, i64 %18, i1 false)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %13
  %25 = load i16, ptr %22, align 2, !tbaa !74
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %24, %27
  %28 = phi ptr [ %29, %27 ], [ %22, %24 ]
  %29 = getelementptr inbounds i16, ptr %28, i64 1
  %30 = load i16, ptr %29, align 2, !tbaa !74
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %27, !llvm.loop !88

32:                                               ; preds = %27
  %33 = ptrtoint ptr %29 to i64
  %34 = ptrtoint ptr %22 to i64
  %35 = sub i64 %33, %34
  %36 = lshr exact i64 %35, 1
  %37 = trunc i64 %36 to i32
  br label %38

38:                                               ; preds = %13, %24, %32
  %39 = phi i32 [ %37, %32 ], [ 0, %24 ], [ 0, %13 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  store ptr %22, ptr %3, align 8, !tbaa !94
  %40 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %3, i64 0, i32 1
  store ptr %1, ptr %40, align 8, !tbaa !96
  %41 = load i16, ptr %22, align 2, !tbaa !74
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %79, label %43

43:                                               ; preds = %38, %73
  %44 = phi i16 [ %77, %73 ], [ %41, %38 ]
  %45 = phi ptr [ %76, %73 ], [ %0, %38 ]
  %46 = phi i32 [ %75, %73 ], [ %39, %38 ]
  %47 = phi ptr [ %74, %73 ], [ %22, %38 ]
  %48 = icmp sgt i32 %46, 2
  br i1 %48, label %49, label %63

49:                                               ; preds = %43
  switch i16 %44, label %59 [
    i16 92, label %50
    i16 47, label %50
  ]

50:                                               ; preds = %49, %49
  %51 = getelementptr inbounds i16, ptr %47, i64 1
  %52 = load i16, ptr %51, align 2, !tbaa !74
  %53 = icmp eq i16 %52, 46
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = getelementptr inbounds i16, ptr %47, i64 2
  %56 = load i16, ptr %55, align 2, !tbaa !74
  switch i16 %56, label %59 [
    i16 92, label %57
    i16 47, label %57
  ]

57:                                               ; preds = %54, %54
  %58 = add nsw i32 %46, -2
  br label %73

59:                                               ; preds = %50, %54, %49
  %60 = getelementptr inbounds i16, ptr %47, i64 1
  %61 = getelementptr inbounds i16, ptr %45, i64 1
  store i16 %44, ptr %45, align 2, !tbaa !74
  %62 = add nsw i32 %46, -1
  br label %73

63:                                               ; preds = %43
  switch i32 %46, label %73 [
    i32 1, label %64
    i32 2, label %67
  ]

64:                                               ; preds = %63
  %65 = getelementptr inbounds i16, ptr %47, i64 1
  %66 = getelementptr inbounds i16, ptr %45, i64 1
  store i16 %44, ptr %45, align 2, !tbaa !74
  br label %73

67:                                               ; preds = %63
  %68 = getelementptr inbounds i16, ptr %47, i64 1
  %69 = getelementptr inbounds i16, ptr %45, i64 1
  store i16 %44, ptr %45, align 2, !tbaa !74
  %70 = getelementptr inbounds i16, ptr %47, i64 2
  %71 = load i16, ptr %68, align 2, !tbaa !74
  %72 = getelementptr inbounds i16, ptr %45, i64 2
  store i16 %71, ptr %69, align 2, !tbaa !74
  br label %73

73:                                               ; preds = %63, %64, %67, %57, %59
  %74 = phi ptr [ %55, %57 ], [ %60, %59 ], [ %65, %64 ], [ %70, %67 ], [ %47, %63 ]
  %75 = phi i32 [ %58, %57 ], [ %62, %59 ], [ 1, %64 ], [ 2, %67 ], [ %46, %63 ]
  %76 = phi ptr [ %45, %57 ], [ %61, %59 ], [ %66, %64 ], [ %72, %67 ], [ %45, %63 ]
  %77 = load i16, ptr %74, align 2, !tbaa !74
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %43, !llvm.loop !97

79:                                               ; preds = %73, %38
  %80 = phi ptr [ %0, %38 ], [ %76, %73 ]
  store i16 0, ptr %80, align 2, !tbaa !74
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  br label %81

81:                                               ; preds = %2, %5, %79
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_716XMLPlatformUtils17removeDotDotSlashEPtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor.0", align 8
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor.0", align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !74
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %11, %9 ], [ %0, %6 ]
  %11 = getelementptr inbounds i16, ptr %10, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !74
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %9, !llvm.loop !88

14:                                               ; preds = %9
  %15 = ptrtoint ptr %11 to i64
  %16 = ptrtoint ptr %0 to i64
  %17 = sub i64 %15, %16
  %18 = shl i64 %17, 31
  %19 = add i64 %18, 4294967296
  %20 = ashr exact i64 %19, 31
  %21 = and i64 %20, -2
  br label %22

22:                                               ; preds = %2, %6, %14
  %23 = phi i64 [ %21, %14 ], [ 2, %6 ], [ 2, %2 ]
  %24 = load ptr, ptr %1, align 8, !tbaa !55
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %23)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  store ptr %27, ptr %3, align 8, !tbaa !94
  %28 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %3, i64 0, i32 1
  store ptr %1, ptr %28, align 8, !tbaa !96
  %29 = load ptr, ptr %1, align 8, !tbaa !55
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %23)
          to label %33 unwind label %55

33:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  store ptr %32, ptr %4, align 8, !tbaa !94
  %34 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %4, i64 0, i32 1
  store ptr %1, ptr %34, align 8, !tbaa !96
  %35 = getelementptr inbounds i16, ptr %0, i64 1
  %36 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils22searchSlashDotDotSlashEPt(ptr noundef nonnull %35)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %103, label %38

38:                                               ; preds = %33, %97
  %39 = phi i32 [ %101, %97 ], [ %36, %33 ]
  %40 = phi i32 [ %98, %97 ], [ 1, %33 ]
  %41 = add nsw i32 %39, %40
  %42 = add nsw i32 %41, -1
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %27, ptr noundef %0, i32 noundef 0, i32 noundef %42, ptr noundef nonnull %1)
          to label %43 unwind label %57

43:                                               ; preds = %38
  %44 = icmp sgt i32 %41, 0
  br i1 %44, label %45, label %95

45:                                               ; preds = %43
  %46 = zext i32 %42 to i64
  br label %47

47:                                               ; preds = %45, %51
  %48 = phi i64 [ %46, %45 ], [ %52, %51 ]
  %49 = getelementptr inbounds i16, ptr %27, i64 %48
  %50 = load i16, ptr %49, align 2, !tbaa !74
  switch i16 %50, label %51 [
    i16 92, label %59
    i16 47, label %59
  ]

51:                                               ; preds = %47
  %52 = add nsw i64 %48, -1
  %53 = trunc i64 %48 to i32
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %47, label %95, !llvm.loop !98

55:                                               ; preds = %22
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %104

57:                                               ; preds = %92, %91, %89, %72, %38
  %58 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  br label %104

59:                                               ; preds = %47, %47
  %60 = trunc i64 %48 to i32
  %61 = getelementptr i16, ptr %0, i64 %48
  %62 = getelementptr i16, ptr %61, i64 1
  %63 = load i16, ptr %62, align 2, !tbaa !74
  %64 = icmp eq i16 %63, 46
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = getelementptr i16, ptr %61, i64 2
  %67 = load i16, ptr %66, align 2, !tbaa !74
  %68 = icmp eq i16 %67, 46
  %69 = add nuw nsw i32 %60, 3
  %70 = icmp eq i32 %69, %41
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %95, label %72

72:                                               ; preds = %65, %59
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %27, ptr noundef %0, i32 noundef 0, i32 noundef %60, ptr noundef nonnull %1)
          to label %73 unwind label %57

73:                                               ; preds = %72
  %74 = add nuw nsw i32 %41, 3
  br i1 %5, label %89, label %75

75:                                               ; preds = %73
  %76 = load i16, ptr %0, align 2, !tbaa !74
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %75, %78
  %79 = phi ptr [ %80, %78 ], [ %0, %75 ]
  %80 = getelementptr inbounds i16, ptr %79, i64 1
  %81 = load i16, ptr %80, align 2, !tbaa !74
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %78, !llvm.loop !88

83:                                               ; preds = %78
  %84 = ptrtoint ptr %0 to i64
  %85 = ptrtoint ptr %80 to i64
  %86 = sub i64 %85, %84
  %87 = lshr exact i64 %86, 1
  %88 = trunc i64 %87 to i32
  br label %89

89:                                               ; preds = %73, %75, %83
  %90 = phi i32 [ %88, %83 ], [ 0, %75 ], [ 0, %73 ]
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %32, ptr noundef %0, i32 noundef %74, i32 noundef %90, ptr noundef nonnull %1)
          to label %91 unwind label %57

91:                                               ; preds = %89
  store i16 0, ptr %0, align 2, !tbaa !74
  invoke void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef nonnull %0, ptr noundef %27)
          to label %92 unwind label %57

92:                                               ; preds = %91
  invoke void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef nonnull %0, ptr noundef %32)
          to label %93 unwind label %57

93:                                               ; preds = %92
  %94 = tail call i32 @llvm.umax.i32(i32 %60, i32 1)
  br label %97

95:                                               ; preds = %51, %43, %65
  %96 = add nsw i32 %40, 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i16, ptr %0, i64 %99
  %101 = tail call noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils22searchSlashDotDotSlashEPt(ptr noundef %100)
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %38, !llvm.loop !99

103:                                              ; preds = %97, %33
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret void

104:                                              ; preds = %57, %55
  %105 = phi { ptr, i32 } [ %58, %57 ], [ %56, %55 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  resume { ptr, i32 } %105
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !100 {
  %2 = load ptr, ptr %0, align 8, !tbaa !94
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !101

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !102

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !55
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !103

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #23
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #22
  unreachable
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_716XMLPlatformUtils22searchSlashDotDotSlashEPt(ptr noundef %0) local_unnamed_addr #15 align 2 !prof !50 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %48, label %3

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !74
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %48, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !74
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !llvm.loop !88

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  %17 = load i16, ptr %0, align 2, !tbaa !74
  %18 = icmp ne i16 %17, 0
  %19 = icmp sgt i32 %16, 3
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %48

21:                                               ; preds = %11, %41
  %22 = phi i16 [ %44, %41 ], [ %17, %11 ]
  %23 = phi i32 [ %43, %41 ], [ %16, %11 ]
  %24 = phi ptr [ %42, %41 ], [ %0, %11 ]
  switch i16 %22, label %41 [
    i16 92, label %25
    i16 47, label %25
  ]

25:                                               ; preds = %21, %21
  %26 = getelementptr inbounds i16, ptr %24, i64 1
  %27 = load i16, ptr %26, align 2, !tbaa !74
  %28 = icmp eq i16 %27, 46
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = getelementptr inbounds i16, ptr %24, i64 2
  %31 = load i16, ptr %30, align 2, !tbaa !74
  %32 = icmp eq i16 %31, 46
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = getelementptr inbounds i16, ptr %24, i64 3
  %35 = load i16, ptr %34, align 2, !tbaa !74
  switch i16 %35, label %41 [
    i16 92, label %36
    i16 47, label %36
  ]

36:                                               ; preds = %33, %33
  %37 = ptrtoint ptr %24 to i64
  %38 = sub i64 %37, %13
  %39 = lshr exact i64 %38, 1
  %40 = trunc i64 %39 to i32
  br label %48

41:                                               ; preds = %25, %33, %21, %29
  %42 = getelementptr inbounds i16, ptr %24, i64 1
  %43 = add nsw i32 %23, -1
  %44 = load i16, ptr %42, align 2, !tbaa !74
  %45 = icmp ne i16 %44, 0
  %46 = icmp sgt i32 %23, 4
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %21, label %48, !llvm.loop !104

48:                                               ; preds = %41, %11, %36, %1, %3
  %49 = phi i32 [ -1, %3 ], [ -1, %1 ], [ %40, %36 ], [ -1, %11 ], [ -1, %41 ]
  ret i32 %49
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_725XMLPlatformUtilsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !50 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_725XMLPlatformUtilsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !50 {
  ret ptr @_ZN11xercesc_2_76XMLUni32fgXMLPlatformUtilsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_725XMLPlatformUtilsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_725XMLPlatformUtilsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !55
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #20
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind memory(none) }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { noreturn nounwind }
attributes #23 = { builtin nounwind }

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
!35 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils16makeTransServiceEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils16makeTransServiceEv, ptr @_ZN11xercesc_2_717IconvTransServiceC1Ev, i64 1}
!37 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils9closeFileEPvPNS_13MemoryManagerE, ptr @fclose, i64 3}
!38 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils8openFileEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9transcodeEPKtPNS_13MemoryManagerE, i64 3}
!39 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils8openFileEPKtPNS_13MemoryManagerE, ptr @fopen, i64 3}
!40 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils8openFileEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712ArrayJanitorIcED2Ev, i64 3}
!41 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils14readFileBufferEPvjPhPNS_13MemoryManagerE, ptr @fread, i64 1186}
!42 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils14readFileBufferEPvjPhPNS_13MemoryManagerE, ptr @ferror, i64 1186}
!43 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils11getFullPathEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9transcodeEPKtPNS_13MemoryManagerE, i64 4}
!44 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils11getFullPathEPKtPNS_13MemoryManagerE, ptr @realpath, i64 4}
!45 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils11getFullPathEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE, i64 4}
!46 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils11getFullPathEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712ArrayJanitorIcED2Ev, i64 4}
!47 = !{ptr @_ZN11xercesc_2_716XMLPlatformUtils10weavePathsEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString10copyStringEPtPKt, i64 1}
!48 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!49 = !{!"function_entry_count", i64 1}
!50 = !{!"function_entry_count", i64 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C++ TBAA"}
!55 = !{!56, !56, i64 0}
!56 = !{!"vtable pointer", !54, i64 0}
!57 = !{!"branch_weights", i32 1, i32 0}
!58 = !{!"function_entry_count", i64 3}
!59 = !{!"branch_weights", i32 3, i32 0}
!60 = !{!61, !52, i64 0}
!61 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIcEE", !52, i64 0, !52, i64 8}
!62 = !{!61, !52, i64 8}
!63 = !{!"function_entry_count", i64 27}
!64 = !{!"branch_weights", i32 0, i32 27}
!65 = !{!"VP", i32 0, i64 27, i64 -7405368087501025645, i64 27}
!66 = !{!"function_entry_count", i64 1186}
!67 = !{!"branch_weights", i32 1186, i32 0}
!68 = distinct !{!68, !69, !70}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !{!"function_entry_count", i64 4}
!72 = !{!"branch_weights", i32 0, i32 4}
!73 = !{!"branch_weights", i32 4, i32 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"short", !53, i64 0}
!76 = !{!77, !78, i64 0}
!77 = !{!"_ZTS5timeb", !78, i64 0, !75, i64 8, !75, i64 10, !75, i64 12}
!78 = !{!"long", !53, i64 0}
!79 = !{!77, !75, i64 8}
!80 = !{!"function_entry_count", i64 10}
!81 = !{!"function_entry_count", i64 35}
!82 = !{!"function_entry_count", i64 2}
!83 = !{!"branch_weights", i32 2, i32 0}
!84 = !{!85, !85, i64 0}
!85 = !{!"int", !53, i64 0}
!86 = !{!"branch_weights", i32 0, i32 1}
!87 = !{!"branch_weights", i32 1, i32 5}
!88 = distinct !{!88, !69, !70}
!89 = !{!"branch_weights", i32 1, i32 8}
!90 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!91 = !{!"branch_weights", i32 6, i32 0, i32 0}
!92 = !{!"branch_weights", i32 127, i32 641}
!93 = distinct !{!93, !69, !70}
!94 = !{!95, !52, i64 0}
!95 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !52, i64 0, !52, i64 8}
!96 = !{!95, !52, i64 8}
!97 = distinct !{!97, !69, !70}
!98 = distinct !{!98, !69, !70}
!99 = distinct !{!99, !69, !70}
!100 = !{!"function_entry_count", i64 243874}
!101 = !{!"branch_weights", i32 191815, i32 52059}
!102 = !{!"branch_weights", i32 0, i32 52059}
!103 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!104 = distinct !{!104, !69, !70}
!105 = !{!106, !52, i64 40}
!106 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !107, i64 8, !52, i64 16, !85, i64 24, !52, i64 32, !52, i64 40}
!107 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !53, i64 0}
