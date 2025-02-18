; ModuleID = 'blender/intern/ghost/intern/GHOST_EventManager.cpp'
source_filename = "blender/intern/ghost/intern/GHOST_EventManager.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.GHOST_EventManager = type { ptr, %"class.std::deque", %"class.std::vector" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl" }
%"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl" = type { %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data" }
%"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<GHOST_IEventConsumer *, std::allocator<GHOST_IEventConsumer *>>::_Vector_impl" }
%"struct.std::_Vector_base<GHOST_IEventConsumer *, std::allocator<GHOST_IEventConsumer *>>::_Vector_impl" = type { %"struct.std::_Vector_base<GHOST_IEventConsumer *, std::allocator<GHOST_IEventConsumer *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<GHOST_IEventConsumer *, std::allocator<GHOST_IEventConsumer *>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE17_M_initialize_mapEm = comdat any

$_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE15_M_create_nodesEPPS1_S5_ = comdat any

$_ZNSt5dequeIP12GHOST_IEventSaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_ = comdat any

$_ZNSt5dequeIP12GHOST_IEventSaIS1_EE17_M_reallocate_mapEmb = comdat any

$_ZNSt5dequeIP12GHOST_IEventSaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_E = comdat any

$_ZSt24__copy_move_backward_ditILb1EP12GHOST_IEventRS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_ = comdat any

$_ZSt15__copy_move_ditILb1EP12GHOST_IEventRS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_ = comdat any

@_ZTV18GHOST_EventManager = dso_local unnamed_addr constant { [17 x ptr] } { [17 x ptr] [ptr null, ptr @_ZTI18GHOST_EventManager, ptr @_ZN18GHOST_EventManagerD2Ev, ptr @_ZN18GHOST_EventManagerD0Ev, ptr @_ZN18GHOST_EventManager12getNumEventsEv, ptr @_ZN18GHOST_EventManager12getNumEventsE16GHOST_TEventType, ptr @_ZN18GHOST_EventManager9peekEventEv, ptr @_ZN18GHOST_EventManager9pushEventEP12GHOST_IEvent, ptr @_ZN18GHOST_EventManager13dispatchEventEP12GHOST_IEvent, ptr @_ZN18GHOST_EventManager13dispatchEventEv, ptr @_ZN18GHOST_EventManager14dispatchEventsEv, ptr @_ZN18GHOST_EventManager11addConsumerEP20GHOST_IEventConsumer, ptr @_ZN18GHOST_EventManager14removeConsumerEP20GHOST_IEventConsumer, ptr @_ZN18GHOST_EventManager18removeWindowEventsEP13GHOST_IWindow, ptr @_ZN18GHOST_EventManager16removeTypeEventsE16GHOST_TEventTypeP13GHOST_IWindow, ptr @_ZN18GHOST_EventManager8popEventEv, ptr @_ZN18GHOST_EventManager13disposeEventsEv] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS18GHOST_EventManager = dso_local constant [21 x i8] c"18GHOST_EventManager\00", align 1
@_ZTI18GHOST_EventManager = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS18GHOST_EventManager }, align 8
@.str = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN18GHOST_EventManagerC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN18GHOST_EventManagerC2Ev
@_ZN18GHOST_EventManagerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN18GHOST_EventManagerD2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18GHOST_EventManagerC2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  store ptr getelementptr inbounds ({ [17 x ptr] }, ptr @_ZTV18GHOST_EventManager, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  tail call void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %2, i64 noundef 0)
  %3 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN18GHOST_EventManagerD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
  store ptr getelementptr inbounds ({ [17 x ptr] }, ptr @_ZTV18GHOST_EventManager, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %3 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %4 = load ptr, ptr %2, align 8, !tbaa !37
  %5 = load ptr, ptr %3, align 8, !tbaa !37
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %55, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 1
  %9 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 3
  %10 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 2
  br label %11

11:                                               ; preds = %51, %7
  %12 = phi ptr [ %5, %7 ], [ %52, %51 ]
  %13 = load ptr, ptr %8, align 8, !tbaa !41, !noalias !42
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = ashr exact i64 %16, 3
  %18 = icmp ult i64 %17, 64
  br i1 %18, label %30, label %19

19:                                               ; preds = %11
  %20 = load ptr, ptr %9, align 8, !tbaa !45, !noalias !42
  %21 = icmp sgt i64 %17, 0
  %22 = lshr i64 %17, 6
  %23 = or disjoint i64 %22, -288230376151711744
  %24 = select i1 %21, i64 %22, i64 %23
  %25 = getelementptr inbounds ptr, ptr %20, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !46, !noalias !42
  %27 = shl nsw i64 %24, 6
  %28 = sub nsw i64 %17, %27
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  br label %30

30:                                               ; preds = %19, %11
  %31 = phi ptr [ %29, %19 ], [ %12, %11 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %32, align 8, !tbaa !34
  %36 = getelementptr inbounds ptr, ptr %35, i64 1
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(8) %32) #14
  br label %38

38:                                               ; preds = %34, %30
  %39 = load ptr, ptr %3, align 8, !tbaa !47
  %40 = load ptr, ptr %10, align 8, !tbaa !50
  %41 = getelementptr inbounds ptr, ptr %40, i64 -1
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds ptr, ptr %39, i64 1
  br label %51

45:                                               ; preds = %38
  %46 = load ptr, ptr %8, align 8, !tbaa !51
  tail call void @_ZdlPv(ptr noundef %46) #15
  %47 = load ptr, ptr %9, align 8, !tbaa !52
  %48 = getelementptr inbounds ptr, ptr %47, i64 1
  store ptr %48, ptr %9, align 8, !tbaa !45
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  store ptr %49, ptr %8, align 8, !tbaa !41
  %50 = getelementptr inbounds ptr, ptr %49, i64 64
  store ptr %50, ptr %10, align 8, !tbaa !53
  br label %51

51:                                               ; preds = %45, %43
  %52 = phi ptr [ %44, %43 ], [ %49, %45 ]
  store ptr %52, ptr %3, align 8, !tbaa !47
  %53 = load ptr, ptr %2, align 8, !tbaa !37
  %54 = icmp eq ptr %53, %52
  br i1 %54, label %55, label %11, !llvm.loop !54

55:                                               ; preds = %51, %1
  %56 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  %58 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  %60 = icmp eq ptr %57, %59
  br i1 %60, label %86, label %61

61:                                               ; preds = %55, %82
  %62 = phi ptr [ %74, %82 ], [ %57, %55 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %63, align 8, !tbaa !34
  %67 = getelementptr inbounds ptr, ptr %66, i64 1
  %68 = load ptr, ptr %67, align 8
  tail call void %68(ptr noundef nonnull align 8 dereferenceable(8) %63) #14
  br label %69

69:                                               ; preds = %65, %61
  %70 = load ptr, ptr %56, align 8, !tbaa !46
  %71 = ptrtoint ptr %62 to i64
  %72 = ptrtoint ptr %70 to i64
  %73 = sub i64 %71, %72
  %74 = getelementptr inbounds i8, ptr %70, i64 %73
  %75 = getelementptr inbounds ptr, ptr %74, i64 1
  %76 = load ptr, ptr %58, align 8, !tbaa !46
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %69
  %79 = ptrtoint ptr %76 to i64
  %80 = ptrtoint ptr %75 to i64
  %81 = sub i64 %79, %80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %74, ptr nonnull align 8 %75, i64 %81, i1 false)
  br label %82

82:                                               ; preds = %69, %78
  %83 = load ptr, ptr %58, align 8, !tbaa !57
  %84 = getelementptr inbounds ptr, ptr %83, i64 -1
  store ptr %84, ptr %58, align 8, !tbaa !57
  %85 = icmp eq ptr %62, %84
  br i1 %85, label %86, label %61

86:                                               ; preds = %82, %55
  %87 = load ptr, ptr %56, align 8, !tbaa !59
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  tail call void @_ZdlPv(ptr noundef %87) #15
  br label %90

90:                                               ; preds = %86, %89
  %91 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !60
  %93 = icmp eq ptr %92, null
  br i1 %93, label %108, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !52
  %97 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 3, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !61
  %99 = getelementptr inbounds ptr, ptr %98, i64 1
  %100 = icmp ult ptr %96, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %94, %101
  %102 = phi ptr [ %104, %101 ], [ %96, %94 ]
  %103 = load ptr, ptr %102, align 8, !tbaa !46
  tail call void @_ZdlPv(ptr noundef %103) #15
  %104 = getelementptr inbounds ptr, ptr %102, i64 1
  %105 = icmp ult ptr %102, %98
  br i1 %105, label %101, label %106, !llvm.loop !62

106:                                              ; preds = %101, %94
  %107 = load ptr, ptr %91, align 8, !tbaa !60
  tail call void @_ZdlPv(ptr noundef %107) #15
  br label %108

108:                                              ; preds = %90, %106
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN18GHOST_EventManagerD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN18GHOST_EventManagerD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN18GHOST_EventManager12getNumEventsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %3 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %4 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 3, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp ne ptr %5, null
  %13 = sext i1 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = shl nsw i64 %14, 6
  %16 = load ptr, ptr %2, align 8, !tbaa !37
  %17 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 3, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  %19 = ptrtoint ptr %16 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = lshr exact i64 %21, 3
  %23 = add i64 %15, %22
  %24 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = load ptr, ptr %3, align 8, !tbaa !37
  %27 = ptrtoint ptr %25 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = lshr exact i64 %29, 3
  %31 = add i64 %23, %30
  %32 = trunc i64 %31 to i32
  ret i32 %32
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN18GHOST_EventManager12getNumEventsE16GHOST_TEventType(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0, i32 noundef %1) unnamed_addr #0 align 2 {
  %3 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !37, !noalias !63
  %5 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !37, !noalias !66
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %38, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !45, !noalias !63
  %11 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !53, !noalias !63
  br label %13

13:                                               ; preds = %8, %32
  %14 = phi i32 [ %25, %32 ], [ 0, %8 ]
  %15 = phi ptr [ %35, %32 ], [ %10, %8 ]
  %16 = phi ptr [ %34, %32 ], [ %12, %8 ]
  %17 = phi ptr [ %33, %32 ], [ %4, %8 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef i32 %21(ptr noundef nonnull align 8 dereferenceable(8) %18)
  %23 = icmp eq i32 %22, %1
  %24 = zext i1 %23 to i32
  %25 = add i32 %14, %24
  %26 = getelementptr inbounds ptr, ptr %17, i64 1
  %27 = icmp eq ptr %26, %16
  br i1 %27, label %28, label %32

28:                                               ; preds = %13
  %29 = getelementptr inbounds ptr, ptr %15, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = getelementptr inbounds ptr, ptr %30, i64 64
  br label %32

32:                                               ; preds = %13, %28
  %33 = phi ptr [ %30, %28 ], [ %26, %13 ]
  %34 = phi ptr [ %31, %28 ], [ %16, %13 ]
  %35 = phi ptr [ %29, %28 ], [ %15, %13 ]
  %36 = load ptr, ptr %5, align 8, !tbaa !37, !noalias !66
  %37 = icmp eq ptr %33, %36
  br i1 %37, label %38, label %13, !llvm.loop !69

38:                                               ; preds = %32, %2
  %39 = phi i32 [ 0, %2 ], [ %25, %32 ]
  ret i32 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN18GHOST_EventManager9peekEventEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0) unnamed_addr #6 align 2 {
  %2 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %3 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %4 = load ptr, ptr %2, align 8, !tbaa !37
  %5 = load ptr, ptr %3, align 8, !tbaa !37
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !41, !noalias !70
  %10 = icmp eq ptr %4, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 3, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !45, !noalias !70
  %14 = getelementptr inbounds ptr, ptr %13, i64 -1
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = getelementptr inbounds ptr, ptr %15, i64 64
  br label %17

17:                                               ; preds = %7, %11
  %18 = phi ptr [ %16, %11 ], [ %4, %7 ]
  %19 = getelementptr inbounds ptr, ptr %18, i64 -1
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  br label %21

21:                                               ; preds = %17, %1
  %22 = phi ptr [ %20, %17 ], [ null, %1 ]
  ret ptr %22
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN18GHOST_EventManager9pushEventEP12GHOST_IEvent(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %6 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %7 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 3, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = ptrtoint ptr %8 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 3
  %15 = icmp ne ptr %8, null
  %16 = sext i1 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = shl nsw i64 %17, 6
  %19 = load ptr, ptr %5, align 8, !tbaa !37
  %20 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 3, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !41
  %22 = ptrtoint ptr %19 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = ashr exact i64 %24, 3
  %26 = add nsw i64 %18, %25
  %27 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !53
  %29 = load ptr, ptr %6, align 8, !tbaa !37
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = ashr exact i64 %32, 3
  %34 = add nsw i64 %26, %33
  %35 = icmp ult i64 %34, 1152921504606846975
  br i1 %35, label %36, label %45

36:                                               ; preds = %2
  %37 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !51
  %39 = icmp eq ptr %29, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds ptr, ptr %29, i64 -1
  store ptr %1, ptr %41, align 8, !tbaa !46
  %42 = load ptr, ptr %6, align 8, !tbaa !47
  %43 = getelementptr inbounds ptr, ptr %42, i64 -1
  store ptr %43, ptr %6, align 8, !tbaa !47
  br label %45

44:                                               ; preds = %36
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %45

45:                                               ; preds = %44, %40, %2
  %46 = phi i32 [ 0, %2 ], [ 1, %40 ], [ 1, %44 ]
  ret i32 %46
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN18GHOST_EventManager13dispatchEventEP12GHOST_IEvent(ptr nocapture noundef nonnull readonly align 8 dereferenceable(112) %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %25, label %10

10:                                               ; preds = %4, %10
  %11 = phi i8 [ %18, %10 ], [ 1, %4 ]
  %12 = phi ptr [ %19, %10 ], [ %6, %4 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef zeroext i1 %16(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %1)
  %18 = select i1 %17, i8 0, i8 %11
  %19 = getelementptr inbounds ptr, ptr %12, i64 1
  %20 = load ptr, ptr %7, align 8, !tbaa !46
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %10, !llvm.loop !73

22:                                               ; preds = %10
  %23 = and i8 %18, 1
  %24 = icmp ne i8 %23, 0
  br label %25

25:                                               ; preds = %4, %22, %2
  %26 = phi i1 [ false, %2 ], [ true, %4 ], [ %24, %22 ]
  ret i1 %26
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN18GHOST_EventManager13dispatchEventEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 13
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds ptr, ptr %8, i64 6
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef zeroext i1 %10(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull %5)
  %12 = load ptr, ptr %5, align 8, !tbaa !34
  %13 = getelementptr inbounds ptr, ptr %12, i64 1
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  br label %15

15:                                               ; preds = %7, %1
  %16 = phi i1 [ %11, %7 ], [ false, %1 ]
  ret i1 %16
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN18GHOST_EventManager14dispatchEventsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef i32 %4(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %7, %13
  %14 = phi i8 [ %19, %13 ], [ 1, %7 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !34
  %16 = getelementptr inbounds ptr, ptr %15, i64 7
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef zeroext i1 %17(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %19 = select i1 %18, i8 %14, i8 0
  %20 = load ptr, ptr %0, align 8, !tbaa !34
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef i32 %22(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %13, !llvm.loop !74

25:                                               ; preds = %13
  %26 = and i8 %19, 1
  %27 = icmp ne i8 %26, 0
  br label %28

28:                                               ; preds = %25, %7, %1
  %29 = phi i1 [ false, %1 ], [ true, %7 ], [ %27, %25 ]
  ret i1 %29
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN18GHOST_EventManager11addConsumerEP20GHOST_IEventConsumer(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1) unnamed_addr #0 align 2 {
  %3 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = sub i64 %7, %8
  %10 = ashr i64 %9, 5
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = and i64 %9, -32
  %14 = getelementptr i8, ptr %4, i64 %13
  br label %15

15:                                               ; preds = %32, %12
  %16 = phi i64 [ %10, %12 ], [ %34, %32 ]
  %17 = phi ptr [ %4, %12 ], [ %33, %32 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %63, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds ptr, ptr %17, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %57, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds ptr, ptr %17, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %59, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds ptr, ptr %17, i64 3
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %61, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds ptr, ptr %17, i64 4
  %34 = add nsw i64 %16, -1
  %35 = icmp sgt i64 %16, 1
  br i1 %35, label %15, label %36, !llvm.loop !75

36:                                               ; preds = %32, %2
  %37 = phi ptr [ %4, %2 ], [ %14, %32 ]
  %38 = ptrtoint ptr %37 to i64
  %39 = sub i64 %7, %38
  %40 = ashr exact i64 %39, 3
  switch i64 %40, label %63 [
    i64 3, label %41
    i64 2, label %46
    i64 1, label %52
  ]

41:                                               ; preds = %36
  %42 = load ptr, ptr %37, align 8, !tbaa !46
  %43 = icmp eq ptr %42, %1
  br i1 %43, label %63, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds ptr, ptr %37, i64 1
  br label %46

46:                                               ; preds = %44, %36
  %47 = phi ptr [ %37, %36 ], [ %45, %44 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = icmp eq ptr %48, %1
  br i1 %49, label %63, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds ptr, ptr %47, i64 1
  br label %52

52:                                               ; preds = %50, %36
  %53 = phi ptr [ %37, %36 ], [ %51, %50 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  %55 = icmp eq ptr %54, %1
  %56 = select i1 %55, ptr %53, ptr %6
  br label %63

57:                                               ; preds = %20
  %58 = getelementptr inbounds ptr, ptr %17, i64 1
  br label %63

59:                                               ; preds = %24
  %60 = getelementptr inbounds ptr, ptr %17, i64 2
  br label %63

61:                                               ; preds = %28
  %62 = getelementptr inbounds ptr, ptr %17, i64 3
  br label %63

63:                                               ; preds = %15, %57, %59, %61, %36, %41, %46, %52
  %64 = phi ptr [ %37, %41 ], [ %47, %46 ], [ %6, %36 ], [ %56, %52 ], [ %58, %57 ], [ %60, %59 ], [ %62, %61 ], [ %17, %15 ]
  %65 = icmp eq ptr %64, %6
  br i1 %65, label %66, label %110

66:                                               ; preds = %63
  %67 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !76
  %69 = icmp eq ptr %6, %68
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  store ptr %1, ptr %6, align 8, !tbaa !46
  %71 = load ptr, ptr %5, align 8, !tbaa !57
  %72 = getelementptr inbounds ptr, ptr %71, i64 1
  store ptr %72, ptr %5, align 8, !tbaa !57
  br label %110

73:                                               ; preds = %66
  %74 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !57
  %76 = ptrtoint ptr %75 to i64
  %77 = sub i64 %76, %8
  %78 = icmp eq i64 %77, 9223372036854775800
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

80:                                               ; preds = %73
  %81 = ashr exact i64 %77, 3
  %82 = tail call i64 @llvm.umax.i64(i64 %81, i64 1)
  %83 = add i64 %82, %81
  %84 = icmp ult i64 %83, %81
  %85 = tail call i64 @llvm.umin.i64(i64 %83, i64 1152921504606846975)
  %86 = select i1 %84, i64 1152921504606846975, i64 %85
  %87 = ashr exact i64 %9, 3
  %88 = icmp eq i64 %86, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %80
  %90 = shl nuw nsw i64 %86, 3
  %91 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %90) #18
  br label %92

92:                                               ; preds = %89, %80
  %93 = phi ptr [ %91, %89 ], [ null, %80 ]
  %94 = getelementptr inbounds ptr, ptr %93, i64 %87
  store ptr %1, ptr %94, align 8, !tbaa !46
  %95 = icmp sgt i64 %9, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %93, ptr align 8 %4, i64 %9, i1 false)
  br label %97

97:                                               ; preds = %96, %92
  %98 = getelementptr inbounds i8, ptr %93, i64 %9
  %99 = getelementptr inbounds ptr, ptr %98, i64 1
  %100 = sub i64 %76, %7
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %99, ptr align 8 %6, i64 %100, i1 false)
  br label %103

103:                                              ; preds = %102, %97
  %104 = icmp eq ptr %4, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %103
  tail call void @_ZdlPv(ptr noundef %4) #15
  br label %106

106:                                              ; preds = %103, %105
  %107 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %108 = getelementptr inbounds i8, ptr %99, i64 %100
  store ptr %93, ptr %3, align 8, !tbaa !59
  store ptr %108, ptr %74, align 8, !tbaa !57
  %109 = getelementptr inbounds ptr, ptr %93, i64 %86
  store ptr %109, ptr %107, align 8, !tbaa !76
  br label %110

110:                                              ; preds = %106, %70, %63
  %111 = phi i32 [ 0, %63 ], [ 1, %70 ], [ 1, %106 ]
  ret i32 %111
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN18GHOST_EventManager14removeConsumerEP20GHOST_IEventConsumer(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0, ptr noundef readnone %1) unnamed_addr #7 align 2 {
  %3 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = sub i64 %7, %8
  %10 = ashr i64 %9, 5
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %2
  %13 = and i64 %9, -32
  %14 = getelementptr i8, ptr %4, i64 %13
  br label %15

15:                                               ; preds = %32, %12
  %16 = phi i64 [ %10, %12 ], [ %34, %32 ]
  %17 = phi ptr [ %4, %12 ], [ %33, %32 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %63, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds ptr, ptr %17, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %57, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds ptr, ptr %17, i64 2
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %59, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds ptr, ptr %17, i64 3
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = icmp eq ptr %30, %1
  br i1 %31, label %61, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds ptr, ptr %17, i64 4
  %34 = add nsw i64 %16, -1
  %35 = icmp sgt i64 %16, 1
  br i1 %35, label %15, label %36, !llvm.loop !75

36:                                               ; preds = %32, %2
  %37 = phi ptr [ %4, %2 ], [ %14, %32 ]
  %38 = ptrtoint ptr %37 to i64
  %39 = sub i64 %7, %38
  %40 = ashr exact i64 %39, 3
  switch i64 %40, label %63 [
    i64 3, label %41
    i64 2, label %46
    i64 1, label %52
  ]

41:                                               ; preds = %36
  %42 = load ptr, ptr %37, align 8, !tbaa !46
  %43 = icmp eq ptr %42, %1
  br i1 %43, label %63, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds ptr, ptr %37, i64 1
  br label %46

46:                                               ; preds = %44, %36
  %47 = phi ptr [ %37, %36 ], [ %45, %44 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  %49 = icmp eq ptr %48, %1
  br i1 %49, label %63, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds ptr, ptr %47, i64 1
  br label %52

52:                                               ; preds = %50, %36
  %53 = phi ptr [ %37, %36 ], [ %51, %50 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  %55 = icmp eq ptr %54, %1
  %56 = select i1 %55, ptr %53, ptr %6
  br label %63

57:                                               ; preds = %20
  %58 = getelementptr inbounds ptr, ptr %17, i64 1
  br label %63

59:                                               ; preds = %24
  %60 = getelementptr inbounds ptr, ptr %17, i64 2
  br label %63

61:                                               ; preds = %28
  %62 = getelementptr inbounds ptr, ptr %17, i64 3
  br label %63

63:                                               ; preds = %15, %57, %59, %61, %36, %41, %46, %52
  %64 = phi ptr [ %37, %41 ], [ %47, %46 ], [ %6, %36 ], [ %56, %52 ], [ %58, %57 ], [ %60, %59 ], [ %62, %61 ], [ %17, %15 ]
  %65 = icmp eq ptr %64, %6
  br i1 %65, label %78, label %66

66:                                               ; preds = %63
  %67 = ptrtoint ptr %64 to i64
  %68 = sub i64 %67, %8
  %69 = getelementptr inbounds i8, ptr %4, i64 %68
  %70 = getelementptr inbounds ptr, ptr %69, i64 1
  %71 = icmp eq ptr %70, %6
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = ptrtoint ptr %70 to i64
  %74 = sub i64 %7, %73
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %69, ptr nonnull align 8 %70, i64 %74, i1 false)
  br label %75

75:                                               ; preds = %66, %72
  %76 = load ptr, ptr %5, align 8, !tbaa !57
  %77 = getelementptr inbounds ptr, ptr %76, i64 -1
  store ptr %77, ptr %5, align 8, !tbaa !57
  br label %78

78:                                               ; preds = %63, %75
  %79 = phi i32 [ 1, %75 ], [ 0, %63 ]
  ret i32 %79
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18GHOST_EventManager18removeWindowEventsEP13GHOST_IWindow(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef readnone %1) unnamed_addr #0 align 2 {
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  %4 = alloca %"struct.std::_Deque_iterator", align 8
  %5 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !37, !noalias !77
  %8 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 2
  %9 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 3
  %10 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !37, !noalias !80
  %12 = icmp eq ptr %7, %11
  br i1 %12, label %51, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %9, align 8, !tbaa !45, !noalias !77
  %15 = load ptr, ptr %8, align 8, !tbaa !53, !noalias !77
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 1
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 2
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 3
  br label %19

19:                                               ; preds = %13, %45
  %20 = phi ptr [ %14, %13 ], [ %48, %45 ]
  %21 = phi ptr [ %15, %13 ], [ %47, %45 ]
  %22 = phi ptr [ %7, %13 ], [ %46, %45 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds ptr, ptr %24, i64 4
  %26 = load ptr, ptr %25, align 8
  %27 = call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23)
  %28 = icmp eq ptr %27, %1
  br i1 %28, label %29, label %38

29:                                               ; preds = %19
  %30 = load ptr, ptr %23, align 8, !tbaa !34
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8
  call void %32(ptr noundef nonnull align 8 dereferenceable(8) %23) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  store ptr %22, ptr %3, align 8, !tbaa !37, !alias.scope !83, !noalias !86
  %33 = load ptr, ptr %20, align 8, !tbaa !46, !noalias !89
  store ptr %33, ptr %16, align 8, !tbaa !41, !alias.scope !83, !noalias !86
  %34 = getelementptr inbounds ptr, ptr %33, i64 64
  store ptr %34, ptr %17, align 8, !tbaa !53, !alias.scope !83, !noalias !86
  store ptr %20, ptr %18, align 8, !tbaa !45, !alias.scope !83, !noalias !86
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_E(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %4, ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #14
  %35 = load ptr, ptr %6, align 8, !tbaa !37, !noalias !90
  %36 = load ptr, ptr %8, align 8, !tbaa !53, !noalias !90
  %37 = load ptr, ptr %9, align 8, !tbaa !45, !noalias !90
  br label %45

38:                                               ; preds = %19
  %39 = getelementptr inbounds ptr, ptr %22, i64 1
  %40 = icmp eq ptr %39, %21
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = getelementptr inbounds ptr, ptr %20, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = getelementptr inbounds ptr, ptr %43, i64 64
  br label %45

45:                                               ; preds = %41, %38, %29
  %46 = phi ptr [ %35, %29 ], [ %43, %41 ], [ %39, %38 ]
  %47 = phi ptr [ %36, %29 ], [ %44, %41 ], [ %21, %38 ]
  %48 = phi ptr [ %37, %29 ], [ %42, %41 ], [ %20, %38 ]
  %49 = load ptr, ptr %10, align 8, !tbaa !37, !noalias !80
  %50 = icmp eq ptr %46, %49
  br i1 %50, label %51, label %19, !llvm.loop !93

51:                                               ; preds = %45, %2
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18GHOST_EventManager16removeTypeEventsE16GHOST_TEventTypeP13GHOST_IWindow(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef readnone %2) unnamed_addr #0 align 2 {
  %4 = alloca %"struct.std::_Deque_iterator", align 8
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  %6 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !37, !noalias !94
  %9 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 2
  %10 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 3
  %11 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !37, !noalias !97
  %13 = icmp eq ptr %8, %12
  br i1 %13, label %60, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr %10, align 8, !tbaa !45, !noalias !94
  %16 = load ptr, ptr %9, align 8, !tbaa !53, !noalias !94
  %17 = icmp eq ptr %2, null
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 1
  %19 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 2
  %20 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 3
  br label %21

21:                                               ; preds = %14, %54
  %22 = phi ptr [ %15, %14 ], [ %57, %54 ]
  %23 = phi ptr [ %16, %14 ], [ %56, %54 ]
  %24 = phi ptr [ %8, %14 ], [ %55, %54 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = call noundef i32 %28(ptr noundef nonnull align 8 dereferenceable(8) %25)
  %30 = icmp eq i32 %29, %1
  br i1 %30, label %31, label %47

31:                                               ; preds = %21
  br i1 %17, label %38, label %32

32:                                               ; preds = %31
  %33 = load ptr, ptr %25, align 8, !tbaa !34
  %34 = getelementptr inbounds ptr, ptr %33, i64 4
  %35 = load ptr, ptr %34, align 8
  %36 = call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %25)
  %37 = icmp eq ptr %36, %2
  br i1 %37, label %38, label %47

38:                                               ; preds = %31, %32
  %39 = load ptr, ptr %25, align 8, !tbaa !34
  %40 = getelementptr inbounds ptr, ptr %39, i64 1
  %41 = load ptr, ptr %40, align 8
  call void %41(ptr noundef nonnull align 8 dereferenceable(8) %25) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4)
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  store ptr %24, ptr %4, align 8, !tbaa !37, !alias.scope !100, !noalias !103
  %42 = load ptr, ptr %22, align 8, !tbaa !46, !noalias !106
  store ptr %42, ptr %18, align 8, !tbaa !41, !alias.scope !100, !noalias !103
  %43 = getelementptr inbounds ptr, ptr %42, i64 64
  store ptr %43, ptr %19, align 8, !tbaa !53, !alias.scope !100, !noalias !103
  store ptr %22, ptr %20, align 8, !tbaa !45, !alias.scope !100, !noalias !103
  call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_E(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  %44 = load ptr, ptr %7, align 8, !tbaa !37, !noalias !107
  %45 = load ptr, ptr %9, align 8, !tbaa !53, !noalias !107
  %46 = load ptr, ptr %10, align 8, !tbaa !45, !noalias !107
  br label %54

47:                                               ; preds = %32, %21
  %48 = getelementptr inbounds ptr, ptr %24, i64 1
  %49 = icmp eq ptr %48, %23
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = getelementptr inbounds ptr, ptr %22, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = getelementptr inbounds ptr, ptr %52, i64 64
  br label %54

54:                                               ; preds = %50, %47, %38
  %55 = phi ptr [ %44, %38 ], [ %52, %50 ], [ %48, %47 ]
  %56 = phi ptr [ %45, %38 ], [ %53, %50 ], [ %23, %47 ]
  %57 = phi ptr [ %46, %38 ], [ %51, %50 ], [ %22, %47 ]
  %58 = load ptr, ptr %11, align 8, !tbaa !37, !noalias !97
  %59 = icmp eq ptr %55, %58
  br i1 %59, label %60, label %21, !llvm.loop !110

60:                                               ; preds = %54, %3
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN18GHOST_EventManager8popEventEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !34
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(112) %0)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !111
  %10 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 3, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !112
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds ptr, ptr %9, i64 -1
  br label %23

15:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %11) #15
  %16 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 3, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !61
  %18 = getelementptr inbounds ptr, ptr %17, i64 -1
  store ptr %18, ptr %16, align 8, !tbaa !45
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  store ptr %19, ptr %10, align 8, !tbaa !41
  %20 = getelementptr inbounds ptr, ptr %19, i64 64
  %21 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 3, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !53
  %22 = getelementptr inbounds ptr, ptr %19, i64 63
  br label %23

23:                                               ; preds = %13, %15
  %24 = phi ptr [ %14, %13 ], [ %22, %15 ]
  store ptr %24, ptr %8, align 8, !tbaa !111
  br label %25

25:                                               ; preds = %23, %1
  ret ptr %5
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN18GHOST_EventManager13disposeEventsEv(ptr nocapture noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 3
  %3 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %4 = load ptr, ptr %2, align 8, !tbaa !37
  %5 = load ptr, ptr %3, align 8, !tbaa !37
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %56, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 1
  %9 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 3
  %10 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 2
  %11 = getelementptr inbounds %class.GHOST_EventManager, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 3
  br label %12

12:                                               ; preds = %7, %52
  %13 = phi ptr [ %5, %7 ], [ %53, %52 ]
  %14 = load ptr, ptr %8, align 8, !tbaa !41, !noalias !113
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = ashr exact i64 %17, 3
  %19 = icmp ult i64 %18, 64
  br i1 %19, label %31, label %20

20:                                               ; preds = %12
  %21 = load ptr, ptr %9, align 8, !tbaa !45, !noalias !113
  %22 = icmp sgt i64 %18, 0
  %23 = lshr i64 %18, 6
  %24 = or disjoint i64 %23, -288230376151711744
  %25 = select i1 %22, i64 %23, i64 %24
  %26 = getelementptr inbounds ptr, ptr %21, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !46, !noalias !113
  %28 = shl nsw i64 %25, 6
  %29 = sub nsw i64 %18, %28
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  br label %31

31:                                               ; preds = %12, %20
  %32 = phi ptr [ %30, %20 ], [ %13, %12 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %33, align 8, !tbaa !34
  %37 = getelementptr inbounds ptr, ptr %36, i64 1
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %33) #14
  br label %39

39:                                               ; preds = %35, %31
  %40 = load ptr, ptr %3, align 8, !tbaa !47
  %41 = load ptr, ptr %10, align 8, !tbaa !50
  %42 = getelementptr inbounds ptr, ptr %41, i64 -1
  %43 = icmp eq ptr %40, %42
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds ptr, ptr %40, i64 1
  br label %52

46:                                               ; preds = %39
  %47 = load ptr, ptr %8, align 8, !tbaa !51
  tail call void @_ZdlPv(ptr noundef %47) #15
  %48 = load ptr, ptr %11, align 8, !tbaa !52
  %49 = getelementptr inbounds ptr, ptr %48, i64 1
  store ptr %49, ptr %11, align 8, !tbaa !45
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  store ptr %50, ptr %8, align 8, !tbaa !41
  %51 = getelementptr inbounds ptr, ptr %50, i64 64
  store ptr %51, ptr %10, align 8, !tbaa !53
  br label %52

52:                                               ; preds = %44, %46
  %53 = phi ptr [ %45, %44 ], [ %50, %46 ]
  store ptr %53, ptr %3, align 8, !tbaa !47
  %54 = load ptr, ptr %2, align 8, !tbaa !37
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %56, label %12, !llvm.loop !54

56:                                               ; preds = %52, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = lshr i64 %1, 6
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 5)
  %5 = add nuw nsw i64 %4, 3
  %6 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 1
  store i64 %5, ptr %6, align 8, !tbaa !116
  %7 = add nuw nsw i64 %3, 1
  %8 = shl nuw nsw i64 %5, 3
  %9 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %8) #18
  store ptr %9, ptr %0, align 8, !tbaa !60
  %10 = sub nsw i64 %5, %7
  %11 = lshr i64 %10, 1
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  %13 = getelementptr inbounds ptr, ptr %12, i64 %7
  invoke void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE15_M_create_nodesEPPS1_S5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %12, ptr noundef nonnull %13)
          to label %22 unwind label %14

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = tail call ptr @__cxa_begin_catch(ptr %16) #14
  %18 = load ptr, ptr %0, align 8, !tbaa !60
  tail call void @_ZdlPv(ptr noundef %18) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #17
          to label %41 unwind label %19

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %21 unwind label %38

21:                                               ; preds = %19
  resume { ptr, i32 } %20

22:                                               ; preds = %2
  %23 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %24 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  store ptr %12, ptr %24, align 8, !tbaa !45
  %25 = load ptr, ptr %12, align 8, !tbaa !46
  %26 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !41
  %27 = getelementptr inbounds ptr, ptr %25, i64 64
  %28 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !53
  %29 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %30 = getelementptr inbounds ptr, ptr %12, i64 %3
  %31 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  store ptr %30, ptr %31, align 8, !tbaa !45
  %32 = load ptr, ptr %30, align 8, !tbaa !46
  %33 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  store ptr %32, ptr %33, align 8, !tbaa !41
  %34 = getelementptr inbounds ptr, ptr %32, i64 64
  %35 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 2
  store ptr %34, ptr %35, align 8, !tbaa !53
  store ptr %25, ptr %23, align 8, !tbaa !47
  %36 = and i64 %1, 63
  %37 = getelementptr inbounds ptr, ptr %32, i64 %36
  store ptr %37, ptr %29, align 8, !tbaa !111
  ret void

38:                                               ; preds = %19
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #16
  unreachable

41:                                               ; preds = %14
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE15_M_create_nodesEPPS1_S5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = icmp ult ptr %1, %2
  br i1 %4, label %5, label %25

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %9, %8 ], [ %1, %3 ]
  %7 = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #18
          to label %8 unwind label %11

8:                                                ; preds = %5
  store ptr %7, ptr %6, align 8, !tbaa !46
  %9 = getelementptr inbounds ptr, ptr %6, i64 1
  %10 = icmp ult ptr %9, %2
  br i1 %10, label %5, label %25, !llvm.loop !117

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #14
  %15 = icmp ugt ptr %6, %1
  br i1 %15, label %16, label %21

16:                                               ; preds = %11, %16
  %17 = phi ptr [ %19, %16 ], [ %1, %11 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  tail call void @_ZdlPv(ptr noundef %18) #15
  %19 = getelementptr inbounds ptr, ptr %17, i64 1
  %20 = icmp ult ptr %19, %6
  br i1 %20, label %16, label %21, !llvm.loop !62

21:                                               ; preds = %16, %11
  invoke void @__cxa_rethrow() #17
          to label %29 unwind label %22

22:                                               ; preds = %21
  %23 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %24 unwind label %26

24:                                               ; preds = %22
  resume { ptr, i32 } %23

25:                                               ; preds = %8, %3
  ret void

26:                                               ; preds = %22
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  tail call void @__clang_call_terminate(ptr %28) #16
  unreachable

29:                                               ; preds = %21
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE17_M_push_front_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = shl nsw i64 %15, 6
  %17 = load ptr, ptr %3, align 8, !tbaa !37
  %18 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !41
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 3
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !53
  %27 = load ptr, ptr %4, align 8, !tbaa !37
  %28 = ptrtoint ptr %26 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = ashr exact i64 %30, 3
  %32 = add nsw i64 %24, %31
  %33 = icmp eq i64 %32, 1152921504606846975
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

35:                                               ; preds = %2
  %36 = load ptr, ptr %0, align 8, !tbaa !60
  %37 = icmp eq ptr %8, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  tail call void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext true)
  br label %39

39:                                               ; preds = %35, %38
  %40 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #18
  %41 = load ptr, ptr %7, align 8, !tbaa !52
  %42 = getelementptr inbounds ptr, ptr %41, i64 -1
  store ptr %40, ptr %42, align 8, !tbaa !46
  %43 = load ptr, ptr %7, align 8, !tbaa !52
  %44 = getelementptr inbounds ptr, ptr %43, i64 -1
  store ptr %44, ptr %7, align 8, !tbaa !45
  %45 = load ptr, ptr %44, align 8, !tbaa !46
  %46 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 1
  store ptr %45, ptr %46, align 8, !tbaa !41
  %47 = getelementptr inbounds ptr, ptr %45, i64 64
  store ptr %47, ptr %25, align 8, !tbaa !53
  %48 = getelementptr inbounds ptr, ptr %45, i64 63
  store ptr %48, ptr %4, align 8, !tbaa !47
  %49 = load ptr, ptr %1, align 8, !tbaa !46
  store ptr %49, ptr %48, align 8, !tbaa !46
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !118
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !60
  %20 = sub i64 %15, %13
  %21 = lshr i64 %20, 1
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  %23 = select i1 %2, i64 %1, i64 0
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = icmp ult ptr %24, %7
  %26 = getelementptr inbounds ptr, ptr %5, i64 1
  %27 = icmp eq ptr %26, %7
  br i1 %25, label %28, label %32

28:                                               ; preds = %18
  br i1 %27, label %64, label %29

29:                                               ; preds = %28
  %30 = ptrtoint ptr %26 to i64
  %31 = sub i64 %30, %9
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %24, ptr nonnull align 8 %7, i64 %31, i1 false)
  br label %64

32:                                               ; preds = %18
  br i1 %27, label %64, label %33

33:                                               ; preds = %32
  %34 = ptrtoint ptr %26 to i64
  %35 = sub i64 %34, %9
  %36 = ashr exact i64 %35, 3
  %37 = getelementptr inbounds ptr, ptr %24, i64 %12
  %38 = sub nsw i64 0, %36
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %39, ptr align 8 %7, i64 %35, i1 false)
  br label %64

40:                                               ; preds = %3
  %41 = tail call i64 @llvm.umax.i64(i64 %15, i64 %1)
  %42 = add i64 %15, 2
  %43 = add i64 %42, %41
  %44 = icmp ugt i64 %43, 1152921504606846975
  br i1 %44, label %45, label %49, !prof !119

45:                                               ; preds = %40
  %46 = icmp ugt i64 %43, 2305843009213693951
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

48:                                               ; preds = %45
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

49:                                               ; preds = %40
  %50 = shl nuw nsw i64 %43, 3
  %51 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %50) #18
  %52 = sub i64 %43, %13
  %53 = lshr i64 %52, 1
  %54 = getelementptr inbounds ptr, ptr %51, i64 %53
  %55 = select i1 %2, i64 %1, i64 0
  %56 = getelementptr inbounds ptr, ptr %54, i64 %55
  %57 = getelementptr inbounds ptr, ptr %5, i64 1
  %58 = icmp eq ptr %57, %7
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = ptrtoint ptr %57 to i64
  %61 = sub i64 %60, %9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %56, ptr align 8 %7, i64 %61, i1 false)
  br label %62

62:                                               ; preds = %49, %59
  %63 = load ptr, ptr %0, align 8, !tbaa !60
  tail call void @_ZdlPv(ptr noundef %63) #15
  store ptr %51, ptr %0, align 8, !tbaa !60
  store i64 %43, ptr %14, align 8, !tbaa !116
  br label %64

64:                                               ; preds = %33, %32, %29, %28, %62
  %65 = phi ptr [ %56, %62 ], [ %24, %28 ], [ %24, %29 ], [ %24, %32 ], [ %24, %33 ]
  store ptr %65, ptr %6, align 8, !tbaa !45
  %66 = load ptr, ptr %65, align 8, !tbaa !46
  %67 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 1
  store ptr %66, ptr %67, align 8, !tbaa !41
  %68 = getelementptr inbounds ptr, ptr %66, i64 64
  %69 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 2
  store ptr %68, ptr %69, align 8, !tbaa !53
  %70 = getelementptr inbounds ptr, ptr %65, i64 %12
  %71 = getelementptr inbounds ptr, ptr %70, i64 -1
  store ptr %71, ptr %4, align 8, !tbaa !45
  %72 = load ptr, ptr %71, align 8, !tbaa !46
  %73 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  store ptr %72, ptr %73, align 8, !tbaa !41
  %74 = getelementptr inbounds ptr, ptr %72, i64 64
  %75 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 2
  store ptr %74, ptr %75, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP12GHOST_IEventSaIS1_EE8_M_eraseESt15_Deque_iteratorIS1_RS1_PS1_E(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"struct.std::_Deque_iterator", align 8
  %5 = alloca %"struct.std::_Deque_iterator", align 8
  %6 = alloca %"struct.std::_Deque_iterator", align 8
  %7 = alloca %"struct.std::_Deque_iterator", align 8
  %8 = alloca %"struct.std::_Deque_iterator", align 8
  %9 = alloca %"struct.std::_Deque_iterator", align 8
  %10 = alloca %"struct.std::_Deque_iterator", align 8
  %11 = alloca %"struct.std::_Deque_iterator", align 8
  %12 = load ptr, ptr %2, align 8, !tbaa !37
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !41
  %15 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = getelementptr inbounds ptr, ptr %12, i64 1
  %20 = icmp eq ptr %19, %16
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = getelementptr inbounds ptr, ptr %18, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = getelementptr inbounds ptr, ptr %23, i64 64
  br label %25

25:                                               ; preds = %3, %21
  %26 = phi ptr [ %23, %21 ], [ %19, %3 ]
  %27 = phi ptr [ %23, %21 ], [ %14, %3 ]
  %28 = phi ptr [ %24, %21 ], [ %16, %3 ]
  %29 = phi ptr [ %22, %21 ], [ %18, %3 ]
  %30 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %1, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !37
  %32 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %1, i64 0, i32 2, i32 1
  %33 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %1, i64 0, i32 2, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !53
  %35 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %1, i64 0, i32 2, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !45
  %37 = ptrtoint ptr %18 to i64
  %38 = ptrtoint ptr %36 to i64
  %39 = sub i64 %37, %38
  %40 = ashr exact i64 %39, 3
  %41 = icmp ne ptr %18, null
  %42 = sext i1 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = shl nsw i64 %43, 6
  %45 = ptrtoint ptr %12 to i64
  %46 = ptrtoint ptr %14 to i64
  %47 = sub i64 %45, %46
  %48 = ashr exact i64 %47, 3
  %49 = ptrtoint ptr %34 to i64
  %50 = ptrtoint ptr %31 to i64
  %51 = sub i64 %49, %50
  %52 = ashr exact i64 %51, 3
  %53 = add nsw i64 %52, %48
  %54 = add i64 %53, %44
  %55 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %1, i64 0, i32 3
  %56 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %1, i64 0, i32 3, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !45
  %58 = ptrtoint ptr %57 to i64
  %59 = sub i64 %58, %38
  %60 = ashr exact i64 %59, 3
  %61 = icmp ne ptr %57, null
  %62 = sext i1 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = shl nsw i64 %63, 6
  %65 = load ptr, ptr %55, align 8, !tbaa !37
  %66 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %1, i64 0, i32 3, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !41
  %68 = ptrtoint ptr %65 to i64
  %69 = ptrtoint ptr %67 to i64
  %70 = sub i64 %68, %69
  %71 = ashr exact i64 %70, 3
  %72 = add nsw i64 %71, %52
  %73 = add i64 %72, %64
  %74 = lshr i64 %73, 1
  %75 = icmp ult i64 %54, %74
  br i1 %75, label %76, label %104

76:                                               ; preds = %25
  %77 = icmp eq ptr %12, %31
  br i1 %77, label %89, label %78

78:                                               ; preds = %76
  %79 = load ptr, ptr %32, align 8, !tbaa !41, !noalias !120
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11), !noalias !123
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8), !noalias !126
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9), !noalias !126
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10), !noalias !126
  store ptr %31, ptr %8, align 8, !tbaa !37, !noalias !129
  %80 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %8, i64 0, i32 1
  store ptr %79, ptr %80, align 8, !tbaa !41, !noalias !129
  %81 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %8, i64 0, i32 2
  store ptr %34, ptr %81, align 8, !tbaa !53, !noalias !129
  %82 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %8, i64 0, i32 3
  store ptr %36, ptr %82, align 8, !tbaa !45, !noalias !129
  store ptr %12, ptr %9, align 8, !tbaa !37, !noalias !129
  %83 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %9, i64 0, i32 1
  store ptr %14, ptr %83, align 8, !tbaa !41, !noalias !129
  %84 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %9, i64 0, i32 2
  store ptr %16, ptr %84, align 8, !tbaa !53, !noalias !129
  %85 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %9, i64 0, i32 3
  store ptr %18, ptr %85, align 8, !tbaa !45, !noalias !129
  store ptr %26, ptr %10, align 8, !tbaa !37, !noalias !129
  %86 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %10, i64 0, i32 1
  store ptr %27, ptr %86, align 8, !tbaa !41, !noalias !129
  %87 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %10, i64 0, i32 2
  store ptr %28, ptr %87, align 8, !tbaa !53, !noalias !129
  %88 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %10, i64 0, i32 3
  store ptr %29, ptr %88, align 8, !tbaa !45, !noalias !129
  call void @_ZSt24__copy_move_backward_ditILb1EP12GHOST_IEventRS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %11, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10), !noalias !126
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8), !noalias !126
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9), !noalias !126
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10), !noalias !126
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11), !noalias !123
  br label %89

