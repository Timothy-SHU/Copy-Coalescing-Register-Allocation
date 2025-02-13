; ModuleID = 'simulator/nedparser.cc'
source_filename = "simulator/nedparser.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.NEDParser = type { i8, i8, ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.NEDErrorStore::Entry" = type { ptr, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%struct._Guard = type { ptr }

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN13NEDErrorStore5clearEv = comdat any

$_Z11opp_isspaceh = comdat any

$_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE5clearEv = comdat any

$_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE15_M_erase_at_endEPS1_ = comdat any

$_ZSt8_DestroyIPN13NEDErrorStore5EntryES1_EvT_S3_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$__clang_call_terminate = comdat any

$_ZSt8_DestroyIPN13NEDErrorStore5EntryEEvT_S3_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPN13NEDErrorStore5EntryEEEvT_S5_ = comdat any

$_ZSt8_DestroyIN13NEDErrorStore5EntryEEvPT_ = comdat any

$_ZN13NEDErrorStore5EntryD2Ev = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

@np = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [757 x i8] c"package ned;\0A@namespace(\22\22);\0A\0Achannel IdealChannel\0A{\0A    @class(cIdealChannel);\0A}\0A\0Achannel DelayChannel\0A{\0A    @class(cDelayChannel);\0A    bool disabled = default(false);\0A    double delay = default(0s) @unit(s); // propagation delay\0A}\0A\0Achannel DatarateChannel\0A{\0A    @class(cDatarateChannel);\0A    bool disabled = default(false);\0A    double delay = default(0s) @unit(s); // propagation delay\0A    double datarate = default(0bps) @unit(bps); // bits per second; 0=infinite\0A    double ber = default(0); // bit error rate (BER)\0A    double per = default(0); // packet error rate (PER)\0A}\0A\0Amoduleinterface IBidirectionalChannel\0A{\0A    gates:\0A        inout a;\0A        inout b;\0A}\0A\0Amoduleinterface IUnidirectionalChannel\0A{\0A    gates:\0A        input i;\0A        output o;\0A}\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"@expr@\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"cannot read %s\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"unable to allocate work memory\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

@_ZN9NEDParserC1EP13NEDErrorStore = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN9NEDParserC2EP13NEDErrorStore
@_ZN9NEDParserD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN9NEDParserD2Ev

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN9NEDParser22getBuiltInDeclarationsEv() local_unnamed_addr #0 align 2 !prof !90 {
  ret ptr @.str
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9NEDParserC2EP13NEDErrorStore(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !91 {
  %3 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 4
  store ptr null, ptr %3, align 8, !tbaa !92
  store i8 1, ptr %0, align 8, !tbaa !98
  %4 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 1
  store i8 0, ptr %4, align 1, !tbaa !99
  %5 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 3
  store ptr %1, ptr %5, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN9NEDParserD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #2 align 2 !prof !91 {
  %2 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN13NEDFileBufferD1Ev(ptr noundef nonnull align 8 dereferenceable(52) %3) #16
  tail call void @_ZdlPv(ptr noundef nonnull %3) #17
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN13NEDFileBufferD1Ev(ptr noundef nonnull align 8 dereferenceable(52)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN9NEDParser12parseNEDFileEPKcS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 !prof !101 {
  %4 = tail call noundef zeroext i1 @_ZN9NEDParser8loadFileEPKcS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #18
  br i1 %4, label %5, label %7, !prof !102

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN9NEDParser8parseNEDEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ null, %3 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN9NEDParser8loadFileEPKcS1_(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %4 = alloca [1000 x i8], align 16
  %5 = icmp eq ptr %2, null
  %6 = select i1 %5, ptr %1, ptr %2, !prof !102
  %7 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !102

10:                                               ; preds = %3
  tail call void @_ZN13NEDFileBufferD1Ev(ptr noundef nonnull align 8 dereferenceable(52) %8) #16
  tail call void @_ZdlPv(ptr noundef nonnull %8) #17
  br label %11

11:                                               ; preds = %10, %3
  %12 = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19
  invoke void @_ZN13NEDFileBufferC1Ev(ptr noundef nonnull align 8 dereferenceable(52) %12) #18
          to label %13 unwind label %23

13:                                               ; preds = %11
  store ptr %12, ptr %7, align 8, !tbaa !92
  %14 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 2
  store ptr %6, ptr %14, align 8, !tbaa !103
  %15 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  tail call void @_ZN13NEDErrorStore5clearEv(ptr noundef nonnull align 8 dereferenceable(25) %16) #18
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %4) #20
  %17 = load i8, ptr %1, align 1, !tbaa !104
  %18 = icmp eq i8 %17, 126
  br i1 %18, label %19, label %25, !prof !105

19:                                               ; preds = %13
  %20 = tail call ptr @getenv(ptr noundef nonnull @.str.5) #16
  %21 = getelementptr inbounds i8, ptr %1, i64 1
  %22 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %20, ptr noundef nonnull %21) #16
  br label %27

23:                                               ; preds = %11
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %12) #17
  resume { ptr, i32 } %24

25:                                               ; preds = %13
  %26 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %1) #16
  br label %27

27:                                               ; preds = %25, %19
  %28 = load ptr, ptr %7, align 8, !tbaa !92
  %29 = call noundef zeroext i1 @_ZN13NEDFileBuffer8readFileEPKc(ptr noundef nonnull align 8 dereferenceable(52) %28, ptr noundef nonnull %4) #18
  br i1 %29, label %32, label %30, !prof !102

30:                                               ; preds = %27
  %31 = load ptr, ptr %15, align 8, !tbaa !100
  call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEPKcS1_z(ptr noundef nonnull align 8 dereferenceable(25) %31, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull %6) #18
  br label %32

32:                                               ; preds = %27, %30
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %4) #20
  ret i1 %29
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN9NEDParser8parseNEDEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 align 2 !prof !91 {
  %2 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  tail call void @_ZN13NEDErrorStore5clearEv(ptr noundef nonnull align 8 dereferenceable(25) %3) #18
  %4 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = tail call noundef ptr @_ZN13NEDFileBuffer11getFullTextEv(ptr noundef nonnull align 8 dereferenceable(52) %5) #18
  %7 = tail call noundef zeroext i1 @_ZN9NEDParser21guessIsNEDInNewSyntaxEPKc(ptr noundef %6) #18
  %8 = load ptr, ptr %4, align 8, !tbaa !92
  %9 = tail call noundef ptr @_ZN13NEDFileBuffer11getFullTextEv(ptr noundef nonnull align 8 dereferenceable(52) %8) #18
  br i1 %7, label %10, label %12, !prof !106

10:                                               ; preds = %1
  %11 = tail call noundef ptr @_Z11doParseNED2P9NEDParserPKc(ptr noundef nonnull %0, ptr noundef %9) #18
  br label %14

12:                                               ; preds = %1
  %13 = tail call noundef ptr @_Z11doParseNED1P9NEDParserPKc(ptr noundef nonnull %0, ptr noundef %9) #18
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ]
  ret ptr %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN9NEDParser12parseNEDTextEPKcS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 !prof !90 {
  %4 = tail call noundef zeroext i1 @_ZN9NEDParser8loadTextEPKcS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #18
  br i1 %4, label %5, label %7, !prof !107

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN9NEDParser8parseNEDEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ null, %3 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN9NEDParser8loadTextEPKcS1_(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !90 {
  %4 = icmp eq ptr %2, null
  %5 = select i1 %4, ptr @.str.3, ptr %2, !prof !108
  %6 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !107

9:                                                ; preds = %3
  tail call void @_ZN13NEDFileBufferD1Ev(ptr noundef nonnull align 8 dereferenceable(52) %7) #16
  tail call void @_ZdlPv(ptr noundef nonnull %7) #17
  br label %10

10:                                               ; preds = %9, %3
  %11 = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #19
  invoke void @_ZN13NEDFileBufferC1Ev(ptr noundef nonnull align 8 dereferenceable(52) %11) #18
          to label %12 unwind label %20

12:                                               ; preds = %10
  store ptr %11, ptr %6, align 8, !tbaa !92
  %13 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 2
  store ptr %5, ptr %13, align 8, !tbaa !103
  %14 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !100
  tail call void @_ZN13NEDErrorStore5clearEv(ptr noundef nonnull align 8 dereferenceable(25) %15) #18
  %16 = load ptr, ptr %6, align 8, !tbaa !92
  %17 = tail call noundef zeroext i1 @_ZN13NEDFileBuffer7setDataEPKc(ptr noundef nonnull align 8 dereferenceable(52) %16, ptr noundef %1) #18
  br i1 %17, label %22, label %18, !prof !107

18:                                               ; preds = %12
  %19 = load ptr, ptr %14, align 8, !tbaa !100
  tail call void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEPKcS1_z(ptr noundef nonnull align 8 dereferenceable(25) %19, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #18
  br label %22

20:                                               ; preds = %10
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %11) #17
  resume { ptr, i32 } %21

22:                                               ; preds = %12, %18
  ret i1 %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN9NEDParser18parseNEDExpressionEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !109 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  store i8 1, ptr %0, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #20
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
          to label %7 unwind label %13

7:                                                ; preds = %2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.2) #18
          to label %8 unwind label %15

8:                                                ; preds = %7
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1) #18
          to label %9 unwind label %17

9:                                                ; preds = %8
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  %10 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  %11 = invoke noundef ptr @_ZN9NEDParser12parseNEDTextEPKcS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %10, ptr noundef nonnull @.str.3) #18
          to label %12 unwind label %23

12:                                               ; preds = %9
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  ret ptr %11

13:                                               ; preds = %2
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %21

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %19

17:                                               ; preds = %8
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  br label %21

21:                                               ; preds = %19, %13
  %22 = phi { ptr, i32 } [ %20, %19 ], [ %14, %13 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %25

23:                                               ; preds = %9
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  resume { ptr, i32 } %26
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #5 comdat !prof !110 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #18
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.12) #21
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #18
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #18
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  resume { ptr, i32 } %17
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN9NEDParser12parseMSGFileEPKcS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 !prof !109 {
  %4 = tail call noundef zeroext i1 @_ZN9NEDParser8loadFileEPKcS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #18
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN9NEDParser8parseMSGEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ null, %3 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN9NEDParser8parseMSGEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 align 2 !prof !109 {
  %2 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  tail call void @_ZN13NEDErrorStore5clearEv(ptr noundef nonnull align 8 dereferenceable(25) %3) #18
  %4 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !92
  %6 = tail call noundef ptr @_ZN13NEDFileBuffer11getFullTextEv(ptr noundef nonnull align 8 dereferenceable(52) %5) #18
  %7 = tail call noundef ptr @_Z11doParseMSG2P9NEDParserPKc(ptr noundef nonnull %0, ptr noundef %6) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN9NEDParser12parseMSGTextEPKcS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 !prof !109 {
  %4 = tail call noundef zeroext i1 @_ZN9NEDParser8loadTextEPKcS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #18
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN9NEDParser8parseMSGEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ null, %3 ]
  ret ptr %8
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN13NEDFileBufferC1Ev(ptr noundef nonnull align 8 dereferenceable(52)) unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13NEDErrorStore5clearEv(ptr noundef nonnull align 8 dereferenceable(25) %0) local_unnamed_addr #2 comdat align 2 !prof !111 {
  tail call void @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN13NEDFileBuffer8readFileEPKc(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN13NEDErrorStore8addErrorEPKcS1_z(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN13NEDFileBuffer7setDataEPKc(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN9NEDParser21guessIsNEDInNewSyntaxEPKc(ptr nocapture noundef readonly %0) local_unnamed_addr #5 align 2 !prof !91 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #22
  %3 = add i64 %2, 1
  %4 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %3) #19
  br label %5

5:                                                ; preds = %41, %1
  %6 = phi ptr [ %46, %41 ], [ %4, %1 ]
  %7 = phi i8 [ %43, %41 ], [ 1, %1 ]
  %8 = phi ptr [ %44, %41 ], [ %0, %1 ]
  br label %9

9:                                                ; preds = %39, %5
  %10 = phi ptr [ %8, %5 ], [ %40, %39 ]
  %11 = load i8, ptr %10, align 1, !tbaa !104
  switch i8 %11, label %41 [
    i8 0, label %47
    i8 47, label %12
    i8 34, label %23
  ], !prof !112

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, ptr %10, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !104
  %15 = icmp eq i8 %14, 47
  br i1 %15, label %16, label %41, !prof !113

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %10, i64 2
  br label %18

18:                                               ; preds = %21, %16
  %19 = phi ptr [ %17, %16 ], [ %22, %21 ]
  %20 = load i8, ptr %19, align 1, !tbaa !104
  switch i8 %20, label %21 [
    i8 0, label %39
    i8 13, label %39
    i8 10, label %39
  ], !prof !114, !llvm.loop !115

21:                                               ; preds = %18
  %22 = getelementptr inbounds i8, ptr %19, i64 1
  br label %18, !llvm.loop !117

23:                                               ; preds = %9
  %24 = getelementptr inbounds i8, ptr %10, i64 1
  br label %25

25:                                               ; preds = %33, %23
  %26 = phi ptr [ %24, %23 ], [ %34, %33 ]
  %27 = load i8, ptr %26, align 1, !tbaa !104
  switch i8 %27, label %28 [
    i8 0, label %35
    i8 13, label %35
    i8 10, label %35
    i8 34, label %35
  ], !prof !118

28:                                               ; preds = %25
  %29 = getelementptr inbounds i8, ptr %26, i64 1
  %30 = icmp eq i8 %27, 92
  br i1 %30, label %31, label %33, !prof !119

31:                                               ; preds = %28
  %32 = getelementptr inbounds i8, ptr %26, i64 2
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi ptr [ %32, %31 ], [ %29, %28 ]
  br label %25, !llvm.loop !120

35:                                               ; preds = %25, %25, %25, %25
  %36 = icmp eq i8 %27, 34
  %37 = zext i1 %36 to i64
  %38 = getelementptr inbounds i8, ptr %26, i64 %37
  br label %39

39:                                               ; preds = %18, %18, %18, %35
  %40 = phi ptr [ %38, %35 ], [ %19, %18 ], [ %19, %18 ], [ %19, %18 ]
  br label %9, !llvm.loop !115

41:                                               ; preds = %9, %12
  %42 = tail call noundef zeroext i1 @_Z11opp_isspaceh(i8 noundef zeroext %11) #18
  %43 = select i1 %42, i8 %7, i8 0, !prof !121
  %44 = getelementptr inbounds i8, ptr %10, i64 1
  %45 = load i8, ptr %10, align 1, !tbaa !104
  %46 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 %45, ptr %6, align 1, !tbaa !104
  br label %5, !llvm.loop !115

47:                                               ; preds = %9
  store i8 0, ptr %6, align 1, !tbaa !104
  %48 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 123) #22
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %74, !prof !122

50:                                               ; preds = %47
  %51 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 125) #22
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %74

53:                                               ; preds = %50
  %54 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 64) #22
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %74, !prof !123

56:                                               ; preds = %53
  %57 = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.9) #22
  %58 = icmp eq ptr %57, null
  br i1 %58, label %74, label %59

59:                                               ; preds = %56, %70
  %60 = phi ptr [ %72, %70 ], [ %57, %56 ]
  %61 = getelementptr inbounds i8, ptr %60, i64 7
  %62 = load i8, ptr %61, align 1, !tbaa !104
  %63 = tail call noundef zeroext i1 @_Z11opp_isspaceh(i8 noundef zeroext %62) #18
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = icmp eq ptr %60, %4
  br i1 %65, label %74, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds i8, ptr %60, i64 -1
  %68 = load i8, ptr %67, align 1, !tbaa !104
  %69 = tail call noundef zeroext i1 @_Z11opp_isspaceh(i8 noundef zeroext %68) #18
  br i1 %69, label %74, label %70

70:                                               ; preds = %59, %66
  %71 = getelementptr inbounds i8, ptr %60, i64 1
  %72 = tail call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %71, ptr noundef nonnull dereferenceable(1) @.str.9) #22
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %59, !llvm.loop !124

