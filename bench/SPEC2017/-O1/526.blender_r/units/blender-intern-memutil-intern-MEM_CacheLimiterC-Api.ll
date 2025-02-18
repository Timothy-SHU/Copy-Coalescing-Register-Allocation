; ModuleID = 'blender/intern/memutil/intern/MEM_CacheLimiterC-Api.cpp'
source_filename = "blender/intern/memutil/intern/MEM_CacheLimiterC-Api.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.MEM_CacheLimiterCClass = type { ptr, %class.MEM_CacheLimiter, %"class.std::__cxx11::list.0" }
%class.MEM_CacheLimiter = type { %"class.std::__cxx11::list", ptr, ptr, ptr }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<MEM_CacheLimiterHandle<MEM_CacheLimiterHandleCClass> *, MEM_Allocator<MEM_CacheLimiterHandle<MEM_CacheLimiterHandleCClass> *>>::_List_impl" }
%"struct.std::__cxx11::_List_base<MEM_CacheLimiterHandle<MEM_CacheLimiterHandleCClass> *, MEM_Allocator<MEM_CacheLimiterHandle<MEM_CacheLimiterHandleCClass> *>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%"class.std::__cxx11::list.0" = type { %"class.std::__cxx11::_List_base.1" }
%"class.std::__cxx11::_List_base.1" = type { %"struct.std::__cxx11::_List_base<MEM_CacheLimiterHandleCClass *, MEM_Allocator<MEM_CacheLimiterHandleCClass *>>::_List_impl" }
%"struct.std::__cxx11::_List_base<MEM_CacheLimiterHandleCClass *, MEM_Allocator<MEM_CacheLimiterHandleCClass *>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%class.MEM_CacheLimiterHandleCClass = type { ptr, ptr, %"struct.std::_List_iterator" }
%"struct.std::_List_iterator" = type { ptr }
%"struct.std::_List_node" = type { %"struct.std::__detail::_List_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [8 x i8] }
%class.MEM_CacheLimiterHandle = type { ptr, i32, %"struct.std::_List_iterator.4", ptr }
%"struct.std::_List_iterator.4" = type { ptr }
%"struct.std::_List_node.5" = type { %"struct.std::__detail::_List_node_base", %"struct.__gnu_cxx::__aligned_membuf.6" }
%"struct.__gnu_cxx::__aligned_membuf.6" = type { [8 x i8] }

$__clang_call_terminate = comdat any

$_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE14enforce_limitsEv = comdat any

$_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE38get_least_priority_destroyable_elementEv = comdat any

$_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE19destroy_if_possibleEv = comdat any

@_ZL11is_disabled = internal unnamed_addr global i8 0, align 1
@_ZZL7get_maxvE1m = internal unnamed_addr global i64 33554432, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"STL MEM_Allocator\00", align 1
@MEM_get_memory_in_use = external local_unnamed_addr global ptr, align 8

@_ZN28MEM_CacheLimiterHandleCClassD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN28MEM_CacheLimiterHandleCClassD2Ev
@_ZN22MEM_CacheLimiterCClassD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN22MEM_CacheLimiterCClassD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @MEM_CacheLimiter_set_maximum(i64 noundef %0) local_unnamed_addr #0 {
  store i64 %0, ptr @_ZZL7get_maxvE1m, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i64 @MEM_CacheLimiter_get_maximum() local_unnamed_addr #1 {
  %1 = load i64, ptr @_ZZL7get_maxvE1m, align 8, !tbaa !34
  ret i64 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @MEM_CacheLimiter_set_disabled(i1 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = zext i1 %0 to i8
  store i8 %2, ptr @_ZL11is_disabled, align 1, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @MEM_CacheLimiter_is_disabled() local_unnamed_addr #1 {
  %1 = load i8, ptr @_ZL11is_disabled, align 1, !tbaa !38, !range !40, !noundef !41
  %2 = icmp ne i8 %1, 0
  ret i1 %2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN22MEM_CacheLimiterCClass6insertEPv(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 2
  %4 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12
  store ptr %1, ptr %4, align 8, !tbaa !42
  %5 = getelementptr inbounds %class.MEM_CacheLimiterHandleCClass, ptr %4, i64 0, i32 1
  store ptr %0, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %class.MEM_CacheLimiterHandleCClass, ptr %4, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !47
  %7 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %8 = tail call noundef ptr %7(i64 noundef 24, ptr noundef nonnull @.str)
  %9 = getelementptr inbounds %"struct.std::_List_node", ptr %8, i64 0, i32 1
  store ptr %4, ptr %9, align 8, !tbaa !48
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %3) #13
  %10 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !49
  %12 = add i64 %11, 1
  store i64 %12, ptr %10, align 8, !tbaa !49
  %13 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = getelementptr inbounds %"struct.std::_List_node", ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = getelementptr inbounds %class.MEM_CacheLimiterHandleCClass, ptr %16, i64 0, i32 2
  store ptr %14, ptr %17, align 8, !tbaa.struct !55
  %18 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %13, align 8, !tbaa !54
  %20 = getelementptr inbounds %"struct.std::_List_node", ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #12
  store ptr %21, ptr %22, align 8, !tbaa !56
  %23 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %22, i64 0, i32 1
  store i32 0, ptr %23, align 8, !tbaa !60
  %24 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %22, i64 0, i32 2
  store ptr null, ptr %24, align 8, !tbaa !61
  %25 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %22, i64 0, i32 3
  store ptr %18, ptr %25, align 8, !tbaa !62
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %27 = tail call noundef ptr %26(i64 noundef 24, ptr noundef nonnull @.str)
  %28 = getelementptr inbounds %"struct.std::_List_node.5", ptr %27, i64 0, i32 1
  store ptr %22, ptr %28, align 8, !tbaa !48
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull %18) #13
  %29 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !63
  %31 = add i64 %30, 1
  store i64 %31, ptr %29, align 8, !tbaa !63
  %32 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !54
  %34 = getelementptr inbounds %"struct.std::_List_node.5", ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !48
  %36 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %35, i64 0, i32 2
  %37 = ptrtoint ptr %33 to i64
  store i64 %37, ptr %36, align 8, !tbaa !48
  %38 = load ptr, ptr %32, align 8, !tbaa !54
  %39 = getelementptr inbounds %"struct.std::_List_node.5", ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !48
  ret ptr %40
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22MEM_CacheLimiterCClass8destructEPvSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassE(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !66
  tail call void %4(ptr noundef %1)
  %5 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !49
  %7 = add i64 %6, -1
  store i64 %7, ptr %5, align 8, !tbaa !49
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  invoke void %8(ptr noundef nonnull %2)
          to label %12 unwind label %9

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #14
  unreachable

12:                                               ; preds = %3
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN28MEM_CacheLimiterHandleCClassD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %class.MEM_CacheLimiterHandleCClass, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %class.MEM_CacheLimiterHandleCClass, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa.struct !55
  %9 = load ptr, ptr %6, align 8, !tbaa !66
  invoke void %9(ptr noundef nonnull %2)
          to label %10 unwind label %19

10:                                               ; preds = %4
  %11 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %6, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !49
  %13 = add i64 %12, -1
  store i64 %13, ptr %11, align 8, !tbaa !49
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #13
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  invoke void %14(ptr noundef nonnull %8)
          to label %18 unwind label %15

15:                                               ; preds = %10
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  tail call void @__clang_call_terminate(ptr %17) #14
  unreachable

18:                                               ; preds = %10, %1
  ret void

19:                                               ; preds = %4
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  tail call void @__clang_call_terminate(ptr %21) #14
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN22MEM_CacheLimiterCClassD2Ev(ptr noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %5, label %41

5:                                                ; preds = %68, %1
  %6 = load ptr, ptr %2, align 8, !tbaa !71
  br label %7

7:                                                ; preds = %10, %5
  %8 = phi ptr [ %6, %5 ], [ %11, %10 ]
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %8, align 8, !tbaa !71
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  invoke void %12(ptr noundef nonnull %8)
          to label %7 unwind label %13, !llvm.loop !72

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable

16:                                               ; preds = %7
  %17 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !71
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %20, label %31

20:                                               ; preds = %37, %16
  %21 = load ptr, ptr %17, align 8, !tbaa !71
  br label %22

22:                                               ; preds = %25, %20
  %23 = phi ptr [ %21, %20 ], [ %26, %25 ]
  %24 = icmp eq ptr %23, %17
  br i1 %24, label %40, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %23, align 8, !tbaa !71
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  invoke void %27(ptr noundef nonnull %23)
          to label %22 unwind label %28, !llvm.loop !75

28:                                               ; preds = %25
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #14
  unreachable

31:                                               ; preds = %16, %37
  %32 = phi ptr [ %38, %37 ], [ %18, %16 ]
  %33 = getelementptr inbounds %"struct.std::_List_node.5", ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  tail call void @_ZdlPv(ptr noundef %34) #15
  br label %37

37:                                               ; preds = %36, %31
  %38 = load ptr, ptr %32, align 8, !tbaa !71
  %39 = icmp eq ptr %38, %17
  br i1 %39, label %20, label %31, !llvm.loop !76

40:                                               ; preds = %22
  ret void

41:                                               ; preds = %1, %68
  %42 = phi ptr [ %69, %68 ], [ %3, %1 ]
  %43 = getelementptr inbounds %"struct.std::_List_node", ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !48
  store ptr null, ptr %44, align 8, !tbaa !42
  %45 = load ptr, ptr %43, align 8, !tbaa !48
  %46 = icmp eq ptr %45, null
  br i1 %46, label %68, label %47

47:                                               ; preds = %41
  %48 = load ptr, ptr %45, align 8, !tbaa !42
  %49 = icmp eq ptr %48, null
  br i1 %49, label %67, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %class.MEM_CacheLimiterHandleCClass, ptr %45, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = getelementptr inbounds %class.MEM_CacheLimiterHandleCClass, ptr %45, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa.struct !55
  %55 = load ptr, ptr %52, align 8, !tbaa !66
  invoke void %55(ptr noundef nonnull %48)
          to label %56 unwind label %64

56:                                               ; preds = %50
  %57 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %52, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !49
  %59 = add i64 %58, -1
  store i64 %59, ptr %57, align 8, !tbaa !49
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %54) #13
  %60 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  invoke void %60(ptr noundef nonnull %54)
          to label %67 unwind label %61

61:                                               ; preds = %56
  %62 = landingpad { ptr, i32 }
          catch ptr null
  %63 = extractvalue { ptr, i32 } %62, 0
  tail call void @__clang_call_terminate(ptr %63) #14
  unreachable

64:                                               ; preds = %50
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  tail call void @__clang_call_terminate(ptr %66) #14
  unreachable

67:                                               ; preds = %47, %56
  tail call void @_ZdlPv(ptr noundef %45) #15
  br label %68

68:                                               ; preds = %41, %67
  %69 = load ptr, ptr %42, align 8, !tbaa !71
  %70 = icmp eq ptr %69, %2
  br i1 %70, label %5, label %41, !llvm.loop !77
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @new_MEM_CacheLimiter(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %3 = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #12
  store ptr %0, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %3, i64 0, i32 1
  %5 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %3, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !54
  store ptr %4, ptr %4, align 8, !tbaa !71
  %6 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %3, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  store i64 0, ptr %6, align 8, !tbaa !78
  %7 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %3, i64 0, i32 1, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !79
  %8 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %3, i64 0, i32 2
  %9 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %3, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !54
  store ptr %8, ptr %8, align 8, !tbaa !71
  %10 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %3, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !78
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @delete_MEM_CacheLimiter(ptr noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @_ZN22MEM_CacheLimiterCClassD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #13
  tail call void @_ZdlPv(ptr noundef %0) #15
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local ptr @MEM_CacheLimiter_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 2
  %4 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #12
  store ptr %1, ptr %4, align 8, !tbaa !42
  %5 = getelementptr inbounds %class.MEM_CacheLimiterHandleCClass, ptr %4, i64 0, i32 1
  store ptr %0, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %class.MEM_CacheLimiterHandleCClass, ptr %4, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !47
  %7 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %8 = tail call noundef ptr %7(i64 noundef 24, ptr noundef nonnull @.str)
  %9 = getelementptr inbounds %"struct.std::_List_node", ptr %8, i64 0, i32 1
  store ptr %4, ptr %9, align 8, !tbaa !48
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %3) #13
  %10 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !49
  %12 = add i64 %11, 1
  store i64 %12, ptr %10, align 8, !tbaa !49
  %13 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = getelementptr inbounds %"struct.std::_List_node", ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !48
  %17 = getelementptr inbounds %class.MEM_CacheLimiterHandleCClass, ptr %16, i64 0, i32 2
  store ptr %14, ptr %17, align 8, !tbaa.struct !55
  %18 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %13, align 8, !tbaa !54
  %20 = getelementptr inbounds %"struct.std::_List_node", ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #12
  store ptr %21, ptr %22, align 8, !tbaa !56
  %23 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %22, i64 0, i32 1
  store i32 0, ptr %23, align 8, !tbaa !60
  %24 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %22, i64 0, i32 2
  store ptr null, ptr %24, align 8, !tbaa !61
  %25 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %22, i64 0, i32 3
  store ptr %18, ptr %25, align 8, !tbaa !62
  %26 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %27 = tail call noundef ptr %26(i64 noundef 24, ptr noundef nonnull @.str)
  %28 = getelementptr inbounds %"struct.std::_List_node.5", ptr %27, i64 0, i32 1
  store ptr %22, ptr %28, align 8, !tbaa !48
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull %18) #13
  %29 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !63
  %31 = add i64 %30, 1
  store i64 %31, ptr %29, align 8, !tbaa !63
  %32 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !54
  %34 = getelementptr inbounds %"struct.std::_List_node.5", ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !48
  %36 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %35, i64 0, i32 2
  %37 = ptrtoint ptr %33 to i64
  store i64 %37, ptr %36, align 8, !tbaa !48
  %38 = load ptr, ptr %32, align 8, !tbaa !54
  %39 = getelementptr inbounds %"struct.std::_List_node.5", ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !48
  ret ptr %40
}

; Function Attrs: mustprogress uwtable
define dso_local void @MEM_CacheLimiter_enforce_limits(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 1
  tail call void @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE14enforce_limitsEv(ptr noundef nonnull align 8 dereferenceable(48) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE14enforce_limitsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load i64, ptr @_ZZL7get_maxvE1m, align 8, !tbaa !34
  %3 = load i8, ptr @_ZL11is_disabled, align 1, !tbaa !38, !range !40, !noundef !41
  %4 = icmp ne i8 %3, 0
  %5 = icmp eq i64 %2, 0
  %6 = select i1 %4, i1 true, i1 %5
  br i1 %6, label %63, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %class.MEM_CacheLimiter, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  %10 = icmp eq ptr %9, null
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !71
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %29, label %14

14:                                               ; preds = %11, %14
  %15 = phi ptr [ %24, %14 ], [ %12, %11 ]
  %16 = phi i64 [ %23, %14 ], [ 0, %11 ]
  %17 = load ptr, ptr %8, align 8, !tbaa !79
  %18 = getelementptr inbounds %"struct.std::_List_node.5", ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = tail call noundef i64 %17(ptr noundef %21)
  %23 = add i64 %22, %16
  %24 = load ptr, ptr %15, align 8, !tbaa !71
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %29, label %14, !llvm.loop !80

26:                                               ; preds = %7
  %27 = load ptr, ptr @MEM_get_memory_in_use, align 8, !tbaa !48
  %28 = tail call i64 %27()
  br label %29

29:                                               ; preds = %14, %11, %26
  %30 = phi i64 [ %28, %26 ], [ 0, %11 ], [ %23, %14 ]
  %31 = icmp ugt i64 %30, %2
  br i1 %31, label %32, label %63

32:                                               ; preds = %29, %61
  %33 = phi i64 [ %62, %61 ], [ %30, %29 ]
  %34 = load ptr, ptr %0, align 8, !tbaa !71
  %35 = icmp eq ptr %34, %0
  %36 = icmp ule i64 %33, %2
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %63, label %38

38:                                               ; preds = %32
  %39 = tail call noundef ptr @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE38get_least_priority_destroyable_elementEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %40 = icmp eq ptr %39, null
  br i1 %40, label %61, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %8, align 8, !tbaa !79
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %39, align 8, !tbaa !56
  %46 = load ptr, ptr %45, align 8, !tbaa !42
  %47 = tail call noundef i64 %42(ptr noundef %46)
  br label %48

48:                                               ; preds = %41, %44
  %49 = phi i64 [ %47, %44 ], [ %33, %41 ]
  %50 = tail call noundef zeroext i1 @_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE19destroy_if_possibleEv(ptr noundef nonnull align 8 dereferenceable(32) %39)
  br i1 %50, label %51, label %61

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !tbaa !79
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = sub i64 %33, %49
  br label %61

56:                                               ; preds = %51
  %57 = load ptr, ptr @MEM_get_memory_in_use, align 8, !tbaa !48
  %58 = tail call i64 %57()
  %59 = sub i64 %33, %49
  %60 = add i64 %59, %58
  br label %61

61:                                               ; preds = %48, %56, %54, %38
  %62 = phi i64 [ %33, %38 ], [ %55, %54 ], [ %60, %56 ], [ %33, %48 ]
  br i1 %40, label %63, label %32

63:                                               ; preds = %32, %61, %29, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @MEM_CacheLimiter_unmanage(ptr noundef %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %3, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !63
  %8 = add i64 %7, -1
  store i64 %8, ptr %6, align 8, !tbaa !63
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  invoke void %9(ptr noundef nonnull %5)
          to label %13 unwind label %10

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #14
  unreachable

13:                                               ; preds = %1
  %14 = icmp eq ptr %0, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  tail call void @_ZdlPv(ptr noundef %0) #15
  br label %16

16:                                               ; preds = %13, %15
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @MEM_CacheLimiter_touch(ptr noundef %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = getelementptr inbounds %class.MEM_CacheLimiter, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !48
  %9 = tail call noundef ptr %8(i64 noundef 24, ptr noundef nonnull @.str)
  %10 = getelementptr inbounds %"struct.std::_List_node.5", ptr %9, i64 0, i32 1
  store ptr %0, ptr %10, align 8, !tbaa !48
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull %3) #13
  %11 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %3, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !63
  %13 = add i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !63
  %14 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !61
  store i64 %12, ptr %11, align 8, !tbaa !63
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #13
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  invoke void %16(ptr noundef nonnull %15)
          to label %20 unwind label %17

17:                                               ; preds = %7
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #14
  unreachable

20:                                               ; preds = %7
  %21 = getelementptr inbounds %"struct.std::__detail::_List_node_base", ptr %3, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !54
  %23 = ptrtoint ptr %22 to i64
  store i64 %23, ptr %14, align 8, !tbaa !48
  br label %24

24:                                               ; preds = %1, %20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @MEM_CacheLimiter_ref(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !60
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @MEM_CacheLimiter_unref(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !60
  %4 = add nsw i32 %3, -1
  store i32 %4, ptr %2, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @MEM_CacheLimiter_get_refcount(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !60
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @MEM_CacheLimiter_get(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !56
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MEM_CacheLimiter_ItemPriority_Func_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 1, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @MEM_CacheLimiter_ItemDestroyable_Func_set(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 1, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i64 @MEM_CacheLimiter_get_memory_in_use(ptr noundef readonly %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %class.MEM_CacheLimiterCClass, ptr %0, i64 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !71
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %24, label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %19, %9 ], [ %7, %6 ]
  %11 = phi i64 [ %18, %9 ], [ 0, %6 ]
  %12 = load ptr, ptr %3, align 8, !tbaa !79
  %13 = getelementptr inbounds %"struct.std::_List_node.5", ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = tail call noundef i64 %12(ptr noundef %16)
  %18 = add i64 %17, %11
  %19 = load ptr, ptr %10, align 8, !tbaa !71
  %20 = icmp eq ptr %19, %2
  br i1 %20, label %24, label %9, !llvm.loop !80

21:                                               ; preds = %1
  %22 = load ptr, ptr @MEM_get_memory_in_use, align 8, !tbaa !48
  %23 = tail call i64 %22()
  br label %24

24:                                               ; preds = %9, %6, %21
  %25 = phi i64 [ %23, %21 ], [ 0, %6 ], [ %18, %9 ]
  ret i64 %25
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE38get_least_priority_destroyable_elementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !71
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %76, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %class.MEM_CacheLimiter, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %class.MEM_CacheLimiter, ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %0, i64 0, i32 1
  br label %37

11:                                               ; preds = %4
  %12 = getelementptr inbounds %class.MEM_CacheLimiter, ptr %0, i64 0, i32 3
  br label %13

13:                                               ; preds = %11, %34
  %14 = phi ptr [ null, %11 ], [ %33, %34 ]
  %15 = phi ptr [ %2, %11 ], [ %35, %34 ]
  %16 = getelementptr inbounds %"struct.std::_List_node.5", ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  %19 = icmp eq ptr %18, null
  %20 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %17, i64 0, i32 1
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %19, i1 true, i1 %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %13
  %25 = load ptr, ptr %12, align 8, !tbaa !82
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %18, align 8, !tbaa !42
  %29 = tail call noundef zeroext i1 %25(ptr noundef %28)
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %13, %27, %30
  %32 = phi i1 [ true, %30 ], [ false, %13 ], [ false, %27 ]
  %33 = select i1 %32, ptr %17, ptr %14
  br i1 %32, label %76, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %15, align 8, !tbaa !71
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %76, label %13, !llvm.loop !83

37:                                               ; preds = %8, %70
  %38 = phi ptr [ null, %8 ], [ %72, %70 ]
  %39 = phi i32 [ 0, %8 ], [ %74, %70 ]
  %40 = phi i32 [ 0, %8 ], [ %71, %70 ]
  %41 = phi ptr [ %2, %8 ], [ %73, %70 ]
  %42 = getelementptr inbounds %"struct.std::_List_node.5", ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  %45 = icmp eq ptr %44, null
  %46 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %43, i64 0, i32 1
  %47 = load i32, ptr %46, align 8
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %45, i1 true, i1 %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %37
  %51 = load ptr, ptr %9, align 8, !tbaa !82
  %52 = icmp eq ptr %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %44, align 8, !tbaa !42
  %55 = tail call noundef zeroext i1 %51(ptr noundef %54)
  br i1 %55, label %56, label %70

56:                                               ; preds = %53, %50
  %57 = load i64, ptr %10, align 8, !tbaa !63
  %58 = trunc i64 %57 to i32
  %59 = add nuw i32 %39, 1
  %60 = sub i32 %59, %58
  %61 = load ptr, ptr %5, align 8, !tbaa !81
  %62 = load ptr, ptr %43, align 8, !tbaa !56
  %63 = load ptr, ptr %62, align 8, !tbaa !42
  %64 = tail call noundef i32 %61(ptr noundef %63, i32 noundef %60)
  %65 = icmp slt i32 %64, %40
  %66 = icmp eq ptr %38, null
  %67 = select i1 %65, i1 true, i1 %66
  %68 = select i1 %67, i32 %64, i32 %40
  %69 = select i1 %67, ptr %43, ptr %38
  br label %70

70:                                               ; preds = %53, %37, %56
  %71 = phi i32 [ %68, %56 ], [ %40, %37 ], [ %40, %53 ]
  %72 = phi ptr [ %69, %56 ], [ %38, %37 ], [ %38, %53 ]
  %73 = load ptr, ptr %41, align 8, !tbaa !71
  %74 = add nuw nsw i32 %39, 1
  %75 = icmp eq ptr %73, %0
  br i1 %75, label %76, label %37, !llvm.loop !84

76:                                               ; preds = %70, %34, %31, %1
  %77 = phi ptr [ null, %1 ], [ %33, %31 ], [ %33, %34 ], [ %72, %70 ]
  ret ptr %77
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE19destroy_if_possibleEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !56
  %3 = icmp eq ptr %2, null
  %4 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %3, i1 true, i1 %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  br i1 %3, label %10, label %9

9:                                                ; preds = %8
  tail call void @_ZN28MEM_CacheLimiterHandleCClassD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #13
  tail call void @_ZdlPv(ptr noundef %2) #15
  br label %10

10:                                               ; preds = %9, %8
  store ptr null, ptr %0, align 8, !tbaa !56
  %11 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = getelementptr inbounds %class.MEM_CacheLimiterHandle, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  %15 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %12, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !63
  %17 = add i64 %16, -1
  store i64 %17, ptr %15, align 8, !tbaa !63
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %14) #13
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !48
  invoke void %18(ptr noundef nonnull %14)
          to label %22 unwind label %19

19:                                               ; preds = %10
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  tail call void @__clang_call_terminate(ptr %21) #14
  unreachable

22:                                               ; preds = %10
  tail call void @_ZdlPv(ptr noundef %0) #15
  br label %23

23:                                               ; preds = %1, %22
  ret i1 %7
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { builtin allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }

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
!35 = !{!"long", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"bool", !36, i64 0}
!40 = !{i8 0, i8 2}
!41 = !{}
!42 = !{!43, !44, i64 0}
!43 = !{!"_ZTS28MEM_CacheLimiterHandleCClass", !44, i64 0, !44, i64 8, !45, i64 16}
!44 = !{!"any pointer", !36, i64 0}
!45 = !{!"_ZTSSt14_List_iteratorIP28MEM_CacheLimiterHandleCClassE", !44, i64 0}
!46 = !{!43, !44, i64 8}
!47 = !{!45, !44, i64 0}
!48 = !{!44, !44, i64 0}
!49 = !{!50, !35, i64 16}
!50 = !{!"_ZTSNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EEE", !51, i64 0}
!51 = !{!"_ZTSNSt7__cxx1110_List_baseIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EE10_List_implE", !52, i64 0}
!52 = !{!"_ZTSNSt8__detail17_List_node_headerE", !53, i64 0, !35, i64 16}
!53 = !{!"_ZTSNSt8__detail15_List_node_baseE", !44, i64 0, !44, i64 8}
!54 = !{!53, !44, i64 8}
!55 = !{i64 0, i64 8, !48}
!56 = !{!57, !44, i64 0}
!57 = !{!"_ZTS22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE", !44, i64 0, !58, i64 8, !59, i64 16, !44, i64 24}
!58 = !{!"int", !36, i64 0}
!59 = !{!"_ZTSSt14_List_iteratorIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassEE", !44, i64 0}
!60 = !{!57, !58, i64 8}
!61 = !{!59, !44, i64 0}
!62 = !{!57, !44, i64 24}
!63 = !{!64, !35, i64 16}
!64 = !{!"_ZTSNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EEE", !65, i64 0}
!65 = !{!"_ZTSNSt7__cxx1110_List_baseIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EE10_List_implE", !52, i64 0}
!66 = !{!67, !44, i64 0}
!67 = !{!"_ZTS22MEM_CacheLimiterCClass", !44, i64 0, !68, i64 8, !70, i64 56}
!68 = !{!"_ZTS16MEM_CacheLimiterI28MEM_CacheLimiterHandleCClassE", !69, i64 0, !44, i64 24, !44, i64 32, !44, i64 40}
!69 = !{!"_ZTSNSt7__cxx114listIP22MEM_CacheLimiterHandleI28MEM_CacheLimiterHandleCClassE13MEM_AllocatorIS4_EEE", !64, i64 0}
!70 = !{!"_ZTSNSt7__cxx114listIP28MEM_CacheLimiterHandleCClass13MEM_AllocatorIS2_EEE", !50, i64 0}
!71 = !{!53, !44, i64 0}
!72 = distinct !{!72, !73, !74}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = distinct !{!75, !73, !74}
!76 = distinct !{!76, !73, !74}
!77 = distinct !{!77, !73, !74}
!78 = !{!52, !35, i64 16}
!79 = !{!68, !44, i64 24}
!80 = distinct !{!80, !73, !74}
!81 = !{!68, !44, i64 32}
!82 = !{!68, !44, i64 40}
!83 = distinct !{!83, !73, !74}
!84 = distinct !{!84, !73, !74}