89:                                               ; preds = %78, %76
  %90 = load ptr, ptr %30, align 8, !tbaa !47
  %91 = load ptr, ptr %33, align 8, !tbaa !50
  %92 = getelementptr inbounds ptr, ptr %91, i64 -1
  %93 = icmp eq ptr %90, %92
  br i1 %93, label %96, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds ptr, ptr %90, i64 1
  br label %102

96:                                               ; preds = %89
  %97 = load ptr, ptr %32, align 8, !tbaa !51
  call void @_ZdlPv(ptr noundef %97) #15
  %98 = load ptr, ptr %35, align 8, !tbaa !52
  %99 = getelementptr inbounds ptr, ptr %98, i64 1
  store ptr %99, ptr %35, align 8, !tbaa !45
  %100 = load ptr, ptr %99, align 8, !tbaa !46
  store ptr %100, ptr %32, align 8, !tbaa !41
  %101 = getelementptr inbounds ptr, ptr %100, i64 64
  store ptr %101, ptr %33, align 8, !tbaa !53
  br label %102

102:                                              ; preds = %94, %96
  %103 = phi ptr [ %95, %94 ], [ %100, %96 ]
  store ptr %103, ptr %30, align 8, !tbaa !47
  br label %132

104:                                              ; preds = %25
  %105 = getelementptr inbounds %"struct.std::_Deque_base<GHOST_IEvent *, std::allocator<GHOST_IEvent *>>::_Deque_impl_data", ptr %1, i64 0, i32 3, i32 2
  %106 = icmp eq ptr %26, %65
  br i1 %106, label %118, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %105, align 8, !tbaa !53, !noalias !132
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7), !noalias !135
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4), !noalias !138
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5), !noalias !138
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6), !noalias !138
  store ptr %26, ptr %4, align 8, !tbaa !37, !noalias !141
  %109 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 1
  store ptr %27, ptr %109, align 8, !tbaa !41, !noalias !141
  %110 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 2
  store ptr %28, ptr %110, align 8, !tbaa !53, !noalias !141
  %111 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %4, i64 0, i32 3
  store ptr %29, ptr %111, align 8, !tbaa !45, !noalias !141
  store ptr %65, ptr %5, align 8, !tbaa !37, !noalias !141
  %112 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i64 0, i32 1
  store ptr %67, ptr %112, align 8, !tbaa !41, !noalias !141
  %113 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i64 0, i32 2
  store ptr %108, ptr %113, align 8, !tbaa !53, !noalias !141
  %114 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %5, i64 0, i32 3
  store ptr %57, ptr %114, align 8, !tbaa !45, !noalias !141
  store ptr %12, ptr %6, align 8, !tbaa !37, !noalias !141
  %115 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i64 0, i32 1
  store ptr %14, ptr %115, align 8, !tbaa !41, !noalias !141
  %116 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i64 0, i32 2
  store ptr %16, ptr %116, align 8, !tbaa !53, !noalias !141
  %117 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %6, i64 0, i32 3
  store ptr %18, ptr %117, align 8, !tbaa !45, !noalias !141
  call void @_ZSt15__copy_move_ditILb1EP12GHOST_IEventRS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %7, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6), !noalias !138
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4), !noalias !138
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5), !noalias !138
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6), !noalias !138
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7), !noalias !135
  br label %118