74:                                               ; preds = %70, %66, %64, %56, %47, %50, %53
  %75 = phi i1 [ true, %53 ], [ true, %50 ], [ true, %47 ], [ false, %56 ], [ false, %64 ], [ false, %66 ], [ false, %70 ]
  %76 = phi i1 [ false, %53 ], [ false, %50 ], [ false, %47 ], [ false, %56 ], [ false, %70 ], [ true, %66 ], [ true, %64 ]
  tail call void @_ZdaPv(ptr noundef nonnull %4) #17
  %77 = and i8 %7, 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %81, !prof !106

79:                                               ; preds = %74
  %80 = or i1 %75, %76
  br label %81

81:                                               ; preds = %79, %74
  %82 = phi i1 [ true, %74 ], [ %80, %79 ]
  ret i1 %82
}

; Function Attrs: optsize
declare noundef ptr @_ZN13NEDFileBuffer11getFullTextEv(ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef ptr @_Z11doParseNED2P9NEDParserPKc(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef ptr @_Z11doParseNED1P9NEDParserPKc(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef ptr @_Z11doParseMSG2P9NEDParserPKc(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z11opp_isspaceh(i8 noundef zeroext %0) local_unnamed_addr #2 comdat !prof !125 {
  %2 = zext i8 %0 to i32
  %3 = tail call i32 @isspace(i32 noundef %2) #22
  %4 = icmp ne i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9NEDParser5errorEPKci(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !109 {
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %4) #20
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #18
  %6 = getelementptr inbounds i8, ptr %4, i64 16
  %7 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !103
  %9 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %8) #18
          to label %10 unwind label %20

10:                                               ; preds = %3
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.10) #18
          to label %12 unwind label %20

12:                                               ; preds = %10
  %13 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef %2) #18
          to label %14 unwind label %20

14:                                               ; preds = %12
  %15 = getelementptr inbounds %class.NEDParser, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(128) %4) #18
          to label %17 unwind label %22

17:                                               ; preds = %14
  %18 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  invoke void (ptr, ptr, ptr, ...) @_ZN13NEDErrorStore8addErrorEPKcS1_z(ptr noundef nonnull align 8 dereferenceable(25) %16, ptr noundef %18, ptr noundef nonnull @.str.11, ptr noundef %1) #18
          to label %19 unwind label %24

19:                                               ; preds = %17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #16
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #20
  ret void

20:                                               ; preds = %12, %10, %3
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %28

22:                                               ; preds = %14
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %26

24:                                               ; preds = %17
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %21, %20 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #16
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #20
  resume { ptr, i32 } %29
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !111 {
  %2 = load ptr, ptr %0, align 8, !tbaa !126
  tail call void @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE15_M_erase_at_endEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE15_M_erase_at_endEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6, !prof !129

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPN13NEDErrorStore5EntryES1_EvT_S3_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #18
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !128
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #23
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN13NEDErrorStore5EntryES1_EvT_S3_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #5 comdat !prof !91 {
  tail call void @_ZSt8_DestroyIPN13NEDErrorStore5EntryEEvT_S3_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !91 {
  ret ptr %0
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #20
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN13NEDErrorStore5EntryEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !91 {
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN13NEDErrorStore5EntryEEEvT_S5_(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN13NEDErrorStore5EntryEEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !91 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !102

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZSt8_DestroyIN13NEDErrorStore5EntryEEvPT_(ptr noundef %5) #18
  %6 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !130, !llvm.loop !131

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN13NEDErrorStore5EntryEEvPT_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !109 {
  tail call void @_ZN13NEDErrorStore5EntryD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13NEDErrorStore5EntryD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  %3 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %0, i64 0, i32 2
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !132 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #2 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #18
  store i64 %6, ptr %4, align 8, !tbaa !134
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !136

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #18
  %10 = load i64, ptr %4, align 8, !tbaa !134
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #18
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #18
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #16
  store ptr null, ptr %5, align 8, !tbaa !137
  %15 = load i64, ptr %4, align 8, !tbaa !134
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #18
          to label %16 unwind label %17

16:                                               ; preds = %13
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret void

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat !prof !133 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !139
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !133 {
  store ptr %1, ptr %0, align 8, !tbaa !137
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  %2 = load ptr, ptr %0, align 8, !tbaa !137
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !140

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #23
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !133 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat !prof !133 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2 align 2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind optsize }
attributes #17 = { builtin nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { builtin optsize allocsize(0) }
attributes #20 = { nounwind }
attributes #21 = { noreturn optsize }
attributes #22 = { nounwind optsize willreturn memory(read) }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!89}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412141}
!4 = !{!"MaxCount", i64 61624744013}
!5 = !{!"MaxInternalCount", i64 9097682171}
!6 = !{!"MaxFunctionCount", i64 61624744013}
!7 = !{!"NumCounts", i64 22816}
!8 = !{!"NumFunctions", i64 10273}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 61624744013, i32 1}
!14 = !{i32 100000, i64 61624744013, i32 1}
!15 = !{i32 200000, i64 57319387120, i32 2}
!16 = !{i32 300000, i64 57319387120, i32 2}
!17 = !{i32 400000, i64 48398671114, i32 3}
!18 = !{i32 500000, i64 21674314260, i32 4}
!19 = !{i32 600000, i64 13210012293, i32 6}
!20 = !{i32 700000, i64 9097682171, i32 9}
!21 = !{i32 800000, i64 1685490447, i32 17}
!22 = !{i32 900000, i64 467312602, i32 72}
!23 = !{i32 950000, i64 202351116, i32 133}
!24 = !{i32 990000, i64 73590684, i32 225}
!25 = !{i32 999000, i64 3128957, i32 339}
!26 = !{i32 999900, i64 100587, i32 1069}
!27 = !{i32 999990, i64 10550, i32 1784}
!28 = !{i32 999999, i64 1105, i32 2320}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!35 = !{ptr @_ZN9NEDParserD2Ev, ptr @_ZN13NEDFileBufferD1Ev, i64 9}
!36 = !{ptr @_ZN9NEDParserD2Ev, ptr @_ZdlPv, i64 9}
!37 = !{ptr @_ZN9NEDParser12parseNEDFileEPKcS1_, ptr @_ZN9NEDParser8loadFileEPKcS1_, i64 13}
!38 = !{ptr @_ZN9NEDParser12parseNEDFileEPKcS1_, ptr @_ZN9NEDParser8parseNEDEv, i64 12}
!39 = !{ptr @_ZN9NEDParser8loadFileEPKcS1_, ptr @_ZN13NEDFileBufferD1Ev, i64 1}
!40 = !{ptr @_ZN9NEDParser8loadFileEPKcS1_, ptr @_ZdlPv, i64 1}
!41 = !{ptr @_ZN9NEDParser8loadFileEPKcS1_, ptr @_Znwm, i64 13}
!42 = !{ptr @_ZN9NEDParser8loadFileEPKcS1_, ptr @_ZN13NEDFileBufferC1Ev, i64 13}
!43 = !{ptr @_ZN9NEDParser8loadFileEPKcS1_, ptr @_ZN13NEDErrorStore5clearEv, i64 13}
!44 = !{ptr @_ZN9NEDParser8loadFileEPKcS1_, ptr @getenv, i64 1}
!45 = !{ptr @_ZN9NEDParser8loadFileEPKcS1_, ptr @sprintf, i64 1}
!46 = !{ptr @_ZN9NEDParser8loadFileEPKcS1_, ptr @strcpy, i64 12}
!47 = !{ptr @_ZN9NEDParser8loadFileEPKcS1_, ptr @_ZN13NEDFileBuffer8readFileEPKc, i64 13}
!48 = !{ptr @_ZN9NEDParser8loadFileEPKcS1_, ptr @_ZN13NEDErrorStore8addErrorEPKcS1_z, i64 1}
!49 = !{ptr @_ZN9NEDParser8parseNEDEv, ptr @_ZN13NEDErrorStore5clearEv, i64 14}
!50 = !{ptr @_ZN9NEDParser8parseNEDEv, ptr @_ZN13NEDFileBuffer11getFullTextEv, i64 28}
!51 = !{ptr @_ZN9NEDParser8parseNEDEv, ptr @_ZN9NEDParser21guessIsNEDInNewSyntaxEPKc, i64 14}
!52 = !{ptr @_ZN9NEDParser8parseNEDEv, ptr @_Z11doParseNED2P9NEDParserPKc, i64 13}
!53 = !{ptr @_ZN9NEDParser8parseNEDEv, ptr @_Z11doParseNED1P9NEDParserPKc, i64 1}
!54 = !{ptr @_ZN9NEDParser12parseNEDTextEPKcS1_, ptr @_ZN9NEDParser8loadTextEPKcS1_, i64 1}
!55 = !{ptr @_ZN9NEDParser12parseNEDTextEPKcS1_, ptr @_ZN9NEDParser8parseNEDEv, i64 1}
!56 = !{ptr @_ZN9NEDParser8loadTextEPKcS1_, ptr @_Znwm, i64 1}
!57 = !{ptr @_ZN9NEDParser8loadTextEPKcS1_, ptr @_ZN13NEDFileBufferC1Ev, i64 1}
!58 = !{ptr @_ZN9NEDParser8loadTextEPKcS1_, ptr @_ZN13NEDErrorStore5clearEv, i64 1}
!59 = !{ptr @_ZN9NEDParser8loadTextEPKcS1_, ptr @_ZN13NEDFileBuffer7setDataEPKc, i64 1}
!60 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 2107073}
!61 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2107073}
!62 = !{ptr @_ZN13NEDErrorStore5clearEv, ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE5clearEv, i64 28}
!63 = !{ptr @_ZN9NEDParser21guessIsNEDInNewSyntaxEPKc, ptr @strlen, i64 14}
!64 = !{ptr @_ZN9NEDParser21guessIsNEDInNewSyntaxEPKc, ptr @_Znam, i64 14}
!65 = !{ptr @_ZN9NEDParser21guessIsNEDInNewSyntaxEPKc, ptr @_Z11opp_isspaceh, i64 10663}
!66 = !{ptr @_ZN9NEDParser21guessIsNEDInNewSyntaxEPKc, ptr @strchr, i64 15}
!67 = !{ptr @_ZN9NEDParser21guessIsNEDInNewSyntaxEPKc, ptr @strstr, i64 3}
!68 = !{ptr @_ZN9NEDParser21guessIsNEDInNewSyntaxEPKc, ptr @_ZdaPv, i64 14}
!69 = !{ptr @_Z11opp_isspaceh, ptr @isspace, i64 10640642}
!70 = !{ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE5clearEv, ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE15_M_erase_at_endEPS1_, i64 28}
!71 = !{ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE15_M_erase_at_endEPS1_, ptr @_ZNSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE19_M_get_Tp_allocatorEv, i64 1}
!72 = !{ptr @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EE15_M_erase_at_endEPS1_, ptr @_ZSt8_DestroyIPN13NEDErrorStore5EntryES1_EvT_S3_RSaIT0_E, i64 1}
!73 = !{ptr @_ZSt8_DestroyIPN13NEDErrorStore5EntryES1_EvT_S3_RSaIT0_E, ptr @_ZSt8_DestroyIPN13NEDErrorStore5EntryEEvT_S3_, i64 14}
!74 = !{ptr @_ZSt8_DestroyIPN13NEDErrorStore5EntryEEvT_S3_, ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPN13NEDErrorStore5EntryEEEvT_S5_, i64 14}
!75 = !{ptr @_ZNSt12_Destroy_auxILb0EE9__destroyIPN13NEDErrorStore5EntryEEEvT_S5_, ptr @_ZSt8_DestroyIN13NEDErrorStore5EntryEEvPT_, i64 1}
!76 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!77 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!78 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!79 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!80 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!81 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!82 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!83 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!84 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!85 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!86 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!87 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!88 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!89 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!90 = !{!"function_entry_count", i64 1}
!91 = !{!"function_entry_count", i64 14}
!92 = !{!93, !97, i64 24}
!93 = !{!"_ZTS9NEDParser", !94, i64 0, !94, i64 1, !97, i64 8, !97, i64 16, !97, i64 24}
!94 = !{!"bool", !95, i64 0}
!95 = !{!"omnipotent char", !96, i64 0}
!96 = !{!"Simple C++ TBAA"}
!97 = !{!"any pointer", !95, i64 0}
!98 = !{!93, !94, i64 0}
!99 = !{!93, !94, i64 1}
!100 = !{!93, !97, i64 16}
!101 = !{!"function_entry_count", i64 13}
!102 = !{!"branch_weights", i32 14, i32 1}
!103 = !{!93, !97, i64 8}
!104 = !{!95, !95, i64 0}
!105 = !{!"branch_weights", i32 1, i32 14}
!106 = !{!"branch_weights", i32 15, i32 1}
!107 = !{!"branch_weights", i32 2, i32 1}
!108 = !{!"branch_weights", i32 1, i32 2}
!109 = !{!"function_entry_count", i64 0}
!110 = !{!"function_entry_count", i64 2107073}
!111 = !{!"function_entry_count", i64 28}
!112 = !{!"branch_weights", i32 -2092480750, i32 2893427, i32 113798715, i32 9259005}
!113 = !{!"branch_weights", i32 590, i32 1}
!114 = !{!"branch_weights", i32 -991162513, i32 140965, i32 140959, i32 83162456}
!115 = distinct !{!115, !116}
!116 = !{!"llvm.loop.mustprogress"}
!117 = distinct !{!117, !116}
!118 = !{!"branch_weights", i32 -1520192704, i32 9653618, i32 9625057, i32 9596580, i32 459273036}
!119 = !{!"branch_weights", i32 1, i32 290}
!120 = distinct !{!120, !116}
!121 = !{!"branch_weights", i32 5028, i32 6393}
!122 = !{!"branch_weights", i32 1, i32 15}
!123 = !{!"branch_weights", i32 -2147483648, i32 0}
!124 = distinct !{!124, !116}
!125 = !{!"function_entry_count", i64 10640642}
!126 = !{!127, !97, i64 0}
!127 = !{!"_ZTSNSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE17_Vector_impl_dataE", !97, i64 0, !97, i64 8, !97, i64 16}
!128 = !{!127, !97, i64 8}
!129 = !{!"branch_weights", i32 29, i32 1}
!130 = !{!"branch_weights", i32 1, i32 0}
!131 = distinct !{!131, !116}
!132 = !{!"function_entry_count", i64 1891507}
!133 = !{!"function_entry_count", i64 1889443}
!134 = !{!135, !135, i64 0}
!135 = !{!"long", !95, i64 0}
!136 = !{!"branch_weights", i32 1257663, i32 631782}
!137 = !{!138, !97, i64 0}
!138 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !97, i64 0}
!139 = !{!97, !97, i64 0}
!140 = !{!"branch_weights", i32 1889444, i32 1}