118:                                              ; preds = %107, %104
  %119 = load ptr, ptr %55, align 8, !tbaa !111
  %120 = load ptr, ptr %66, align 8, !tbaa !112
  %121 = icmp eq ptr %119, %120
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds ptr, ptr %119, i64 -1
  br label %130

124:                                              ; preds = %118
  call void @_ZdlPv(ptr noundef %120) #15
  %125 = load ptr, ptr %56, align 8, !tbaa !61
  %126 = getelementptr inbounds ptr, ptr %125, i64 -1
  store ptr %126, ptr %56, align 8, !tbaa !45
  %127 = load ptr, ptr %126, align 8, !tbaa !46
  store ptr %127, ptr %66, align 8, !tbaa !41
  %128 = getelementptr inbounds ptr, ptr %127, i64 64
  store ptr %128, ptr %105, align 8, !tbaa !53
  %129 = getelementptr inbounds ptr, ptr %127, i64 63
  br label %130

130:                                              ; preds = %122, %124
  %131 = phi ptr [ %123, %122 ], [ %129, %124 ]
  store ptr %131, ptr %55, align 8, !tbaa !111
  br label %132

132:                                              ; preds = %130, %102
  %133 = load ptr, ptr %30, align 8, !tbaa !37, !noalias !144
  %134 = load ptr, ptr %32, align 8, !tbaa !41, !noalias !144
  %135 = load ptr, ptr %33, align 8, !tbaa !53, !noalias !144
  %136 = load ptr, ptr %35, align 8, !tbaa !45, !noalias !144
  call void @llvm.experimental.noalias.scope.decl(metadata !147)
  store ptr %133, ptr %0, align 8, !tbaa !37, !alias.scope !147
  %137 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  store ptr %134, ptr %137, align 8, !tbaa !41, !alias.scope !147
  %138 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  store ptr %135, ptr %138, align 8, !tbaa !53, !alias.scope !147
  %139 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  store ptr %136, ptr %139, align 8, !tbaa !45, !alias.scope !147
  %140 = ptrtoint ptr %133 to i64
  %141 = ptrtoint ptr %134 to i64
  %142 = sub i64 %140, %141
  %143 = ashr exact i64 %142, 3
  %144 = add nsw i64 %143, %54
  %145 = icmp ult i64 %144, 64
  br i1 %145, label %146, label %148

146:                                              ; preds = %132
  %147 = getelementptr inbounds ptr, ptr %133, i64 %54
  br label %159

148:                                              ; preds = %132
  %149 = icmp sgt i64 %144, 0
  %150 = lshr i64 %144, 6
  %151 = or disjoint i64 %150, -288230376151711744
  %152 = select i1 %149, i64 %150, i64 %151
  %153 = getelementptr inbounds ptr, ptr %136, i64 %152
  store ptr %153, ptr %139, align 8, !tbaa !45, !alias.scope !147
  %154 = load ptr, ptr %153, align 8, !tbaa !46, !noalias !147
  store ptr %154, ptr %137, align 8, !tbaa !41, !alias.scope !147
  %155 = getelementptr inbounds ptr, ptr %154, i64 64
  store ptr %155, ptr %138, align 8, !tbaa !53, !alias.scope !147
  %156 = shl nsw i64 %152, 6
  %157 = sub nsw i64 %144, %156
  %158 = getelementptr inbounds ptr, ptr %154, i64 %157
  br label %159

159:                                              ; preds = %146, %148
  %160 = phi ptr [ %158, %148 ], [ %147, %146 ]
  store ptr %160, ptr %0, align 8, !tbaa !37, !alias.scope !147
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt24__copy_move_backward_ditILb1EP12GHOST_IEventRS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %213, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !41
  %13 = load ptr, ptr %2, align 8, !tbaa !37
  %14 = load ptr, ptr %3, align 8, !tbaa !37
  %15 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  %19 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = ptrtoint ptr %13 to i64
  %22 = ptrtoint ptr %12 to i64
  %23 = sub i64 %21, %22
  %24 = ashr exact i64 %23, 3
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %77

26:                                               ; preds = %10, %70
  %27 = phi ptr [ %74, %70 ], [ %14, %10 ]
  %28 = phi ptr [ %71, %70 ], [ %16, %10 ]
  %29 = phi ptr [ %72, %70 ], [ %18, %10 ]
  %30 = phi ptr [ %73, %70 ], [ %20, %10 ]
  %31 = phi ptr [ %47, %70 ], [ %13, %10 ]
  %32 = phi i64 [ %75, %70 ], [ %24, %10 ]
  %33 = ptrtoint ptr %27 to i64
  %34 = ptrtoint ptr %28 to i64
  %35 = sub i64 %33, %34
  %36 = ashr exact i64 %35, 3
  %37 = icmp eq ptr %27, %28
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = getelementptr inbounds ptr, ptr %30, i64 -1
  %40 = load ptr, ptr %39, align 8, !tbaa !46, !noalias !150
  %41 = getelementptr inbounds ptr, ptr %40, i64 64
  br label %42

42:                                               ; preds = %38, %26
  %43 = phi i64 [ 64, %38 ], [ %36, %26 ]
  %44 = phi ptr [ %41, %38 ], [ %27, %26 ]
  %45 = tail call i64 @llvm.smin.i64(i64 %43, i64 %32)
  %46 = sub i64 0, %45
  %47 = getelementptr inbounds ptr, ptr %31, i64 %46
  %48 = icmp eq i64 %43, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = shl i64 %45, 3
  %51 = ashr exact i64 %50, 3
  %52 = sub nsw i64 0, %51
  %53 = getelementptr inbounds ptr, ptr %44, i64 %52
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %53, ptr nonnull align 8 %47, i64 %50, i1 false), !noalias !150
  br label %54

54:                                               ; preds = %49, %42
  %55 = sub i64 %36, %45
  %56 = icmp ult i64 %55, 64
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = getelementptr inbounds ptr, ptr %27, i64 %46
  br label %70

59:                                               ; preds = %54
  %60 = icmp sgt i64 %55, 0
  %61 = lshr i64 %55, 6
  %62 = or disjoint i64 %61, -288230376151711744
  %63 = select i1 %60, i64 %61, i64 %62
  %64 = getelementptr inbounds ptr, ptr %30, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !46, !noalias !150
  %66 = getelementptr inbounds ptr, ptr %65, i64 64
  %67 = shl nsw i64 %63, 6
  %68 = sub nsw i64 %55, %67
  %69 = getelementptr inbounds ptr, ptr %65, i64 %68
  br label %70

70:                                               ; preds = %59, %57
  %71 = phi ptr [ %28, %57 ], [ %65, %59 ]
  %72 = phi ptr [ %29, %57 ], [ %66, %59 ]
  %73 = phi ptr [ %30, %57 ], [ %64, %59 ]
  %74 = phi ptr [ %58, %57 ], [ %69, %59 ]
  %75 = sub nsw i64 %32, %45
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %26, label %77, !llvm.loop !153

77:                                               ; preds = %70, %10
  %78 = phi ptr [ %14, %10 ], [ %74, %70 ]
  %79 = phi ptr [ %16, %10 ], [ %71, %70 ]
  %80 = phi ptr [ %18, %10 ], [ %72, %70 ]
  %81 = phi ptr [ %20, %10 ], [ %73, %70 ]
  store ptr %78, ptr %3, align 8, !tbaa.struct !154
  store ptr %79, ptr %15, align 8, !tbaa.struct !155
  store ptr %80, ptr %17, align 8, !tbaa.struct !156
  store ptr %81, ptr %19, align 8, !tbaa.struct !157
  %82 = load ptr, ptr %7, align 8, !tbaa !45
  %83 = getelementptr inbounds ptr, ptr %82, i64 -1
  %84 = load ptr, ptr %5, align 8, !tbaa !45
  %85 = icmp eq ptr %83, %84
  br i1 %85, label %86, label %150

86:                                               ; preds = %209, %77
  %87 = load ptr, ptr %1, align 8, !tbaa !37
  %88 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !53
  %90 = load ptr, ptr %3, align 8, !tbaa !37
  %91 = load ptr, ptr %15, align 8, !tbaa !41
  %92 = load ptr, ptr %17, align 8, !tbaa !53
  %93 = load ptr, ptr %19, align 8, !tbaa !45
  %94 = ptrtoint ptr %89 to i64
  %95 = ptrtoint ptr %87 to i64
  %96 = sub i64 %94, %95
  %97 = ashr exact i64 %96, 3
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %279

99:                                               ; preds = %86, %143
  %100 = phi ptr [ %144, %143 ], [ %93, %86 ]
  %101 = phi ptr [ %145, %143 ], [ %92, %86 ]
  %102 = phi ptr [ %146, %143 ], [ %91, %86 ]
  %103 = phi ptr [ %147, %143 ], [ %90, %86 ]
  %104 = phi ptr [ %120, %143 ], [ %89, %86 ]
  %105 = phi i64 [ %148, %143 ], [ %97, %86 ]
  %106 = ptrtoint ptr %103 to i64
  %107 = ptrtoint ptr %102 to i64
  %108 = sub i64 %106, %107
  %109 = ashr exact i64 %108, 3
  %110 = icmp eq ptr %103, %102
  br i1 %110, label %111, label %115

111:                                              ; preds = %99
  %112 = getelementptr inbounds ptr, ptr %100, i64 -1
  %113 = load ptr, ptr %112, align 8, !tbaa !46, !noalias !158
  %114 = getelementptr inbounds ptr, ptr %113, i64 64
  br label %115

115:                                              ; preds = %111, %99
  %116 = phi i64 [ 64, %111 ], [ %109, %99 ]
  %117 = phi ptr [ %114, %111 ], [ %103, %99 ]
  %118 = tail call i64 @llvm.smin.i64(i64 %116, i64 %105)
  %119 = sub i64 0, %118
  %120 = getelementptr inbounds ptr, ptr %104, i64 %119
  %121 = icmp eq i64 %116, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %115
  %123 = shl i64 %118, 3
  %124 = ashr exact i64 %123, 3
  %125 = sub nsw i64 0, %124
  %126 = getelementptr inbounds ptr, ptr %117, i64 %125
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %126, ptr nonnull align 8 %120, i64 %123, i1 false), !noalias !158
  br label %127

127:                                              ; preds = %122, %115
  %128 = sub i64 %109, %118
  %129 = icmp ult i64 %128, 64
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = getelementptr inbounds ptr, ptr %103, i64 %119
  br label %143

132:                                              ; preds = %127
  %133 = icmp sgt i64 %128, 0
  %134 = lshr i64 %128, 6
  %135 = or disjoint i64 %134, -288230376151711744
  %136 = select i1 %133, i64 %134, i64 %135
  %137 = getelementptr inbounds ptr, ptr %100, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !46, !noalias !158
  %139 = getelementptr inbounds ptr, ptr %138, i64 64
  %140 = shl nsw i64 %136, 6
  %141 = sub nsw i64 %128, %140
  %142 = getelementptr inbounds ptr, ptr %138, i64 %141
  br label %143

143:                                              ; preds = %132, %130
  %144 = phi ptr [ %100, %130 ], [ %137, %132 ]
  %145 = phi ptr [ %101, %130 ], [ %139, %132 ]
  %146 = phi ptr [ %102, %130 ], [ %138, %132 ]
  %147 = phi ptr [ %131, %130 ], [ %142, %132 ]
  %148 = sub nsw i64 %105, %118
  %149 = icmp sgt i64 %148, 0
  br i1 %149, label %99, label %279, !llvm.loop !153

150:                                              ; preds = %77, %209
  %151 = phi ptr [ %210, %209 ], [ %83, %77 ]
  %152 = load ptr, ptr %151, align 8, !tbaa !46
  %153 = getelementptr inbounds ptr, ptr %152, i64 64
  %154 = load ptr, ptr %3, align 8, !tbaa !37
  %155 = load ptr, ptr %15, align 8, !tbaa !41
  %156 = load ptr, ptr %17, align 8, !tbaa !53
  %157 = load ptr, ptr %19, align 8, !tbaa !45
  br label %158

158:                                              ; preds = %202, %150
  %159 = phi ptr [ %157, %150 ], [ %203, %202 ]
  %160 = phi ptr [ %156, %150 ], [ %204, %202 ]
  %161 = phi ptr [ %155, %150 ], [ %205, %202 ]
  %162 = phi ptr [ %154, %150 ], [ %206, %202 ]
  %163 = phi ptr [ %153, %150 ], [ %179, %202 ]
  %164 = phi i64 [ 64, %150 ], [ %207, %202 ]
  %165 = ptrtoint ptr %162 to i64
  %166 = ptrtoint ptr %161 to i64
  %167 = sub i64 %165, %166
  %168 = ashr exact i64 %167, 3
  %169 = icmp eq ptr %162, %161
  br i1 %169, label %170, label %174

170:                                              ; preds = %158
  %171 = getelementptr inbounds ptr, ptr %159, i64 -1
  %172 = load ptr, ptr %171, align 8, !tbaa !46, !noalias !161
  %173 = getelementptr inbounds ptr, ptr %172, i64 64
  br label %174

174:                                              ; preds = %170, %158
  %175 = phi i64 [ 64, %170 ], [ %168, %158 ]
  %176 = phi ptr [ %173, %170 ], [ %162, %158 ]
  %177 = tail call i64 @llvm.smin.i64(i64 %175, i64 %164)
  %178 = sub i64 0, %177
  %179 = getelementptr inbounds ptr, ptr %163, i64 %178
  %180 = icmp eq i64 %175, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %174
  %182 = shl i64 %177, 3
  %183 = ashr exact i64 %182, 3
  %184 = sub nsw i64 0, %183
  %185 = getelementptr inbounds ptr, ptr %176, i64 %184
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %185, ptr nonnull align 8 %179, i64 %182, i1 false), !noalias !161
  br label %186

186:                                              ; preds = %181, %174
  %187 = sub i64 %168, %177
  %188 = icmp ult i64 %187, 64
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = getelementptr inbounds ptr, ptr %162, i64 %178
  br label %202

191:                                              ; preds = %186
  %192 = icmp sgt i64 %187, 0
  %193 = lshr i64 %187, 6
  %194 = or disjoint i64 %193, -288230376151711744
  %195 = select i1 %192, i64 %193, i64 %194
  %196 = getelementptr inbounds ptr, ptr %159, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !46, !noalias !161
  %198 = getelementptr inbounds ptr, ptr %197, i64 64
  %199 = shl nsw i64 %195, 6
  %200 = sub nsw i64 %187, %199
  %201 = getelementptr inbounds ptr, ptr %197, i64 %200
  br label %202

202:                                              ; preds = %191, %189
  %203 = phi ptr [ %159, %189 ], [ %196, %191 ]
  %204 = phi ptr [ %160, %189 ], [ %198, %191 ]
  %205 = phi ptr [ %161, %189 ], [ %197, %191 ]
  %206 = phi ptr [ %190, %189 ], [ %201, %191 ]
  %207 = sub nsw i64 %164, %177
  %208 = icmp sgt i64 %207, 0
  br i1 %208, label %158, label %209, !llvm.loop !153

209:                                              ; preds = %202
  store ptr %206, ptr %3, align 8, !tbaa.struct !154
  store ptr %205, ptr %15, align 8, !tbaa.struct !155
  store ptr %204, ptr %17, align 8, !tbaa.struct !156
  store ptr %203, ptr %19, align 8, !tbaa.struct !157
  %210 = getelementptr inbounds ptr, ptr %151, i64 -1
  %211 = load ptr, ptr %5, align 8, !tbaa !45
  %212 = icmp eq ptr %210, %211
  br i1 %212, label %86, label %150, !llvm.loop !164

213:                                              ; preds = %4
  %214 = load ptr, ptr %1, align 8, !tbaa !37
  %215 = load ptr, ptr %2, align 8, !tbaa !37
  %216 = load ptr, ptr %3, align 8, !tbaa !37
  %217 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !41
  %219 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 2
  %220 = load ptr, ptr %219, align 8, !tbaa !53
  %221 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 3
  %222 = load ptr, ptr %221, align 8, !tbaa !45
  %223 = ptrtoint ptr %215 to i64
  %224 = ptrtoint ptr %214 to i64
  %225 = sub i64 %223, %224
  %226 = ashr exact i64 %225, 3
  %227 = icmp sgt i64 %226, 0
  br i1 %227, label %228, label %279

228:                                              ; preds = %213, %272
  %229 = phi ptr [ %273, %272 ], [ %222, %213 ]
  %230 = phi ptr [ %274, %272 ], [ %220, %213 ]
  %231 = phi ptr [ %275, %272 ], [ %218, %213 ]
  %232 = phi ptr [ %276, %272 ], [ %216, %213 ]
  %233 = phi ptr [ %249, %272 ], [ %215, %213 ]
  %234 = phi i64 [ %277, %272 ], [ %226, %213 ]
  %235 = ptrtoint ptr %232 to i64
  %236 = ptrtoint ptr %231 to i64
  %237 = sub i64 %235, %236
  %238 = ashr exact i64 %237, 3
  %239 = icmp eq ptr %232, %231
  br i1 %239, label %240, label %244

240:                                              ; preds = %228
  %241 = getelementptr inbounds ptr, ptr %229, i64 -1
  %242 = load ptr, ptr %241, align 8, !tbaa !46, !noalias !165
  %243 = getelementptr inbounds ptr, ptr %242, i64 64
  br label %244

244:                                              ; preds = %240, %228
  %245 = phi i64 [ 64, %240 ], [ %238, %228 ]
  %246 = phi ptr [ %243, %240 ], [ %232, %228 ]
  %247 = tail call i64 @llvm.smin.i64(i64 %245, i64 %234)
  %248 = sub i64 0, %247
  %249 = getelementptr inbounds ptr, ptr %233, i64 %248
  %250 = icmp eq i64 %245, 0
  br i1 %250, label %256, label %251

251:                                              ; preds = %244
  %252 = shl i64 %247, 3
  %253 = ashr exact i64 %252, 3
  %254 = sub nsw i64 0, %253
  %255 = getelementptr inbounds ptr, ptr %246, i64 %254
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %255, ptr nonnull align 8 %249, i64 %252, i1 false), !noalias !165
  br label %256

256:                                              ; preds = %251, %244
  %257 = sub i64 %238, %247
  %258 = icmp ult i64 %257, 64
  br i1 %258, label %259, label %261

259:                                              ; preds = %256
  %260 = getelementptr inbounds ptr, ptr %232, i64 %248
  br label %272

261:                                              ; preds = %256
  %262 = icmp sgt i64 %257, 0
  %263 = lshr i64 %257, 6
  %264 = or disjoint i64 %263, -288230376151711744
  %265 = select i1 %262, i64 %263, i64 %264
  %266 = getelementptr inbounds ptr, ptr %229, i64 %265
  %267 = load ptr, ptr %266, align 8, !tbaa !46, !noalias !165
  %268 = getelementptr inbounds ptr, ptr %267, i64 64
  %269 = shl nsw i64 %265, 6
  %270 = sub nsw i64 %257, %269
  %271 = getelementptr inbounds ptr, ptr %267, i64 %270
  br label %272

272:                                              ; preds = %261, %259
  %273 = phi ptr [ %229, %259 ], [ %266, %261 ]
  %274 = phi ptr [ %230, %259 ], [ %268, %261 ]
  %275 = phi ptr [ %231, %259 ], [ %267, %261 ]
  %276 = phi ptr [ %260, %259 ], [ %271, %261 ]
  %277 = sub nsw i64 %234, %247
  %278 = icmp sgt i64 %277, 0
  br i1 %278, label %228, label %279, !llvm.loop !153

279:                                              ; preds = %143, %272, %213, %86
  %280 = phi ptr [ %90, %86 ], [ %216, %213 ], [ %276, %272 ], [ %147, %143 ]
  %281 = phi ptr [ %91, %86 ], [ %218, %213 ], [ %275, %272 ], [ %146, %143 ]
  %282 = phi ptr [ %92, %86 ], [ %220, %213 ], [ %274, %272 ], [ %145, %143 ]
  %283 = phi ptr [ %93, %86 ], [ %222, %213 ], [ %273, %272 ], [ %144, %143 ]
  store ptr %280, ptr %0, align 8, !tbaa !37
  %284 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  store ptr %281, ptr %284, align 8, !tbaa !41
  %285 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  store ptr %282, ptr %285, align 8, !tbaa !53
  %286 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  store ptr %283, ptr %286, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt15__copy_move_ditILb1EP12GHOST_IEventRS1_PS1_St15_Deque_iteratorIS1_S2_S3_EET3_S4_IT0_T1_T2_ESA_S6_(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %6, %8
  %10 = load ptr, ptr %1, align 8, !tbaa !37
  %11 = ptrtoint ptr %10 to i64
  br i1 %9, label %185, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = load ptr, ptr %3, align 8, !tbaa !37
  %16 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !41
  %18 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !53
  %20 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = ptrtoint ptr %14 to i64
  %23 = sub i64 %22, %11
  %24 = ashr exact i64 %23, 3
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %12, %61
  %27 = phi ptr [ %62, %61 ], [ %21, %12 ]
  %28 = phi ptr [ %63, %61 ], [ %19, %12 ]
  %29 = phi ptr [ %64, %61 ], [ %17, %12 ]
  %30 = phi ptr [ %65, %61 ], [ %15, %12 ]
  %31 = phi ptr [ %38, %61 ], [ %10, %12 ]
  %32 = phi i64 [ %66, %61 ], [ %24, %12 ]
  %33 = ptrtoint ptr %28 to i64
  %34 = ptrtoint ptr %30 to i64
  %35 = sub i64 %33, %34
  %36 = ashr exact i64 %35, 3
  %37 = tail call i64 @llvm.smin.i64(i64 %36, i64 %32)
  %38 = getelementptr inbounds ptr, ptr %31, i64 %37
  %39 = icmp eq ptr %28, %30
  br i1 %39, label %42, label %40

40:                                               ; preds = %26
  %41 = shl nsw i64 %37, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %30, ptr align 8 %31, i64 %41, i1 false), !noalias !168
  br label %42

42:                                               ; preds = %40, %26
  %43 = ptrtoint ptr %29 to i64
  %44 = sub i64 %34, %43
  %45 = ashr exact i64 %44, 3
  %46 = add nsw i64 %37, %45
  %47 = icmp ult i64 %46, 64
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = getelementptr inbounds ptr, ptr %30, i64 %37
  br label %61

50:                                               ; preds = %42
  %51 = icmp sgt i64 %46, 0
  %52 = lshr i64 %46, 6
  %53 = or disjoint i64 %52, -288230376151711744
  %54 = select i1 %51, i64 %52, i64 %53
  %55 = getelementptr inbounds ptr, ptr %27, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !46, !noalias !168
  %57 = getelementptr inbounds ptr, ptr %56, i64 64
  %58 = shl nsw i64 %54, 6
  %59 = sub nsw i64 %46, %58
  %60 = getelementptr inbounds ptr, ptr %56, i64 %59
  br label %61

61:                                               ; preds = %50, %48
  %62 = phi ptr [ %27, %48 ], [ %55, %50 ]
  %63 = phi ptr [ %28, %48 ], [ %57, %50 ]
  %64 = phi ptr [ %29, %48 ], [ %56, %50 ]
  %65 = phi ptr [ %49, %48 ], [ %60, %50 ]
  %66 = sub nsw i64 %32, %37
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %26, label %68, !llvm.loop !171

68:                                               ; preds = %61, %12
  %69 = phi ptr [ %21, %12 ], [ %62, %61 ]
  %70 = phi ptr [ %19, %12 ], [ %63, %61 ]
  %71 = phi ptr [ %17, %12 ], [ %64, %61 ]
  %72 = phi ptr [ %15, %12 ], [ %65, %61 ]
  store ptr %72, ptr %3, align 8, !tbaa.struct !154
  store ptr %71, ptr %16, align 8, !tbaa.struct !155
  store ptr %70, ptr %18, align 8, !tbaa.struct !156
  store ptr %69, ptr %20, align 8, !tbaa.struct !157
  %73 = load ptr, ptr %5, align 8, !tbaa !45
  %74 = getelementptr inbounds ptr, ptr %73, i64 1
  %75 = load ptr, ptr %7, align 8, !tbaa !45
  %76 = icmp eq ptr %74, %75
  br i1 %76, label %77, label %132

77:                                               ; preds = %181, %68
  %78 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !41
  %80 = load ptr, ptr %2, align 8, !tbaa !37
  %81 = load ptr, ptr %3, align 8, !tbaa !37
  %82 = load ptr, ptr %16, align 8, !tbaa !41
  %83 = load ptr, ptr %18, align 8, !tbaa !53
  %84 = load ptr, ptr %20, align 8, !tbaa !45
  %85 = ptrtoint ptr %80 to i64
  %86 = ptrtoint ptr %79 to i64
  %87 = sub i64 %85, %86
  %88 = ashr exact i64 %87, 3
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %240

90:                                               ; preds = %77, %125
  %91 = phi ptr [ %126, %125 ], [ %84, %77 ]
  %92 = phi ptr [ %127, %125 ], [ %83, %77 ]
  %93 = phi ptr [ %128, %125 ], [ %82, %77 ]
  %94 = phi ptr [ %129, %125 ], [ %81, %77 ]
  %95 = phi ptr [ %102, %125 ], [ %79, %77 ]
  %96 = phi i64 [ %130, %125 ], [ %88, %77 ]
  %97 = ptrtoint ptr %92 to i64
  %98 = ptrtoint ptr %94 to i64
  %99 = sub i64 %97, %98
  %100 = ashr exact i64 %99, 3
  %101 = tail call i64 @llvm.smin.i64(i64 %100, i64 %96)
  %102 = getelementptr inbounds ptr, ptr %95, i64 %101
  %103 = icmp eq ptr %92, %94
  br i1 %103, label %106, label %104

104:                                              ; preds = %90
  %105 = shl nsw i64 %101, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %94, ptr align 8 %95, i64 %105, i1 false), !noalias !172
  br label %106

106:                                              ; preds = %104, %90
  %107 = ptrtoint ptr %93 to i64
  %108 = sub i64 %98, %107
  %109 = ashr exact i64 %108, 3
  %110 = add nsw i64 %101, %109
  %111 = icmp ult i64 %110, 64
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = getelementptr inbounds ptr, ptr %94, i64 %101
  br label %125

114:                                              ; preds = %106
  %115 = icmp sgt i64 %110, 0
  %116 = lshr i64 %110, 6
  %117 = or disjoint i64 %116, -288230376151711744
  %118 = select i1 %115, i64 %116, i64 %117
  %119 = getelementptr inbounds ptr, ptr %91, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !46, !noalias !172
  %121 = getelementptr inbounds ptr, ptr %120, i64 64
  %122 = shl nsw i64 %118, 6
  %123 = sub nsw i64 %110, %122
  %124 = getelementptr inbounds ptr, ptr %120, i64 %123
  br label %125

125:                                              ; preds = %114, %112
  %126 = phi ptr [ %91, %112 ], [ %119, %114 ]
  %127 = phi ptr [ %92, %112 ], [ %121, %114 ]
  %128 = phi ptr [ %93, %112 ], [ %120, %114 ]
  %129 = phi ptr [ %113, %112 ], [ %124, %114 ]
  %130 = sub nsw i64 %96, %101
  %131 = icmp sgt i64 %130, 0
  br i1 %131, label %90, label %240, !llvm.loop !171

132:                                              ; preds = %68, %181
  %133 = phi ptr [ %182, %181 ], [ %74, %68 ]
  %134 = load ptr, ptr %133, align 8, !tbaa !46
  %135 = load ptr, ptr %3, align 8, !tbaa !37
  %136 = load ptr, ptr %16, align 8, !tbaa !41
  %137 = load ptr, ptr %18, align 8, !tbaa !53
  %138 = load ptr, ptr %20, align 8, !tbaa !45
  br label %139

139:                                              ; preds = %132, %174
  %140 = phi ptr [ %134, %132 ], [ %151, %174 ]
  %141 = phi i64 [ 64, %132 ], [ %179, %174 ]
  %142 = phi ptr [ %135, %132 ], [ %178, %174 ]
  %143 = phi ptr [ %136, %132 ], [ %177, %174 ]
  %144 = phi ptr [ %137, %132 ], [ %176, %174 ]
  %145 = phi ptr [ %138, %132 ], [ %175, %174 ]
  %146 = ptrtoint ptr %144 to i64
  %147 = ptrtoint ptr %142 to i64
  %148 = sub i64 %146, %147
  %149 = ashr exact i64 %148, 3
  %150 = tail call i64 @llvm.smin.i64(i64 %149, i64 %141)
  %151 = getelementptr inbounds ptr, ptr %140, i64 %150
  %152 = icmp eq ptr %144, %142
  br i1 %152, label %155, label %153

153:                                              ; preds = %139
  %154 = shl nsw i64 %150, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %142, ptr align 8 %140, i64 %154, i1 false), !noalias !175
  br label %155

155:                                              ; preds = %153, %139
  %156 = ptrtoint ptr %143 to i64
  %157 = sub i64 %147, %156
  %158 = ashr exact i64 %157, 3
  %159 = add nsw i64 %150, %158
  %160 = icmp ult i64 %159, 64
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = getelementptr inbounds ptr, ptr %142, i64 %150
  br label %174

163:                                              ; preds = %155
  %164 = icmp sgt i64 %159, 0
  %165 = lshr i64 %159, 6
  %166 = or disjoint i64 %165, -288230376151711744
  %167 = select i1 %164, i64 %165, i64 %166
  %168 = getelementptr inbounds ptr, ptr %145, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !46, !noalias !175
  %170 = getelementptr inbounds ptr, ptr %169, i64 64
  %171 = shl nsw i64 %167, 6
  %172 = sub nsw i64 %159, %171
  %173 = getelementptr inbounds ptr, ptr %169, i64 %172
  br label %174

174:                                              ; preds = %163, %161
  %175 = phi ptr [ %145, %161 ], [ %168, %163 ]
  %176 = phi ptr [ %144, %161 ], [ %170, %163 ]
  %177 = phi ptr [ %143, %161 ], [ %169, %163 ]
  %178 = phi ptr [ %162, %161 ], [ %173, %163 ]
  %179 = sub nsw i64 %141, %150
  %180 = icmp sgt i64 %179, 0
  br i1 %180, label %139, label %181, !llvm.loop !171

181:                                              ; preds = %174
  store ptr %178, ptr %3, align 8, !tbaa.struct !154
  store ptr %177, ptr %16, align 8, !tbaa.struct !155
  store ptr %176, ptr %18, align 8, !tbaa.struct !156
  store ptr %175, ptr %20, align 8, !tbaa.struct !157
  %182 = getelementptr inbounds ptr, ptr %133, i64 1
  %183 = load ptr, ptr %7, align 8, !tbaa !45
  %184 = icmp eq ptr %182, %183
  br i1 %184, label %77, label %132, !llvm.loop !178

185:                                              ; preds = %4
  %186 = load ptr, ptr %2, align 8, !tbaa !37
  %187 = load ptr, ptr %3, align 8, !tbaa !37
  %188 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !41
  %190 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 2
  %191 = load ptr, ptr %190, align 8, !tbaa !53
  %192 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 3
  %193 = load ptr, ptr %192, align 8, !tbaa !45
  %194 = ptrtoint ptr %186 to i64
  %195 = sub i64 %194, %11
  %196 = ashr exact i64 %195, 3
  %197 = icmp sgt i64 %196, 0
  br i1 %197, label %198, label %240

198:                                              ; preds = %185, %233
  %199 = phi ptr [ %234, %233 ], [ %193, %185 ]
  %200 = phi ptr [ %235, %233 ], [ %191, %185 ]
  %201 = phi ptr [ %236, %233 ], [ %189, %185 ]
  %202 = phi ptr [ %237, %233 ], [ %187, %185 ]
  %203 = phi ptr [ %210, %233 ], [ %10, %185 ]
  %204 = phi i64 [ %238, %233 ], [ %196, %185 ]
  %205 = ptrtoint ptr %200 to i64
  %206 = ptrtoint ptr %202 to i64
  %207 = sub i64 %205, %206
  %208 = ashr exact i64 %207, 3
  %209 = tail call i64 @llvm.smin.i64(i64 %208, i64 %204)
  %210 = getelementptr inbounds ptr, ptr %203, i64 %209
  %211 = icmp eq ptr %200, %202
  br i1 %211, label %214, label %212

212:                                              ; preds = %198
  %213 = shl nsw i64 %209, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %202, ptr align 8 %203, i64 %213, i1 false), !noalias !179
  br label %214

214:                                              ; preds = %212, %198
  %215 = ptrtoint ptr %201 to i64
  %216 = sub i64 %206, %215
  %217 = ashr exact i64 %216, 3
  %218 = add nsw i64 %209, %217
  %219 = icmp ult i64 %218, 64
  br i1 %219, label %220, label %222

220:                                              ; preds = %214
  %221 = getelementptr inbounds ptr, ptr %202, i64 %209
  br label %233

222:                                              ; preds = %214
  %223 = icmp sgt i64 %218, 0
  %224 = lshr i64 %218, 6
  %225 = or disjoint i64 %224, -288230376151711744
  %226 = select i1 %223, i64 %224, i64 %225
  %227 = getelementptr inbounds ptr, ptr %199, i64 %226
  %228 = load ptr, ptr %227, align 8, !tbaa !46, !noalias !179
  %229 = getelementptr inbounds ptr, ptr %228, i64 64
  %230 = shl nsw i64 %226, 6
  %231 = sub nsw i64 %218, %230
  %232 = getelementptr inbounds ptr, ptr %228, i64 %231
  br label %233

233:                                              ; preds = %222, %220
  %234 = phi ptr [ %199, %220 ], [ %227, %222 ]
  %235 = phi ptr [ %200, %220 ], [ %229, %222 ]
  %236 = phi ptr [ %201, %220 ], [ %228, %222 ]
  %237 = phi ptr [ %221, %220 ], [ %232, %222 ]
  %238 = sub nsw i64 %204, %209
  %239 = icmp sgt i64 %238, 0
  br i1 %239, label %198, label %240, !llvm.loop !171

240:                                              ; preds = %125, %233, %185, %77
  %241 = phi ptr [ %81, %77 ], [ %187, %185 ], [ %237, %233 ], [ %129, %125 ]
  %242 = phi ptr [ %82, %77 ], [ %189, %185 ], [ %236, %233 ], [ %128, %125 ]
  %243 = phi ptr [ %83, %77 ], [ %191, %185 ], [ %235, %233 ], [ %127, %125 ]
  %244 = phi ptr [ %84, %77 ], [ %193, %185 ], [ %234, %233 ], [ %126, %125 ]
  store ptr %241, ptr %0, align 8, !tbaa !37
  %245 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  store ptr %242, ptr %245, align 8, !tbaa !41
  %246 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  store ptr %243, ptr %246, align 8, !tbaa !53
  %247 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  store ptr %244, ptr %247, align 8, !tbaa !45
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"vtable pointer", !36, i64 0}
!36 = !{!"Simple C++ TBAA"}
!37 = !{!38, !39, i64 0}
!38 = !{!"_ZTSSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_E", !39, i64 0, !39, i64 8, !39, i64 16, !39, i64 24}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !36, i64 0}
!41 = !{!38, !39, i64 8}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZStplRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_El: argument 0"}
!44 = distinct !{!44, !"_ZStplRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_El"}
!45 = !{!38, !39, i64 24}
!46 = !{!39, !39, i64 0}
!47 = !{!48, !39, i64 16}
!48 = !{!"_ZTSNSt11_Deque_baseIP12GHOST_IEventSaIS1_EE16_Deque_impl_dataE", !39, i64 0, !49, i64 8, !38, i64 16, !38, i64 48}
!49 = !{!"long", !40, i64 0}
!50 = !{!48, !39, i64 32}
!51 = !{!48, !39, i64 24}
!52 = !{!48, !39, i64 40}
!53 = !{!38, !39, i64 16}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!58, !39, i64 8}
!58 = !{!"_ZTSNSt12_Vector_baseIP20GHOST_IEventConsumerSaIS1_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!59 = !{!58, !39, i64 0}
!60 = !{!48, !39, i64 0}
!61 = !{!48, !39, i64 72}
!62 = distinct !{!62, !55, !56}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv: argument 0"}
!65 = distinct !{!65, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE3endEv: argument 0"}
!68 = distinct !{!68, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE3endEv"}
!69 = distinct !{!69, !55, !56}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE3endEv: argument 0"}
!72 = distinct !{!72, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE3endEv"}
!73 = distinct !{!73, !55, !56}
!74 = distinct !{!74, !55, !56}
!75 = distinct !{!75, !55, !56}
!76 = !{!58, !39, i64 16}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv: argument 0"}
!79 = distinct !{!79, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE3endEv: argument 0"}
!82 = distinct !{!82, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE3endEv"}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZNKSt15_Deque_iteratorIP12GHOST_IEventRKS1_PS2_E13_M_const_castEv: argument 0"}
!85 = distinct !{!85, !"_ZNKSt15_Deque_iteratorIP12GHOST_IEventRKS1_PS2_E13_M_const_castEv"}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5eraseESt15_Deque_iteratorIS1_RKS1_PS5_E: argument 0"}
!88 = distinct !{!88, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5eraseESt15_Deque_iteratorIS1_RKS1_PS5_E"}
!89 = !{!84, !87}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv: argument 0"}
!92 = distinct !{!92, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv"}
!93 = distinct !{!93, !55, !56}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv: argument 0"}
!96 = distinct !{!96, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE3endEv: argument 0"}
!99 = distinct !{!99, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE3endEv"}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZNKSt15_Deque_iteratorIP12GHOST_IEventRKS1_PS2_E13_M_const_castEv: argument 0"}
!102 = distinct !{!102, !"_ZNKSt15_Deque_iteratorIP12GHOST_IEventRKS1_PS2_E13_M_const_castEv"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5eraseESt15_Deque_iteratorIS1_RKS1_PS5_E: argument 0"}
!105 = distinct !{!105, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5eraseESt15_Deque_iteratorIS1_RKS1_PS5_E"}
!106 = !{!101, !104}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv: argument 0"}
!109 = distinct !{!109, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv"}
!110 = distinct !{!110, !55, !56}
!111 = !{!48, !39, i64 48}
!112 = !{!48, !39, i64 56}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZStplRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_El: argument 0"}
!115 = distinct !{!115, !"_ZStplRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_El"}
!116 = !{!48, !49, i64 8}
!117 = distinct !{!117, !55, !56}
!118 = !{!49, !49, i64 0}
!119 = !{!"branch_weights", i32 1, i32 2000}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv: argument 0"}
!122 = distinct !{!122, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv"}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZSt13move_backwardISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_ES5_ET0_T_S7_S6_: argument 0"}
!125 = distinct !{!125, !"_ZSt13move_backwardISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_ES5_ET0_T_S7_S6_"}
!126 = !{!127, !124}
!127 = distinct !{!127, !128, !"_ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_ES5_ET1_T0_S7_S6_: argument 0"}
!128 = distinct !{!128, !"_ZSt22__copy_move_backward_aILb1ESt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_ES5_ET1_T0_S7_S6_"}
!129 = !{!130, !127, !124}
!130 = distinct !{!130, !131, !"_ZSt23__copy_move_backward_a1ILb1EP12GHOST_IEventRS1_PS1_S1_ESt15_Deque_iteratorIT3_RS5_PS5_ES4_IT0_T1_T2_ESC_S8_: argument 0"}
!131 = distinct !{!131, !"_ZSt23__copy_move_backward_a1ILb1EP12GHOST_IEventRS1_PS1_S1_ESt15_Deque_iteratorIT3_RS5_PS5_ES4_IT0_T1_T2_ESC_S8_"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE3endEv: argument 0"}
!134 = distinct !{!134, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE3endEv"}
!135 = !{!136}
!136 = distinct !{!136, !137, !"_ZSt4moveISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_ES5_ET0_T_S7_S6_: argument 0"}
!137 = distinct !{!137, !"_ZSt4moveISt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_ES5_ET0_T_S7_S6_"}
!138 = !{!139, !136}
!139 = distinct !{!139, !140, !"_ZSt13__copy_move_aILb1ESt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_ES5_ET1_T0_S7_S6_: argument 0"}
!140 = distinct !{!140, !"_ZSt13__copy_move_aILb1ESt15_Deque_iteratorIP12GHOST_IEventRS2_PS2_ES5_ET1_T0_S7_S6_"}
!141 = !{!142, !139, !136}
!142 = distinct !{!142, !143, !"_ZSt14__copy_move_a1ILb1EP12GHOST_IEventRS1_PS1_S1_ESt15_Deque_iteratorIT3_RS5_PS5_ES4_IT0_T1_T2_ESC_S8_: argument 0"}
!143 = distinct !{!143, !"_ZSt14__copy_move_a1ILb1EP12GHOST_IEventRS1_PS1_S1_ESt15_Deque_iteratorIT3_RS5_PS5_ES4_IT0_T1_T2_ESC_S8_"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv: argument 0"}
!146 = distinct !{!146, !"_ZNSt5dequeIP12GHOST_IEventSaIS1_EE5beginEv"}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZStplRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_El: argument 0"}
!149 = distinct !{!149, !"_ZStplRKSt15_Deque_iteratorIP12GHOST_IEventRS1_PS1_El"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZSt23__copy_move_backward_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_: argument 0"}
!152 = distinct !{!152, !"_ZSt23__copy_move_backward_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_"}
!153 = distinct !{!153, !55, !56}
!154 = !{i64 0, i64 8, !46, i64 8, i64 8, !46, i64 16, i64 8, !46, i64 24, i64 8, !46}
!155 = !{i64 0, i64 8, !46, i64 8, i64 8, !46, i64 16, i64 8, !46}
!156 = !{i64 0, i64 8, !46, i64 8, i64 8, !46}
!157 = !{i64 0, i64 8, !46}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZSt23__copy_move_backward_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_: argument 0"}
!160 = distinct !{!160, !"_ZSt23__copy_move_backward_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZSt23__copy_move_backward_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_: argument 0"}
!163 = distinct !{!163, !"_ZSt23__copy_move_backward_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_"}
!164 = distinct !{!164, !55, !56}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZSt23__copy_move_backward_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_: argument 0"}
!167 = distinct !{!167, !"_ZSt23__copy_move_backward_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_"}
!168 = !{!169}
!169 = distinct !{!169, !170, !"_ZSt14__copy_move_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_: argument 0"}
!170 = distinct !{!170, !"_ZSt14__copy_move_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_"}
!171 = distinct !{!171, !55, !56}
!172 = !{!173}
!173 = distinct !{!173, !174, !"_ZSt14__copy_move_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_: argument 0"}
!174 = distinct !{!174, !"_ZSt14__copy_move_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_"}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_ZSt14__copy_move_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_: argument 0"}
!177 = distinct !{!177, !"_ZSt14__copy_move_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_"}
!178 = distinct !{!178, !55, !56}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZSt14__copy_move_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_: argument 0"}
!181 = distinct !{!181, !"_ZSt14__copy_move_a1ILb1EPP12GHOST_IEventS1_EN9__gnu_cxx11__enable_ifIXsr23__is_random_access_iterIT0_EE7__valueESt15_Deque_iteratorIT1_RS7_PS7_EE6__typeES5_S5_SA_"}
