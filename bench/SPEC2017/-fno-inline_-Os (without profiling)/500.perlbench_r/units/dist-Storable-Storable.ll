; ModuleID = 'dist/Storable/Storable.c'
source_filename = "dist/Storable/Storable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sv = type { ptr, i32, i32, %union.anon.8 }
%union.anon.8 = type { ptr }
%struct.mgvtbl = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xpvcv = type { ptr, %union._xmgu, i64, %union.anon, ptr, %union.anon.0, %union.anon.1, %union.anon.2, ptr, %union.anon.3, ptr, i32, i32, i32 }
%union._xmgu = type { ptr }
%union.anon = type { i64 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%struct.xpvio = type { ptr, %union._xmgu, i64, %union.anon.5, %union._xivu, ptr, %union.anon.6, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8 }
%union.anon.5 = type { i64 }
%union._xivu = type { i64 }
%union.anon.6 = type { ptr }
%struct.io = type { ptr, i32, i32, %union.anon.7 }
%union.anon.7 = type { ptr }
%struct.stcxt = type { i32, i32, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.extendable, %struct.extendable, %struct.extendable, ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.extendable = type { ptr, i64, ptr, ptr }
%struct.xpvhv = type { ptr, %union._xmgu, i64, i64 }
%struct.he = type { ptr, ptr, %union.anon.17 }
%union.anon.17 = type { ptr }
%struct.hv = type { ptr, i32, i32, %union.anon.9 }
%union.anon.9 = type { ptr }
%struct.hek = type { i32, i32, [1 x i8] }
%struct.xpvav = type { ptr, %union._xmgu, i64, i64, ptr }
%struct.av = type { ptr, i32, i32, %union.anon.12 }
%union.anon.12 = type { ptr }
%struct.xpv = type { ptr, %union._xmgu, i64, %union.anon.13 }
%union.anon.13 = type { i64 }
%struct.gv = type { ptr, i32, i32, %union.anon.11 }
%union.anon.11 = type { ptr }
%struct.magic = type { ptr, ptr, i16, i8, i8, i64, ptr, ptr }
%struct.gp = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.xpviv = type { ptr, %union._xmgu, i64, %union.anon.14, %union._xivu }
%union.anon.14 = type { i64 }
%struct.xpvuv = type { ptr, %union._xmgu, i64, %union.anon.15, %union._xivu }
%union.anon.15 = type { i64 }
%struct.xpvnv = type { ptr, %union._xmgu, i64, %union.anon.16, %union._xivu, %union._xnvu }
%union.anon.16 = type { i64 }
%union._xnvu = type { double }
%struct.xpvmg = type { ptr, %union._xmgu, i64, %union.anon.10, %union._xivu, %union._xnvu }
%union.anon.10 = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"dist/Storable/Storable.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"v5.22.0\00", align 1
@PL_stack_base = external local_unnamed_addr global ptr, align 8
@PL_stack_sp = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Storable::init_perinterp\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Storable::net_pstore\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"$$\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Storable::pstore\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Storable::mstore\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Storable::net_mstore\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Storable::pretrieve\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Storable::mretrieve\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Storable::dclone\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Storable::is_retrieving\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Storable::is_storing\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Storable::last_op_in_netorder\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"Storable\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"BIN_MAJOR\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"BIN_MINOR\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"BIN_WRITE_MINOR\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"Storable::drop_utf8\00", align 1
@PL_markstack_ptr = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [7 x i8] c"f, obj\00", align 1
@PL_sv_yes = external global %struct.sv, align 8
@PL_sv_undef = external global %struct.sv, align 8
@Context_ptr = internal unnamed_addr global ptr null, align 8
@.str.22 = private unnamed_addr constant [16 x i8] c"Not a reference\00", align 1
@vtbl_storable = internal global %struct.mgvtbl { ptr null, ptr null, ptr null, ptr null, ptr @storable_free, ptr null, ptr null, ptr null }, align 8
@magic_write.network_file_header = internal constant [6 x i8] c"pst0\05\0A", align 1
@magic_write.file_header = internal constant [19 x i8] c"pst0\04\0A\0812345678\04\08\08\08", align 16
@sv_store = internal unnamed_addr constant [8 x ptr] [ptr @store_ref, ptr @store_scalar, ptr @store_array, ptr @store_hash, ptr @store_tied, ptr @store_tied_item, ptr @store_code, ptr @store_other], align 16
@.str.23 = private unnamed_addr constant [16 x i8] c"STORABLE_freeze\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"Unexpected object type (%d) in store_hook()\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"Too late to ignore hooks for %s class \22%s\22\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"cloning\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"storing\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"STORABLE_attach\00", align 1
@.str.29 = private unnamed_addr constant [69 x i8] c"Freeze cannot return references if %s class is using STORABLE_attach\00", align 1
@.str.30 = private unnamed_addr constant [63 x i8] c"Item #%d returned by STORABLE_freeze for %s is not a reference\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"Could not serialize item #%d from hook in %s\00", align 1
@.str.32 = private unnamed_addr constant [59 x i8] c"No magic '%c' found while storing ref to tied %s with hook\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"array\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"scalar\00", align 1
@PL_tmps_floor = external global i64, align 8
@PL_tmps_ix = external local_unnamed_addr global i64, align 8
@PL_markstack_max = external local_unnamed_addr global ptr, align 8
@PL_stack_max = external local_unnamed_addr global ptr, align 8
@.str.36 = private unnamed_addr constant [31 x i8] c"Unable to record new classname\00", align 1
@PL_sv_no = external global %struct.sv, align 8
@.str.37 = private unnamed_addr constant [34 x i8] c"Can't determine type of %s(0x%lx)\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"Storable::canonical\00", align 1
@.str.39 = private unnamed_addr constant [54 x i8] c"Hash %p inconsistent - expected %d keys, %dth is NULL\00", align 1
@PL_sv_placeholder = external global %struct.sv, align 8
@.str.40 = private unnamed_addr constant [42 x i8] c"No magic '%c' found while storing tied %s\00", align 1
@.str.41 = private unnamed_addr constant [56 x i8] c"No magic 'p' found while storing reference to tied item\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"Storable::Deparse\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"B::Deparse\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.45 = private unnamed_addr constant [46 x i8] c"Unexpected return value from B::Deparse::new\0A\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"coderef2text\00", align 1
@.str.47 = private unnamed_addr constant [55 x i8] c"Unexpected return value from B::Deparse::coderef2text\0A\00", align 1
@.str.48 = private unnamed_addr constant [101 x i8] c"The result of B::Deparse::coderef2text was empty - maybe you're trying to serialize an XS function?\0A\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"Storable::forgive_me\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"Can't store %s items\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"Can't store item %s(0x%lx)\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"You lost %s(0x%lx)%c\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"obj\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.55 = private unnamed_addr constant [58 x i8] c"Frozen string corrupt - contains characters outside 0-255\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"Not a scalar string\00", align 1
@.str.57 = private unnamed_addr constant [44 x i8] c"Magic number checking on storable %s failed\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@old_magicstr = internal constant [11 x i8] c"perl-store\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"File is not a perl storable\00", align 1
@sv_retrieve = internal constant [33 x ptr] [ptr null, ptr @retrieve_lscalar, ptr @retrieve_array, ptr @retrieve_hash, ptr @retrieve_ref, ptr @retrieve_undef, ptr @retrieve_integer, ptr @retrieve_double, ptr @retrieve_byte, ptr @retrieve_netint, ptr @retrieve_scalar, ptr @retrieve_tied_array, ptr @retrieve_tied_hash, ptr @retrieve_tied_scalar, ptr @retrieve_sv_undef, ptr @retrieve_sv_yes, ptr @retrieve_sv_no, ptr @retrieve_blessed, ptr @retrieve_idx_blessed, ptr @retrieve_hook, ptr @retrieve_overloaded, ptr @retrieve_tied_key, ptr @retrieve_tied_idx, ptr @retrieve_utf8str, ptr @retrieve_lutf8str, ptr @retrieve_flag_hash, ptr @retrieve_code, ptr @retrieve_weakref, ptr @retrieve_weakoverloaded, ptr @retrieve_vstring, ptr @retrieve_lvstring, ptr @retrieve_svundef_elem, ptr @retrieve_other], align 16
@sv_old_retrieve = internal constant [33 x ptr] [ptr null, ptr @retrieve_lscalar, ptr @old_retrieve_array, ptr @old_retrieve_hash, ptr @retrieve_ref, ptr @retrieve_undef, ptr @retrieve_integer, ptr @retrieve_double, ptr @retrieve_byte, ptr @retrieve_netint, ptr @retrieve_scalar, ptr @retrieve_tied_array, ptr @retrieve_tied_hash, ptr @retrieve_tied_scalar, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other, ptr @retrieve_other], align 16
@.str.61 = private unnamed_addr constant [30 x i8] c"Storable::accept_future_minor\00", align 1
@.str.62 = private unnamed_addr constant [60 x i8] c"Storable binary image v%d.%d more recent than I am (v%d.%d)\00", align 1
@.str.63 = private unnamed_addr constant [29 x i8] c"Byte order is not compatible\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"Integer size is not compatible\00", align 1
@.str.65 = private unnamed_addr constant [36 x i8] c"Long integer size is not compatible\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"Pointer size is not compatible\00", align 1
@.str.67 = private unnamed_addr constant [30 x i8] c"Double size is not compatible\00", align 1
@PL_tainting = external local_unnamed_addr global i8, align 1
@PL_tainted = external local_unnamed_addr global i8, align 1
@.str.68 = private unnamed_addr constant [46 x i8] c"Class name #%ld should have been seen already\00", align 1
@.str.69 = private unnamed_addr constant [47 x i8] c"Object #%ld should have been retrieved already\00", align 1
@.str.70 = private unnamed_addr constant [50 x i8] c"STORABLE_attach called with unexpected references\00", align 1
@.str.71 = private unnamed_addr constant [43 x i8] c"STORABLE_attach did not return a %s object\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"STORABLE_thaw\00", align 1
@.str.73 = private unnamed_addr constant [78 x i8] c"No STORABLE_thaw defined for objects of class %s (even after a \22require %s;\22)\00", align 1
@.str.74 = private unnamed_addr constant [34 x i8] c"Forgot to deal with extra type %d\00", align 1
@.str.75 = private unnamed_addr constant [60 x i8] c"Cannot restore overloading on %s(0x%lx) (package <unknown>)\00", align 1
@.str.76 = private unnamed_addr constant [82 x i8] c"Cannot restore overloading on %s(0x%lx) (package %s) (even after a \22require %s;\22)\00", align 1
@.str.77 = private unnamed_addr constant [37 x i8] c"Unexpected type %d in retrieve_code\0A\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"sub \00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"Storable::Eval\00", align 1
@.str.80 = private unnamed_addr constant [55 x i8] c"Can't eval, please set $Storable::Eval to a true value\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.82 = private unnamed_addr constant [55 x i8] c"Unexpected return value from $Storable::Eval callback\0A\00", align 1
@.str.83 = private unnamed_addr constant [28 x i8] c"code %s caused an error: %s\00", align 1
@.str.84 = private unnamed_addr constant [52 x i8] c"code %s did not evaluate to a subroutine reference\0A\00", align 1
@.str.85 = private unnamed_addr constant [57 x i8] c"Corrupted storable %s (binary v%d.%d), current is v%d.%d\00", align 1
@.str.86 = private unnamed_addr constant [38 x i8] c"Corrupted storable %s (binary v%d.%d)\00", align 1
@.str.87 = private unnamed_addr constant [46 x i8] c"Old tag 0x%lx should have been mapped already\00", align 1
@.str.88 = private unnamed_addr constant [119 x i8] c"Storable binary image v%d.%d contains data of type %d. This Storable is v%d.%d and can only handle data types up to %d\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c"sv\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @boot_Storable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (i32, ptr, ptr, ...) @Perl_xs_handshake(i32 noundef 219676775, ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  %3 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.2, ptr noundef nonnull @XS_Storable_init_perinterp, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  %4 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.4, ptr noundef nonnull @XS_Storable_pstore, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #14
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.xpvcv, ptr %5, i64 0, i32 5
  store i32 1, ptr %6, align 8, !tbaa !11
  %7 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.6, ptr noundef nonnull @XS_Storable_pstore, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 0) #14
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.xpvcv, ptr %8, i64 0, i32 5
  store i32 0, ptr %9, align 8, !tbaa !11
  %10 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.7, ptr noundef nonnull @XS_Storable_mstore, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef 0) #14
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.xpvcv, ptr %11, i64 0, i32 5
  store i32 0, ptr %12, align 8, !tbaa !11
  %13 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.9, ptr noundef nonnull @XS_Storable_mstore, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef 0) #14
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.xpvcv, ptr %14, i64 0, i32 5
  store i32 1, ptr %15, align 8, !tbaa !11
  %16 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.10, ptr noundef nonnull @XS_Storable_pretrieve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef 0) #14
  %17 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.11, ptr noundef nonnull @XS_Storable_mretrieve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef 0) #14
  %18 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.12, ptr noundef nonnull @XS_Storable_dclone, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef 0) #14
  %19 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.13, ptr noundef nonnull @XS_Storable_last_op_in_netorder, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.xpvcv, ptr %20, i64 0, i32 5
  store i32 2, ptr %21, align 8, !tbaa !11
  %22 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.14, ptr noundef nonnull @XS_Storable_last_op_in_netorder, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.xpvcv, ptr %23, i64 0, i32 5
  store i32 1, ptr %24, align 8, !tbaa !11
  %25 = tail call ptr @Perl_newXS_flags(ptr noundef nonnull @.str.15, ptr noundef nonnull @XS_Storable_last_op_in_netorder, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 0) #14
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.xpvcv, ptr %26, i64 0, i32 5
  store i32 0, ptr %27, align 8, !tbaa !11
  %28 = tail call ptr @Perl_gv_stashpvn(ptr noundef nonnull @.str.16, i32 noundef 8, i32 noundef 1) #14
  %29 = tail call ptr @Perl_newSViv(i64 noundef 2) #14
  %30 = tail call ptr @Perl_newCONSTSUB(ptr noundef %28, ptr noundef nonnull @.str.17, ptr noundef %29) #14
  %31 = tail call ptr @Perl_newSViv(i64 noundef 10) #14
  %32 = tail call ptr @Perl_newCONSTSUB(ptr noundef %28, ptr noundef nonnull @.str.18, ptr noundef %31) #14
  %33 = tail call ptr @Perl_newSViv(i64 noundef 10) #14
  %34 = tail call ptr @Perl_newCONSTSUB(ptr noundef %28, ptr noundef nonnull @.str.19, ptr noundef %33) #14
  tail call fastcc void @init_perinterp() #15
  %35 = tail call ptr @Perl_gv_fetchpv(ptr noundef nonnull @.str.20, i32 noundef 2, i32 noundef 3) #14
  tail call void @Perl_xs_boot_epilog(i32 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @Perl_xs_handshake(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newXS_flags(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Storable_init_perinterp(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %5 = load i32, ptr %3, align 4, !tbaa !13
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.3) #14
  br label %15

15:                                               ; preds = %14, %1
  tail call fastcc void @init_perinterp() #15
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %17 = getelementptr ptr, ptr %16, i64 %7
  store ptr %17, ptr @PL_stack_sp, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Storable_pstore(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %5 = load i32, ptr %3, align 4, !tbaa !13
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = load ptr, ptr %0, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.xpvcv, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !11
  %15 = and i64 %11, 34359738360
  %16 = icmp eq i64 %15, 16
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.21) #14
  %18 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  br label %19

19:                                               ; preds = %17, %1
  %20 = phi ptr [ %18, %17 ], [ %6, %1 ]
  %21 = add nsw i32 %5, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !12
  %25 = tail call ptr @Perl_sv_2io(ptr noundef %24) #14
  %26 = load ptr, ptr %25, align 8, !tbaa !14
  %27 = getelementptr inbounds %struct.xpvio, ptr %26, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !16
  %29 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %30 = getelementptr ptr, ptr %29, i64 %7
  %31 = getelementptr ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !12
  %33 = tail call fastcc i32 @do_store(ptr noundef %28, ptr noundef %32, i32 noundef 0, i32 noundef %14, ptr noundef null) #15, !range !19
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr @PL_sv_undef, ptr @PL_sv_yes
  %36 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %37 = getelementptr inbounds ptr, ptr %36, i64 %22
  store ptr %35, ptr %37, align 8, !tbaa !12
  %38 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %39 = getelementptr inbounds ptr, ptr %38, i64 %22
  store ptr %39, ptr @PL_stack_sp, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Storable_mstore(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %4 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %5 = getelementptr inbounds i32, ptr %4, i64 -1
  store ptr %5, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %6 = load i32, ptr %4, align 4, !tbaa !13
  %7 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %8 = add nsw i32 %6, 1
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %7, i64 %9
  %11 = ptrtoint ptr %3 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = load ptr, ptr %0, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.xpvcv, ptr %14, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !11
  %17 = and i64 %13, 34359738360
  %18 = icmp eq i64 %17, 8
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.53) #14
  %20 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  br label %21

21:                                               ; preds = %19, %1
  %22 = phi ptr [ %20, %19 ], [ %7, %1 ]
  %23 = sext i32 %8 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  store ptr @PL_sv_undef, ptr %2, align 8, !tbaa !12
  %26 = call fastcc i32 @do_store(ptr noundef null, ptr noundef %25, i32 noundef 0, i32 noundef %16, ptr noundef nonnull %2) #15, !range !19
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load ptr, ptr %2, align 8, !tbaa !12
  br label %31

30:                                               ; preds = %21
  store ptr @PL_sv_undef, ptr %2, align 8, !tbaa !12
  br label %31

31:                                               ; preds = %28, %30
  %32 = phi ptr [ %29, %28 ], [ @PL_sv_undef, %30 ]
  %33 = call ptr @Perl_sv_2mortal(ptr noundef %32) #14
  %34 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %35 = getelementptr inbounds ptr, ptr %34, i64 %23
  store ptr %33, ptr %35, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  %36 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %37 = getelementptr inbounds ptr, ptr %36, i64 %23
  store ptr %37, ptr @PL_stack_sp, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Storable_pretrieve(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %5 = load i32, ptr %3, align 4, !tbaa !13
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.54) #14
  %15 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %6, %1 ]
  %18 = add nsw i32 %5, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !12
  %22 = tail call ptr @Perl_sv_2io(ptr noundef %21) #14
  %23 = getelementptr inbounds %struct.io, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  %25 = tail call fastcc ptr @pretrieve(ptr noundef %24) #15
  %26 = tail call ptr @Perl_sv_2mortal(ptr noundef %25) #14
  %27 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %28 = getelementptr inbounds ptr, ptr %27, i64 %19
  store ptr %26, ptr %28, align 8, !tbaa !12
  %29 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %30 = getelementptr inbounds ptr, ptr %29, i64 %19
  store ptr %30, ptr @PL_stack_sp, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Storable_mretrieve(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %5 = load i32, ptr %3, align 4, !tbaa !13
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.89) #14
  %15 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %6, %1 ]
  %18 = add nsw i32 %5, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !12
  %22 = tail call fastcc ptr @mretrieve(ptr noundef %21) #15
  %23 = tail call ptr @Perl_sv_2mortal(ptr noundef %22) #14
  %24 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %25 = getelementptr inbounds ptr, ptr %24, i64 %19
  store ptr %23, ptr %25, align 8, !tbaa !12
  %26 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %27 = getelementptr inbounds ptr, ptr %26, i64 %19
  store ptr %27, ptr @PL_stack_sp, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Storable_dclone(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %5 = load i32, ptr %3, align 4, !tbaa !13
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = and i64 %11, 34359738360
  %13 = icmp eq i64 %12, 8
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef %0, ptr noundef nonnull @.str.89) #14
  %15 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %6, %1 ]
  %18 = add nsw i32 %5, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !12
  %22 = tail call fastcc ptr @dclone(ptr noundef %21) #15
  %23 = tail call ptr @Perl_sv_2mortal(ptr noundef %22) #14
  %24 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %25 = getelementptr inbounds ptr, ptr %24, i64 %19
  store ptr %23, ptr %25, align 8, !tbaa !12
  %26 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %27 = getelementptr inbounds ptr, ptr %26, i64 %19
  store ptr %27, ptr @PL_stack_sp, align 8, !tbaa !12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @XS_Storable_last_op_in_netorder(ptr noundef %0) #0 {
  %2 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %3 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %4 = getelementptr inbounds i32, ptr %3, i64 -1
  store ptr %4, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %5 = load i32, ptr %3, align 4, !tbaa !13
  %6 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = ptrtoint ptr %2 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = load ptr, ptr %0, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.xpvcv, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !11
  %15 = and i64 %11, 34359738360
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  tail call void @Perl_croak_xs_usage(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #14
  br label %18

18:                                               ; preds = %17, %1
  %19 = icmp eq i32 %14, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr @Context_ptr, align 8, !tbaa !12
  %22 = load i32, ptr %21, align 8, !tbaa !20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = add nsw i32 %5, 1
  br label %40

26:                                               ; preds = %18
  %27 = tail call fastcc i32 @last_op_in_netorder() #15
  %28 = freeze i32 %27
  %29 = icmp eq i32 %28, 0
  %30 = add nsw i32 %5, 1
  br i1 %29, label %40, label %38

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !23
  %34 = and i32 %33, %14
  %35 = freeze i32 %34
  %36 = icmp eq i32 %35, 0
  %37 = add nsw i32 %5, 1
  br i1 %36, label %40, label %38

38:                                               ; preds = %26, %31
  %39 = phi i32 [ %30, %26 ], [ %37, %31 ]
  br label %40

40:                                               ; preds = %26, %24, %31, %38
  %41 = phi i32 [ %39, %38 ], [ %37, %31 ], [ %25, %24 ], [ %30, %26 ]
  %42 = phi ptr [ @PL_sv_yes, %38 ], [ @PL_sv_no, %31 ], [ @PL_sv_no, %24 ], [ @PL_sv_no, %26 ]
  %43 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %44 = sext i32 %41 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  store ptr %42, ptr %45, align 8, !tbaa !12
  %46 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %47 = getelementptr inbounds ptr, ptr %46, i64 %44
  store ptr %47, ptr @PL_stack_sp, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @Perl_gv_stashpvn(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newCONSTSUB(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSViv(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_perinterp() unnamed_addr #0 {
  %1 = tail call ptr @Perl_newSV(i64 noundef 271) #14
  %2 = tail call ptr @Perl_newRV_noinc(ptr noundef %1) #14
  %3 = tail call ptr @Perl_sv_magicext(ptr noundef %1, ptr noundef null, i32 noundef 126, ptr noundef nonnull @vtbl_storable, ptr noundef null, i32 noundef 0) #14
  %4 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %5, i8 0, i64 272, i1 false)
  %6 = getelementptr inbounds %struct.stcxt, ptr %5, i64 0, i32 29
  store ptr %2, ptr %6, align 8, !tbaa !24
  store ptr %5, ptr @Context_ptr, align 8, !tbaa !12
  %7 = getelementptr inbounds %struct.stcxt, ptr %5, i64 0, i32 14
  store i32 -1, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.stcxt, ptr %5, i64 0, i32 18
  store i32 -1, ptr %8, align 4, !tbaa !26
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_gv_fetchpv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_xs_boot_epilog(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_croak_xs_usage(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2io(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @do_store(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef writeonly %4) unnamed_addr #0 {
  %6 = load ptr, ptr @Context_ptr, align 8, !tbaa !12
  %7 = or i32 %2, 1
  %8 = getelementptr inbounds %struct.stcxt, ptr %6, i64 0, i32 19
  %9 = load i32, ptr %8, align 8, !tbaa !27
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call fastcc void @clean_context(ptr noundef nonnull %6) #15
  br label %12

12:                                               ; preds = %11, %5
  %13 = load i32, ptr %6, align 8, !tbaa !20
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = tail call fastcc ptr @allocate_context(ptr noundef nonnull %6) #15
  %17 = load i32, ptr %16, align 8, !tbaa !20
  %18 = add nsw i32 %17, 1
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i32 [ %18, %15 ], [ 1, %12 ]
  %21 = phi ptr [ %16, %15 ], [ %6, %12 ]
  store i32 %20, ptr %21, align 8, !tbaa !20
  %22 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !28
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 19
  store i32 1, ptr %27, align 8, !tbaa !27
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.22) #14
  br label %28

28:                                               ; preds = %26, %19
  %29 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = icmp eq ptr %0, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 22
  %34 = load ptr, ptr %33, align 8, !tbaa !30
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 22, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !31
  br label %42

39:                                               ; preds = %32
  %40 = tail call ptr @Perl_safesysmalloc(i64 noundef 8192) #14
  store ptr %40, ptr %33, align 8, !tbaa !30
  %41 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 22, i32 1
  store i64 8192, ptr %41, align 8, !tbaa !31
  br label %42

42:                                               ; preds = %36, %39
  %43 = phi i64 [ 8192, %39 ], [ %38, %36 ]
  %44 = phi ptr [ %40, %39 ], [ %34, %36 ]
  %45 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 22, i32 2
  store ptr %44, ptr %45, align 8, !tbaa !32
  %46 = getelementptr inbounds i8, ptr %44, i64 %43
  %47 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 22, i32 3
  store ptr %46, ptr %47, align 8, !tbaa !33
  br label %48

48:                                               ; preds = %42, %28
  tail call fastcc void @init_store_context(ptr noundef nonnull %21, ptr noundef %0, i32 noundef %7, i32 noundef %3) #15
  %49 = tail call fastcc i32 @magic_write(ptr noundef nonnull %21) #15, !range !34
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %73, label %51

51:                                               ; preds = %48
  %52 = tail call fastcc i32 @store(ptr noundef nonnull %21, ptr noundef %30) #15
  %53 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 24
  %54 = load ptr, ptr %53, align 8, !tbaa !35
  %55 = icmp eq ptr %54, null
  %56 = icmp ne ptr %4, null
  %57 = and i1 %56, %55
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = tail call fastcc ptr @mbuf2sv() #15
  store ptr %59, ptr %4, align 8, !tbaa !12
  br label %60

60:                                               ; preds = %58, %51
  tail call fastcc void @clean_store_context(ptr noundef nonnull %21) #15
  %61 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 28
  %62 = load ptr, ptr %61, align 8, !tbaa !36
  %63 = icmp eq ptr %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !23
  %67 = and i32 %66, 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  tail call fastcc void @free_context(ptr noundef nonnull %21) #15
  br label %70

70:                                               ; preds = %69, %64, %60
  %71 = icmp eq i32 %52, 0
  %72 = zext i1 %71 to i32
  br label %73

73:                                               ; preds = %48, %70
  %74 = phi i32 [ %72, %70 ], [ 0, %48 ]
  ret i32 %74
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clean_context(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 20
  %3 = load i32, ptr %2, align 4, !tbaa !37
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  store i32 0, ptr %2, align 4, !tbaa !37
  %6 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %7 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !38
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !23
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call fastcc void @clean_retrieve_context(ptr noundef nonnull %0) #15
  br label %19

14:                                               ; preds = %8
  %15 = and i32 %10, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call fastcc void @clean_store_context(ptr noundef nonnull %0) #15
  br label %19

18:                                               ; preds = %14
  tail call fastcc void @reset_context(ptr noundef nonnull %0) #15
  br label %19

19:                                               ; preds = %17, %18, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @allocate_context(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call ptr @Perl_newSV(i64 noundef 271) #14
  %3 = tail call ptr @Perl_newRV_noinc(ptr noundef %2) #14
  %4 = tail call ptr @Perl_sv_magicext(ptr noundef %2, ptr noundef null, i32 noundef 126, ptr noundef nonnull @vtbl_storable, ptr noundef null, i32 noundef 0) #14
  %5 = getelementptr inbounds %struct.sv, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(272) %6, i8 0, i64 272, i1 false)
  %7 = getelementptr inbounds %struct.stcxt, ptr %6, i64 0, i32 29
  store ptr %3, ptr %7, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 29
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  %10 = getelementptr inbounds %struct.stcxt, ptr %6, i64 0, i32 28
  store ptr %9, ptr %10, align 8, !tbaa !36
  store ptr %6, ptr @Context_ptr, align 8, !tbaa !12
  ret ptr %6
}

; Function Attrs: optsize
declare void @Perl_croak(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_safesysmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_store_context(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  store i32 %3, ptr %5, align 8, !tbaa !40
  %6 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 14
  store i32 -1, ptr %6, align 8, !tbaa !25
  %7 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 15
  store i32 -1, ptr %7, align 4, !tbaa !41
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 16
  store ptr null, ptr %8, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 17
  store i32 -1, ptr %9, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 -1, i64 16, i1 false)
  store ptr %1, ptr %11, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 1
  store i32 %2, ptr %12, align 4, !tbaa !23
  store i32 1, ptr %0, align 8, !tbaa !20
  %13 = tail call ptr @Perl_ptr_table_new() #14
  %14 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 3
  store ptr null, ptr %15, align 8, !tbaa !45
  %16 = tail call ptr @Perl_newSV_type(i32 noundef 12) #14
  %17 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 7
  store ptr %16, ptr %17, align 8, !tbaa !46
  %18 = load ptr, ptr %16, align 8, !tbaa !47
  %19 = getelementptr inbounds %struct.xpvhv, ptr %18, i64 0, i32 3
  store i64 4095, ptr %19, align 8, !tbaa !49
  %20 = tail call ptr @Perl_newSV_type(i32 noundef 12) #14
  %21 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 9
  store ptr %20, ptr %21, align 8, !tbaa !51
  %22 = tail call ptr @Perl_newSV_type(i32 noundef 11) #14
  %23 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 4
  store ptr %22, ptr %23, align 8, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @magic_write(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %3 = load i32, ptr %2, align 8, !tbaa !40
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i64 19, i64 6
  %6 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  %9 = select i1 %4, ptr getelementptr inbounds ([19 x i8], ptr @magic_write.file_header, i64 0, i64 4), ptr getelementptr inbounds ([6 x i8], ptr @magic_write.network_file_header, i64 0, i64 4)
  %10 = add nsw i64 %5, -4
  br i1 %8, label %11, label %40

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !32
  %14 = getelementptr inbounds i8, ptr %13, i64 %10
  %15 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !33
  %17 = icmp ugt ptr %14, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %20 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !31
  %22 = add i64 %21, %10
  %23 = load ptr, ptr %19, align 8, !tbaa !30
  %24 = ptrtoint ptr %13 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = sub i64 %24, %25
  %27 = shl i64 %22, 32
  %28 = add i64 %27, 35180077121536
  %29 = ashr exact i64 %28, 32
  %30 = and i64 %29, -8192
  %31 = tail call ptr @Perl_safesysrealloc(ptr noundef %23, i64 noundef %30) #14
  store ptr %31, ptr %19, align 8, !tbaa !30
  store i64 %30, ptr %20, align 8, !tbaa !31
  %32 = shl i64 %26, 32
  %33 = ashr exact i64 %32, 32
  %34 = getelementptr inbounds i8, ptr %31, i64 %33
  store ptr %34, ptr %12, align 8, !tbaa !32
  %35 = getelementptr inbounds i8, ptr %31, i64 %30
  store ptr %35, ptr %15, align 8, !tbaa !33
  br label %36

36:                                               ; preds = %18, %11
  %37 = phi ptr [ %34, %18 ], [ %13, %11 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %37, ptr noundef nonnull align 1 dereferenceable(1) %9, i64 %10, i1 false)
  %38 = load ptr, ptr %12, align 8, !tbaa !32
  %39 = getelementptr inbounds i8, ptr %38, i64 %10
  store ptr %39, ptr %12, align 8, !tbaa !32
  br label %44

40:                                               ; preds = %1
  %41 = select i1 %4, ptr @magic_write.file_header, ptr @magic_write.network_file_header
  %42 = tail call i64 @Perl_PerlIO_write(ptr noundef nonnull %7, ptr noundef nonnull %41, i64 noundef %5) #14
  %43 = icmp eq i64 %42, %5
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %40, %44
  %46 = phi i32 [ 0, %44 ], [ -1, %40 ]
  ret i32 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @store(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = tail call ptr @Perl_ptr_table_fetch(ptr noundef %5, ptr noundef %1) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %95, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %9 = icmp eq ptr %1, @PL_sv_undef
  br i1 %9, label %91, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds i8, ptr %6, i64 -1
  %12 = ptrtoint ptr %11 to i64
  %13 = trunc i64 %12 to i32
  %14 = tail call fastcc i32 @__bswap_32(i32 noundef %13) #15
  store i32 %14, ptr %3, align 4, !tbaa !13
  %15 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !32
  %21 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !33
  %23 = icmp ult ptr %20, %22
  br i1 %23, label %44, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %26 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !31
  %28 = load ptr, ptr %25, align 8, !tbaa !30
  %29 = ptrtoint ptr %20 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = shl i64 %27, 32
  %33 = and i64 %32, -35184372088832
  %34 = add i64 %33, 35184372088832
  %35 = ashr exact i64 %34, 32
  %36 = tail call ptr @Perl_safesysrealloc(ptr noundef %28, i64 noundef %35) #14
  store ptr %36, ptr %25, align 8, !tbaa !30
  store i64 %35, ptr %26, align 8, !tbaa !31
  %37 = shl i64 %31, 32
  %38 = ashr exact i64 %37, 32
  %39 = getelementptr inbounds i8, ptr %36, i64 %38
  %40 = getelementptr inbounds i8, ptr %36, i64 %35
  store ptr %40, ptr %21, align 8, !tbaa !33
  br label %44

41:                                               ; preds = %10
  %42 = tail call i32 @PerlIO_putc(ptr noundef nonnull %16, i32 noundef 0) #14
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %89, label %47

44:                                               ; preds = %18, %24
  %45 = phi ptr [ %39, %24 ], [ %20, %18 ]
  %46 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %46, ptr %19, align 8, !tbaa !32
  store i8 0, ptr %45, align 1, !tbaa !11
  br label %47

47:                                               ; preds = %44, %41
  %48 = load ptr, ptr %15, align 8, !tbaa !35
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %85

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !32
  %53 = getelementptr inbounds i8, ptr %52, i64 4
  %54 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !33
  %56 = icmp ugt ptr %53, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %59 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !31
  %61 = load ptr, ptr %58, align 8, !tbaa !30
  %62 = ptrtoint ptr %52 to i64
  %63 = ptrtoint ptr %61 to i64
  %64 = sub i64 %62, %63
  %65 = shl i64 %60, 32
  %66 = add i64 %65, 35197256990720
  %67 = ashr exact i64 %66, 32
  %68 = and i64 %67, -8192
  %69 = tail call ptr @Perl_safesysrealloc(ptr noundef %61, i64 noundef %68) #14
  store ptr %69, ptr %58, align 8, !tbaa !30
  store i64 %68, ptr %59, align 8, !tbaa !31
  %70 = shl i64 %64, 32
  %71 = ashr exact i64 %70, 32
  %72 = getelementptr inbounds i8, ptr %69, i64 %71
  store ptr %72, ptr %51, align 8, !tbaa !32
  %73 = getelementptr inbounds i8, ptr %69, i64 %68
  store ptr %73, ptr %54, align 8, !tbaa !33
  br label %74

74:                                               ; preds = %57, %50
  %75 = phi ptr [ %72, %57 ], [ %52, %50 ]
  %76 = ptrtoint ptr %75 to i64
  %77 = and i64 %76, 3
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store i32 %14, ptr %75, align 4, !tbaa !13
  br label %82

80:                                               ; preds = %74
  store i32 %14, ptr %75, align 1
  %81 = load ptr, ptr %51, align 8, !tbaa !32
  br label %82

82:                                               ; preds = %80, %79
  %83 = phi ptr [ %81, %80 ], [ %75, %79 ]
  %84 = getelementptr inbounds i8, ptr %83, i64 4
  store ptr %84, ptr %51, align 8, !tbaa !32
  br label %88

85:                                               ; preds = %47
  %86 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %48, ptr noundef nonnull %3, i64 noundef 4) #14
  %87 = icmp eq i64 %86, 4
  br i1 %87, label %88, label %89

88:                                               ; preds = %85, %82
  br label %89

89:                                               ; preds = %85, %41, %88
  %90 = phi i32 [ -1, %85 ], [ -1, %41 ], [ 0, %88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %117

91:                                               ; preds = %8
  %92 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %93 = load i64, ptr %92, align 8, !tbaa !53
  %94 = add nsw i64 %93, 1
  store i64 %94, ptr %92, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %102

95:                                               ; preds = %2
  %96 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %97 = load i64, ptr %96, align 8, !tbaa !53
  %98 = add nsw i64 %97, 1
  store i64 %98, ptr %96, align 8, !tbaa !53
  %99 = add nsw i64 %97, 2
  %100 = inttoptr i64 %99 to ptr
  tail call void @Perl_ptr_table_store(ptr noundef %5, ptr noundef %1, ptr noundef %100) #14
  %101 = tail call fastcc i32 @sv_type(ptr noundef %1) #15, !range !54
  br label %102

102:                                              ; preds = %91, %95
  %103 = phi i32 [ 1, %91 ], [ %101, %95 ]
  %104 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %105 = load i32, ptr %104, align 4, !tbaa !28
  %106 = and i32 %105, 1048576
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %102
  %109 = load ptr, ptr %1, align 8, !tbaa !55
  %110 = load ptr, ptr %109, align 8, !tbaa !56
  %111 = tail call fastcc i32 @store_blessed(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %103, ptr noundef %110) #15
  br label %117

112:                                              ; preds = %102
  %113 = zext nneg i32 %103 to i64
  %114 = getelementptr inbounds [8 x ptr], ptr @sv_store, i64 0, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !12
  %116 = tail call i32 %115(ptr noundef nonnull %0, ptr noundef nonnull %1) #14
  br label %117

117:                                              ; preds = %89, %108, %112
  %118 = phi i32 [ %111, %108 ], [ %116, %112 ], [ %90, %89 ]
  ret i32 %118
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @mbuf2sv() unnamed_addr #0 {
  %1 = load ptr, ptr @Context_ptr, align 8, !tbaa !12
  %2 = getelementptr inbounds %struct.stcxt, ptr %1, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !30
  %4 = getelementptr inbounds %struct.stcxt, ptr %1, i64 0, i32 22, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !32
  %6 = ptrtoint ptr %5 to i64
  %7 = ptrtoint ptr %3 to i64
  %8 = sub i64 %6, %7
  %9 = tail call ptr @Perl_newSVpv(ptr noundef %3, i64 noundef %8) #14
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clean_store_context(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @Perl_hv_iterinit(ptr noundef nonnull %3) #14
  %7 = load ptr, ptr %2, align 8, !tbaa !46
  %8 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %7, i32 noundef 0) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %5, %10
  %11 = phi ptr [ %14, %10 ], [ %8, %5 ]
  %12 = getelementptr inbounds %struct.he, ptr %11, i64 0, i32 2
  store ptr @PL_sv_undef, ptr %12, align 8, !tbaa !11
  %13 = load ptr, ptr %2, align 8, !tbaa !46
  %14 = tail call ptr @Perl_hv_iternext_flags(ptr noundef %13, i32 noundef 0) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %10, !llvm.loop !58

16:                                               ; preds = %10, %5, %1
  %17 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store ptr null, ptr %17, align 8, !tbaa !44
  tail call void @Perl_ptr_table_free(ptr noundef nonnull %18) #14
  br label %21

21:                                               ; preds = %20, %16
  %22 = load ptr, ptr %2, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store ptr null, ptr %2, align 8, !tbaa !46
  tail call void @Perl_hv_undef_flags(ptr noundef nonnull %22, i32 noundef 0) #14
  tail call void @Perl_sv_free(ptr noundef nonnull %22) #14
  br label %25

25:                                               ; preds = %24, %21
  %26 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !51
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store ptr null, ptr %26, align 8, !tbaa !51
  tail call void @Perl_hv_undef_flags(ptr noundef nonnull %27, i32 noundef 0) #14
  tail call void @Perl_sv_free(ptr noundef nonnull %27) #14
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store ptr null, ptr %31, align 8, !tbaa !52
  tail call void @Perl_av_undef(ptr noundef nonnull %32) #14
  tail call void @Perl_sv_free(ptr noundef nonnull %32) #14
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 14
  store i32 -1, ptr %36, align 8, !tbaa !25
  %37 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 15
  store i32 -1, ptr %37, align 4, !tbaa !41
  %38 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 16
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %39) #15
  br label %42

42:                                               ; preds = %41, %35
  store ptr null, ptr %38, align 8, !tbaa !42
  %43 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 17
  store i32 -1, ptr %43, align 8, !tbaa !43
  tail call fastcc void @reset_context(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_context(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 28
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.sv, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  br label %10

10:                                               ; preds = %1, %5
  %11 = phi ptr [ %9, %5 ], [ null, %1 ]
  %12 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 29
  %13 = load ptr, ptr %12, align 8, !tbaa !24
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %13) #15
  store ptr %11, ptr @Context_ptr, align 8, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clean_retrieve_context(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store ptr null, ptr %2, align 8, !tbaa !60
  tail call void @Perl_av_undef(ptr noundef nonnull %3) #14
  tail call void @Perl_sv_free(ptr noundef nonnull %3) #14
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 6
  store i64 -1, ptr %7, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !62
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  store ptr null, ptr %8, align 8, !tbaa !62
  tail call void @Perl_av_undef(ptr noundef nonnull %9) #14
  tail call void @Perl_sv_free(ptr noundef nonnull %9) #14
  br label %12

12:                                               ; preds = %11, %6
  %13 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store ptr null, ptr %13, align 8, !tbaa !51
  tail call void @Perl_hv_undef_flags(ptr noundef nonnull %14, i32 noundef 0) #14
  tail call void @Perl_sv_free(ptr noundef nonnull %14) #14
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store ptr null, ptr %18, align 8, !tbaa !45
  tail call void @Perl_hv_undef_flags(ptr noundef nonnull %19, i32 noundef 0) #14
  tail call void @Perl_sv_free(ptr noundef nonnull %19) #14
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 18
  store i32 -1, ptr %23, align 4, !tbaa !26
  %24 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  store i32 0, ptr %24, align 8, !tbaa !63
  tail call fastcc void @reset_context(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @reset_context(ptr nocapture noundef %0) unnamed_addr #4 {
  store i32 0, ptr %0, align 8, !tbaa !20
  %2 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 0, ptr %2, align 8, !tbaa !27
  %3 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !23
  %5 = and i32 %4, -4
  store i32 %5, ptr %3, align 4, !tbaa !23
  ret void
}

; Function Attrs: optsize
declare void @Perl_av_undef(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_hv_undef_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newRV_noinc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_magicext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @storable_free(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #0 {
  %3 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.stcxt, ptr %4, i64 0, i32 21
  %6 = load ptr, ptr %5, align 8, !tbaa !64
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @Perl_safesysfree(ptr noundef nonnull %6) #14
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.stcxt, ptr %4, i64 0, i32 20
  %11 = load i32, ptr %10, align 4, !tbaa !37
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.stcxt, ptr %4, i64 0, i32 22
  %15 = load ptr, ptr %14, align 8, !tbaa !30
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  tail call void @Perl_safesysfree(ptr noundef nonnull %15) #14
  %18 = load i32, ptr %10, align 4, !tbaa !37
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %9, %17
  %21 = getelementptr inbounds %struct.stcxt, ptr %4, i64 0, i32 23
  %22 = load ptr, ptr %21, align 8, !tbaa !65
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @Perl_safesysfree(ptr noundef nonnull %22) #14
  br label %25

25:                                               ; preds = %13, %24, %20, %17
  ret i32 0
}

; Function Attrs: optsize
declare void @Perl_safesysfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_ptr_table_new() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSV_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_safesysrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_PerlIO_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_ptr_table_fetch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @__bswap_32(i32 noundef %0) unnamed_addr #6 {
  %2 = tail call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: optsize
declare i32 @PerlIO_putc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_ptr_table_store(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @sv_type(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !28
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %46 [
    i8 0, label %47
    i8 2, label %47
    i8 3, label %5
    i8 1, label %5
    i8 5, label %5
    i8 6, label %5
    i8 7, label %9
    i8 10, label %9
    i8 11, label %31
    i8 12, label %38
    i8 13, label %45
  ]

5:                                                ; preds = %1, %1, %1, %1
  %6 = lshr i32 %3, 11
  %7 = and i32 %6, 1
  %8 = xor i32 %7, 1
  br label %47

9:                                                ; preds = %1, %1
  %10 = and i32 %3, 14680064
  %11 = icmp eq i32 %10, 14680064
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 112) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %47

15:                                               ; preds = %12
  %16 = load i32, ptr %2, align 4, !tbaa !28
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi i32 [ %16, %15 ], [ %3, %9 ]
  %19 = and i32 %18, 14680064
  %20 = icmp eq i32 %19, 14680064
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 113) #14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %21
  %25 = load i32, ptr %2, align 4, !tbaa !28
  br label %26

26:                                               ; preds = %24, %17
  %27 = phi i32 [ %25, %24 ], [ %18, %17 ]
  %28 = lshr i32 %27, 11
  %29 = and i32 %28, 1
  %30 = xor i32 %29, 1
  br label %47

31:                                               ; preds = %1
  %32 = and i32 %3, 8388608
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %34, %31
  br label %47

38:                                               ; preds = %1
  %39 = and i32 %3, 8388608
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 80) #14
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %38
  br label %47

45:                                               ; preds = %1
  br label %47

46:                                               ; preds = %1
  br label %47

47:                                               ; preds = %41, %34, %21, %12, %1, %1, %46, %45, %44, %37, %26, %5
  %48 = phi i32 [ 7, %46 ], [ 6, %45 ], [ 3, %44 ], [ 2, %37 ], [ %30, %26 ], [ %8, %5 ], [ 1, %1 ], [ 1, %1 ], [ 5, %12 ], [ 4, %21 ], [ 4, %34 ], [ 4, %41 ]
  ret i32 %48
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @store_blessed(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  %11 = tail call fastcc ptr @pkg_can(ptr noundef %10, ptr noundef %3, ptr noundef nonnull @.str.23) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %4
  %14 = tail call fastcc i32 @store_hook(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %11) #15
  br label %467

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.hv, ptr %3, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !66
  %18 = and i32 %17, 33554432
  %19 = icmp ne i32 %18, 0
  tail call void @llvm.assume(i1 %19)
  %20 = getelementptr inbounds %struct.hv, ptr %3, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  %22 = load ptr, ptr %3, align 8, !tbaa !47
  %23 = getelementptr inbounds %struct.xpvhv, ptr %22, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !49
  %25 = getelementptr ptr, ptr %21, i64 %24
  %26 = getelementptr ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !11, !nonnull !67, !noundef !67
  %28 = getelementptr i8, ptr %25, i64 36
  %29 = load i32, ptr %28, align 4, !tbaa !68
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, ptr %26, ptr %27
  %32 = load ptr, ptr %31, align 8, !tbaa !11
  %33 = getelementptr inbounds %struct.hek, ptr %32, i64 0, i32 2
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33) #17
  %35 = trunc i64 %34 to i32
  store i32 %35, ptr %5, align 4, !tbaa !13
  %36 = call fastcc i32 @known_class(ptr noundef nonnull %0, ptr noundef nonnull %33, i32 noundef %35, ptr noundef nonnull %6) #15, !range !19
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  %40 = icmp eq ptr %39, null
  br i1 %37, label %229, label %41

41:                                               ; preds = %15
  br i1 %40, label %42, label %65

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !32
  %45 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !33
  %47 = icmp ult ptr %44, %46
  br i1 %47, label %68, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %50 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !31
  %52 = load ptr, ptr %49, align 8, !tbaa !30
  %53 = ptrtoint ptr %44 to i64
  %54 = ptrtoint ptr %52 to i64
  %55 = sub i64 %53, %54
  %56 = shl i64 %51, 32
  %57 = and i64 %56, -35184372088832
  %58 = add i64 %57, 35184372088832
  %59 = ashr exact i64 %58, 32
  %60 = tail call ptr @Perl_safesysrealloc(ptr noundef %52, i64 noundef %59) #14
  store ptr %60, ptr %49, align 8, !tbaa !30
  store i64 %59, ptr %50, align 8, !tbaa !31
  %61 = shl i64 %55, 32
  %62 = ashr exact i64 %61, 32
  %63 = getelementptr inbounds i8, ptr %60, i64 %62
  %64 = getelementptr inbounds i8, ptr %60, i64 %59
  store ptr %64, ptr %45, align 8, !tbaa !33
  br label %68

65:                                               ; preds = %41
  %66 = tail call i32 @PerlIO_putc(ptr noundef nonnull %39, i32 noundef 18) #14
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %467, label %71

68:                                               ; preds = %42, %48
  %69 = phi ptr [ %63, %48 ], [ %44, %42 ]
  %70 = getelementptr inbounds i8, ptr %69, i64 1
  store ptr %70, ptr %43, align 8, !tbaa !32
  store i8 18, ptr %69, align 1, !tbaa !11
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, ptr %6, align 4
  %73 = icmp slt i32 %72, 128
  br i1 %73, label %74, label %108

74:                                               ; preds = %71
  %75 = trunc i32 %72 to i8
  %76 = load ptr, ptr %38, align 8, !tbaa !35
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %104

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !32
  %81 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !33
  %83 = icmp ult ptr %80, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = getelementptr inbounds i8, ptr %80, i64 1
  store ptr %85, ptr %79, align 8, !tbaa !32
  store i8 %75, ptr %80, align 1, !tbaa !11
  br label %462

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %88 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %89 = load i64, ptr %88, align 8, !tbaa !31
  %90 = load ptr, ptr %87, align 8, !tbaa !30
  %91 = ptrtoint ptr %80 to i64
  %92 = ptrtoint ptr %90 to i64
  %93 = sub i64 %91, %92
  %94 = shl i64 %89, 32
  %95 = and i64 %94, -35184372088832
  %96 = add i64 %95, 35184372088832
  %97 = ashr exact i64 %96, 32
  %98 = tail call ptr @Perl_safesysrealloc(ptr noundef %90, i64 noundef %97) #14
  store ptr %98, ptr %87, align 8, !tbaa !30
  store i64 %97, ptr %88, align 8, !tbaa !31
  %99 = shl i64 %93, 32
  %100 = ashr exact i64 %99, 32
  %101 = getelementptr inbounds i8, ptr %98, i64 %100
  %102 = getelementptr inbounds i8, ptr %98, i64 %97
  store ptr %102, ptr %81, align 8, !tbaa !33
  %103 = getelementptr inbounds i8, ptr %101, i64 1
  store ptr %103, ptr %79, align 8, !tbaa !32
  store i8 %75, ptr %101, align 1, !tbaa !11
  br label %462

104:                                              ; preds = %74
  %105 = and i32 %72, 255
  %106 = tail call i32 @PerlIO_putc(ptr noundef nonnull %76, i32 noundef %105) #14
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %467, label %462

108:                                              ; preds = %71
  %109 = load ptr, ptr %38, align 8, !tbaa !35
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %134

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !32
  %114 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !33
  %116 = icmp ult ptr %113, %115
  br i1 %116, label %137, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %119 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %120 = load i64, ptr %119, align 8, !tbaa !31
  %121 = load ptr, ptr %118, align 8, !tbaa !30
  %122 = ptrtoint ptr %113 to i64
  %123 = ptrtoint ptr %121 to i64
  %124 = sub i64 %122, %123
  %125 = shl i64 %120, 32
  %126 = and i64 %125, -35184372088832
  %127 = add i64 %126, 35184372088832
  %128 = ashr exact i64 %127, 32
  %129 = tail call ptr @Perl_safesysrealloc(ptr noundef %121, i64 noundef %128) #14
  store ptr %129, ptr %118, align 8, !tbaa !30
  store i64 %128, ptr %119, align 8, !tbaa !31
  %130 = shl i64 %124, 32
  %131 = ashr exact i64 %130, 32
  %132 = getelementptr inbounds i8, ptr %129, i64 %131
  %133 = getelementptr inbounds i8, ptr %129, i64 %128
  store ptr %133, ptr %114, align 8, !tbaa !33
  br label %137

134:                                              ; preds = %108
  %135 = tail call i32 @PerlIO_putc(ptr noundef nonnull %109, i32 noundef 128) #14
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %467, label %140

137:                                              ; preds = %111, %117
  %138 = phi ptr [ %132, %117 ], [ %113, %111 ]
  %139 = getelementptr inbounds i8, ptr %138, i64 1
  store ptr %139, ptr %112, align 8, !tbaa !32
  store i8 -128, ptr %138, align 1, !tbaa !11
  br label %140

140:                                              ; preds = %137, %134
  %141 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %142 = load i32, ptr %141, align 8, !tbaa !40
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %188, label %144

144:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  %145 = tail call fastcc i32 @__bswap_32(i32 noundef %72) #15
  store i32 %145, ptr %7, align 4, !tbaa !13
  %146 = load ptr, ptr %38, align 8, !tbaa !35
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %183

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !32
  %151 = getelementptr inbounds i8, ptr %150, i64 4
  %152 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !33
  %154 = icmp ugt ptr %151, %153
  br i1 %154, label %155, label %172

155:                                              ; preds = %148
  %156 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %157 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %158 = load i64, ptr %157, align 8, !tbaa !31
  %159 = load ptr, ptr %156, align 8, !tbaa !30
  %160 = ptrtoint ptr %150 to i64
  %161 = ptrtoint ptr %159 to i64
  %162 = sub i64 %160, %161
  %163 = shl i64 %158, 32
  %164 = add i64 %163, 35197256990720
  %165 = ashr exact i64 %164, 32
  %166 = and i64 %165, -8192
  %167 = tail call ptr @Perl_safesysrealloc(ptr noundef %159, i64 noundef %166) #14
  store ptr %167, ptr %156, align 8, !tbaa !30
  store i64 %166, ptr %157, align 8, !tbaa !31
  %168 = shl i64 %162, 32
  %169 = ashr exact i64 %168, 32
  %170 = getelementptr inbounds i8, ptr %167, i64 %169
  store ptr %170, ptr %149, align 8, !tbaa !32
  %171 = getelementptr inbounds i8, ptr %167, i64 %166
  store ptr %171, ptr %152, align 8, !tbaa !33
  br label %172

172:                                              ; preds = %155, %148
  %173 = phi ptr [ %170, %155 ], [ %150, %148 ]
  %174 = ptrtoint ptr %173 to i64
  %175 = and i64 %174, 3
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  store i32 %145, ptr %173, align 4, !tbaa !13
  br label %180

178:                                              ; preds = %172
  store i32 %145, ptr %173, align 1
  %179 = load ptr, ptr %149, align 8, !tbaa !32
  br label %180

180:                                              ; preds = %178, %177
  %181 = phi ptr [ %179, %178 ], [ %173, %177 ]
  %182 = getelementptr inbounds i8, ptr %181, i64 4
  store ptr %182, ptr %149, align 8, !tbaa !32
  br label %186

183:                                              ; preds = %144
  %184 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %146, ptr noundef nonnull %7, i64 noundef 4) #14
  %185 = icmp eq i64 %184, 4
  br i1 %185, label %186, label %187

186:                                              ; preds = %183, %180
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  br label %462

187:                                              ; preds = %183
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  br label %467

188:                                              ; preds = %140
  %189 = load ptr, ptr %38, align 8, !tbaa !35
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %226

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !32
  %194 = getelementptr inbounds i8, ptr %193, i64 4
  %195 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %196 = load ptr, ptr %195, align 8, !tbaa !33
  %197 = icmp ugt ptr %194, %196
  br i1 %197, label %198, label %215

198:                                              ; preds = %191
  %199 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %200 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %201 = load i64, ptr %200, align 8, !tbaa !31
  %202 = load ptr, ptr %199, align 8, !tbaa !30
  %203 = ptrtoint ptr %193 to i64
  %204 = ptrtoint ptr %202 to i64
  %205 = sub i64 %203, %204
  %206 = shl i64 %201, 32
  %207 = add i64 %206, 35197256990720
  %208 = ashr exact i64 %207, 32
  %209 = and i64 %208, -8192
  %210 = tail call ptr @Perl_safesysrealloc(ptr noundef %202, i64 noundef %209) #14
  store ptr %210, ptr %199, align 8, !tbaa !30
  store i64 %209, ptr %200, align 8, !tbaa !31
  %211 = shl i64 %205, 32
  %212 = ashr exact i64 %211, 32
  %213 = getelementptr inbounds i8, ptr %210, i64 %212
  store ptr %213, ptr %192, align 8, !tbaa !32
  %214 = getelementptr inbounds i8, ptr %210, i64 %209
  store ptr %214, ptr %195, align 8, !tbaa !33
  br label %215

215:                                              ; preds = %198, %191
  %216 = phi ptr [ %213, %198 ], [ %193, %191 ]
  %217 = ptrtoint ptr %216 to i64
  %218 = and i64 %217, 3
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  store i32 %72, ptr %216, align 4, !tbaa !13
  br label %223

221:                                              ; preds = %215
  store i32 %72, ptr %216, align 1
  %222 = load ptr, ptr %192, align 8, !tbaa !32
  br label %223

223:                                              ; preds = %221, %220
  %224 = phi ptr [ %222, %221 ], [ %216, %220 ]
  %225 = getelementptr inbounds i8, ptr %224, i64 4
  store ptr %225, ptr %192, align 8, !tbaa !32
  br label %462

226:                                              ; preds = %188
  %227 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %189, ptr noundef nonnull %6, i64 noundef 4) #14
  %228 = icmp eq i64 %227, 4
  br i1 %228, label %462, label %467

229:                                              ; preds = %15
  br i1 %40, label %230, label %253

230:                                              ; preds = %229
  %231 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %232 = load ptr, ptr %231, align 8, !tbaa !32
  %233 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %234 = load ptr, ptr %233, align 8, !tbaa !33
  %235 = icmp ult ptr %232, %234
  br i1 %235, label %256, label %236

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %238 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %239 = load i64, ptr %238, align 8, !tbaa !31
  %240 = load ptr, ptr %237, align 8, !tbaa !30
  %241 = ptrtoint ptr %232 to i64
  %242 = ptrtoint ptr %240 to i64
  %243 = sub i64 %241, %242
  %244 = shl i64 %239, 32
  %245 = and i64 %244, -35184372088832
  %246 = add i64 %245, 35184372088832
  %247 = ashr exact i64 %246, 32
  %248 = tail call ptr @Perl_safesysrealloc(ptr noundef %240, i64 noundef %247) #14
  store ptr %248, ptr %237, align 8, !tbaa !30
  store i64 %247, ptr %238, align 8, !tbaa !31
  %249 = shl i64 %243, 32
  %250 = ashr exact i64 %249, 32
  %251 = getelementptr inbounds i8, ptr %248, i64 %250
  %252 = getelementptr inbounds i8, ptr %248, i64 %247
  store ptr %252, ptr %233, align 8, !tbaa !33
  br label %256

253:                                              ; preds = %229
  %254 = tail call i32 @PerlIO_putc(ptr noundef nonnull %39, i32 noundef 17) #14
  %255 = icmp eq i32 %254, -1
  br i1 %255, label %467, label %259

256:                                              ; preds = %230, %236
  %257 = phi ptr [ %251, %236 ], [ %232, %230 ]
  %258 = getelementptr inbounds i8, ptr %257, i64 1
  store ptr %258, ptr %231, align 8, !tbaa !32
  store i8 17, ptr %257, align 1, !tbaa !11
  br label %259

259:                                              ; preds = %256, %253
  %260 = icmp slt i32 %35, 128
  br i1 %260, label %261, label %295

261:                                              ; preds = %259
  %262 = trunc i64 %34 to i8
  %263 = load ptr, ptr %38, align 8, !tbaa !35
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %291

265:                                              ; preds = %261
  %266 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %267 = load ptr, ptr %266, align 8, !tbaa !32
  %268 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %269 = load ptr, ptr %268, align 8, !tbaa !33
  %270 = icmp ult ptr %267, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %265
  %272 = getelementptr inbounds i8, ptr %267, i64 1
  store ptr %272, ptr %266, align 8, !tbaa !32
  store i8 %262, ptr %267, align 1, !tbaa !11
  br label %416

273:                                              ; preds = %265
  %274 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %275 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %276 = load i64, ptr %275, align 8, !tbaa !31
  %277 = load ptr, ptr %274, align 8, !tbaa !30
  %278 = ptrtoint ptr %267 to i64
  %279 = ptrtoint ptr %277 to i64
  %280 = sub i64 %278, %279
  %281 = shl i64 %276, 32
  %282 = and i64 %281, -35184372088832
  %283 = add i64 %282, 35184372088832
  %284 = ashr exact i64 %283, 32
  %285 = tail call ptr @Perl_safesysrealloc(ptr noundef %277, i64 noundef %284) #14
  store ptr %285, ptr %274, align 8, !tbaa !30
  store i64 %284, ptr %275, align 8, !tbaa !31
  %286 = shl i64 %280, 32
  %287 = ashr exact i64 %286, 32
  %288 = getelementptr inbounds i8, ptr %285, i64 %287
  %289 = getelementptr inbounds i8, ptr %285, i64 %284
  store ptr %289, ptr %268, align 8, !tbaa !33
  %290 = getelementptr inbounds i8, ptr %288, i64 1
  store ptr %290, ptr %266, align 8, !tbaa !32
  store i8 %262, ptr %288, align 1, !tbaa !11
  br label %416

291:                                              ; preds = %261
  %292 = and i32 %35, 255
  %293 = tail call i32 @PerlIO_putc(ptr noundef nonnull %263, i32 noundef %292) #14
  %294 = icmp eq i32 %293, -1
  br i1 %294, label %467, label %416

295:                                              ; preds = %259
  %296 = load ptr, ptr %38, align 8, !tbaa !35
  %297 = icmp eq ptr %296, null
  br i1 %297, label %298, label %321

298:                                              ; preds = %295
  %299 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %300 = load ptr, ptr %299, align 8, !tbaa !32
  %301 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %302 = load ptr, ptr %301, align 8, !tbaa !33
  %303 = icmp ult ptr %300, %302
  br i1 %303, label %324, label %304

304:                                              ; preds = %298
  %305 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %306 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %307 = load i64, ptr %306, align 8, !tbaa !31
  %308 = load ptr, ptr %305, align 8, !tbaa !30
  %309 = ptrtoint ptr %300 to i64
  %310 = ptrtoint ptr %308 to i64
  %311 = sub i64 %309, %310
  %312 = shl i64 %307, 32
  %313 = and i64 %312, -35184372088832
  %314 = add i64 %313, 35184372088832
  %315 = ashr exact i64 %314, 32
  %316 = tail call ptr @Perl_safesysrealloc(ptr noundef %308, i64 noundef %315) #14
  store ptr %316, ptr %305, align 8, !tbaa !30
  store i64 %315, ptr %306, align 8, !tbaa !31
  %317 = shl i64 %311, 32
  %318 = ashr exact i64 %317, 32
  %319 = getelementptr inbounds i8, ptr %316, i64 %318
  %320 = getelementptr inbounds i8, ptr %316, i64 %315
  store ptr %320, ptr %301, align 8, !tbaa !33
  br label %324

321:                                              ; preds = %295
  %322 = tail call i32 @PerlIO_putc(ptr noundef nonnull %296, i32 noundef 128) #14
  %323 = icmp eq i32 %322, -1
  br i1 %323, label %467, label %327

324:                                              ; preds = %298, %304
  %325 = phi ptr [ %319, %304 ], [ %300, %298 ]
  %326 = getelementptr inbounds i8, ptr %325, i64 1
  store ptr %326, ptr %299, align 8, !tbaa !32
  store i8 -128, ptr %325, align 1, !tbaa !11
  br label %327

327:                                              ; preds = %324, %321
  %328 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %329 = load i32, ptr %328, align 8, !tbaa !40
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %375, label %331

331:                                              ; preds = %327
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  %332 = tail call fastcc i32 @__bswap_32(i32 noundef %35) #15
  store i32 %332, ptr %8, align 4, !tbaa !13
  %333 = load ptr, ptr %38, align 8, !tbaa !35
  %334 = icmp eq ptr %333, null
  br i1 %334, label %335, label %370

335:                                              ; preds = %331
  %336 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %337 = load ptr, ptr %336, align 8, !tbaa !32
  %338 = getelementptr inbounds i8, ptr %337, i64 4
  %339 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %340 = load ptr, ptr %339, align 8, !tbaa !33
  %341 = icmp ugt ptr %338, %340
  br i1 %341, label %342, label %359

342:                                              ; preds = %335
  %343 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %344 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %345 = load i64, ptr %344, align 8, !tbaa !31
  %346 = load ptr, ptr %343, align 8, !tbaa !30
  %347 = ptrtoint ptr %337 to i64
  %348 = ptrtoint ptr %346 to i64
  %349 = sub i64 %347, %348
  %350 = shl i64 %345, 32
  %351 = add i64 %350, 35197256990720
  %352 = ashr exact i64 %351, 32
  %353 = and i64 %352, -8192
  %354 = tail call ptr @Perl_safesysrealloc(ptr noundef %346, i64 noundef %353) #14
  store ptr %354, ptr %343, align 8, !tbaa !30
  store i64 %353, ptr %344, align 8, !tbaa !31
  %355 = shl i64 %349, 32
  %356 = ashr exact i64 %355, 32
  %357 = getelementptr inbounds i8, ptr %354, i64 %356
  store ptr %357, ptr %336, align 8, !tbaa !32
  %358 = getelementptr inbounds i8, ptr %354, i64 %353
  store ptr %358, ptr %339, align 8, !tbaa !33
  br label %359

359:                                              ; preds = %342, %335
  %360 = phi ptr [ %357, %342 ], [ %337, %335 ]
  %361 = ptrtoint ptr %360 to i64
  %362 = and i64 %361, 3
  %363 = icmp eq i64 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %359
  store i32 %332, ptr %360, align 4, !tbaa !13
  br label %367

365:                                              ; preds = %359
  store i32 %332, ptr %360, align 1
  %366 = load ptr, ptr %336, align 8, !tbaa !32
  br label %367

367:                                              ; preds = %365, %364
  %368 = phi ptr [ %366, %365 ], [ %360, %364 ]
  %369 = getelementptr inbounds i8, ptr %368, i64 4
  store ptr %369, ptr %336, align 8, !tbaa !32
  br label %373

370:                                              ; preds = %331
  %371 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %333, ptr noundef nonnull %8, i64 noundef 4) #14
  %372 = icmp eq i64 %371, 4
  br i1 %372, label %373, label %374

373:                                              ; preds = %370, %367
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  br label %416

374:                                              ; preds = %370
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  br label %467

375:                                              ; preds = %327
  %376 = load ptr, ptr %38, align 8, !tbaa !35
  %377 = icmp eq ptr %376, null
  br i1 %377, label %378, label %413

378:                                              ; preds = %375
  %379 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %380 = load ptr, ptr %379, align 8, !tbaa !32
  %381 = getelementptr inbounds i8, ptr %380, i64 4
  %382 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %383 = load ptr, ptr %382, align 8, !tbaa !33
  %384 = icmp ugt ptr %381, %383
  br i1 %384, label %385, label %402

385:                                              ; preds = %378
  %386 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %387 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %388 = load i64, ptr %387, align 8, !tbaa !31
  %389 = load ptr, ptr %386, align 8, !tbaa !30
  %390 = ptrtoint ptr %380 to i64
  %391 = ptrtoint ptr %389 to i64
  %392 = sub i64 %390, %391
  %393 = shl i64 %388, 32
  %394 = add i64 %393, 35197256990720
  %395 = ashr exact i64 %394, 32
  %396 = and i64 %395, -8192
  %397 = tail call ptr @Perl_safesysrealloc(ptr noundef %389, i64 noundef %396) #14
  store ptr %397, ptr %386, align 8, !tbaa !30
  store i64 %396, ptr %387, align 8, !tbaa !31
  %398 = shl i64 %392, 32
  %399 = ashr exact i64 %398, 32
  %400 = getelementptr inbounds i8, ptr %397, i64 %399
  store ptr %400, ptr %379, align 8, !tbaa !32
  %401 = getelementptr inbounds i8, ptr %397, i64 %396
  store ptr %401, ptr %382, align 8, !tbaa !33
  br label %402

402:                                              ; preds = %385, %378
  %403 = phi ptr [ %400, %385 ], [ %380, %378 ]
  %404 = ptrtoint ptr %403 to i64
  %405 = and i64 %404, 3
  %406 = icmp eq i64 %405, 0
  br i1 %406, label %407, label %408

407:                                              ; preds = %402
  store i32 %35, ptr %403, align 4, !tbaa !13
  br label %410

408:                                              ; preds = %402
  store i32 %35, ptr %403, align 1
  %409 = load ptr, ptr %379, align 8, !tbaa !32
  br label %410

410:                                              ; preds = %408, %407
  %411 = phi ptr [ %409, %408 ], [ %403, %407 ]
  %412 = getelementptr inbounds i8, ptr %411, i64 4
  store ptr %412, ptr %379, align 8, !tbaa !32
  br label %416

413:                                              ; preds = %375
  %414 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %376, ptr noundef nonnull %5, i64 noundef 4) #14
  %415 = icmp eq i64 %414, 4
  br i1 %415, label %416, label %467

416:                                              ; preds = %413, %410, %373, %273, %271, %291
  %417 = load ptr, ptr %38, align 8, !tbaa !35
  %418 = icmp eq ptr %417, null
  br i1 %418, label %419, label %455

419:                                              ; preds = %416
  %420 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %421 = load ptr, ptr %420, align 8, !tbaa !32
  %422 = load i32, ptr %5, align 4, !tbaa !13
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i8, ptr %421, i64 %423
  %425 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %426 = load ptr, ptr %425, align 8, !tbaa !33
  %427 = icmp ugt ptr %424, %426
  br i1 %427, label %428, label %448

428:                                              ; preds = %419
  %429 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %430 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %431 = load i64, ptr %430, align 8, !tbaa !31
  %432 = trunc i64 %431 to i32
  %433 = add i32 %422, 8191
  %434 = add i32 %433, %432
  %435 = and i32 %434, -8192
  %436 = load ptr, ptr %429, align 8, !tbaa !30
  %437 = ptrtoint ptr %421 to i64
  %438 = ptrtoint ptr %436 to i64
  %439 = sub i64 %437, %438
  %440 = sext i32 %435 to i64
  %441 = call ptr @Perl_safesysrealloc(ptr noundef %436, i64 noundef %440) #14
  store ptr %441, ptr %429, align 8, !tbaa !30
  store i64 %440, ptr %430, align 8, !tbaa !31
  %442 = shl i64 %439, 32
  %443 = ashr exact i64 %442, 32
  %444 = getelementptr inbounds i8, ptr %441, i64 %443
  store ptr %444, ptr %420, align 8, !tbaa !32
  %445 = getelementptr inbounds i8, ptr %441, i64 %440
  store ptr %445, ptr %425, align 8, !tbaa !33
  %446 = load i32, ptr %5, align 4, !tbaa !13
  %447 = sext i32 %446 to i64
  br label %448

448:                                              ; preds = %428, %419
  %449 = phi i64 [ %447, %428 ], [ %423, %419 ]
  %450 = phi ptr [ %444, %428 ], [ %421, %419 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %450, ptr nonnull align 1 %33, i64 %449, i1 false)
  %451 = load i32, ptr %5, align 4, !tbaa !13
  %452 = load ptr, ptr %420, align 8, !tbaa !32
  %453 = sext i32 %451 to i64
  %454 = getelementptr inbounds i8, ptr %452, i64 %453
  store ptr %454, ptr %420, align 8, !tbaa !32
  br label %462

455:                                              ; preds = %416
  %456 = load i32, ptr %5, align 4, !tbaa !13
  %457 = sext i32 %456 to i64
  %458 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %417, ptr noundef nonnull %33, i64 noundef %457) #14
  %459 = load i32, ptr %5, align 4, !tbaa !13
  %460 = sext i32 %459 to i64
  %461 = icmp eq i64 %458, %460
  br i1 %461, label %462, label %467

462:                                              ; preds = %226, %223, %186, %86, %84, %104, %448, %455
  %463 = zext nneg i32 %2 to i64
  %464 = getelementptr inbounds [8 x ptr], ptr @sv_store, i64 0, i64 %463
  %465 = load ptr, ptr %464, align 8, !tbaa !12
  %466 = call i32 %465(ptr noundef nonnull %0, ptr noundef %1) #14
  br label %467

467:                                              ; preds = %455, %321, %374, %413, %291, %253, %134, %187, %226, %104, %65, %462, %13
  %468 = phi i32 [ %14, %13 ], [ %466, %462 ], [ -1, %65 ], [ -1, %104 ], [ -1, %226 ], [ -1, %187 ], [ -1, %134 ], [ -1, %253 ], [ -1, %291 ], [ -1, %413 ], [ -1, %374 ], [ -1, %321 ], [ -1, %455 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i32 %468
}

; Function Attrs: optsize
declare ptr @Perl_mg_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @pkg_can(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = and i32 %5, 33554432
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = load ptr, ptr %1, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.xpvhv, ptr %11, i64 0, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !49
  %14 = getelementptr ptr, ptr %10, i64 %13
  %15 = getelementptr ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %8
  %19 = getelementptr i8, ptr %14, i64 36
  %20 = load i32, ptr %19, align 4, !tbaa !68
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %16, align 8, !tbaa !11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18, %22
  %26 = phi ptr [ %23, %22 ], [ %16, %18 ]
  %27 = getelementptr inbounds %struct.hek, ptr %26, i64 0, i32 2
  br label %28

28:                                               ; preds = %3, %8, %22, %25
  %29 = phi ptr [ %27, %25 ], [ null, %22 ], [ null, %8 ], [ null, %3 ]
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %29) #17
  %31 = trunc i64 %30 to i32
  %32 = tail call ptr @Perl_hv_common_key_len(ptr noundef %0, ptr noundef %29, i32 noundef %31, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %33 = icmp eq ptr %32, null
  br i1 %33, label %47, label %34

34:                                               ; preds = %28
  %35 = load ptr, ptr %32, align 8, !tbaa !12
  %36 = getelementptr inbounds %struct.sv, ptr %35, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !28
  %38 = and i32 %37, 65280
  %39 = icmp ne i32 %38, 0
  %40 = and i32 %37, 255
  %41 = icmp eq i32 %40, 8
  %42 = or i1 %39, %41
  %43 = and i32 %37, 16777471
  %44 = icmp eq i32 %43, 16777226
  %45 = or i1 %44, %42
  %46 = select i1 %45, ptr %35, ptr null
  br label %49

47:                                               ; preds = %28
  %48 = tail call fastcc ptr @pkg_fetchmeth(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #15
  br label %49

49:                                               ; preds = %34, %47
  %50 = phi ptr [ %48, %47 ], [ %46, %34 ]
  ret ptr %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @store_hook(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  %16 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !23
  %18 = and i32 %17, 4
  switch i32 %2, label %27 [
    i32 0, label %29
    i32 1, label %29
    i32 2, label %19
    i32 3, label %20
    i32 4, label %21
  ]

19:                                               ; preds = %5
  br label %29

20:                                               ; preds = %5
  br label %29

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !28
  %24 = trunc i32 %23 to i8
  switch i8 %24, label %26 [
    i8 12, label %29
    i8 11, label %25
  ]

25:                                               ; preds = %21
  br label %29

26:                                               ; preds = %21
  br label %29

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %28, align 8, !tbaa !27
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.24, i32 noundef %2) #14
  br label %29

29:                                               ; preds = %21, %5, %5, %25, %26, %27, %20, %19
  %30 = phi i8 [ 0, %27 ], [ 4, %26 ], [ 5, %25 ], [ 0, %20 ], [ 0, %19 ], [ 0, %5 ], [ 0, %5 ], [ 6, %21 ]
  %31 = phi i32 [ 0, %27 ], [ 113, %26 ], [ 80, %25 ], [ 0, %20 ], [ 0, %19 ], [ 0, %5 ], [ 0, %5 ], [ 80, %21 ]
  %32 = phi i1 [ false, %27 ], [ true, %26 ], [ true, %25 ], [ false, %20 ], [ false, %19 ], [ false, %5 ], [ false, %5 ], [ true, %21 ]
  %33 = phi i8 [ 0, %27 ], [ 3, %26 ], [ 3, %25 ], [ 2, %20 ], [ 1, %19 ], [ 0, %5 ], [ 0, %5 ], [ 3, %21 ]
  %34 = or disjoint i8 %33, 64
  %35 = getelementptr inbounds %struct.hv, ptr %3, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !66
  %37 = and i32 %36, 33554432
  %38 = icmp ne i32 %37, 0
  tail call void @llvm.assume(i1 %38)
  %39 = getelementptr inbounds %struct.hv, ptr %3, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !11
  %41 = load ptr, ptr %3, align 8, !tbaa !47
  %42 = getelementptr inbounds %struct.xpvhv, ptr %41, i64 0, i32 3
  %43 = load i64, ptr %42, align 8, !tbaa !49
  %44 = getelementptr ptr, ptr %40, i64 %43
  %45 = getelementptr ptr, ptr %44, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !11, !nonnull !67, !noundef !67
  %47 = getelementptr i8, ptr %44, i64 36
  %48 = load i32, ptr %47, align 4, !tbaa !68
  %49 = icmp eq i32 %48, 0
  %50 = select i1 %49, ptr %45, ptr %46
  %51 = load ptr, ptr %50, align 8, !tbaa !11
  %52 = getelementptr inbounds %struct.hek, ptr %51, i64 0, i32 2
  %53 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %52) #17
  %54 = trunc i64 %53 to i32
  store i32 %54, ptr %6, align 4, !tbaa !13
  %55 = tail call ptr @Perl_newRV(ptr noundef %1) #14
  %56 = tail call fastcc ptr @array_call(ptr noundef %55, ptr noundef %4, i32 noundef %18) #15
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %55) #15
  %57 = load ptr, ptr %56, align 8, !tbaa !70
  %58 = getelementptr inbounds %struct.xpvav, ptr %57, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !72
  %60 = trunc i64 %59 to i32
  %61 = add i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %29
  tail call void @Perl_av_undef(ptr noundef nonnull %56) #14
  tail call void @Perl_sv_free(ptr noundef nonnull %56) #14
  %64 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !46
  %66 = tail call ptr @Perl_hv_common_key_len(ptr noundef %65, ptr noundef nonnull %52, i32 noundef %54, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %67 = icmp eq ptr %66, null
  br i1 %67, label %74, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %69, align 8, !tbaa !27
  %70 = load i32, ptr %16, align 4, !tbaa !23
  %71 = and i32 %70, 4
  %72 = icmp eq i32 %71, 0
  %73 = select i1 %72, ptr @.str.27, ptr @.str.26
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.25, ptr noundef nonnull %73, ptr noundef nonnull %52) #14
  br label %74

74:                                               ; preds = %68, %63
  %75 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 9
  %76 = load ptr, ptr %75, align 8, !tbaa !51
  tail call fastcc void @pkg_hide(ptr noundef %76, ptr noundef nonnull %3) #15
  %77 = tail call fastcc i32 @store_blessed(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3) #15
  br label %1142

78:                                               ; preds = %29
  %79 = getelementptr inbounds %struct.av, ptr %56, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !11
  %81 = load ptr, ptr %80, align 8, !tbaa !12
  %82 = getelementptr inbounds %struct.sv, ptr %81, i64 0, i32 2
  %83 = load i32, ptr %82, align 4, !tbaa !28
  %84 = and i32 %83, 2098176
  %85 = icmp eq i32 %84, 1024
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load ptr, ptr %81, align 8, !tbaa !55
  %88 = getelementptr inbounds %struct.xpv, ptr %87, i64 0, i32 2
  %89 = load i64, ptr %88, align 8, !tbaa !74
  store i64 %89, ptr %7, align 8, !tbaa !39
  %90 = getelementptr inbounds %struct.sv, ptr %81, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !11
  br label %94

92:                                               ; preds = %78
  %93 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %81, ptr noundef nonnull %7, i32 noundef 2) #14
  br label %94

94:                                               ; preds = %92, %86
  %95 = phi ptr [ %91, %86 ], [ %93, %92 ]
  %96 = call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %3, ptr noundef nonnull @.str.28, i32 noundef 0) #14
  %97 = icmp eq ptr %96, null
  br i1 %97, label %107, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.gv, ptr %96, i64 0, i32 2
  %100 = load i32, ptr %99, align 4, !tbaa !76
  %101 = and i32 %100, 255
  %102 = icmp eq i32 %101, 9
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = icmp sgt i32 %61, 1
  br i1 %104, label %105, label %275

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %106, align 8, !tbaa !27
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.29, ptr noundef nonnull %52) #14
  br label %275

107:                                              ; preds = %94, %98
  %108 = icmp sgt i32 %61, 1
  br i1 %108, label %109, label %275

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 4
  %111 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  %112 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 2
  %113 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %114 = zext nneg i8 %34 to i32
  %115 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %116 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %117 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %118 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %119 = zext nneg i8 %30 to i32
  %120 = icmp eq ptr %1, null
  %121 = zext nneg i32 %61 to i64
  br label %122

122:                                              ; preds = %109, %269
  %123 = phi i64 [ 1, %109 ], [ %273, %269 ]
  %124 = phi i32 [ 0, %109 ], [ %271, %269 ]
  %125 = getelementptr inbounds ptr, ptr %80, i64 %123
  %126 = load ptr, ptr %125, align 8, !tbaa !12
  %127 = load ptr, ptr %110, align 8, !tbaa !52
  %128 = getelementptr inbounds %struct.sv, ptr %126, i64 0, i32 2
  %129 = load i32, ptr %128, align 4, !tbaa !28
  %130 = and i32 %129, 2048
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %122
  store i32 1, ptr %111, align 8, !tbaa !27
  %133 = trunc i64 %123 to i32
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.30, i32 noundef %133, ptr noundef nonnull %52) #14
  br label %134

134:                                              ; preds = %132, %122
  %135 = getelementptr inbounds %struct.sv, ptr %126, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !11
  %137 = load ptr, ptr %112, align 8, !tbaa !44
  %138 = call ptr @Perl_ptr_table_fetch(ptr noundef %137, ptr noundef %136) #14
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %269

140:                                              ; preds = %134
  %141 = add nsw i32 %124, 1
  %142 = icmp eq i32 %124, 0
  %143 = load ptr, ptr %113, align 8, !tbaa !35
  %144 = icmp eq ptr %143, null
  br i1 %142, label %145, label %228

145:                                              ; preds = %140
  br i1 %144, label %146, label %165

146:                                              ; preds = %145
  %147 = load ptr, ptr %115, align 8, !tbaa !32
  %148 = load ptr, ptr %116, align 8, !tbaa !33
  %149 = icmp ult ptr %147, %148
  br i1 %149, label %168, label %150

150:                                              ; preds = %146
  %151 = load i64, ptr %118, align 8, !tbaa !31
  %152 = load ptr, ptr %117, align 8, !tbaa !30
  %153 = ptrtoint ptr %147 to i64
  %154 = ptrtoint ptr %152 to i64
  %155 = sub i64 %153, %154
  %156 = shl i64 %151, 32
  %157 = and i64 %156, -35184372088832
  %158 = add i64 %157, 35184372088832
  %159 = ashr exact i64 %158, 32
  %160 = call ptr @Perl_safesysrealloc(ptr noundef %152, i64 noundef %159) #14
  store ptr %160, ptr %117, align 8, !tbaa !30
  store i64 %159, ptr %118, align 8, !tbaa !31
  %161 = shl i64 %155, 32
  %162 = ashr exact i64 %161, 32
  %163 = getelementptr inbounds i8, ptr %160, i64 %162
  %164 = getelementptr inbounds i8, ptr %160, i64 %159
  store ptr %164, ptr %116, align 8, !tbaa !33
  br label %168

165:                                              ; preds = %145
  %166 = call i32 @PerlIO_putc(ptr noundef nonnull %143, i32 noundef 19) #14
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %1142, label %171

168:                                              ; preds = %146, %150
  %169 = phi ptr [ %163, %150 ], [ %147, %146 ]
  %170 = getelementptr inbounds i8, ptr %169, i64 1
  store ptr %170, ptr %115, align 8, !tbaa !32
  store i8 19, ptr %169, align 1, !tbaa !11
  br label %171

171:                                              ; preds = %168, %165
  %172 = load ptr, ptr %113, align 8, !tbaa !35
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %193

174:                                              ; preds = %171
  %175 = load ptr, ptr %115, align 8, !tbaa !32
  %176 = load ptr, ptr %116, align 8, !tbaa !33
  %177 = icmp ult ptr %175, %176
  br i1 %177, label %196, label %178

178:                                              ; preds = %174
  %179 = load i64, ptr %118, align 8, !tbaa !31
  %180 = load ptr, ptr %117, align 8, !tbaa !30
  %181 = ptrtoint ptr %175 to i64
  %182 = ptrtoint ptr %180 to i64
  %183 = sub i64 %181, %182
  %184 = shl i64 %179, 32
  %185 = and i64 %184, -35184372088832
  %186 = add i64 %185, 35184372088832
  %187 = ashr exact i64 %186, 32
  %188 = call ptr @Perl_safesysrealloc(ptr noundef %180, i64 noundef %187) #14
  store ptr %188, ptr %117, align 8, !tbaa !30
  store i64 %187, ptr %118, align 8, !tbaa !31
  %189 = shl i64 %183, 32
  %190 = ashr exact i64 %189, 32
  %191 = getelementptr inbounds i8, ptr %188, i64 %190
  %192 = getelementptr inbounds i8, ptr %188, i64 %187
  store ptr %192, ptr %116, align 8, !tbaa !33
  br label %196

193:                                              ; preds = %171
  %194 = call i32 @PerlIO_putc(ptr noundef nonnull %172, i32 noundef %114) #14
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %1142, label %199

196:                                              ; preds = %174, %178
  %197 = phi ptr [ %191, %178 ], [ %175, %174 ]
  %198 = getelementptr inbounds i8, ptr %197, i64 1
  store ptr %198, ptr %115, align 8, !tbaa !32
  store i8 %34, ptr %197, align 1, !tbaa !11
  br label %199

199:                                              ; preds = %196, %193
  br i1 %32, label %200, label %254

200:                                              ; preds = %199
  %201 = load ptr, ptr %113, align 8, !tbaa !35
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %225

203:                                              ; preds = %200
  %204 = load ptr, ptr %115, align 8, !tbaa !32
  %205 = load ptr, ptr %116, align 8, !tbaa !33
  %206 = icmp ult ptr %204, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = getelementptr inbounds i8, ptr %204, i64 1
  store ptr %208, ptr %115, align 8, !tbaa !32
  store i8 %30, ptr %204, align 1, !tbaa !11
  br label %254

209:                                              ; preds = %203
  %210 = load i64, ptr %118, align 8, !tbaa !31
  %211 = load ptr, ptr %117, align 8, !tbaa !30
  %212 = ptrtoint ptr %204 to i64
  %213 = ptrtoint ptr %211 to i64
  %214 = sub i64 %212, %213
  %215 = shl i64 %210, 32
  %216 = and i64 %215, -35184372088832
  %217 = add i64 %216, 35184372088832
  %218 = ashr exact i64 %217, 32
  %219 = call ptr @Perl_safesysrealloc(ptr noundef %211, i64 noundef %218) #14
  store ptr %219, ptr %117, align 8, !tbaa !30
  store i64 %218, ptr %118, align 8, !tbaa !31
  %220 = shl i64 %214, 32
  %221 = ashr exact i64 %220, 32
  %222 = getelementptr inbounds i8, ptr %219, i64 %221
  %223 = getelementptr inbounds i8, ptr %219, i64 %218
  store ptr %223, ptr %116, align 8, !tbaa !33
  %224 = getelementptr inbounds i8, ptr %222, i64 1
  store ptr %224, ptr %115, align 8, !tbaa !32
  store i8 %30, ptr %222, align 1, !tbaa !11
  br label %254

225:                                              ; preds = %200
  %226 = call i32 @PerlIO_putc(ptr noundef nonnull %201, i32 noundef %119) #14
  %227 = icmp eq i32 %226, -1
  br i1 %227, label %1142, label %254

228:                                              ; preds = %140
  br i1 %144, label %229, label %251

229:                                              ; preds = %228
  %230 = load ptr, ptr %115, align 8, !tbaa !32
  %231 = load ptr, ptr %116, align 8, !tbaa !33
  %232 = icmp ult ptr %230, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %229
  %234 = getelementptr inbounds i8, ptr %230, i64 1
  store ptr %234, ptr %115, align 8, !tbaa !32
  store i8 %34, ptr %230, align 1, !tbaa !11
  br label %254

235:                                              ; preds = %229
  %236 = load i64, ptr %118, align 8, !tbaa !31
  %237 = load ptr, ptr %117, align 8, !tbaa !30
  %238 = ptrtoint ptr %230 to i64
  %239 = ptrtoint ptr %237 to i64
  %240 = sub i64 %238, %239
  %241 = shl i64 %236, 32
  %242 = and i64 %241, -35184372088832
  %243 = add i64 %242, 35184372088832
  %244 = ashr exact i64 %243, 32
  %245 = call ptr @Perl_safesysrealloc(ptr noundef %237, i64 noundef %244) #14
  store ptr %245, ptr %117, align 8, !tbaa !30
  store i64 %244, ptr %118, align 8, !tbaa !31
  %246 = shl i64 %240, 32
  %247 = ashr exact i64 %246, 32
  %248 = getelementptr inbounds i8, ptr %245, i64 %247
  %249 = getelementptr inbounds i8, ptr %245, i64 %244
  store ptr %249, ptr %116, align 8, !tbaa !33
  %250 = getelementptr inbounds i8, ptr %248, i64 1
  store ptr %250, ptr %115, align 8, !tbaa !32
  store i8 %34, ptr %248, align 1, !tbaa !11
  br label %254

251:                                              ; preds = %228
  %252 = call i32 @PerlIO_putc(ptr noundef nonnull %143, i32 noundef %114) #14
  %253 = icmp eq i32 %252, -1
  br i1 %253, label %1142, label %254

254:                                              ; preds = %235, %233, %251, %199, %225, %207, %209
  %255 = call fastcc i32 @store(ptr noundef nonnull %0, ptr noundef %136) #15
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %1142

257:                                              ; preds = %254
  %258 = load ptr, ptr %112, align 8, !tbaa !44
  %259 = call ptr @Perl_ptr_table_fetch(ptr noundef %258, ptr noundef %136) #14
  br i1 %120, label %260, label %262

260:                                              ; preds = %257
  store i32 1, ptr %111, align 8, !tbaa !27
  %261 = trunc i64 %123 to i32
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.31, i32 noundef %261, ptr noundef nonnull %52) #14
  br label %262

262:                                              ; preds = %260, %257
  %263 = load ptr, ptr %127, align 8, !tbaa !70
  %264 = getelementptr inbounds %struct.xpvav, ptr %263, i64 0, i32 2
  %265 = load i64, ptr %264, align 8, !tbaa !72
  %266 = add nsw i64 %265, 1
  %267 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %136) #15
  %268 = call ptr @Perl_av_store(ptr noundef nonnull %127, i64 noundef %266, ptr noundef %136) #14
  br label %269

269:                                              ; preds = %134, %262
  %270 = phi ptr [ %138, %134 ], [ %259, %262 ]
  %271 = phi i32 [ %124, %134 ], [ %141, %262 ]
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %126) #15
  %272 = getelementptr inbounds i8, ptr %270, i64 -1
  store ptr %272, ptr %125, align 8, !tbaa !12
  %273 = add nuw nsw i64 %123, 1
  %274 = icmp eq i64 %273, %121
  br i1 %274, label %275, label %122, !llvm.loop !78

275:                                              ; preds = %269, %107, %103, %105
  %276 = phi i32 [ 0, %105 ], [ 0, %103 ], [ 0, %107 ], [ %271, %269 ]
  %277 = load i32, ptr %6, align 4, !tbaa !13
  %278 = call fastcc i32 @known_class(ptr noundef nonnull %0, ptr noundef nonnull %52, i32 noundef %277, ptr noundef nonnull %8) #15, !range !19
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %282, label %280

280:                                              ; preds = %275
  %281 = load i32, ptr %8, align 4
  br label %283

282:                                              ; preds = %275
  store i32 -1, ptr %8, align 4, !tbaa !13
  br label %283

283:                                              ; preds = %280, %282
  %284 = phi i32 [ %281, %280 ], [ -1, %282 ]
  %285 = icmp eq i32 %284, -1
  %286 = load i32, ptr %6, align 4
  %287 = select i1 %285, i32 %286, i32 %284
  %288 = icmp sgt i32 %287, 255
  %289 = or disjoint i8 %33, 4
  %290 = select i1 %288, i8 %289, i8 %33
  %291 = or disjoint i8 %290, 32
  %292 = select i1 %285, i8 %290, i8 %291
  %293 = load i64, ptr %7, align 8, !tbaa !39
  %294 = icmp ugt i64 %293, 255
  %295 = or i8 %292, 8
  %296 = select i1 %294, i8 %295, i8 %292
  %297 = icmp sgt i32 %61, 1
  %298 = or i8 %296, -128
  %299 = select i1 %297, i8 %298, i8 %296
  %300 = icmp sgt i32 %61, 256
  %301 = or i8 %299, 16
  %302 = select i1 %300, i8 %301, i8 %299
  %303 = icmp eq i32 %276, 0
  %304 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %305 = load ptr, ptr %304, align 8, !tbaa !35
  %306 = icmp eq ptr %305, null
  br i1 %303, label %307, label %404

307:                                              ; preds = %283
  br i1 %306, label %308, label %331

308:                                              ; preds = %307
  %309 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %310 = load ptr, ptr %309, align 8, !tbaa !32
  %311 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %312 = load ptr, ptr %311, align 8, !tbaa !33
  %313 = icmp ult ptr %310, %312
  br i1 %313, label %334, label %314

314:                                              ; preds = %308
  %315 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %316 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %317 = load i64, ptr %316, align 8, !tbaa !31
  %318 = load ptr, ptr %315, align 8, !tbaa !30
  %319 = ptrtoint ptr %310 to i64
  %320 = ptrtoint ptr %318 to i64
  %321 = sub i64 %319, %320
  %322 = shl i64 %317, 32
  %323 = and i64 %322, -35184372088832
  %324 = add i64 %323, 35184372088832
  %325 = ashr exact i64 %324, 32
  %326 = call ptr @Perl_safesysrealloc(ptr noundef %318, i64 noundef %325) #14
  store ptr %326, ptr %315, align 8, !tbaa !30
  store i64 %325, ptr %316, align 8, !tbaa !31
  %327 = shl i64 %321, 32
  %328 = ashr exact i64 %327, 32
  %329 = getelementptr inbounds i8, ptr %326, i64 %328
  %330 = getelementptr inbounds i8, ptr %326, i64 %325
  store ptr %330, ptr %311, align 8, !tbaa !33
  br label %334

331:                                              ; preds = %307
  %332 = call i32 @PerlIO_putc(ptr noundef nonnull %305, i32 noundef 19) #14
  %333 = icmp eq i32 %332, -1
  br i1 %333, label %1142, label %337

334:                                              ; preds = %308, %314
  %335 = phi ptr [ %329, %314 ], [ %310, %308 ]
  %336 = getelementptr inbounds i8, ptr %335, i64 1
  store ptr %336, ptr %309, align 8, !tbaa !32
  store i8 19, ptr %335, align 1, !tbaa !11
  br label %337

337:                                              ; preds = %334, %331
  %338 = load ptr, ptr %304, align 8, !tbaa !35
  %339 = icmp eq ptr %338, null
  br i1 %339, label %340, label %363

340:                                              ; preds = %337
  %341 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %342 = load ptr, ptr %341, align 8, !tbaa !32
  %343 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %344 = load ptr, ptr %343, align 8, !tbaa !33
  %345 = icmp ult ptr %342, %344
  br i1 %345, label %367, label %346

346:                                              ; preds = %340
  %347 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %348 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %349 = load i64, ptr %348, align 8, !tbaa !31
  %350 = load ptr, ptr %347, align 8, !tbaa !30
  %351 = ptrtoint ptr %342 to i64
  %352 = ptrtoint ptr %350 to i64
  %353 = sub i64 %351, %352
  %354 = shl i64 %349, 32
  %355 = and i64 %354, -35184372088832
  %356 = add i64 %355, 35184372088832
  %357 = ashr exact i64 %356, 32
  %358 = call ptr @Perl_safesysrealloc(ptr noundef %350, i64 noundef %357) #14
  store ptr %358, ptr %347, align 8, !tbaa !30
  store i64 %357, ptr %348, align 8, !tbaa !31
  %359 = shl i64 %353, 32
  %360 = ashr exact i64 %359, 32
  %361 = getelementptr inbounds i8, ptr %358, i64 %360
  %362 = getelementptr inbounds i8, ptr %358, i64 %357
  store ptr %362, ptr %343, align 8, !tbaa !33
  br label %367

363:                                              ; preds = %337
  %364 = zext i8 %302 to i32
  %365 = call i32 @PerlIO_putc(ptr noundef nonnull %338, i32 noundef %364) #14
  %366 = icmp eq i32 %365, -1
  br i1 %366, label %1142, label %370

367:                                              ; preds = %340, %346
  %368 = phi ptr [ %361, %346 ], [ %342, %340 ]
  %369 = getelementptr inbounds i8, ptr %368, i64 1
  store ptr %369, ptr %341, align 8, !tbaa !32
  store i8 %302, ptr %368, align 1, !tbaa !11
  br label %370

370:                                              ; preds = %367, %363
  br i1 %32, label %371, label %435

371:                                              ; preds = %370
  %372 = load ptr, ptr %304, align 8, !tbaa !35
  %373 = icmp eq ptr %372, null
  br i1 %373, label %374, label %400

374:                                              ; preds = %371
  %375 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %376 = load ptr, ptr %375, align 8, !tbaa !32
  %377 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %378 = load ptr, ptr %377, align 8, !tbaa !33
  %379 = icmp ult ptr %376, %378
  br i1 %379, label %380, label %382

380:                                              ; preds = %374
  %381 = getelementptr inbounds i8, ptr %376, i64 1
  store ptr %381, ptr %375, align 8, !tbaa !32
  store i8 %30, ptr %376, align 1, !tbaa !11
  br label %435

382:                                              ; preds = %374
  %383 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %384 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %385 = load i64, ptr %384, align 8, !tbaa !31
  %386 = load ptr, ptr %383, align 8, !tbaa !30
  %387 = ptrtoint ptr %376 to i64
  %388 = ptrtoint ptr %386 to i64
  %389 = sub i64 %387, %388
  %390 = shl i64 %385, 32
  %391 = and i64 %390, -35184372088832
  %392 = add i64 %391, 35184372088832
  %393 = ashr exact i64 %392, 32
  %394 = call ptr @Perl_safesysrealloc(ptr noundef %386, i64 noundef %393) #14
  store ptr %394, ptr %383, align 8, !tbaa !30
  store i64 %393, ptr %384, align 8, !tbaa !31
  %395 = shl i64 %389, 32
  %396 = ashr exact i64 %395, 32
  %397 = getelementptr inbounds i8, ptr %394, i64 %396
  %398 = getelementptr inbounds i8, ptr %394, i64 %393
  store ptr %398, ptr %377, align 8, !tbaa !33
  %399 = getelementptr inbounds i8, ptr %397, i64 1
  store ptr %399, ptr %375, align 8, !tbaa !32
  store i8 %30, ptr %397, align 1, !tbaa !11
  br label %435

400:                                              ; preds = %371
  %401 = zext nneg i8 %30 to i32
  %402 = call i32 @PerlIO_putc(ptr noundef nonnull %372, i32 noundef %401) #14
  %403 = icmp eq i32 %402, -1
  br i1 %403, label %1142, label %435

404:                                              ; preds = %283
  br i1 %306, label %405, label %431

405:                                              ; preds = %404
  %406 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %407 = load ptr, ptr %406, align 8, !tbaa !32
  %408 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %409 = load ptr, ptr %408, align 8, !tbaa !33
  %410 = icmp ult ptr %407, %409
  br i1 %410, label %411, label %413

411:                                              ; preds = %405
  %412 = getelementptr inbounds i8, ptr %407, i64 1
  store ptr %412, ptr %406, align 8, !tbaa !32
  store i8 %302, ptr %407, align 1, !tbaa !11
  br label %435

413:                                              ; preds = %405
  %414 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %415 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %416 = load i64, ptr %415, align 8, !tbaa !31
  %417 = load ptr, ptr %414, align 8, !tbaa !30
  %418 = ptrtoint ptr %407 to i64
  %419 = ptrtoint ptr %417 to i64
  %420 = sub i64 %418, %419
  %421 = shl i64 %416, 32
  %422 = and i64 %421, -35184372088832
  %423 = add i64 %422, 35184372088832
  %424 = ashr exact i64 %423, 32
  %425 = call ptr @Perl_safesysrealloc(ptr noundef %417, i64 noundef %424) #14
  store ptr %425, ptr %414, align 8, !tbaa !30
  store i64 %424, ptr %415, align 8, !tbaa !31
  %426 = shl i64 %420, 32
  %427 = ashr exact i64 %426, 32
  %428 = getelementptr inbounds i8, ptr %425, i64 %427
  %429 = getelementptr inbounds i8, ptr %425, i64 %424
  store ptr %429, ptr %408, align 8, !tbaa !33
  %430 = getelementptr inbounds i8, ptr %428, i64 1
  store ptr %430, ptr %406, align 8, !tbaa !32
  store i8 %302, ptr %428, align 1, !tbaa !11
  br label %435

431:                                              ; preds = %404
  %432 = zext i8 %302 to i32
  %433 = call i32 @PerlIO_putc(ptr noundef nonnull %305, i32 noundef %432) #14
  %434 = icmp eq i32 %433, -1
  br i1 %434, label %1142, label %435

435:                                              ; preds = %413, %411, %431, %370, %400, %380, %382
  %436 = zext i8 %302 to i32
  %437 = and i32 %436, 32
  %438 = icmp eq i32 %437, 0
  %439 = and i32 %436, 4
  %440 = icmp eq i32 %439, 0
  br i1 %438, label %572, label %441

441:                                              ; preds = %435
  br i1 %440, label %536, label %442

442:                                              ; preds = %441
  %443 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %444 = load i32, ptr %443, align 8, !tbaa !40
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %493, label %446

446:                                              ; preds = %442
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  %447 = load i32, ptr %8, align 4, !tbaa !13
  %448 = call fastcc i32 @__bswap_32(i32 noundef %447) #15
  store i32 %448, ptr %9, align 4, !tbaa !13
  %449 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %450 = load ptr, ptr %449, align 8, !tbaa !35
  %451 = icmp eq ptr %450, null
  br i1 %451, label %452, label %488

452:                                              ; preds = %446
  %453 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %454 = load ptr, ptr %453, align 8, !tbaa !32
  %455 = getelementptr inbounds i8, ptr %454, i64 4
  %456 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %457 = load ptr, ptr %456, align 8, !tbaa !33
  %458 = icmp ugt ptr %455, %457
  br i1 %458, label %459, label %476

459:                                              ; preds = %452
  %460 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %461 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %462 = load i64, ptr %461, align 8, !tbaa !31
  %463 = load ptr, ptr %460, align 8, !tbaa !30
  %464 = ptrtoint ptr %454 to i64
  %465 = ptrtoint ptr %463 to i64
  %466 = sub i64 %464, %465
  %467 = shl i64 %462, 32
  %468 = add i64 %467, 35197256990720
  %469 = ashr exact i64 %468, 32
  %470 = and i64 %469, -8192
  %471 = call ptr @Perl_safesysrealloc(ptr noundef %463, i64 noundef %470) #14
  store ptr %471, ptr %460, align 8, !tbaa !30
  store i64 %470, ptr %461, align 8, !tbaa !31
  %472 = shl i64 %466, 32
  %473 = ashr exact i64 %472, 32
  %474 = getelementptr inbounds i8, ptr %471, i64 %473
  store ptr %474, ptr %453, align 8, !tbaa !32
  %475 = getelementptr inbounds i8, ptr %471, i64 %470
  store ptr %475, ptr %456, align 8, !tbaa !33
  br label %476

476:                                              ; preds = %459, %452
  %477 = phi ptr [ %474, %459 ], [ %454, %452 ]
  %478 = ptrtoint ptr %477 to i64
  %479 = and i64 %478, 3
  %480 = icmp eq i64 %479, 0
  %481 = load i32, ptr %9, align 4
  br i1 %480, label %482, label %483

482:                                              ; preds = %476
  store i32 %481, ptr %477, align 4, !tbaa !13
  br label %485

483:                                              ; preds = %476
  store i32 %481, ptr %477, align 1
  %484 = load ptr, ptr %453, align 8, !tbaa !32
  br label %485

485:                                              ; preds = %483, %482
  %486 = phi ptr [ %484, %483 ], [ %477, %482 ]
  %487 = getelementptr inbounds i8, ptr %486, i64 4
  store ptr %487, ptr %453, align 8, !tbaa !32
  br label %491

488:                                              ; preds = %446
  %489 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %450, ptr noundef nonnull %9, i64 noundef 4) #14
  %490 = icmp eq i64 %489, 4
  br i1 %490, label %491, label %492

491:                                              ; preds = %485, %488
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  br label %750

492:                                              ; preds = %488
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  br label %1142

493:                                              ; preds = %442
  %494 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %495 = load ptr, ptr %494, align 8, !tbaa !35
  %496 = icmp eq ptr %495, null
  br i1 %496, label %497, label %533

497:                                              ; preds = %493
  %498 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %499 = load ptr, ptr %498, align 8, !tbaa !32
  %500 = getelementptr inbounds i8, ptr %499, i64 4
  %501 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %502 = load ptr, ptr %501, align 8, !tbaa !33
  %503 = icmp ugt ptr %500, %502
  br i1 %503, label %504, label %521

504:                                              ; preds = %497
  %505 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %506 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %507 = load i64, ptr %506, align 8, !tbaa !31
  %508 = load ptr, ptr %505, align 8, !tbaa !30
  %509 = ptrtoint ptr %499 to i64
  %510 = ptrtoint ptr %508 to i64
  %511 = sub i64 %509, %510
  %512 = shl i64 %507, 32
  %513 = add i64 %512, 35197256990720
  %514 = ashr exact i64 %513, 32
  %515 = and i64 %514, -8192
  %516 = call ptr @Perl_safesysrealloc(ptr noundef %508, i64 noundef %515) #14
  store ptr %516, ptr %505, align 8, !tbaa !30
  store i64 %515, ptr %506, align 8, !tbaa !31
  %517 = shl i64 %511, 32
  %518 = ashr exact i64 %517, 32
  %519 = getelementptr inbounds i8, ptr %516, i64 %518
  store ptr %519, ptr %498, align 8, !tbaa !32
  %520 = getelementptr inbounds i8, ptr %516, i64 %515
  store ptr %520, ptr %501, align 8, !tbaa !33
  br label %521

521:                                              ; preds = %504, %497
  %522 = phi ptr [ %519, %504 ], [ %499, %497 ]
  %523 = ptrtoint ptr %522 to i64
  %524 = and i64 %523, 3
  %525 = icmp eq i64 %524, 0
  %526 = load i32, ptr %8, align 4
  br i1 %525, label %527, label %528

527:                                              ; preds = %521
  store i32 %526, ptr %522, align 4, !tbaa !13
  br label %530

528:                                              ; preds = %521
  store i32 %526, ptr %522, align 1
  %529 = load ptr, ptr %498, align 8, !tbaa !32
  br label %530

530:                                              ; preds = %528, %527
  %531 = phi ptr [ %529, %528 ], [ %522, %527 ]
  %532 = getelementptr inbounds i8, ptr %531, i64 4
  store ptr %532, ptr %498, align 8, !tbaa !32
  br label %750

533:                                              ; preds = %493
  %534 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %495, ptr noundef nonnull %8, i64 noundef 4) #14
  %535 = icmp eq i64 %534, 4
  br i1 %535, label %750, label %1142

536:                                              ; preds = %441
  %537 = load i32, ptr %8, align 4, !tbaa !13
  %538 = trunc i32 %537 to i8
  %539 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %540 = load ptr, ptr %539, align 8, !tbaa !35
  %541 = icmp eq ptr %540, null
  br i1 %541, label %542, label %568

542:                                              ; preds = %536
  %543 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %544 = load ptr, ptr %543, align 8, !tbaa !32
  %545 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %546 = load ptr, ptr %545, align 8, !tbaa !33
  %547 = icmp ult ptr %544, %546
  br i1 %547, label %548, label %550

548:                                              ; preds = %542
  %549 = getelementptr inbounds i8, ptr %544, i64 1
  store ptr %549, ptr %543, align 8, !tbaa !32
  store i8 %538, ptr %544, align 1, !tbaa !11
  br label %750

550:                                              ; preds = %542
  %551 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %552 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %553 = load i64, ptr %552, align 8, !tbaa !31
  %554 = load ptr, ptr %551, align 8, !tbaa !30
  %555 = ptrtoint ptr %544 to i64
  %556 = ptrtoint ptr %554 to i64
  %557 = sub i64 %555, %556
  %558 = shl i64 %553, 32
  %559 = and i64 %558, -35184372088832
  %560 = add i64 %559, 35184372088832
  %561 = ashr exact i64 %560, 32
  %562 = call ptr @Perl_safesysrealloc(ptr noundef %554, i64 noundef %561) #14
  store ptr %562, ptr %551, align 8, !tbaa !30
  store i64 %561, ptr %552, align 8, !tbaa !31
  %563 = shl i64 %557, 32
  %564 = ashr exact i64 %563, 32
  %565 = getelementptr inbounds i8, ptr %562, i64 %564
  %566 = getelementptr inbounds i8, ptr %562, i64 %561
  store ptr %566, ptr %545, align 8, !tbaa !33
  %567 = getelementptr inbounds i8, ptr %565, i64 1
  store ptr %567, ptr %543, align 8, !tbaa !32
  store i8 %538, ptr %565, align 1, !tbaa !11
  br label %750

568:                                              ; preds = %536
  %569 = and i32 %537, 255
  %570 = call i32 @PerlIO_putc(ptr noundef nonnull %540, i32 noundef %569) #14
  %571 = icmp eq i32 %570, -1
  br i1 %571, label %1142, label %750

572:                                              ; preds = %435
  br i1 %440, label %667, label %573

573:                                              ; preds = %572
  %574 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %575 = load i32, ptr %574, align 8, !tbaa !40
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %624, label %577

577:                                              ; preds = %573
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  %578 = load i32, ptr %6, align 4, !tbaa !13
  %579 = call fastcc i32 @__bswap_32(i32 noundef %578) #15
  store i32 %579, ptr %10, align 4, !tbaa !13
  %580 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %581 = load ptr, ptr %580, align 8, !tbaa !35
  %582 = icmp eq ptr %581, null
  br i1 %582, label %583, label %619

583:                                              ; preds = %577
  %584 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %585 = load ptr, ptr %584, align 8, !tbaa !32
  %586 = getelementptr inbounds i8, ptr %585, i64 4
  %587 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %588 = load ptr, ptr %587, align 8, !tbaa !33
  %589 = icmp ugt ptr %586, %588
  br i1 %589, label %590, label %607

590:                                              ; preds = %583
  %591 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %592 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %593 = load i64, ptr %592, align 8, !tbaa !31
  %594 = load ptr, ptr %591, align 8, !tbaa !30
  %595 = ptrtoint ptr %585 to i64
  %596 = ptrtoint ptr %594 to i64
  %597 = sub i64 %595, %596
  %598 = shl i64 %593, 32
  %599 = add i64 %598, 35197256990720
  %600 = ashr exact i64 %599, 32
  %601 = and i64 %600, -8192
  %602 = call ptr @Perl_safesysrealloc(ptr noundef %594, i64 noundef %601) #14
  store ptr %602, ptr %591, align 8, !tbaa !30
  store i64 %601, ptr %592, align 8, !tbaa !31
  %603 = shl i64 %597, 32
  %604 = ashr exact i64 %603, 32
  %605 = getelementptr inbounds i8, ptr %602, i64 %604
  store ptr %605, ptr %584, align 8, !tbaa !32
  %606 = getelementptr inbounds i8, ptr %602, i64 %601
  store ptr %606, ptr %587, align 8, !tbaa !33
  br label %607

607:                                              ; preds = %590, %583
  %608 = phi ptr [ %605, %590 ], [ %585, %583 ]
  %609 = ptrtoint ptr %608 to i64
  %610 = and i64 %609, 3
  %611 = icmp eq i64 %610, 0
  %612 = load i32, ptr %10, align 4
  br i1 %611, label %613, label %614

613:                                              ; preds = %607
  store i32 %612, ptr %608, align 4, !tbaa !13
  br label %616

614:                                              ; preds = %607
  store i32 %612, ptr %608, align 1
  %615 = load ptr, ptr %584, align 8, !tbaa !32
  br label %616

616:                                              ; preds = %614, %613
  %617 = phi ptr [ %615, %614 ], [ %608, %613 ]
  %618 = getelementptr inbounds i8, ptr %617, i64 4
  store ptr %618, ptr %584, align 8, !tbaa !32
  br label %622

619:                                              ; preds = %577
  %620 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %581, ptr noundef nonnull %10, i64 noundef 4) #14
  %621 = icmp eq i64 %620, 4
  br i1 %621, label %622, label %623

622:                                              ; preds = %616, %619
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  br label %703

623:                                              ; preds = %619
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  br label %1142

624:                                              ; preds = %573
  %625 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %626 = load ptr, ptr %625, align 8, !tbaa !35
  %627 = icmp eq ptr %626, null
  br i1 %627, label %628, label %664

628:                                              ; preds = %624
  %629 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %630 = load ptr, ptr %629, align 8, !tbaa !32
  %631 = getelementptr inbounds i8, ptr %630, i64 4
  %632 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %633 = load ptr, ptr %632, align 8, !tbaa !33
  %634 = icmp ugt ptr %631, %633
  br i1 %634, label %635, label %652

635:                                              ; preds = %628
  %636 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %637 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %638 = load i64, ptr %637, align 8, !tbaa !31
  %639 = load ptr, ptr %636, align 8, !tbaa !30
  %640 = ptrtoint ptr %630 to i64
  %641 = ptrtoint ptr %639 to i64
  %642 = sub i64 %640, %641
  %643 = shl i64 %638, 32
  %644 = add i64 %643, 35197256990720
  %645 = ashr exact i64 %644, 32
  %646 = and i64 %645, -8192
  %647 = call ptr @Perl_safesysrealloc(ptr noundef %639, i64 noundef %646) #14
  store ptr %647, ptr %636, align 8, !tbaa !30
  store i64 %646, ptr %637, align 8, !tbaa !31
  %648 = shl i64 %642, 32
  %649 = ashr exact i64 %648, 32
  %650 = getelementptr inbounds i8, ptr %647, i64 %649
  store ptr %650, ptr %629, align 8, !tbaa !32
  %651 = getelementptr inbounds i8, ptr %647, i64 %646
  store ptr %651, ptr %632, align 8, !tbaa !33
  br label %652

652:                                              ; preds = %635, %628
  %653 = phi ptr [ %650, %635 ], [ %630, %628 ]
  %654 = ptrtoint ptr %653 to i64
  %655 = and i64 %654, 3
  %656 = icmp eq i64 %655, 0
  %657 = load i32, ptr %6, align 4
  br i1 %656, label %658, label %659

658:                                              ; preds = %652
  store i32 %657, ptr %653, align 4, !tbaa !13
  br label %661

659:                                              ; preds = %652
  store i32 %657, ptr %653, align 1
  %660 = load ptr, ptr %629, align 8, !tbaa !32
  br label %661

661:                                              ; preds = %659, %658
  %662 = phi ptr [ %660, %659 ], [ %653, %658 ]
  %663 = getelementptr inbounds i8, ptr %662, i64 4
  store ptr %663, ptr %629, align 8, !tbaa !32
  br label %703

664:                                              ; preds = %624
  %665 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %626, ptr noundef nonnull %6, i64 noundef 4) #14
  %666 = icmp eq i64 %665, 4
  br i1 %666, label %703, label %1142

667:                                              ; preds = %572
  %668 = load i32, ptr %6, align 4, !tbaa !13
  %669 = trunc i32 %668 to i8
  %670 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %671 = load ptr, ptr %670, align 8, !tbaa !35
  %672 = icmp eq ptr %671, null
  br i1 %672, label %673, label %699

673:                                              ; preds = %667
  %674 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %675 = load ptr, ptr %674, align 8, !tbaa !32
  %676 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %677 = load ptr, ptr %676, align 8, !tbaa !33
  %678 = icmp ult ptr %675, %677
  br i1 %678, label %679, label %681

679:                                              ; preds = %673
  %680 = getelementptr inbounds i8, ptr %675, i64 1
  store ptr %680, ptr %674, align 8, !tbaa !32
  store i8 %669, ptr %675, align 1, !tbaa !11
  br label %703

681:                                              ; preds = %673
  %682 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %683 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %684 = load i64, ptr %683, align 8, !tbaa !31
  %685 = load ptr, ptr %682, align 8, !tbaa !30
  %686 = ptrtoint ptr %675 to i64
  %687 = ptrtoint ptr %685 to i64
  %688 = sub i64 %686, %687
  %689 = shl i64 %684, 32
  %690 = and i64 %689, -35184372088832
  %691 = add i64 %690, 35184372088832
  %692 = ashr exact i64 %691, 32
  %693 = call ptr @Perl_safesysrealloc(ptr noundef %685, i64 noundef %692) #14
  store ptr %693, ptr %682, align 8, !tbaa !30
  store i64 %692, ptr %683, align 8, !tbaa !31
  %694 = shl i64 %688, 32
  %695 = ashr exact i64 %694, 32
  %696 = getelementptr inbounds i8, ptr %693, i64 %695
  %697 = getelementptr inbounds i8, ptr %693, i64 %692
  store ptr %697, ptr %676, align 8, !tbaa !33
  %698 = getelementptr inbounds i8, ptr %696, i64 1
  store ptr %698, ptr %674, align 8, !tbaa !32
  store i8 %669, ptr %696, align 1, !tbaa !11
  br label %703

699:                                              ; preds = %667
  %700 = and i32 %668, 255
  %701 = call i32 @PerlIO_putc(ptr noundef nonnull %671, i32 noundef %700) #14
  %702 = icmp eq i32 %701, -1
  br i1 %702, label %1142, label %703

703:                                              ; preds = %699, %679, %681, %622, %661, %664
  %704 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %705 = load ptr, ptr %704, align 8, !tbaa !35
  %706 = icmp eq ptr %705, null
  br i1 %706, label %707, label %743

707:                                              ; preds = %703
  %708 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %709 = load ptr, ptr %708, align 8, !tbaa !32
  %710 = load i32, ptr %6, align 4, !tbaa !13
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds i8, ptr %709, i64 %711
  %713 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %714 = load ptr, ptr %713, align 8, !tbaa !33
  %715 = icmp ugt ptr %712, %714
  br i1 %715, label %716, label %736

716:                                              ; preds = %707
  %717 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %718 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %719 = load i64, ptr %718, align 8, !tbaa !31
  %720 = trunc i64 %719 to i32
  %721 = add i32 %710, 8191
  %722 = add i32 %721, %720
  %723 = and i32 %722, -8192
  %724 = load ptr, ptr %717, align 8, !tbaa !30
  %725 = ptrtoint ptr %709 to i64
  %726 = ptrtoint ptr %724 to i64
  %727 = sub i64 %725, %726
  %728 = sext i32 %723 to i64
  %729 = call ptr @Perl_safesysrealloc(ptr noundef %724, i64 noundef %728) #14
  store ptr %729, ptr %717, align 8, !tbaa !30
  store i64 %728, ptr %718, align 8, !tbaa !31
  %730 = shl i64 %727, 32
  %731 = ashr exact i64 %730, 32
  %732 = getelementptr inbounds i8, ptr %729, i64 %731
  store ptr %732, ptr %708, align 8, !tbaa !32
  %733 = getelementptr inbounds i8, ptr %729, i64 %728
  store ptr %733, ptr %713, align 8, !tbaa !33
  %734 = load i32, ptr %6, align 4, !tbaa !13
  %735 = sext i32 %734 to i64
  br label %736

736:                                              ; preds = %716, %707
  %737 = phi i64 [ %735, %716 ], [ %711, %707 ]
  %738 = phi ptr [ %732, %716 ], [ %709, %707 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %738, ptr nonnull align 1 %52, i64 %737, i1 false)
  %739 = load i32, ptr %6, align 4, !tbaa !13
  %740 = load ptr, ptr %708, align 8, !tbaa !32
  %741 = sext i32 %739 to i64
  %742 = getelementptr inbounds i8, ptr %740, i64 %741
  store ptr %742, ptr %708, align 8, !tbaa !32
  br label %750

743:                                              ; preds = %703
  %744 = load i32, ptr %6, align 4, !tbaa !13
  %745 = sext i32 %744 to i64
  %746 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %705, ptr noundef nonnull %52, i64 noundef %745) #14
  %747 = load i32, ptr %6, align 4, !tbaa !13
  %748 = sext i32 %747 to i64
  %749 = icmp eq i64 %746, %748
  br i1 %749, label %750, label %1142

750:                                              ; preds = %568, %548, %550, %491, %736, %743, %530, %533
  %751 = and i32 %436, 8
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %850, label %753

753:                                              ; preds = %750
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #16
  %754 = load i64, ptr %7, align 8, !tbaa !39
  %755 = trunc i64 %754 to i32
  store i32 %755, ptr %11, align 4, !tbaa !13
  %756 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %757 = load i32, ptr %756, align 8, !tbaa !40
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %805, label %759

759:                                              ; preds = %753
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #16
  %760 = call fastcc i32 @__bswap_32(i32 noundef %755) #15
  store i32 %760, ptr %12, align 4, !tbaa !13
  %761 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %762 = load ptr, ptr %761, align 8, !tbaa !35
  %763 = icmp eq ptr %762, null
  br i1 %763, label %764, label %800

764:                                              ; preds = %759
  %765 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %766 = load ptr, ptr %765, align 8, !tbaa !32
  %767 = getelementptr inbounds i8, ptr %766, i64 4
  %768 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %769 = load ptr, ptr %768, align 8, !tbaa !33
  %770 = icmp ugt ptr %767, %769
  br i1 %770, label %771, label %788

771:                                              ; preds = %764
  %772 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %773 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %774 = load i64, ptr %773, align 8, !tbaa !31
  %775 = load ptr, ptr %772, align 8, !tbaa !30
  %776 = ptrtoint ptr %766 to i64
  %777 = ptrtoint ptr %775 to i64
  %778 = sub i64 %776, %777
  %779 = shl i64 %774, 32
  %780 = add i64 %779, 35197256990720
  %781 = ashr exact i64 %780, 32
  %782 = and i64 %781, -8192
  %783 = call ptr @Perl_safesysrealloc(ptr noundef %775, i64 noundef %782) #14
  store ptr %783, ptr %772, align 8, !tbaa !30
  store i64 %782, ptr %773, align 8, !tbaa !31
  %784 = shl i64 %778, 32
  %785 = ashr exact i64 %784, 32
  %786 = getelementptr inbounds i8, ptr %783, i64 %785
  store ptr %786, ptr %765, align 8, !tbaa !32
  %787 = getelementptr inbounds i8, ptr %783, i64 %782
  store ptr %787, ptr %768, align 8, !tbaa !33
  br label %788

788:                                              ; preds = %771, %764
  %789 = phi ptr [ %786, %771 ], [ %766, %764 ]
  %790 = ptrtoint ptr %789 to i64
  %791 = and i64 %790, 3
  %792 = icmp eq i64 %791, 0
  %793 = load i32, ptr %12, align 4
  br i1 %792, label %794, label %795

794:                                              ; preds = %788
  store i32 %793, ptr %789, align 4, !tbaa !13
  br label %797

795:                                              ; preds = %788
  store i32 %793, ptr %789, align 1
  %796 = load ptr, ptr %765, align 8, !tbaa !32
  br label %797

797:                                              ; preds = %795, %794
  %798 = phi ptr [ %796, %795 ], [ %789, %794 ]
  %799 = getelementptr inbounds i8, ptr %798, i64 4
  store ptr %799, ptr %765, align 8, !tbaa !32
  br label %803

800:                                              ; preds = %759
  %801 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %762, ptr noundef nonnull %12, i64 noundef 4) #14
  %802 = icmp eq i64 %801, 4
  br i1 %802, label %803, label %804

803:                                              ; preds = %797, %800
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #16
  br label %849

804:                                              ; preds = %800
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #16
  br label %848

805:                                              ; preds = %753
  %806 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %807 = load ptr, ptr %806, align 8, !tbaa !35
  %808 = icmp eq ptr %807, null
  br i1 %808, label %809, label %845

809:                                              ; preds = %805
  %810 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %811 = load ptr, ptr %810, align 8, !tbaa !32
  %812 = getelementptr inbounds i8, ptr %811, i64 4
  %813 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %814 = load ptr, ptr %813, align 8, !tbaa !33
  %815 = icmp ugt ptr %812, %814
  br i1 %815, label %816, label %833

816:                                              ; preds = %809
  %817 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %818 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %819 = load i64, ptr %818, align 8, !tbaa !31
  %820 = load ptr, ptr %817, align 8, !tbaa !30
  %821 = ptrtoint ptr %811 to i64
  %822 = ptrtoint ptr %820 to i64
  %823 = sub i64 %821, %822
  %824 = shl i64 %819, 32
  %825 = add i64 %824, 35197256990720
  %826 = ashr exact i64 %825, 32
  %827 = and i64 %826, -8192
  %828 = call ptr @Perl_safesysrealloc(ptr noundef %820, i64 noundef %827) #14
  store ptr %828, ptr %817, align 8, !tbaa !30
  store i64 %827, ptr %818, align 8, !tbaa !31
  %829 = shl i64 %823, 32
  %830 = ashr exact i64 %829, 32
  %831 = getelementptr inbounds i8, ptr %828, i64 %830
  store ptr %831, ptr %810, align 8, !tbaa !32
  %832 = getelementptr inbounds i8, ptr %828, i64 %827
  store ptr %832, ptr %813, align 8, !tbaa !33
  br label %833

833:                                              ; preds = %816, %809
  %834 = phi ptr [ %831, %816 ], [ %811, %809 ]
  %835 = ptrtoint ptr %834 to i64
  %836 = and i64 %835, 3
  %837 = icmp eq i64 %836, 0
  %838 = load i32, ptr %11, align 4
  br i1 %837, label %839, label %840

839:                                              ; preds = %833
  store i32 %838, ptr %834, align 4, !tbaa !13
  br label %842

840:                                              ; preds = %833
  store i32 %838, ptr %834, align 1
  %841 = load ptr, ptr %810, align 8, !tbaa !32
  br label %842

842:                                              ; preds = %840, %839
  %843 = phi ptr [ %841, %840 ], [ %834, %839 ]
  %844 = getelementptr inbounds i8, ptr %843, i64 4
  store ptr %844, ptr %810, align 8, !tbaa !32
  br label %849

845:                                              ; preds = %805
  %846 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %807, ptr noundef nonnull %11, i64 noundef 4) #14
  %847 = icmp eq i64 %846, 4
  br i1 %847, label %849, label %848

848:                                              ; preds = %804, %845
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #16
  br label %1142

849:                                              ; preds = %845, %842, %803
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #16
  br label %887

850:                                              ; preds = %750
  %851 = load i64, ptr %7, align 8, !tbaa !39
  %852 = trunc i64 %851 to i8
  %853 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %854 = load ptr, ptr %853, align 8, !tbaa !35
  %855 = icmp eq ptr %854, null
  br i1 %855, label %856, label %882

856:                                              ; preds = %850
  %857 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %858 = load ptr, ptr %857, align 8, !tbaa !32
  %859 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %860 = load ptr, ptr %859, align 8, !tbaa !33
  %861 = icmp ult ptr %858, %860
  br i1 %861, label %862, label %864

862:                                              ; preds = %856
  %863 = getelementptr inbounds i8, ptr %858, i64 1
  store ptr %863, ptr %857, align 8, !tbaa !32
  store i8 %852, ptr %858, align 1, !tbaa !11
  br label %887

864:                                              ; preds = %856
  %865 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %866 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %867 = load i64, ptr %866, align 8, !tbaa !31
  %868 = load ptr, ptr %865, align 8, !tbaa !30
  %869 = ptrtoint ptr %858 to i64
  %870 = ptrtoint ptr %868 to i64
  %871 = sub i64 %869, %870
  %872 = shl i64 %867, 32
  %873 = and i64 %872, -35184372088832
  %874 = add i64 %873, 35184372088832
  %875 = ashr exact i64 %874, 32
  %876 = call ptr @Perl_safesysrealloc(ptr noundef %868, i64 noundef %875) #14
  store ptr %876, ptr %865, align 8, !tbaa !30
  store i64 %875, ptr %866, align 8, !tbaa !31
  %877 = shl i64 %871, 32
  %878 = ashr exact i64 %877, 32
  %879 = getelementptr inbounds i8, ptr %876, i64 %878
  %880 = getelementptr inbounds i8, ptr %876, i64 %875
  store ptr %880, ptr %859, align 8, !tbaa !33
  %881 = getelementptr inbounds i8, ptr %879, i64 1
  store ptr %881, ptr %857, align 8, !tbaa !32
  store i8 %852, ptr %879, align 1, !tbaa !11
  br label %887

882:                                              ; preds = %850
  %883 = trunc i64 %851 to i32
  %884 = and i32 %883, 255
  %885 = call i32 @PerlIO_putc(ptr noundef nonnull %854, i32 noundef %884) #14
  %886 = icmp eq i32 %885, -1
  br i1 %886, label %1142, label %887

887:                                              ; preds = %882, %862, %864, %849
  %888 = load i64, ptr %7, align 8, !tbaa !39
  %889 = icmp eq i64 %888, 0
  br i1 %889, label %930, label %890

890:                                              ; preds = %887
  %891 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %892 = load ptr, ptr %891, align 8, !tbaa !35
  %893 = icmp eq ptr %892, null
  br i1 %893, label %894, label %926

894:                                              ; preds = %890
  %895 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %896 = load ptr, ptr %895, align 8, !tbaa !32
  %897 = getelementptr inbounds i8, ptr %896, i64 %888
  %898 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %899 = load ptr, ptr %898, align 8, !tbaa !33
  %900 = icmp ugt ptr %897, %899
  br i1 %900, label %901, label %920

901:                                              ; preds = %894
  %902 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %903 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %904 = load i64, ptr %903, align 8, !tbaa !31
  %905 = add i64 %904, %888
  %906 = load ptr, ptr %902, align 8, !tbaa !30
  %907 = ptrtoint ptr %896 to i64
  %908 = ptrtoint ptr %906 to i64
  %909 = sub i64 %907, %908
  %910 = shl i64 %905, 32
  %911 = add i64 %910, 35180077121536
  %912 = ashr exact i64 %911, 32
  %913 = and i64 %912, -8192
  %914 = call ptr @Perl_safesysrealloc(ptr noundef %906, i64 noundef %913) #14
  store ptr %914, ptr %902, align 8, !tbaa !30
  store i64 %913, ptr %903, align 8, !tbaa !31
  %915 = shl i64 %909, 32
  %916 = ashr exact i64 %915, 32
  %917 = getelementptr inbounds i8, ptr %914, i64 %916
  store ptr %917, ptr %895, align 8, !tbaa !32
  %918 = getelementptr inbounds i8, ptr %914, i64 %913
  store ptr %918, ptr %898, align 8, !tbaa !33
  %919 = load i64, ptr %7, align 8, !tbaa !39
  br label %920

920:                                              ; preds = %901, %894
  %921 = phi i64 [ %919, %901 ], [ %888, %894 ]
  %922 = phi ptr [ %917, %901 ], [ %896, %894 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %922, ptr align 1 %95, i64 %921, i1 false)
  %923 = load i64, ptr %7, align 8, !tbaa !39
  %924 = load ptr, ptr %895, align 8, !tbaa !32
  %925 = getelementptr inbounds i8, ptr %924, i64 %923
  store ptr %925, ptr %895, align 8, !tbaa !32
  br label %930

926:                                              ; preds = %890
  %927 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %892, ptr noundef %95, i64 noundef %888) #14
  %928 = load i64, ptr %7, align 8, !tbaa !39
  %929 = icmp eq i64 %927, %928
  br i1 %929, label %930, label %1142

930:                                              ; preds = %920, %926, %887
  %931 = icmp sgt i8 %302, -1
  br i1 %931, label %1119, label %932

932:                                              ; preds = %930
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #16
  store i32 %60, ptr %13, align 4, !tbaa !13
  %933 = and i32 %436, 16
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %1026, label %935

935:                                              ; preds = %932
  %936 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %937 = load i32, ptr %936, align 8, !tbaa !40
  %938 = icmp eq i32 %937, 0
  br i1 %938, label %984, label %939

939:                                              ; preds = %935
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #16
  %940 = call fastcc i32 @__bswap_32(i32 noundef %60) #15
  store i32 %940, ptr %14, align 4, !tbaa !13
  %941 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %942 = load ptr, ptr %941, align 8, !tbaa !35
  %943 = icmp eq ptr %942, null
  br i1 %943, label %944, label %979

944:                                              ; preds = %939
  %945 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %946 = load ptr, ptr %945, align 8, !tbaa !32
  %947 = getelementptr inbounds i8, ptr %946, i64 4
  %948 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %949 = load ptr, ptr %948, align 8, !tbaa !33
  %950 = icmp ugt ptr %947, %949
  br i1 %950, label %951, label %968

951:                                              ; preds = %944
  %952 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %953 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %954 = load i64, ptr %953, align 8, !tbaa !31
  %955 = load ptr, ptr %952, align 8, !tbaa !30
  %956 = ptrtoint ptr %946 to i64
  %957 = ptrtoint ptr %955 to i64
  %958 = sub i64 %956, %957
  %959 = shl i64 %954, 32
  %960 = add i64 %959, 35197256990720
  %961 = ashr exact i64 %960, 32
  %962 = and i64 %961, -8192
  %963 = call ptr @Perl_safesysrealloc(ptr noundef %955, i64 noundef %962) #14
  store ptr %963, ptr %952, align 8, !tbaa !30
  store i64 %962, ptr %953, align 8, !tbaa !31
  %964 = shl i64 %958, 32
  %965 = ashr exact i64 %964, 32
  %966 = getelementptr inbounds i8, ptr %963, i64 %965
  store ptr %966, ptr %945, align 8, !tbaa !32
  %967 = getelementptr inbounds i8, ptr %963, i64 %962
  store ptr %967, ptr %948, align 8, !tbaa !33
  br label %968

968:                                              ; preds = %951, %944
  %969 = phi ptr [ %966, %951 ], [ %946, %944 ]
  %970 = ptrtoint ptr %969 to i64
  %971 = and i64 %970, 3
  %972 = icmp eq i64 %971, 0
  br i1 %972, label %973, label %974

973:                                              ; preds = %968
  store i32 %940, ptr %969, align 4, !tbaa !13
  br label %976

974:                                              ; preds = %968
  store i32 %940, ptr %969, align 1
  %975 = load ptr, ptr %945, align 8, !tbaa !32
  br label %976

976:                                              ; preds = %974, %973
  %977 = phi ptr [ %975, %974 ], [ %969, %973 ]
  %978 = getelementptr inbounds i8, ptr %977, i64 4
  store ptr %978, ptr %945, align 8, !tbaa !32
  br label %982

979:                                              ; preds = %939
  %980 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %942, ptr noundef nonnull %14, i64 noundef 4) #14
  %981 = icmp eq i64 %980, 4
  br i1 %981, label %982, label %983

982:                                              ; preds = %976, %979
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #16
  br label %1061

983:                                              ; preds = %979
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #16
  br label %1117

984:                                              ; preds = %935
  %985 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %986 = load ptr, ptr %985, align 8, !tbaa !35
  %987 = icmp eq ptr %986, null
  br i1 %987, label %988, label %1023

988:                                              ; preds = %984
  %989 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %990 = load ptr, ptr %989, align 8, !tbaa !32
  %991 = getelementptr inbounds i8, ptr %990, i64 4
  %992 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %993 = load ptr, ptr %992, align 8, !tbaa !33
  %994 = icmp ugt ptr %991, %993
  br i1 %994, label %995, label %1012

995:                                              ; preds = %988
  %996 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %997 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %998 = load i64, ptr %997, align 8, !tbaa !31
  %999 = load ptr, ptr %996, align 8, !tbaa !30
  %1000 = ptrtoint ptr %990 to i64
  %1001 = ptrtoint ptr %999 to i64
  %1002 = sub i64 %1000, %1001
  %1003 = shl i64 %998, 32
  %1004 = add i64 %1003, 35197256990720
  %1005 = ashr exact i64 %1004, 32
  %1006 = and i64 %1005, -8192
  %1007 = call ptr @Perl_safesysrealloc(ptr noundef %999, i64 noundef %1006) #14
  store ptr %1007, ptr %996, align 8, !tbaa !30
  store i64 %1006, ptr %997, align 8, !tbaa !31
  %1008 = shl i64 %1002, 32
  %1009 = ashr exact i64 %1008, 32
  %1010 = getelementptr inbounds i8, ptr %1007, i64 %1009
  store ptr %1010, ptr %989, align 8, !tbaa !32
  %1011 = getelementptr inbounds i8, ptr %1007, i64 %1006
  store ptr %1011, ptr %992, align 8, !tbaa !33
  br label %1012

1012:                                             ; preds = %995, %988
  %1013 = phi ptr [ %1010, %995 ], [ %990, %988 ]
  %1014 = ptrtoint ptr %1013 to i64
  %1015 = and i64 %1014, 3
  %1016 = icmp eq i64 %1015, 0
  br i1 %1016, label %1017, label %1018

1017:                                             ; preds = %1012
  store i32 %60, ptr %1013, align 4, !tbaa !13
  br label %1020

1018:                                             ; preds = %1012
  store i32 %60, ptr %1013, align 1
  %1019 = load ptr, ptr %989, align 8, !tbaa !32
  br label %1020

1020:                                             ; preds = %1018, %1017
  %1021 = phi ptr [ %1019, %1018 ], [ %1013, %1017 ]
  %1022 = getelementptr inbounds i8, ptr %1021, i64 4
  store ptr %1022, ptr %989, align 8, !tbaa !32
  br label %1061

1023:                                             ; preds = %984
  %1024 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %986, ptr noundef nonnull %13, i64 noundef 4) #14
  %1025 = icmp eq i64 %1024, 4
  br i1 %1025, label %1061, label %1117

1026:                                             ; preds = %932
  %1027 = trunc i64 %59 to i8
  %1028 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %1029 = load ptr, ptr %1028, align 8, !tbaa !35
  %1030 = icmp eq ptr %1029, null
  br i1 %1030, label %1031, label %1057

1031:                                             ; preds = %1026
  %1032 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1033 = load ptr, ptr %1032, align 8, !tbaa !32
  %1034 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1035 = load ptr, ptr %1034, align 8, !tbaa !33
  %1036 = icmp ult ptr %1033, %1035
  br i1 %1036, label %1037, label %1039

1037:                                             ; preds = %1031
  %1038 = getelementptr inbounds i8, ptr %1033, i64 1
  store ptr %1038, ptr %1032, align 8, !tbaa !32
  store i8 %1027, ptr %1033, align 1, !tbaa !11
  br label %1061

1039:                                             ; preds = %1031
  %1040 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1041 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1042 = load i64, ptr %1041, align 8, !tbaa !31
  %1043 = load ptr, ptr %1040, align 8, !tbaa !30
  %1044 = ptrtoint ptr %1033 to i64
  %1045 = ptrtoint ptr %1043 to i64
  %1046 = sub i64 %1044, %1045
  %1047 = shl i64 %1042, 32
  %1048 = and i64 %1047, -35184372088832
  %1049 = add i64 %1048, 35184372088832
  %1050 = ashr exact i64 %1049, 32
  %1051 = call ptr @Perl_safesysrealloc(ptr noundef %1043, i64 noundef %1050) #14
  store ptr %1051, ptr %1040, align 8, !tbaa !30
  store i64 %1050, ptr %1041, align 8, !tbaa !31
  %1052 = shl i64 %1046, 32
  %1053 = ashr exact i64 %1052, 32
  %1054 = getelementptr inbounds i8, ptr %1051, i64 %1053
  %1055 = getelementptr inbounds i8, ptr %1051, i64 %1050
  store ptr %1055, ptr %1034, align 8, !tbaa !33
  %1056 = getelementptr inbounds i8, ptr %1054, i64 1
  store ptr %1056, ptr %1032, align 8, !tbaa !32
  store i8 %1027, ptr %1054, align 1, !tbaa !11
  br label %1061

1057:                                             ; preds = %1026
  %1058 = and i32 %60, 255
  %1059 = call i32 @PerlIO_putc(ptr noundef nonnull %1029, i32 noundef %1058) #14
  %1060 = icmp eq i32 %1059, -1
  br i1 %1060, label %1117, label %1061

1061:                                             ; preds = %1057, %1037, %1039, %982, %1023, %1020
  br i1 %297, label %1062, label %1118

1062:                                             ; preds = %1061
  %1063 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %1064 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1065 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1066 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1067 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1068 = zext nneg i32 %61 to i64
  br label %1069

1069:                                             ; preds = %1062, %1114
  %1070 = phi i64 [ 1, %1062 ], [ %1115, %1114 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #16
  %1071 = getelementptr inbounds ptr, ptr %80, i64 %1070
  %1072 = load ptr, ptr %1071, align 8, !tbaa !12
  %1073 = ptrtoint ptr %1072 to i64
  %1074 = trunc i64 %1073 to i32
  %1075 = call fastcc i32 @__bswap_32(i32 noundef %1074) #15
  store i32 %1075, ptr %15, align 4, !tbaa !13
  %1076 = load ptr, ptr %1063, align 8, !tbaa !35
  %1077 = icmp eq ptr %1076, null
  br i1 %1077, label %1078, label %1110

1078:                                             ; preds = %1069
  %1079 = load ptr, ptr %1064, align 8, !tbaa !32
  %1080 = getelementptr inbounds i8, ptr %1079, i64 4
  %1081 = load ptr, ptr %1065, align 8, !tbaa !33
  %1082 = icmp ugt ptr %1080, %1081
  br i1 %1082, label %1083, label %1098

1083:                                             ; preds = %1078
  %1084 = load i64, ptr %1067, align 8, !tbaa !31
  %1085 = load ptr, ptr %1066, align 8, !tbaa !30
  %1086 = ptrtoint ptr %1079 to i64
  %1087 = ptrtoint ptr %1085 to i64
  %1088 = sub i64 %1086, %1087
  %1089 = shl i64 %1084, 32
  %1090 = add i64 %1089, 35197256990720
  %1091 = ashr exact i64 %1090, 32
  %1092 = and i64 %1091, -8192
  %1093 = call ptr @Perl_safesysrealloc(ptr noundef %1085, i64 noundef %1092) #14
  store ptr %1093, ptr %1066, align 8, !tbaa !30
  store i64 %1092, ptr %1067, align 8, !tbaa !31
  %1094 = shl i64 %1088, 32
  %1095 = ashr exact i64 %1094, 32
  %1096 = getelementptr inbounds i8, ptr %1093, i64 %1095
  store ptr %1096, ptr %1064, align 8, !tbaa !32
  %1097 = getelementptr inbounds i8, ptr %1093, i64 %1092
  store ptr %1097, ptr %1065, align 8, !tbaa !33
  br label %1098

1098:                                             ; preds = %1083, %1078
  %1099 = phi ptr [ %1096, %1083 ], [ %1079, %1078 ]
  %1100 = ptrtoint ptr %1099 to i64
  %1101 = and i64 %1100, 3
  %1102 = icmp eq i64 %1101, 0
  %1103 = load i32, ptr %15, align 4
  br i1 %1102, label %1104, label %1105

1104:                                             ; preds = %1098
  store i32 %1103, ptr %1099, align 4, !tbaa !13
  br label %1107

1105:                                             ; preds = %1098
  store i32 %1103, ptr %1099, align 1
  %1106 = load ptr, ptr %1064, align 8, !tbaa !32
  br label %1107

1107:                                             ; preds = %1105, %1104
  %1108 = phi ptr [ %1106, %1105 ], [ %1099, %1104 ]
  %1109 = getelementptr inbounds i8, ptr %1108, i64 4
  store ptr %1109, ptr %1064, align 8, !tbaa !32
  br label %1114

1110:                                             ; preds = %1069
  %1111 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1076, ptr noundef nonnull %15, i64 noundef 4) #14
  %1112 = icmp eq i64 %1111, 4
  br i1 %1112, label %1114, label %1113

1113:                                             ; preds = %1110
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #16
  br label %1117

1114:                                             ; preds = %1107, %1110
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #16
  %1115 = add nuw nsw i64 %1070, 1
  %1116 = icmp eq i64 %1115, %1068
  br i1 %1116, label %1118, label %1069, !llvm.loop !79

1117:                                             ; preds = %1113, %983, %1023, %1057
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  br label %1142

1118:                                             ; preds = %1114, %1061
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  br label %1119

1119:                                             ; preds = %1118, %930
  br i1 %297, label %1120, label %1123

1120:                                             ; preds = %1119
  %1121 = load ptr, ptr %56, align 8, !tbaa !70
  %1122 = getelementptr inbounds %struct.xpvav, ptr %1121, i64 0, i32 2
  store i64 0, ptr %1122, align 8, !tbaa !72
  br label %1123

1123:                                             ; preds = %1120, %1119
  call void @Perl_av_undef(ptr noundef nonnull %56) #14
  call void @Perl_sv_free(ptr noundef nonnull %56) #14
  br i1 %32, label %1124, label %1141

1124:                                             ; preds = %1123
  %1125 = call ptr @Perl_mg_find(ptr noundef %1, i32 noundef %31) #14
  %1126 = icmp eq ptr %1125, null
  br i1 %1126, label %1127, label %1136

1127:                                             ; preds = %1124
  %1128 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %1129 = load i32, ptr %1128, align 4, !tbaa !28
  %1130 = and i32 %1129, 255
  %1131 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %1131, align 8, !tbaa !27
  %1132 = icmp eq i32 %1130, 12
  %1133 = icmp eq i32 %1130, 11
  %1134 = select i1 %1133, ptr @.str.34, ptr @.str.35
  %1135 = select i1 %1132, ptr @.str.33, ptr %1134
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.32, i32 noundef %31, ptr noundef nonnull %1135) #14
  br label %1136

1136:                                             ; preds = %1127, %1124
  %1137 = getelementptr inbounds %struct.magic, ptr %1125, i64 0, i32 6
  %1138 = load ptr, ptr %1137, align 8, !tbaa !80
  %1139 = call fastcc i32 @store(ptr noundef nonnull %0, ptr noundef %1138) #15
  %1140 = icmp eq i32 %1139, 0
  br i1 %1140, label %1141, label %1142

1141:                                             ; preds = %1136, %1123
  br label %1142

1142:                                             ; preds = %254, %251, %225, %193, %165, %1117, %882, %848, %699, %623, %568, %492, %926, %743, %664, %533, %431, %400, %363, %331, %1136, %1141, %74
  %1143 = phi i32 [ 0, %1141 ], [ %1139, %1136 ], [ -1, %492 ], [ -1, %623 ], [ %77, %74 ], [ -1, %331 ], [ -1, %363 ], [ -1, %400 ], [ -1, %431 ], [ -1, %533 ], [ -1, %664 ], [ -1, %743 ], [ -1, %926 ], [ -1, %568 ], [ -1, %699 ], [ -1, %848 ], [ -1, %882 ], [ -1, %1117 ], [ -1, %165 ], [ -1, %193 ], [ -1, %225 ], [ -1, %251 ], [ %255, %254 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret i32 %1143
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @known_class(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = tail call ptr @Perl_hv_common_key_len(ptr noundef %6, ptr noundef %1, i32 noundef %2, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %7, align 8, !tbaa !12
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 4294967295
  br label %24

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 11
  %15 = load i64, ptr %14, align 8, !tbaa !83
  %16 = add nsw i64 %15, 1
  store i64 %16, ptr %14, align 8, !tbaa !83
  %17 = inttoptr i64 %16 to ptr
  %18 = tail call ptr @Perl_hv_common_key_len(ptr noundef %6, ptr noundef %1, i32 noundef %2, i32 noundef 36, ptr noundef %17, i32 noundef 0) #14
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %21, align 8, !tbaa !27
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.36) #14
  br label %22

22:                                               ; preds = %20, %13
  %23 = load i64, ptr %14, align 8, !tbaa !83
  br label %24

24:                                               ; preds = %22, %9
  %25 = phi i64 [ %23, %22 ], [ %12, %9 ]
  %26 = phi i32 [ 0, %22 ], [ 1, %9 ]
  %27 = trunc i64 %25 to i32
  store i32 %27, ptr %3, align 4, !tbaa !13
  ret i32 %26
}

; Function Attrs: optsize
declare ptr @Perl_hv_common_key_len(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @pkg_fetchmeth(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = and i32 %5, 33554432
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = load ptr, ptr %1, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.xpvhv, ptr %11, i64 0, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !49
  %14 = getelementptr ptr, ptr %10, i64 %13
  %15 = getelementptr ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %8
  %19 = getelementptr i8, ptr %14, i64 36
  %20 = load i32, ptr %19, align 4, !tbaa !68
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %16, align 8, !tbaa !11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18, %22
  %26 = phi ptr [ %23, %22 ], [ %16, %18 ]
  %27 = getelementptr inbounds %struct.hek, ptr %26, i64 0, i32 2
  br label %28

28:                                               ; preds = %3, %8, %22, %25
  %29 = phi ptr [ %27, %25 ], [ null, %22 ], [ null, %8 ], [ null, %3 ]
  %30 = tail call ptr @Perl_gv_fetchmethod_autoload(ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.gv, ptr %30, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !76
  %35 = and i32 %34, 255
  %36 = icmp eq i32 %35, 9
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.gv, ptr %30, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !11
  %40 = getelementptr inbounds %struct.gp, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !84
  %42 = tail call ptr @Perl_newRV(ptr noundef %41) #14
  br label %45

43:                                               ; preds = %32, %28
  %44 = tail call ptr @Perl_newSVsv(ptr noundef nonnull @PL_sv_undef) #14
  br label %45

45:                                               ; preds = %43, %37
  %46 = phi ptr [ %42, %37 ], [ %44, %43 ]
  %47 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %29) #17
  %48 = trunc i64 %47 to i32
  %49 = tail call ptr @Perl_hv_common_key_len(ptr noundef %0, ptr noundef %29, i32 noundef %48, i32 noundef 36, ptr noundef %46, i32 noundef 0) #14
  %50 = getelementptr inbounds %struct.sv, ptr %46, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !28
  %52 = and i32 %51, 65280
  %53 = icmp ne i32 %52, 0
  %54 = and i32 %51, 255
  %55 = icmp eq i32 %54, 8
  %56 = or i1 %53, %55
  %57 = and i32 %51, 16777471
  %58 = icmp eq i32 %57, 16777226
  %59 = or i1 %58, %56
  %60 = select i1 %59, ptr %46, ptr null
  ret ptr %60
}

; Function Attrs: optsize
declare ptr @Perl_gv_fetchmethod_autoload(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newRV(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVsv(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @array_call(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  tail call void @Perl_push_scope() #14
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #14
  %5 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !39
  store i64 %5, ptr @PL_tmps_floor, align 8, !tbaa !39
  %6 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %7 = getelementptr inbounds i32, ptr %6, i64 1
  store ptr %7, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %8 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !12
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call ptr @Perl_markstack_grow() #14
  br label %12

12:                                               ; preds = %3, %10
  %13 = phi ptr [ %11, %10 ], [ %7, %3 ]
  %14 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %15 = ptrtoint ptr %4 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = lshr exact i64 %17, 3
  %19 = trunc i64 %18 to i32
  store i32 %19, ptr %13, align 4, !tbaa !13
  %20 = load ptr, ptr @PL_stack_max, align 8, !tbaa !12
  %21 = ptrtoint ptr %20 to i64
  %22 = sub i64 %21, %15
  %23 = icmp slt i64 %22, 8
  br i1 %23, label %24, label %28

24:                                               ; preds = %12
  %25 = tail call ptr @Perl_stack_grow(ptr noundef %4, ptr noundef %4, i64 noundef 1) #14
  %26 = load ptr, ptr @PL_stack_max, align 8, !tbaa !12
  %27 = ptrtoint ptr %26 to i64
  br label %28

28:                                               ; preds = %12, %24
  %29 = phi i64 [ %21, %12 ], [ %27, %24 ]
  %30 = phi ptr [ %4, %12 ], [ %25, %24 ]
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  store ptr %0, ptr %31, align 8, !tbaa !12
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %29, %32
  %34 = icmp slt i64 %33, 8
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %31, ptr noundef nonnull %31, i64 noundef 1) #14
  br label %37

37:                                               ; preds = %28, %35
  %38 = phi ptr [ %36, %35 ], [ %31, %28 ]
  %39 = zext nneg i32 %2 to i64
  %40 = tail call ptr @Perl_newSViv(i64 noundef %39) #14
  %41 = tail call ptr @Perl_sv_2mortal(ptr noundef %40) #14
  %42 = getelementptr inbounds ptr, ptr %38, i64 1
  store ptr %41, ptr %42, align 8, !tbaa !12
  store ptr %42, ptr @PL_stack_sp, align 8, !tbaa !12
  %43 = tail call i32 @Perl_call_sv(ptr noundef %1, i32 noundef 3) #14
  %44 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %45 = tail call ptr @Perl_newSV_type(i32 noundef 11) #14
  %46 = icmp sgt i32 %43, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %37
  %48 = zext nneg i32 %43 to i64
  br label %49

49:                                               ; preds = %47, %49
  %50 = phi i64 [ %48, %47 ], [ %52, %49 ]
  %51 = phi ptr [ %44, %47 ], [ %53, %49 ]
  %52 = add nsw i64 %50, -1
  %53 = getelementptr inbounds ptr, ptr %51, i64 -1
  %54 = load ptr, ptr %51, align 8, !tbaa !12
  %55 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %54) #15
  %56 = tail call ptr @Perl_av_store(ptr noundef %45, i64 noundef %52, ptr noundef %54) #14
  %57 = icmp ugt i64 %50, 1
  br i1 %57, label %49, label %58, !llvm.loop !86

58:                                               ; preds = %49, %37
  %59 = phi ptr [ %44, %37 ], [ %53, %49 ]
  store ptr %59, ptr @PL_stack_sp, align 8, !tbaa !12
  %60 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !39
  %61 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !39
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  tail call void @Perl_free_tmps() #14
  br label %64

64:                                               ; preds = %63, %58
  tail call void @Perl_pop_scope() #14
  ret ptr %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @S_SvREFCNT_dec(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !87
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = add i32 %5, -1
  store i32 %8, ptr %4, align 8, !tbaa !87
  br label %10

9:                                                ; preds = %3
  tail call void @Perl_sv_free2(ptr noundef nonnull %0, i32 noundef %5) #14
  br label %10

10:                                               ; preds = %7, %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pkg_hide(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !66
  %5 = and i32 %4, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = load ptr, ptr %1, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !49
  %13 = getelementptr ptr, ptr %9, i64 %12
  %14 = getelementptr ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %7
  %18 = getelementptr i8, ptr %13, i64 36
  %19 = load i32, ptr %18, align 4, !tbaa !68
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %15, align 8, !tbaa !11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17, %21
  %25 = phi ptr [ %22, %21 ], [ %15, %17 ]
  %26 = getelementptr inbounds %struct.hek, ptr %25, i64 0, i32 2
  br label %27

27:                                               ; preds = %2, %7, %21, %24
  %28 = phi ptr [ %26, %24 ], [ null, %21 ], [ null, %7 ], [ null, %2 ]
  %29 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #17
  %30 = trunc i64 %29 to i32
  %31 = tail call ptr @Perl_newSVsv(ptr noundef nonnull @PL_sv_undef) #14
  %32 = tail call ptr @Perl_hv_common_key_len(ptr noundef %0, ptr noundef %28, i32 noundef %30, i32 noundef 36, ptr noundef %31, i32 noundef 0) #14
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_sv_2pv_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_av_store(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @S_SvREFCNT_inc(ptr noundef returned %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !87
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !87
  br label %7

7:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: optsize
declare void @Perl_push_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_save_strlen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_markstack_grow() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_stack_grow(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_2mortal(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_call_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_free_tmps() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_pop_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_free2(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @store_ref(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !28
  %5 = and i32 %4, -2147481600
  %6 = icmp eq i32 %5, -2147481600
  %7 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.sv, ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !28
  %11 = and i32 %10, 1048576
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %119, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %8, align 8, !tbaa !55
  %15 = load ptr, ptr %14, align 8, !tbaa !56
  %16 = icmp eq ptr %15, null
  br i1 %16, label %83, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hv, ptr %15, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !66
  %20 = and i32 %19, 33554432
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.hv, ptr %15, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  %25 = load ptr, ptr %15, align 8, !tbaa !47
  %26 = getelementptr inbounds %struct.xpvhv, ptr %25, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !49
  %28 = getelementptr ptr, ptr %24, i64 %27
  %29 = getelementptr ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %22
  %33 = getelementptr i8, ptr %28, i64 36
  %34 = load i32, ptr %33, align 4, !tbaa !68
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %30, align 8, !tbaa !12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %32, %36
  %40 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %15, i1 noundef zeroext false) #14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, ptr %18, align 4, !tbaa !66
  br label %44

44:                                               ; preds = %42, %17, %22, %36
  %45 = phi i32 [ %43, %42 ], [ %19, %17 ], [ %19, %22 ], [ %19, %36 ]
  %46 = and i32 %45, -268435457
  store i32 %46, ptr %18, align 4, !tbaa !66
  br label %83

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %49 = load ptr, ptr %48, align 8, !tbaa !35
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %79

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !32
  %54 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !33
  %56 = icmp ult ptr %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = select i1 %6, i8 28, i8 20
  %59 = getelementptr inbounds i8, ptr %53, i64 1
  store ptr %59, ptr %52, align 8, !tbaa !32
  store i8 %58, ptr %53, align 1, !tbaa !11
  br label %155

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %62 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !31
  %64 = load ptr, ptr %61, align 8, !tbaa !30
  %65 = ptrtoint ptr %53 to i64
  %66 = ptrtoint ptr %64 to i64
  %67 = sub i64 %65, %66
  %68 = shl i64 %63, 32
  %69 = and i64 %68, -35184372088832
  %70 = add i64 %69, 35184372088832
  %71 = ashr exact i64 %70, 32
  %72 = tail call ptr @Perl_safesysrealloc(ptr noundef %64, i64 noundef %71) #14
  store ptr %72, ptr %61, align 8, !tbaa !30
  store i64 %71, ptr %62, align 8, !tbaa !31
  %73 = shl i64 %67, 32
  %74 = ashr exact i64 %73, 32
  %75 = getelementptr inbounds i8, ptr %72, i64 %74
  %76 = getelementptr inbounds i8, ptr %72, i64 %71
  store ptr %76, ptr %54, align 8, !tbaa !33
  %77 = select i1 %6, i8 28, i8 20
  %78 = getelementptr inbounds i8, ptr %75, i64 1
  store ptr %78, ptr %52, align 8, !tbaa !32
  store i8 %77, ptr %75, align 1, !tbaa !11
  br label %155

79:                                               ; preds = %47
  %80 = select i1 %6, i32 28, i32 20
  %81 = tail call i32 @PerlIO_putc(ptr noundef nonnull %49, i32 noundef %80) #14
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %157, label %155

83:                                               ; preds = %13, %44
  %84 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %85 = load ptr, ptr %84, align 8, !tbaa !35
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %115

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !32
  %90 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !33
  %92 = icmp ult ptr %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = select i1 %6, i8 27, i8 4
  %95 = getelementptr inbounds i8, ptr %89, i64 1
  store ptr %95, ptr %88, align 8, !tbaa !32
  store i8 %94, ptr %89, align 1, !tbaa !11
  br label %155

96:                                               ; preds = %87
  %97 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %98 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %99 = load i64, ptr %98, align 8, !tbaa !31
  %100 = load ptr, ptr %97, align 8, !tbaa !30
  %101 = ptrtoint ptr %89 to i64
  %102 = ptrtoint ptr %100 to i64
  %103 = sub i64 %101, %102
  %104 = shl i64 %99, 32
  %105 = and i64 %104, -35184372088832
  %106 = add i64 %105, 35184372088832
  %107 = ashr exact i64 %106, 32
  %108 = tail call ptr @Perl_safesysrealloc(ptr noundef %100, i64 noundef %107) #14
  store ptr %108, ptr %97, align 8, !tbaa !30
  store i64 %107, ptr %98, align 8, !tbaa !31
  %109 = shl i64 %103, 32
  %110 = ashr exact i64 %109, 32
  %111 = getelementptr inbounds i8, ptr %108, i64 %110
  %112 = getelementptr inbounds i8, ptr %108, i64 %107
  store ptr %112, ptr %90, align 8, !tbaa !33
  %113 = select i1 %6, i8 27, i8 4
  %114 = getelementptr inbounds i8, ptr %111, i64 1
  store ptr %114, ptr %88, align 8, !tbaa !32
  store i8 %113, ptr %111, align 1, !tbaa !11
  br label %155

115:                                              ; preds = %83
  %116 = select i1 %6, i32 27, i32 4
  %117 = tail call i32 @PerlIO_putc(ptr noundef nonnull %85, i32 noundef %116) #14
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %157, label %155

119:                                              ; preds = %2
  %120 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %121 = load ptr, ptr %120, align 8, !tbaa !35
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %151

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !32
  %126 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !33
  %128 = icmp ult ptr %125, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = select i1 %6, i8 27, i8 4
  %131 = getelementptr inbounds i8, ptr %125, i64 1
  store ptr %131, ptr %124, align 8, !tbaa !32
  store i8 %130, ptr %125, align 1, !tbaa !11
  br label %155

132:                                              ; preds = %123
  %133 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %134 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %135 = load i64, ptr %134, align 8, !tbaa !31
  %136 = load ptr, ptr %133, align 8, !tbaa !30
  %137 = ptrtoint ptr %125 to i64
  %138 = ptrtoint ptr %136 to i64
  %139 = sub i64 %137, %138
  %140 = shl i64 %135, 32
  %141 = and i64 %140, -35184372088832
  %142 = add i64 %141, 35184372088832
  %143 = ashr exact i64 %142, 32
  %144 = tail call ptr @Perl_safesysrealloc(ptr noundef %136, i64 noundef %143) #14
  store ptr %144, ptr %133, align 8, !tbaa !30
  store i64 %143, ptr %134, align 8, !tbaa !31
  %145 = shl i64 %139, 32
  %146 = ashr exact i64 %145, 32
  %147 = getelementptr inbounds i8, ptr %144, i64 %146
  %148 = getelementptr inbounds i8, ptr %144, i64 %143
  store ptr %148, ptr %126, align 8, !tbaa !33
  %149 = select i1 %6, i8 27, i8 4
  %150 = getelementptr inbounds i8, ptr %147, i64 1
  store ptr %150, ptr %124, align 8, !tbaa !32
  store i8 %149, ptr %147, align 1, !tbaa !11
  br label %155

151:                                              ; preds = %119
  %152 = select i1 %6, i32 27, i32 4
  %153 = tail call i32 @PerlIO_putc(ptr noundef nonnull %121, i32 noundef %152) #14
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %157, label %155

155:                                              ; preds = %79, %57, %60, %115, %93, %96, %132, %129, %151
  %156 = tail call fastcc i32 @store(ptr noundef nonnull %0, ptr noundef nonnull %8) #15
  br label %157

157:                                              ; preds = %151, %79, %115, %155
  %158 = phi i32 [ %156, %155 ], [ -1, %115 ], [ -1, %79 ], [ -1, %151 ]
  ret i32 %158
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @store_scalar(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %12 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !28
  %14 = and i32 %13, 65280
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %82

16:                                               ; preds = %2
  %17 = icmp eq ptr %1, @PL_sv_undef
  %18 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = icmp eq ptr %19, null
  br i1 %17, label %21, label %51

21:                                               ; preds = %16
  br i1 %20, label %22, label %48

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !32
  %25 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !33
  %27 = icmp ult ptr %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %29, ptr %23, align 8, !tbaa !32
  store i8 14, ptr %24, align 1, !tbaa !11
  br label %81

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %32 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !31
  %34 = load ptr, ptr %31, align 8, !tbaa !30
  %35 = ptrtoint ptr %24 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = shl i64 %33, 32
  %39 = and i64 %38, -35184372088832
  %40 = add i64 %39, 35184372088832
  %41 = ashr exact i64 %40, 32
  %42 = tail call ptr @Perl_safesysrealloc(ptr noundef %34, i64 noundef %41) #14
  store ptr %42, ptr %31, align 8, !tbaa !30
  store i64 %41, ptr %32, align 8, !tbaa !31
  %43 = shl i64 %37, 32
  %44 = ashr exact i64 %43, 32
  %45 = getelementptr inbounds i8, ptr %42, i64 %44
  %46 = getelementptr inbounds i8, ptr %42, i64 %41
  store ptr %46, ptr %25, align 8, !tbaa !33
  %47 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %47, ptr %23, align 8, !tbaa !32
  store i8 14, ptr %45, align 1, !tbaa !11
  br label %81

48:                                               ; preds = %21
  %49 = tail call i32 @PerlIO_putc(ptr noundef nonnull %19, i32 noundef 14) #14
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %1449, label %81

51:                                               ; preds = %16
  br i1 %20, label %52, label %78

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !32
  %55 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !33
  %57 = icmp ult ptr %54, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %59, ptr %53, align 8, !tbaa !32
  store i8 5, ptr %54, align 1, !tbaa !11
  br label %81

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %62 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !31
  %64 = load ptr, ptr %61, align 8, !tbaa !30
  %65 = ptrtoint ptr %54 to i64
  %66 = ptrtoint ptr %64 to i64
  %67 = sub i64 %65, %66
  %68 = shl i64 %63, 32
  %69 = and i64 %68, -35184372088832
  %70 = add i64 %69, 35184372088832
  %71 = ashr exact i64 %70, 32
  %72 = tail call ptr @Perl_safesysrealloc(ptr noundef %64, i64 noundef %71) #14
  store ptr %72, ptr %61, align 8, !tbaa !30
  store i64 %71, ptr %62, align 8, !tbaa !31
  %73 = shl i64 %67, 32
  %74 = ashr exact i64 %73, 32
  %75 = getelementptr inbounds i8, ptr %72, i64 %74
  %76 = getelementptr inbounds i8, ptr %72, i64 %71
  store ptr %76, ptr %55, align 8, !tbaa !33
  %77 = getelementptr inbounds i8, ptr %75, i64 1
  store ptr %77, ptr %53, align 8, !tbaa !32
  store i8 5, ptr %75, align 1, !tbaa !11
  br label %81

78:                                               ; preds = %51
  %79 = tail call i32 @PerlIO_putc(ptr noundef nonnull %19, i32 noundef 5) #14
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %1449, label %81

81:                                               ; preds = %60, %58, %78, %30, %28, %48
  br label %1449

82:                                               ; preds = %2
  %83 = and i32 %13, 134219264
  %84 = icmp eq i32 %83, 134219264
  br i1 %84, label %85, label %166

85:                                               ; preds = %82
  %86 = icmp eq ptr %1, @PL_sv_yes
  br i1 %86, label %87, label %120

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %89 = load ptr, ptr %88, align 8, !tbaa !35
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %117

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !32
  %94 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !33
  %96 = icmp ult ptr %93, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = getelementptr inbounds i8, ptr %93, i64 1
  store ptr %98, ptr %92, align 8, !tbaa !32
  store i8 15, ptr %93, align 1, !tbaa !11
  br label %1448

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %101 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %102 = load i64, ptr %101, align 8, !tbaa !31
  %103 = load ptr, ptr %100, align 8, !tbaa !30
  %104 = ptrtoint ptr %93 to i64
  %105 = ptrtoint ptr %103 to i64
  %106 = sub i64 %104, %105
  %107 = shl i64 %102, 32
  %108 = and i64 %107, -35184372088832
  %109 = add i64 %108, 35184372088832
  %110 = ashr exact i64 %109, 32
  %111 = tail call ptr @Perl_safesysrealloc(ptr noundef %103, i64 noundef %110) #14
  store ptr %111, ptr %100, align 8, !tbaa !30
  store i64 %110, ptr %101, align 8, !tbaa !31
  %112 = shl i64 %106, 32
  %113 = ashr exact i64 %112, 32
  %114 = getelementptr inbounds i8, ptr %111, i64 %113
  %115 = getelementptr inbounds i8, ptr %111, i64 %110
  store ptr %115, ptr %94, align 8, !tbaa !33
  %116 = getelementptr inbounds i8, ptr %114, i64 1
  store ptr %116, ptr %92, align 8, !tbaa !32
  store i8 15, ptr %114, align 1, !tbaa !11
  br label %1448

117:                                              ; preds = %87
  %118 = tail call i32 @PerlIO_putc(ptr noundef nonnull %89, i32 noundef 15) #14
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %1449, label %1448

120:                                              ; preds = %85
  %121 = icmp eq ptr %1, @PL_sv_no
  br i1 %121, label %122, label %155

122:                                              ; preds = %120
  %123 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %124 = load ptr, ptr %123, align 8, !tbaa !35
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %152

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !32
  %129 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !33
  %131 = icmp ult ptr %128, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %126
  %133 = getelementptr inbounds i8, ptr %128, i64 1
  store ptr %133, ptr %127, align 8, !tbaa !32
  store i8 16, ptr %128, align 1, !tbaa !11
  br label %1448

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %136 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %137 = load i64, ptr %136, align 8, !tbaa !31
  %138 = load ptr, ptr %135, align 8, !tbaa !30
  %139 = ptrtoint ptr %128 to i64
  %140 = ptrtoint ptr %138 to i64
  %141 = sub i64 %139, %140
  %142 = shl i64 %137, 32
  %143 = and i64 %142, -35184372088832
  %144 = add i64 %143, 35184372088832
  %145 = ashr exact i64 %144, 32
  %146 = tail call ptr @Perl_safesysrealloc(ptr noundef %138, i64 noundef %145) #14
  store ptr %146, ptr %135, align 8, !tbaa !30
  store i64 %145, ptr %136, align 8, !tbaa !31
  %147 = shl i64 %141, 32
  %148 = ashr exact i64 %147, 32
  %149 = getelementptr inbounds i8, ptr %146, i64 %148
  %150 = getelementptr inbounds i8, ptr %146, i64 %145
  store ptr %150, ptr %129, align 8, !tbaa !33
  %151 = getelementptr inbounds i8, ptr %149, i64 1
  store ptr %151, ptr %127, align 8, !tbaa !32
  store i8 16, ptr %149, align 1, !tbaa !11
  br label %1448

152:                                              ; preds = %122
  %153 = tail call i32 @PerlIO_putc(ptr noundef nonnull %124, i32 noundef 16) #14
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %1449, label %1448

155:                                              ; preds = %120
  %156 = and i32 %13, 2098176
  %157 = icmp eq i32 %156, 1024
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load ptr, ptr %1, align 8, !tbaa !55
  %160 = getelementptr inbounds %struct.xpv, ptr %159, i64 0, i32 2
  %161 = load i64, ptr %160, align 8, !tbaa !74
  store i64 %161, ptr %4, align 8, !tbaa !39
  %162 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !11
  br label %564

164:                                              ; preds = %155
  %165 = call ptr @Perl_sv_2pv_flags(ptr noundef %1, ptr noundef nonnull %4, i32 noundef 2) #14
  br label %564

166:                                              ; preds = %82
  %167 = and i32 %13, 1024
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %552

169:                                              ; preds = %166
  %170 = and i32 %13, 256
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %441, label %172

172:                                              ; preds = %169
  %173 = and i32 %13, 2097408
  %174 = icmp eq i32 %173, 256
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load ptr, ptr %1, align 8, !tbaa !55
  %177 = getelementptr inbounds %struct.xpviv, ptr %176, i64 0, i32 4
  %178 = load i64, ptr %177, align 8, !tbaa !11
  br label %181

179:                                              ; preds = %172
  %180 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %1, i32 noundef 2) #14
  br label %181

181:                                              ; preds = %179, %175
  %182 = phi i64 [ %178, %175 ], [ %180, %179 ]
  store i64 %182, ptr %3, align 8, !tbaa !39
  br label %183

183:                                              ; preds = %463, %181
  %184 = phi i64 [ %464, %463 ], [ %182, %181 ]
  %185 = icmp sgt i32 %13, -1
  br i1 %185, label %199, label %186

186:                                              ; preds = %183
  %187 = load i32, ptr %12, align 4, !tbaa !28
  %188 = and i32 %187, -2145386240
  %189 = icmp eq i32 %188, -2147483392
  br i1 %189, label %190, label %194

190:                                              ; preds = %186
  %191 = load ptr, ptr %1, align 8, !tbaa !55
  %192 = getelementptr inbounds %struct.xpvuv, ptr %191, i64 0, i32 4
  %193 = load i64, ptr %192, align 8, !tbaa !11
  br label %196

194:                                              ; preds = %186
  %195 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %1, i32 noundef 2) #14
  br label %196

196:                                              ; preds = %194, %190
  %197 = phi i64 [ %193, %190 ], [ %195, %194 ]
  %198 = icmp slt i64 %197, 0
  br i1 %198, label %552, label %199

199:                                              ; preds = %196, %183
  %200 = add i64 %184, 128
  %201 = icmp ult i64 %200, 256
  br i1 %201, label %202, label %270

202:                                              ; preds = %199
  %203 = trunc i64 %184 to i8
  %204 = xor i8 %203, -128
  %205 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %206 = load ptr, ptr %205, align 8, !tbaa !35
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %231

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !32
  %211 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %212 = load ptr, ptr %211, align 8, !tbaa !33
  %213 = icmp ult ptr %210, %212
  br i1 %213, label %234, label %214

214:                                              ; preds = %208
  %215 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %216 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %217 = load i64, ptr %216, align 8, !tbaa !31
  %218 = load ptr, ptr %215, align 8, !tbaa !30
  %219 = ptrtoint ptr %210 to i64
  %220 = ptrtoint ptr %218 to i64
  %221 = sub i64 %219, %220
  %222 = shl i64 %217, 32
  %223 = and i64 %222, -35184372088832
  %224 = add i64 %223, 35184372088832
  %225 = ashr exact i64 %224, 32
  %226 = tail call ptr @Perl_safesysrealloc(ptr noundef %218, i64 noundef %225) #14
  store ptr %226, ptr %215, align 8, !tbaa !30
  store i64 %225, ptr %216, align 8, !tbaa !31
  %227 = shl i64 %221, 32
  %228 = ashr exact i64 %227, 32
  %229 = getelementptr inbounds i8, ptr %226, i64 %228
  %230 = getelementptr inbounds i8, ptr %226, i64 %225
  store ptr %230, ptr %211, align 8, !tbaa !33
  br label %234

231:                                              ; preds = %202
  %232 = tail call i32 @PerlIO_putc(ptr noundef nonnull %206, i32 noundef 8) #14
  %233 = icmp eq i32 %232, -1
  br i1 %233, label %1449, label %237

234:                                              ; preds = %208, %214
  %235 = phi ptr [ %229, %214 ], [ %210, %208 ]
  %236 = getelementptr inbounds i8, ptr %235, i64 1
  store ptr %236, ptr %209, align 8, !tbaa !32
  store i8 8, ptr %235, align 1, !tbaa !11
  br label %237

237:                                              ; preds = %234, %231
  %238 = load ptr, ptr %205, align 8, !tbaa !35
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %266

240:                                              ; preds = %237
  %241 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %242 = load ptr, ptr %241, align 8, !tbaa !32
  %243 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %244 = load ptr, ptr %243, align 8, !tbaa !33
  %245 = icmp ult ptr %242, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %240
  %247 = getelementptr inbounds i8, ptr %242, i64 1
  store ptr %247, ptr %241, align 8, !tbaa !32
  store i8 %204, ptr %242, align 1, !tbaa !11
  br label %1448

248:                                              ; preds = %240
  %249 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %250 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %251 = load i64, ptr %250, align 8, !tbaa !31
  %252 = load ptr, ptr %249, align 8, !tbaa !30
  %253 = ptrtoint ptr %242 to i64
  %254 = ptrtoint ptr %252 to i64
  %255 = sub i64 %253, %254
  %256 = shl i64 %251, 32
  %257 = and i64 %256, -35184372088832
  %258 = add i64 %257, 35184372088832
  %259 = ashr exact i64 %258, 32
  %260 = tail call ptr @Perl_safesysrealloc(ptr noundef %252, i64 noundef %259) #14
  store ptr %260, ptr %249, align 8, !tbaa !30
  store i64 %259, ptr %250, align 8, !tbaa !31
  %261 = shl i64 %255, 32
  %262 = ashr exact i64 %261, 32
  %263 = getelementptr inbounds i8, ptr %260, i64 %262
  %264 = getelementptr inbounds i8, ptr %260, i64 %259
  store ptr %264, ptr %243, align 8, !tbaa !33
  %265 = getelementptr inbounds i8, ptr %263, i64 1
  store ptr %265, ptr %241, align 8, !tbaa !32
  store i8 %204, ptr %263, align 1, !tbaa !11
  br label %1448

266:                                              ; preds = %237
  %267 = zext i8 %204 to i32
  %268 = tail call i32 @PerlIO_putc(ptr noundef nonnull %238, i32 noundef %267) #14
  %269 = icmp eq i32 %268, -1
  br i1 %269, label %1449, label %1448

270:                                              ; preds = %199
  %271 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %272 = load i32, ptr %271, align 8, !tbaa !40
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %374, label %274

274:                                              ; preds = %270
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  br i1 %185, label %292, label %275

275:                                              ; preds = %274
  %276 = load i32, ptr %12, align 4, !tbaa !28
  %277 = and i32 %276, -2145386240
  %278 = icmp eq i32 %277, -2147483392
  br i1 %278, label %279, label %283

279:                                              ; preds = %275
  %280 = load ptr, ptr %1, align 8, !tbaa !55
  %281 = getelementptr inbounds %struct.xpvuv, ptr %280, i64 0, i32 4
  %282 = load i64, ptr %281, align 8, !tbaa !11
  br label %285

283:                                              ; preds = %275
  %284 = tail call i64 @Perl_sv_2uv_flags(ptr noundef nonnull %1, i32 noundef 2) #14
  br label %285

285:                                              ; preds = %283, %279
  %286 = phi i64 [ %282, %279 ], [ %284, %283 ]
  %287 = icmp ugt i64 %286, 2147483647
  %288 = icmp sgt i64 %184, 2147483647
  %289 = select i1 %287, i1 true, i1 %288
  %290 = icmp slt i64 %184, -2147483648
  %291 = select i1 %289, i1 true, i1 %290
  br i1 %291, label %371, label %295

292:                                              ; preds = %274
  %293 = add i64 %184, -2147483648
  %294 = icmp ult i64 %293, -4294967296
  br i1 %294, label %371, label %295

295:                                              ; preds = %285, %292
  %296 = trunc i64 %184 to i32
  %297 = tail call fastcc i32 @__bswap_32(i32 noundef %296) #15
  store i32 %297, ptr %5, align 4, !tbaa !13
  %298 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %299 = load ptr, ptr %298, align 8, !tbaa !35
  %300 = icmp eq ptr %299, null
  br i1 %300, label %301, label %324

301:                                              ; preds = %295
  %302 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %303 = load ptr, ptr %302, align 8, !tbaa !32
  %304 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %305 = load ptr, ptr %304, align 8, !tbaa !33
  %306 = icmp ult ptr %303, %305
  br i1 %306, label %327, label %307

307:                                              ; preds = %301
  %308 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %309 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %310 = load i64, ptr %309, align 8, !tbaa !31
  %311 = load ptr, ptr %308, align 8, !tbaa !30
  %312 = ptrtoint ptr %303 to i64
  %313 = ptrtoint ptr %311 to i64
  %314 = sub i64 %312, %313
  %315 = shl i64 %310, 32
  %316 = and i64 %315, -35184372088832
  %317 = add i64 %316, 35184372088832
  %318 = ashr exact i64 %317, 32
  %319 = tail call ptr @Perl_safesysrealloc(ptr noundef %311, i64 noundef %318) #14
  store ptr %319, ptr %308, align 8, !tbaa !30
  store i64 %318, ptr %309, align 8, !tbaa !31
  %320 = shl i64 %314, 32
  %321 = ashr exact i64 %320, 32
  %322 = getelementptr inbounds i8, ptr %319, i64 %321
  %323 = getelementptr inbounds i8, ptr %319, i64 %318
  store ptr %323, ptr %304, align 8, !tbaa !33
  br label %327

324:                                              ; preds = %295
  %325 = tail call i32 @PerlIO_putc(ptr noundef nonnull %299, i32 noundef 9) #14
  %326 = icmp eq i32 %325, -1
  br i1 %326, label %372, label %330

327:                                              ; preds = %301, %307
  %328 = phi ptr [ %322, %307 ], [ %303, %301 ]
  %329 = getelementptr inbounds i8, ptr %328, i64 1
  store ptr %329, ptr %302, align 8, !tbaa !32
  store i8 9, ptr %328, align 1, !tbaa !11
  br label %330

330:                                              ; preds = %327, %324
  %331 = load ptr, ptr %298, align 8, !tbaa !35
  %332 = icmp eq ptr %331, null
  br i1 %332, label %333, label %368

333:                                              ; preds = %330
  %334 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %335 = load ptr, ptr %334, align 8, !tbaa !32
  %336 = getelementptr inbounds i8, ptr %335, i64 4
  %337 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %338 = load ptr, ptr %337, align 8, !tbaa !33
  %339 = icmp ugt ptr %336, %338
  br i1 %339, label %340, label %357

340:                                              ; preds = %333
  %341 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %342 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %343 = load i64, ptr %342, align 8, !tbaa !31
  %344 = load ptr, ptr %341, align 8, !tbaa !30
  %345 = ptrtoint ptr %335 to i64
  %346 = ptrtoint ptr %344 to i64
  %347 = sub i64 %345, %346
  %348 = shl i64 %343, 32
  %349 = add i64 %348, 35197256990720
  %350 = ashr exact i64 %349, 32
  %351 = and i64 %350, -8192
  %352 = tail call ptr @Perl_safesysrealloc(ptr noundef %344, i64 noundef %351) #14
  store ptr %352, ptr %341, align 8, !tbaa !30
  store i64 %351, ptr %342, align 8, !tbaa !31
  %353 = shl i64 %347, 32
  %354 = ashr exact i64 %353, 32
  %355 = getelementptr inbounds i8, ptr %352, i64 %354
  store ptr %355, ptr %334, align 8, !tbaa !32
  %356 = getelementptr inbounds i8, ptr %352, i64 %351
  store ptr %356, ptr %337, align 8, !tbaa !33
  br label %357

357:                                              ; preds = %340, %333
  %358 = phi ptr [ %355, %340 ], [ %335, %333 ]
  %359 = ptrtoint ptr %358 to i64
  %360 = and i64 %359, 3
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %357
  store i32 %297, ptr %358, align 4, !tbaa !13
  br label %365

363:                                              ; preds = %357
  store i32 %297, ptr %358, align 1
  %364 = load ptr, ptr %334, align 8, !tbaa !32
  br label %365

365:                                              ; preds = %363, %362
  %366 = phi ptr [ %364, %363 ], [ %358, %362 ]
  %367 = getelementptr inbounds i8, ptr %366, i64 4
  store ptr %367, ptr %334, align 8, !tbaa !32
  br label %373

368:                                              ; preds = %330
  %369 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %331, ptr noundef nonnull %5, i64 noundef 4) #14
  %370 = icmp eq i64 %369, 4
  br i1 %370, label %373, label %372

371:                                              ; preds = %292, %285
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %552

372:                                              ; preds = %324, %368
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %1449

373:                                              ; preds = %365, %368
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %1448

374:                                              ; preds = %270
  %375 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %376 = load ptr, ptr %375, align 8, !tbaa !35
  %377 = icmp eq ptr %376, null
  br i1 %377, label %378, label %401

378:                                              ; preds = %374
  %379 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %380 = load ptr, ptr %379, align 8, !tbaa !32
  %381 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %382 = load ptr, ptr %381, align 8, !tbaa !33
  %383 = icmp ult ptr %380, %382
  br i1 %383, label %404, label %384

384:                                              ; preds = %378
  %385 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %386 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %387 = load i64, ptr %386, align 8, !tbaa !31
  %388 = load ptr, ptr %385, align 8, !tbaa !30
  %389 = ptrtoint ptr %380 to i64
  %390 = ptrtoint ptr %388 to i64
  %391 = sub i64 %389, %390
  %392 = shl i64 %387, 32
  %393 = and i64 %392, -35184372088832
  %394 = add i64 %393, 35184372088832
  %395 = ashr exact i64 %394, 32
  %396 = tail call ptr @Perl_safesysrealloc(ptr noundef %388, i64 noundef %395) #14
  store ptr %396, ptr %385, align 8, !tbaa !30
  store i64 %395, ptr %386, align 8, !tbaa !31
  %397 = shl i64 %391, 32
  %398 = ashr exact i64 %397, 32
  %399 = getelementptr inbounds i8, ptr %396, i64 %398
  %400 = getelementptr inbounds i8, ptr %396, i64 %395
  store ptr %400, ptr %381, align 8, !tbaa !33
  br label %404

401:                                              ; preds = %374
  %402 = tail call i32 @PerlIO_putc(ptr noundef nonnull %376, i32 noundef 6) #14
  %403 = icmp eq i32 %402, -1
  br i1 %403, label %1449, label %407

404:                                              ; preds = %378, %384
  %405 = phi ptr [ %399, %384 ], [ %380, %378 ]
  %406 = getelementptr inbounds i8, ptr %405, i64 1
  store ptr %406, ptr %379, align 8, !tbaa !32
  store i8 6, ptr %405, align 1, !tbaa !11
  br label %407

407:                                              ; preds = %404, %401
  %408 = load ptr, ptr %375, align 8, !tbaa !35
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %438

410:                                              ; preds = %407
  %411 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %412 = load ptr, ptr %411, align 8, !tbaa !32
  %413 = getelementptr inbounds i8, ptr %412, i64 8
  %414 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %415 = load ptr, ptr %414, align 8, !tbaa !33
  %416 = icmp ugt ptr %413, %415
  br i1 %416, label %417, label %434

417:                                              ; preds = %410
  %418 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %419 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %420 = load i64, ptr %419, align 8, !tbaa !31
  %421 = load ptr, ptr %418, align 8, !tbaa !30
  %422 = ptrtoint ptr %412 to i64
  %423 = ptrtoint ptr %421 to i64
  %424 = sub i64 %422, %423
  %425 = shl i64 %420, 32
  %426 = add i64 %425, 35214436859904
  %427 = ashr exact i64 %426, 32
  %428 = and i64 %427, -8192
  %429 = tail call ptr @Perl_safesysrealloc(ptr noundef %421, i64 noundef %428) #14
  store ptr %429, ptr %418, align 8, !tbaa !30
  store i64 %428, ptr %419, align 8, !tbaa !31
  %430 = shl i64 %424, 32
  %431 = ashr exact i64 %430, 32
  %432 = getelementptr inbounds i8, ptr %429, i64 %431
  store ptr %432, ptr %411, align 8, !tbaa !32
  %433 = getelementptr inbounds i8, ptr %429, i64 %428
  store ptr %433, ptr %414, align 8, !tbaa !33
  br label %434

434:                                              ; preds = %417, %410
  %435 = phi ptr [ %432, %417 ], [ %412, %410 ]
  store i64 %184, ptr %435, align 1
  %436 = load ptr, ptr %411, align 8, !tbaa !32
  %437 = getelementptr inbounds i8, ptr %436, i64 8
  store ptr %437, ptr %411, align 8, !tbaa !32
  br label %1448

438:                                              ; preds = %407
  %439 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %408, ptr noundef nonnull %3, i64 noundef 8) #14
  %440 = icmp eq i64 %439, 8
  br i1 %440, label %1448, label %1449

441:                                              ; preds = %169
  %442 = and i32 %13, 512
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %549, label %444

444:                                              ; preds = %441
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %445 = and i32 %13, 4096
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %450

447:                                              ; preds = %444
  %448 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %1, i32 noundef 2) #14
  %449 = load i32, ptr %12, align 4, !tbaa !28
  br label %450

450:                                              ; preds = %447, %444
  %451 = phi i32 [ %449, %447 ], [ %13, %444 ]
  %452 = and i32 %451, -2147483392
  %453 = icmp eq i32 %452, 256
  br i1 %453, label %454, label %465

454:                                              ; preds = %450
  %455 = and i32 %451, 2097408
  %456 = icmp eq i32 %455, 256
  br i1 %456, label %457, label %461

457:                                              ; preds = %454
  %458 = load ptr, ptr %1, align 8, !tbaa !55
  %459 = getelementptr inbounds %struct.xpviv, ptr %458, i64 0, i32 4
  %460 = load i64, ptr %459, align 8, !tbaa !11
  br label %463

461:                                              ; preds = %454
  %462 = tail call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %1, i32 noundef 2) #14
  br label %463

463:                                              ; preds = %457, %461
  %464 = phi i64 [ %460, %457 ], [ %462, %461 ]
  store i64 %464, ptr %3, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %183

465:                                              ; preds = %450
  %466 = and i32 %451, 2097664
  %467 = icmp eq i32 %466, 512
  br i1 %467, label %468, label %472

468:                                              ; preds = %465
  %469 = load ptr, ptr %1, align 8, !tbaa !55
  %470 = getelementptr inbounds %struct.xpvnv, ptr %469, i64 0, i32 5
  %471 = load double, ptr %470, align 8, !tbaa !11
  br label %474

472:                                              ; preds = %465
  %473 = tail call double @Perl_sv_2nv_flags(ptr noundef nonnull %1, i32 noundef 2) #14
  br label %474

474:                                              ; preds = %472, %468
  %475 = phi double [ %471, %468 ], [ %473, %472 ]
  store double %475, ptr %6, align 8, !tbaa !88
  %476 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %477 = load i32, ptr %476, align 8, !tbaa !40
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %548

479:                                              ; preds = %474
  %480 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %481 = load ptr, ptr %480, align 8, !tbaa !35
  %482 = icmp eq ptr %481, null
  br i1 %482, label %483, label %506

483:                                              ; preds = %479
  %484 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %485 = load ptr, ptr %484, align 8, !tbaa !32
  %486 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %487 = load ptr, ptr %486, align 8, !tbaa !33
  %488 = icmp ult ptr %485, %487
  br i1 %488, label %509, label %489

489:                                              ; preds = %483
  %490 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %491 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %492 = load i64, ptr %491, align 8, !tbaa !31
  %493 = load ptr, ptr %490, align 8, !tbaa !30
  %494 = ptrtoint ptr %485 to i64
  %495 = ptrtoint ptr %493 to i64
  %496 = sub i64 %494, %495
  %497 = shl i64 %492, 32
  %498 = and i64 %497, -35184372088832
  %499 = add i64 %498, 35184372088832
  %500 = ashr exact i64 %499, 32
  %501 = tail call ptr @Perl_safesysrealloc(ptr noundef %493, i64 noundef %500) #14
  store ptr %501, ptr %490, align 8, !tbaa !30
  store i64 %500, ptr %491, align 8, !tbaa !31
  %502 = shl i64 %496, 32
  %503 = ashr exact i64 %502, 32
  %504 = getelementptr inbounds i8, ptr %501, i64 %503
  %505 = getelementptr inbounds i8, ptr %501, i64 %500
  store ptr %505, ptr %486, align 8, !tbaa !33
  br label %509

506:                                              ; preds = %479
  %507 = tail call i32 @PerlIO_putc(ptr noundef nonnull %481, i32 noundef 7) #14
  %508 = icmp eq i32 %507, -1
  br i1 %508, label %547, label %512

509:                                              ; preds = %483, %489
  %510 = phi ptr [ %504, %489 ], [ %485, %483 ]
  %511 = getelementptr inbounds i8, ptr %510, i64 1
  store ptr %511, ptr %484, align 8, !tbaa !32
  store i8 7, ptr %510, align 1, !tbaa !11
  br label %512

512:                                              ; preds = %509, %506
  %513 = load ptr, ptr %480, align 8, !tbaa !35
  %514 = icmp eq ptr %513, null
  br i1 %514, label %515, label %543

515:                                              ; preds = %512
  %516 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %517 = load ptr, ptr %516, align 8, !tbaa !32
  %518 = getelementptr inbounds i8, ptr %517, i64 8
  %519 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %520 = load ptr, ptr %519, align 8, !tbaa !33
  %521 = icmp ugt ptr %518, %520
  br i1 %521, label %522, label %539

522:                                              ; preds = %515
  %523 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %524 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %525 = load i64, ptr %524, align 8, !tbaa !31
  %526 = load ptr, ptr %523, align 8, !tbaa !30
  %527 = ptrtoint ptr %517 to i64
  %528 = ptrtoint ptr %526 to i64
  %529 = sub i64 %527, %528
  %530 = shl i64 %525, 32
  %531 = add i64 %530, 35214436859904
  %532 = ashr exact i64 %531, 32
  %533 = and i64 %532, -8192
  %534 = tail call ptr @Perl_safesysrealloc(ptr noundef %526, i64 noundef %533) #14
  store ptr %534, ptr %523, align 8, !tbaa !30
  store i64 %533, ptr %524, align 8, !tbaa !31
  %535 = shl i64 %529, 32
  %536 = ashr exact i64 %535, 32
  %537 = getelementptr inbounds i8, ptr %534, i64 %536
  store ptr %537, ptr %516, align 8, !tbaa !32
  %538 = getelementptr inbounds i8, ptr %534, i64 %533
  store ptr %538, ptr %519, align 8, !tbaa !33
  br label %539

539:                                              ; preds = %522, %515
  %540 = phi ptr [ %537, %522 ], [ %517, %515 ]
  store double %475, ptr %540, align 1
  %541 = load ptr, ptr %516, align 8, !tbaa !32
  %542 = getelementptr inbounds i8, ptr %541, i64 8
  store ptr %542, ptr %516, align 8, !tbaa !32
  br label %546

543:                                              ; preds = %512
  %544 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %513, ptr noundef nonnull %6, i64 noundef 8) #14
  %545 = icmp eq i64 %544, 8
  br i1 %545, label %546, label %547

546:                                              ; preds = %539, %543
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %1448

547:                                              ; preds = %506, %543
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %1449

548:                                              ; preds = %474
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %552

549:                                              ; preds = %441
  %550 = and i32 %13, 28672
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %1444, label %552

552:                                              ; preds = %548, %371, %549, %196, %166
  %553 = load i32, ptr %12, align 4, !tbaa !28
  %554 = and i32 %553, 2098176
  %555 = icmp eq i32 %554, 1024
  br i1 %555, label %556, label %562

556:                                              ; preds = %552
  %557 = load ptr, ptr %1, align 8, !tbaa !55
  %558 = getelementptr inbounds %struct.xpv, ptr %557, i64 0, i32 2
  %559 = load i64, ptr %558, align 8, !tbaa !74
  store i64 %559, ptr %4, align 8, !tbaa !39
  %560 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %561 = load ptr, ptr %560, align 8, !tbaa !11
  br label %564

562:                                              ; preds = %552
  %563 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 2) #14
  br label %564

564:                                              ; preds = %556, %562, %158, %164
  %565 = phi ptr [ %163, %158 ], [ %165, %164 ], [ %561, %556 ], [ %563, %562 ]
  %566 = load i32, ptr %12, align 4, !tbaa !28
  %567 = and i32 %566, 14680064
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %867, label %569

569:                                              ; preds = %564
  %570 = call ptr @Perl_mg_find(ptr noundef nonnull %1, i32 noundef 86) #14
  %571 = icmp eq ptr %570, null
  br i1 %571, label %867, label %572

572:                                              ; preds = %569
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  %573 = getelementptr inbounds %struct.magic, ptr %570, i64 0, i32 5
  %574 = load i64, ptr %573, align 8, !tbaa !90
  %575 = trunc i64 %574 to i32
  store i32 %575, ptr %8, align 4, !tbaa !13
  %576 = icmp slt i32 %575, 256
  br i1 %576, label %577, label %690

577:                                              ; preds = %572
  %578 = trunc i64 %574 to i8
  %579 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %580 = load ptr, ptr %579, align 8, !tbaa !35
  %581 = icmp eq ptr %580, null
  br i1 %581, label %582, label %605

582:                                              ; preds = %577
  %583 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %584 = load ptr, ptr %583, align 8, !tbaa !32
  %585 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %586 = load ptr, ptr %585, align 8, !tbaa !33
  %587 = icmp ult ptr %584, %586
  br i1 %587, label %608, label %588

588:                                              ; preds = %582
  %589 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %590 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %591 = load i64, ptr %590, align 8, !tbaa !31
  %592 = load ptr, ptr %589, align 8, !tbaa !30
  %593 = ptrtoint ptr %584 to i64
  %594 = ptrtoint ptr %592 to i64
  %595 = sub i64 %593, %594
  %596 = shl i64 %591, 32
  %597 = and i64 %596, -35184372088832
  %598 = add i64 %597, 35184372088832
  %599 = ashr exact i64 %598, 32
  %600 = call ptr @Perl_safesysrealloc(ptr noundef %592, i64 noundef %599) #14
  store ptr %600, ptr %589, align 8, !tbaa !30
  store i64 %599, ptr %590, align 8, !tbaa !31
  %601 = shl i64 %595, 32
  %602 = ashr exact i64 %601, 32
  %603 = getelementptr inbounds i8, ptr %600, i64 %602
  %604 = getelementptr inbounds i8, ptr %600, i64 %599
  store ptr %604, ptr %585, align 8, !tbaa !33
  br label %608

605:                                              ; preds = %577
  %606 = call i32 @PerlIO_putc(ptr noundef nonnull %580, i32 noundef 29) #14
  %607 = icmp eq i32 %606, -1
  br i1 %607, label %866, label %611

608:                                              ; preds = %582, %588
  %609 = phi ptr [ %603, %588 ], [ %584, %582 ]
  %610 = getelementptr inbounds i8, ptr %609, i64 1
  store ptr %610, ptr %583, align 8, !tbaa !32
  store i8 29, ptr %609, align 1, !tbaa !11
  br label %611

611:                                              ; preds = %608, %605
  %612 = load ptr, ptr %579, align 8, !tbaa !35
  %613 = icmp eq ptr %612, null
  br i1 %613, label %614, label %637

614:                                              ; preds = %611
  %615 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %616 = load ptr, ptr %615, align 8, !tbaa !32
  %617 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %618 = load ptr, ptr %617, align 8, !tbaa !33
  %619 = icmp ult ptr %616, %618
  br i1 %619, label %641, label %620

620:                                              ; preds = %614
  %621 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %622 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %623 = load i64, ptr %622, align 8, !tbaa !31
  %624 = load ptr, ptr %621, align 8, !tbaa !30
  %625 = ptrtoint ptr %616 to i64
  %626 = ptrtoint ptr %624 to i64
  %627 = sub i64 %625, %626
  %628 = shl i64 %623, 32
  %629 = and i64 %628, -35184372088832
  %630 = add i64 %629, 35184372088832
  %631 = ashr exact i64 %630, 32
  %632 = call ptr @Perl_safesysrealloc(ptr noundef %624, i64 noundef %631) #14
  store ptr %632, ptr %621, align 8, !tbaa !30
  store i64 %631, ptr %622, align 8, !tbaa !31
  %633 = shl i64 %627, 32
  %634 = ashr exact i64 %633, 32
  %635 = getelementptr inbounds i8, ptr %632, i64 %634
  %636 = getelementptr inbounds i8, ptr %632, i64 %631
  store ptr %636, ptr %617, align 8, !tbaa !33
  br label %641

637:                                              ; preds = %611
  %638 = and i32 %575, 255
  %639 = call i32 @PerlIO_putc(ptr noundef nonnull %612, i32 noundef %638) #14
  %640 = icmp eq i32 %639, -1
  br i1 %640, label %866, label %644

641:                                              ; preds = %614, %620
  %642 = phi ptr [ %635, %620 ], [ %616, %614 ]
  %643 = getelementptr inbounds i8, ptr %642, i64 1
  store ptr %643, ptr %615, align 8, !tbaa !32
  store i8 %578, ptr %642, align 1, !tbaa !11
  br label %644

644:                                              ; preds = %641, %637
  %645 = load i32, ptr %8, align 4, !tbaa !13
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %865, label %647

647:                                              ; preds = %644
  %648 = load ptr, ptr %579, align 8, !tbaa !35
  %649 = icmp eq ptr %648, null
  %650 = sext i32 %645 to i64
  br i1 %649, label %651, label %683

651:                                              ; preds = %647
  %652 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %653 = load ptr, ptr %652, align 8, !tbaa !32
  %654 = getelementptr inbounds i8, ptr %653, i64 %650
  %655 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %656 = load ptr, ptr %655, align 8, !tbaa !33
  %657 = icmp ugt ptr %654, %656
  br i1 %657, label %658, label %678

658:                                              ; preds = %651
  %659 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %660 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %661 = load i64, ptr %660, align 8, !tbaa !31
  %662 = trunc i64 %661 to i32
  %663 = add i32 %645, 8191
  %664 = add i32 %663, %662
  %665 = and i32 %664, -8192
  %666 = load ptr, ptr %659, align 8, !tbaa !30
  %667 = ptrtoint ptr %653 to i64
  %668 = ptrtoint ptr %666 to i64
  %669 = sub i64 %667, %668
  %670 = sext i32 %665 to i64
  %671 = call ptr @Perl_safesysrealloc(ptr noundef %666, i64 noundef %670) #14
  store ptr %671, ptr %659, align 8, !tbaa !30
  store i64 %670, ptr %660, align 8, !tbaa !31
  %672 = shl i64 %669, 32
  %673 = ashr exact i64 %672, 32
  %674 = getelementptr inbounds i8, ptr %671, i64 %673
  store ptr %674, ptr %652, align 8, !tbaa !32
  %675 = getelementptr inbounds i8, ptr %671, i64 %670
  store ptr %675, ptr %655, align 8, !tbaa !33
  %676 = load i32, ptr %8, align 4, !tbaa !13
  %677 = sext i32 %676 to i64
  br label %678

678:                                              ; preds = %658, %651
  %679 = phi i64 [ %677, %658 ], [ %650, %651 ]
  %680 = phi ptr [ %674, %658 ], [ %653, %651 ]
  %681 = getelementptr inbounds %struct.magic, ptr %570, i64 0, i32 7
  %682 = load ptr, ptr %681, align 8, !tbaa !91
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %680, ptr align 1 %682, i64 %679, i1 false)
  br label %859

683:                                              ; preds = %647
  %684 = getelementptr inbounds %struct.magic, ptr %570, i64 0, i32 7
  %685 = load ptr, ptr %684, align 8, !tbaa !91
  %686 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %648, ptr noundef %685, i64 noundef %650) #14
  %687 = load i32, ptr %8, align 4, !tbaa !13
  %688 = sext i32 %687 to i64
  %689 = icmp eq i64 %686, %688
  br i1 %689, label %865, label %866

690:                                              ; preds = %572
  %691 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %692 = load ptr, ptr %691, align 8, !tbaa !35
  %693 = icmp eq ptr %692, null
  br i1 %693, label %694, label %717

694:                                              ; preds = %690
  %695 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %696 = load ptr, ptr %695, align 8, !tbaa !32
  %697 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %698 = load ptr, ptr %697, align 8, !tbaa !33
  %699 = icmp ult ptr %696, %698
  br i1 %699, label %720, label %700

700:                                              ; preds = %694
  %701 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %702 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %703 = load i64, ptr %702, align 8, !tbaa !31
  %704 = load ptr, ptr %701, align 8, !tbaa !30
  %705 = ptrtoint ptr %696 to i64
  %706 = ptrtoint ptr %704 to i64
  %707 = sub i64 %705, %706
  %708 = shl i64 %703, 32
  %709 = and i64 %708, -35184372088832
  %710 = add i64 %709, 35184372088832
  %711 = ashr exact i64 %710, 32
  %712 = call ptr @Perl_safesysrealloc(ptr noundef %704, i64 noundef %711) #14
  store ptr %712, ptr %701, align 8, !tbaa !30
  store i64 %711, ptr %702, align 8, !tbaa !31
  %713 = shl i64 %707, 32
  %714 = ashr exact i64 %713, 32
  %715 = getelementptr inbounds i8, ptr %712, i64 %714
  %716 = getelementptr inbounds i8, ptr %712, i64 %711
  store ptr %716, ptr %697, align 8, !tbaa !33
  br label %720

717:                                              ; preds = %690
  %718 = call i32 @PerlIO_putc(ptr noundef nonnull %692, i32 noundef 30) #14
  %719 = icmp eq i32 %718, -1
  br i1 %719, label %866, label %723

720:                                              ; preds = %694, %700
  %721 = phi ptr [ %715, %700 ], [ %696, %694 ]
  %722 = getelementptr inbounds i8, ptr %721, i64 1
  store ptr %722, ptr %695, align 8, !tbaa !32
  store i8 30, ptr %721, align 1, !tbaa !11
  br label %723

723:                                              ; preds = %720, %717
  %724 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %725 = load i32, ptr %724, align 8, !tbaa !40
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %773, label %727

727:                                              ; preds = %723
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  %728 = load i32, ptr %8, align 4, !tbaa !13
  %729 = call fastcc i32 @__bswap_32(i32 noundef %728) #15
  store i32 %729, ptr %9, align 4, !tbaa !13
  %730 = load ptr, ptr %691, align 8, !tbaa !35
  %731 = icmp eq ptr %730, null
  br i1 %731, label %732, label %768

732:                                              ; preds = %727
  %733 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %734 = load ptr, ptr %733, align 8, !tbaa !32
  %735 = getelementptr inbounds i8, ptr %734, i64 4
  %736 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %737 = load ptr, ptr %736, align 8, !tbaa !33
  %738 = icmp ugt ptr %735, %737
  br i1 %738, label %739, label %756

739:                                              ; preds = %732
  %740 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %741 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %742 = load i64, ptr %741, align 8, !tbaa !31
  %743 = load ptr, ptr %740, align 8, !tbaa !30
  %744 = ptrtoint ptr %734 to i64
  %745 = ptrtoint ptr %743 to i64
  %746 = sub i64 %744, %745
  %747 = shl i64 %742, 32
  %748 = add i64 %747, 35197256990720
  %749 = ashr exact i64 %748, 32
  %750 = and i64 %749, -8192
  %751 = call ptr @Perl_safesysrealloc(ptr noundef %743, i64 noundef %750) #14
  store ptr %751, ptr %740, align 8, !tbaa !30
  store i64 %750, ptr %741, align 8, !tbaa !31
  %752 = shl i64 %746, 32
  %753 = ashr exact i64 %752, 32
  %754 = getelementptr inbounds i8, ptr %751, i64 %753
  store ptr %754, ptr %733, align 8, !tbaa !32
  %755 = getelementptr inbounds i8, ptr %751, i64 %750
  store ptr %755, ptr %736, align 8, !tbaa !33
  br label %756

756:                                              ; preds = %739, %732
  %757 = phi ptr [ %754, %739 ], [ %734, %732 ]
  %758 = ptrtoint ptr %757 to i64
  %759 = and i64 %758, 3
  %760 = icmp eq i64 %759, 0
  %761 = load i32, ptr %9, align 4
  br i1 %760, label %762, label %763

762:                                              ; preds = %756
  store i32 %761, ptr %757, align 4, !tbaa !13
  br label %765

763:                                              ; preds = %756
  store i32 %761, ptr %757, align 1
  %764 = load ptr, ptr %733, align 8, !tbaa !32
  br label %765

765:                                              ; preds = %763, %762
  %766 = phi ptr [ %764, %763 ], [ %757, %762 ]
  %767 = getelementptr inbounds i8, ptr %766, i64 4
  store ptr %767, ptr %733, align 8, !tbaa !32
  br label %771

768:                                              ; preds = %727
  %769 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %730, ptr noundef nonnull %9, i64 noundef 4) #14
  %770 = icmp eq i64 %769, 4
  br i1 %770, label %771, label %772

771:                                              ; preds = %768, %765
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  br label %815

772:                                              ; preds = %768
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  br label %866

773:                                              ; preds = %723
  %774 = load ptr, ptr %691, align 8, !tbaa !35
  %775 = icmp eq ptr %774, null
  br i1 %775, label %776, label %812

776:                                              ; preds = %773
  %777 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %778 = load ptr, ptr %777, align 8, !tbaa !32
  %779 = getelementptr inbounds i8, ptr %778, i64 4
  %780 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %781 = load ptr, ptr %780, align 8, !tbaa !33
  %782 = icmp ugt ptr %779, %781
  br i1 %782, label %783, label %800

783:                                              ; preds = %776
  %784 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %785 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %786 = load i64, ptr %785, align 8, !tbaa !31
  %787 = load ptr, ptr %784, align 8, !tbaa !30
  %788 = ptrtoint ptr %778 to i64
  %789 = ptrtoint ptr %787 to i64
  %790 = sub i64 %788, %789
  %791 = shl i64 %786, 32
  %792 = add i64 %791, 35197256990720
  %793 = ashr exact i64 %792, 32
  %794 = and i64 %793, -8192
  %795 = call ptr @Perl_safesysrealloc(ptr noundef %787, i64 noundef %794) #14
  store ptr %795, ptr %784, align 8, !tbaa !30
  store i64 %794, ptr %785, align 8, !tbaa !31
  %796 = shl i64 %790, 32
  %797 = ashr exact i64 %796, 32
  %798 = getelementptr inbounds i8, ptr %795, i64 %797
  store ptr %798, ptr %777, align 8, !tbaa !32
  %799 = getelementptr inbounds i8, ptr %795, i64 %794
  store ptr %799, ptr %780, align 8, !tbaa !33
  br label %800

800:                                              ; preds = %783, %776
  %801 = phi ptr [ %798, %783 ], [ %778, %776 ]
  %802 = ptrtoint ptr %801 to i64
  %803 = and i64 %802, 3
  %804 = icmp eq i64 %803, 0
  %805 = load i32, ptr %8, align 4
  br i1 %804, label %806, label %807

806:                                              ; preds = %800
  store i32 %805, ptr %801, align 4, !tbaa !13
  br label %809

807:                                              ; preds = %800
  store i32 %805, ptr %801, align 1
  %808 = load ptr, ptr %777, align 8, !tbaa !32
  br label %809

809:                                              ; preds = %807, %806
  %810 = phi ptr [ %808, %807 ], [ %801, %806 ]
  %811 = getelementptr inbounds i8, ptr %810, i64 4
  store ptr %811, ptr %777, align 8, !tbaa !32
  br label %815

812:                                              ; preds = %773
  %813 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %774, ptr noundef nonnull %8, i64 noundef 4) #14
  %814 = icmp eq i64 %813, 4
  br i1 %814, label %815, label %866

815:                                              ; preds = %771, %812, %809
  %816 = load ptr, ptr %691, align 8, !tbaa !35
  %817 = icmp eq ptr %816, null
  %818 = load i32, ptr %8, align 4, !tbaa !13
  %819 = sext i32 %818 to i64
  br i1 %817, label %820, label %852

820:                                              ; preds = %815
  %821 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %822 = load ptr, ptr %821, align 8, !tbaa !32
  %823 = getelementptr inbounds i8, ptr %822, i64 %819
  %824 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %825 = load ptr, ptr %824, align 8, !tbaa !33
  %826 = icmp ugt ptr %823, %825
  br i1 %826, label %827, label %847

827:                                              ; preds = %820
  %828 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %829 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %830 = load i64, ptr %829, align 8, !tbaa !31
  %831 = trunc i64 %830 to i32
  %832 = add i32 %818, 8191
  %833 = add i32 %832, %831
  %834 = and i32 %833, -8192
  %835 = load ptr, ptr %828, align 8, !tbaa !30
  %836 = ptrtoint ptr %822 to i64
  %837 = ptrtoint ptr %835 to i64
  %838 = sub i64 %836, %837
  %839 = sext i32 %834 to i64
  %840 = call ptr @Perl_safesysrealloc(ptr noundef %835, i64 noundef %839) #14
  store ptr %840, ptr %828, align 8, !tbaa !30
  store i64 %839, ptr %829, align 8, !tbaa !31
  %841 = shl i64 %838, 32
  %842 = ashr exact i64 %841, 32
  %843 = getelementptr inbounds i8, ptr %840, i64 %842
  store ptr %843, ptr %821, align 8, !tbaa !32
  %844 = getelementptr inbounds i8, ptr %840, i64 %839
  store ptr %844, ptr %824, align 8, !tbaa !33
  %845 = load i32, ptr %8, align 4, !tbaa !13
  %846 = sext i32 %845 to i64
  br label %847

847:                                              ; preds = %827, %820
  %848 = phi i64 [ %846, %827 ], [ %819, %820 ]
  %849 = phi ptr [ %843, %827 ], [ %822, %820 ]
  %850 = getelementptr inbounds %struct.magic, ptr %570, i64 0, i32 7
  %851 = load ptr, ptr %850, align 8, !tbaa !91
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %849, ptr align 1 %851, i64 %848, i1 false)
  br label %859

852:                                              ; preds = %815
  %853 = getelementptr inbounds %struct.magic, ptr %570, i64 0, i32 7
  %854 = load ptr, ptr %853, align 8, !tbaa !91
  %855 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %816, ptr noundef %854, i64 noundef %819) #14
  %856 = load i32, ptr %8, align 4, !tbaa !13
  %857 = sext i32 %856 to i64
  %858 = icmp eq i64 %855, %857
  br i1 %858, label %865, label %866

859:                                              ; preds = %847, %678
  %860 = phi ptr [ %652, %678 ], [ %821, %847 ]
  %861 = load i32, ptr %8, align 4, !tbaa !13
  %862 = load ptr, ptr %860, align 8, !tbaa !32
  %863 = sext i32 %861 to i64
  %864 = getelementptr inbounds i8, ptr %862, i64 %863
  store ptr %864, ptr %860, align 8, !tbaa !32
  br label %865

865:                                              ; preds = %859, %644, %683, %852
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  br label %867

866:                                              ; preds = %852, %812, %772, %717, %605, %637, %683
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  br label %1449

867:                                              ; preds = %865, %569, %564
  %868 = load i64, ptr %4, align 8, !tbaa !39
  %869 = trunc i64 %868 to i32
  store i32 %869, ptr %7, align 4, !tbaa !13
  %870 = load i32, ptr %12, align 4, !tbaa !28
  %871 = and i32 %870, 536870912
  %872 = icmp eq i32 %871, 0
  %873 = icmp slt i32 %869, 256
  br i1 %872, label %1159, label %874

874:                                              ; preds = %867
  br i1 %873, label %875, label %989

875:                                              ; preds = %874
  %876 = trunc i64 %868 to i8
  %877 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %878 = load ptr, ptr %877, align 8, !tbaa !35
  %879 = icmp eq ptr %878, null
  br i1 %879, label %880, label %903

880:                                              ; preds = %875
  %881 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %882 = load ptr, ptr %881, align 8, !tbaa !32
  %883 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %884 = load ptr, ptr %883, align 8, !tbaa !33
  %885 = icmp ult ptr %882, %884
  br i1 %885, label %906, label %886

886:                                              ; preds = %880
  %887 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %888 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %889 = load i64, ptr %888, align 8, !tbaa !31
  %890 = load ptr, ptr %887, align 8, !tbaa !30
  %891 = ptrtoint ptr %882 to i64
  %892 = ptrtoint ptr %890 to i64
  %893 = sub i64 %891, %892
  %894 = shl i64 %889, 32
  %895 = and i64 %894, -35184372088832
  %896 = add i64 %895, 35184372088832
  %897 = ashr exact i64 %896, 32
  %898 = call ptr @Perl_safesysrealloc(ptr noundef %890, i64 noundef %897) #14
  store ptr %898, ptr %887, align 8, !tbaa !30
  store i64 %897, ptr %888, align 8, !tbaa !31
  %899 = shl i64 %893, 32
  %900 = ashr exact i64 %899, 32
  %901 = getelementptr inbounds i8, ptr %898, i64 %900
  %902 = getelementptr inbounds i8, ptr %898, i64 %897
  store ptr %902, ptr %883, align 8, !tbaa !33
  br label %906

903:                                              ; preds = %875
  %904 = call i32 @PerlIO_putc(ptr noundef nonnull %878, i32 noundef 23) #14
  %905 = icmp eq i32 %904, -1
  br i1 %905, label %1449, label %909

906:                                              ; preds = %880, %886
  %907 = phi ptr [ %901, %886 ], [ %882, %880 ]
  %908 = getelementptr inbounds i8, ptr %907, i64 1
  store ptr %908, ptr %881, align 8, !tbaa !32
  store i8 23, ptr %907, align 1, !tbaa !11
  br label %909

909:                                              ; preds = %906, %903
  %910 = load ptr, ptr %877, align 8, !tbaa !35
  %911 = icmp eq ptr %910, null
  br i1 %911, label %912, label %935

912:                                              ; preds = %909
  %913 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %914 = load ptr, ptr %913, align 8, !tbaa !32
  %915 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %916 = load ptr, ptr %915, align 8, !tbaa !33
  %917 = icmp ult ptr %914, %916
  br i1 %917, label %939, label %918

918:                                              ; preds = %912
  %919 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %920 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %921 = load i64, ptr %920, align 8, !tbaa !31
  %922 = load ptr, ptr %919, align 8, !tbaa !30
  %923 = ptrtoint ptr %914 to i64
  %924 = ptrtoint ptr %922 to i64
  %925 = sub i64 %923, %924
  %926 = shl i64 %921, 32
  %927 = and i64 %926, -35184372088832
  %928 = add i64 %927, 35184372088832
  %929 = ashr exact i64 %928, 32
  %930 = call ptr @Perl_safesysrealloc(ptr noundef %922, i64 noundef %929) #14
  store ptr %930, ptr %919, align 8, !tbaa !30
  store i64 %929, ptr %920, align 8, !tbaa !31
  %931 = shl i64 %925, 32
  %932 = ashr exact i64 %931, 32
  %933 = getelementptr inbounds i8, ptr %930, i64 %932
  %934 = getelementptr inbounds i8, ptr %930, i64 %929
  store ptr %934, ptr %915, align 8, !tbaa !33
  br label %939

935:                                              ; preds = %909
  %936 = and i32 %869, 255
  %937 = call i32 @PerlIO_putc(ptr noundef nonnull %910, i32 noundef %936) #14
  %938 = icmp eq i32 %937, -1
  br i1 %938, label %1449, label %942

939:                                              ; preds = %912, %918
  %940 = phi ptr [ %933, %918 ], [ %914, %912 ]
  %941 = getelementptr inbounds i8, ptr %940, i64 1
  store ptr %941, ptr %913, align 8, !tbaa !32
  store i8 %876, ptr %940, align 1, !tbaa !11
  br label %942

942:                                              ; preds = %939, %935
  %943 = load i32, ptr %7, align 4, !tbaa !13
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %1448, label %945

945:                                              ; preds = %942
  %946 = load ptr, ptr %877, align 8, !tbaa !35
  %947 = icmp eq ptr %946, null
  br i1 %947, label %948, label %983

948:                                              ; preds = %945
  %949 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %950 = load ptr, ptr %949, align 8, !tbaa !32
  %951 = sext i32 %943 to i64
  %952 = getelementptr inbounds i8, ptr %950, i64 %951
  %953 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %954 = load ptr, ptr %953, align 8, !tbaa !33
  %955 = icmp ugt ptr %952, %954
  br i1 %955, label %956, label %976

956:                                              ; preds = %948
  %957 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %958 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %959 = load i64, ptr %958, align 8, !tbaa !31
  %960 = trunc i64 %959 to i32
  %961 = add i32 %943, 8191
  %962 = add i32 %961, %960
  %963 = and i32 %962, -8192
  %964 = load ptr, ptr %957, align 8, !tbaa !30
  %965 = ptrtoint ptr %950 to i64
  %966 = ptrtoint ptr %964 to i64
  %967 = sub i64 %965, %966
  %968 = sext i32 %963 to i64
  %969 = call ptr @Perl_safesysrealloc(ptr noundef %964, i64 noundef %968) #14
  store ptr %969, ptr %957, align 8, !tbaa !30
  store i64 %968, ptr %958, align 8, !tbaa !31
  %970 = shl i64 %967, 32
  %971 = ashr exact i64 %970, 32
  %972 = getelementptr inbounds i8, ptr %969, i64 %971
  store ptr %972, ptr %949, align 8, !tbaa !32
  %973 = getelementptr inbounds i8, ptr %969, i64 %968
  store ptr %973, ptr %953, align 8, !tbaa !33
  %974 = load i32, ptr %7, align 4, !tbaa !13
  %975 = sext i32 %974 to i64
  br label %976

976:                                              ; preds = %956, %948
  %977 = phi i64 [ %975, %956 ], [ %951, %948 ]
  %978 = phi ptr [ %972, %956 ], [ %950, %948 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %978, ptr align 1 %565, i64 %977, i1 false)
  %979 = load i32, ptr %7, align 4, !tbaa !13
  %980 = load ptr, ptr %949, align 8, !tbaa !32
  %981 = sext i32 %979 to i64
  %982 = getelementptr inbounds i8, ptr %980, i64 %981
  store ptr %982, ptr %949, align 8, !tbaa !32
  br label %1448

983:                                              ; preds = %945
  %984 = sext i32 %943 to i64
  %985 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %946, ptr noundef %565, i64 noundef %984) #14
  %986 = load i32, ptr %7, align 4, !tbaa !13
  %987 = sext i32 %986 to i64
  %988 = icmp eq i64 %985, %987
  br i1 %988, label %1448, label %1449

989:                                              ; preds = %874
  %990 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %991 = load ptr, ptr %990, align 8, !tbaa !35
  %992 = icmp eq ptr %991, null
  br i1 %992, label %993, label %1016

993:                                              ; preds = %989
  %994 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %995 = load ptr, ptr %994, align 8, !tbaa !32
  %996 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %997 = load ptr, ptr %996, align 8, !tbaa !33
  %998 = icmp ult ptr %995, %997
  br i1 %998, label %1019, label %999

999:                                              ; preds = %993
  %1000 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1001 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1002 = load i64, ptr %1001, align 8, !tbaa !31
  %1003 = load ptr, ptr %1000, align 8, !tbaa !30
  %1004 = ptrtoint ptr %995 to i64
  %1005 = ptrtoint ptr %1003 to i64
  %1006 = sub i64 %1004, %1005
  %1007 = shl i64 %1002, 32
  %1008 = and i64 %1007, -35184372088832
  %1009 = add i64 %1008, 35184372088832
  %1010 = ashr exact i64 %1009, 32
  %1011 = call ptr @Perl_safesysrealloc(ptr noundef %1003, i64 noundef %1010) #14
  store ptr %1011, ptr %1000, align 8, !tbaa !30
  store i64 %1010, ptr %1001, align 8, !tbaa !31
  %1012 = shl i64 %1006, 32
  %1013 = ashr exact i64 %1012, 32
  %1014 = getelementptr inbounds i8, ptr %1011, i64 %1013
  %1015 = getelementptr inbounds i8, ptr %1011, i64 %1010
  store ptr %1015, ptr %996, align 8, !tbaa !33
  br label %1019

1016:                                             ; preds = %989
  %1017 = call i32 @PerlIO_putc(ptr noundef nonnull %991, i32 noundef 24) #14
  %1018 = icmp eq i32 %1017, -1
  br i1 %1018, label %1449, label %1022

1019:                                             ; preds = %993, %999
  %1020 = phi ptr [ %1014, %999 ], [ %995, %993 ]
  %1021 = getelementptr inbounds i8, ptr %1020, i64 1
  store ptr %1021, ptr %994, align 8, !tbaa !32
  store i8 24, ptr %1020, align 1, !tbaa !11
  br label %1022

1022:                                             ; preds = %1019, %1016
  %1023 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %1024 = load i32, ptr %1023, align 8, !tbaa !40
  %1025 = icmp eq i32 %1024, 0
  br i1 %1025, label %1071, label %1026

1026:                                             ; preds = %1022
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  %1027 = load i32, ptr %7, align 4, !tbaa !13
  %1028 = call fastcc i32 @__bswap_32(i32 noundef %1027) #15
  store i32 %1028, ptr %10, align 4, !tbaa !13
  %1029 = load ptr, ptr %990, align 8, !tbaa !35
  %1030 = icmp eq ptr %1029, null
  br i1 %1030, label %1031, label %1066

1031:                                             ; preds = %1026
  %1032 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1033 = load ptr, ptr %1032, align 8, !tbaa !32
  %1034 = getelementptr inbounds i8, ptr %1033, i64 4
  %1035 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1036 = load ptr, ptr %1035, align 8, !tbaa !33
  %1037 = icmp ugt ptr %1034, %1036
  br i1 %1037, label %1038, label %1055

1038:                                             ; preds = %1031
  %1039 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1040 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1041 = load i64, ptr %1040, align 8, !tbaa !31
  %1042 = load ptr, ptr %1039, align 8, !tbaa !30
  %1043 = ptrtoint ptr %1033 to i64
  %1044 = ptrtoint ptr %1042 to i64
  %1045 = sub i64 %1043, %1044
  %1046 = shl i64 %1041, 32
  %1047 = add i64 %1046, 35197256990720
  %1048 = ashr exact i64 %1047, 32
  %1049 = and i64 %1048, -8192
  %1050 = call ptr @Perl_safesysrealloc(ptr noundef %1042, i64 noundef %1049) #14
  store ptr %1050, ptr %1039, align 8, !tbaa !30
  store i64 %1049, ptr %1040, align 8, !tbaa !31
  %1051 = shl i64 %1045, 32
  %1052 = ashr exact i64 %1051, 32
  %1053 = getelementptr inbounds i8, ptr %1050, i64 %1052
  store ptr %1053, ptr %1032, align 8, !tbaa !32
  %1054 = getelementptr inbounds i8, ptr %1050, i64 %1049
  store ptr %1054, ptr %1035, align 8, !tbaa !33
  br label %1055

1055:                                             ; preds = %1038, %1031
  %1056 = phi ptr [ %1053, %1038 ], [ %1033, %1031 ]
  %1057 = ptrtoint ptr %1056 to i64
  %1058 = and i64 %1057, 3
  %1059 = icmp eq i64 %1058, 0
  br i1 %1059, label %1060, label %1061

1060:                                             ; preds = %1055
  store i32 %1028, ptr %1056, align 4, !tbaa !13
  br label %1063

1061:                                             ; preds = %1055
  store i32 %1028, ptr %1056, align 1
  %1062 = load ptr, ptr %1032, align 8, !tbaa !32
  br label %1063

1063:                                             ; preds = %1061, %1060
  %1064 = phi ptr [ %1062, %1061 ], [ %1056, %1060 ]
  %1065 = getelementptr inbounds i8, ptr %1064, i64 4
  store ptr %1065, ptr %1032, align 8, !tbaa !32
  br label %1069

1066:                                             ; preds = %1026
  %1067 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1029, ptr noundef nonnull %10, i64 noundef 4) #14
  %1068 = icmp eq i64 %1067, 4
  br i1 %1068, label %1069, label %1070

1069:                                             ; preds = %1066, %1063
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  br label %1113

1070:                                             ; preds = %1066
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  br label %1449

1071:                                             ; preds = %1022
  %1072 = load ptr, ptr %990, align 8, !tbaa !35
  %1073 = icmp eq ptr %1072, null
  br i1 %1073, label %1074, label %1110

1074:                                             ; preds = %1071
  %1075 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1076 = load ptr, ptr %1075, align 8, !tbaa !32
  %1077 = getelementptr inbounds i8, ptr %1076, i64 4
  %1078 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1079 = load ptr, ptr %1078, align 8, !tbaa !33
  %1080 = icmp ugt ptr %1077, %1079
  br i1 %1080, label %1081, label %1098

1081:                                             ; preds = %1074
  %1082 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1083 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1084 = load i64, ptr %1083, align 8, !tbaa !31
  %1085 = load ptr, ptr %1082, align 8, !tbaa !30
  %1086 = ptrtoint ptr %1076 to i64
  %1087 = ptrtoint ptr %1085 to i64
  %1088 = sub i64 %1086, %1087
  %1089 = shl i64 %1084, 32
  %1090 = add i64 %1089, 35197256990720
  %1091 = ashr exact i64 %1090, 32
  %1092 = and i64 %1091, -8192
  %1093 = call ptr @Perl_safesysrealloc(ptr noundef %1085, i64 noundef %1092) #14
  store ptr %1093, ptr %1082, align 8, !tbaa !30
  store i64 %1092, ptr %1083, align 8, !tbaa !31
  %1094 = shl i64 %1088, 32
  %1095 = ashr exact i64 %1094, 32
  %1096 = getelementptr inbounds i8, ptr %1093, i64 %1095
  store ptr %1096, ptr %1075, align 8, !tbaa !32
  %1097 = getelementptr inbounds i8, ptr %1093, i64 %1092
  store ptr %1097, ptr %1078, align 8, !tbaa !33
  br label %1098

1098:                                             ; preds = %1081, %1074
  %1099 = phi ptr [ %1096, %1081 ], [ %1076, %1074 ]
  %1100 = ptrtoint ptr %1099 to i64
  %1101 = and i64 %1100, 3
  %1102 = icmp eq i64 %1101, 0
  %1103 = load i32, ptr %7, align 4
  br i1 %1102, label %1104, label %1105

1104:                                             ; preds = %1098
  store i32 %1103, ptr %1099, align 4, !tbaa !13
  br label %1107

1105:                                             ; preds = %1098
  store i32 %1103, ptr %1099, align 1
  %1106 = load ptr, ptr %1075, align 8, !tbaa !32
  br label %1107

1107:                                             ; preds = %1105, %1104
  %1108 = phi ptr [ %1106, %1105 ], [ %1099, %1104 ]
  %1109 = getelementptr inbounds i8, ptr %1108, i64 4
  store ptr %1109, ptr %1075, align 8, !tbaa !32
  br label %1113

1110:                                             ; preds = %1071
  %1111 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1072, ptr noundef nonnull %7, i64 noundef 4) #14
  %1112 = icmp eq i64 %1111, 4
  br i1 %1112, label %1113, label %1449

1113:                                             ; preds = %1069, %1110, %1107
  %1114 = load ptr, ptr %990, align 8, !tbaa !35
  %1115 = icmp eq ptr %1114, null
  br i1 %1115, label %1116, label %1152

1116:                                             ; preds = %1113
  %1117 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1118 = load ptr, ptr %1117, align 8, !tbaa !32
  %1119 = load i32, ptr %7, align 4, !tbaa !13
  %1120 = sext i32 %1119 to i64
  %1121 = getelementptr inbounds i8, ptr %1118, i64 %1120
  %1122 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1123 = load ptr, ptr %1122, align 8, !tbaa !33
  %1124 = icmp ugt ptr %1121, %1123
  br i1 %1124, label %1125, label %1145

1125:                                             ; preds = %1116
  %1126 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1127 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1128 = load i64, ptr %1127, align 8, !tbaa !31
  %1129 = trunc i64 %1128 to i32
  %1130 = add i32 %1119, 8191
  %1131 = add i32 %1130, %1129
  %1132 = and i32 %1131, -8192
  %1133 = load ptr, ptr %1126, align 8, !tbaa !30
  %1134 = ptrtoint ptr %1118 to i64
  %1135 = ptrtoint ptr %1133 to i64
  %1136 = sub i64 %1134, %1135
  %1137 = sext i32 %1132 to i64
  %1138 = call ptr @Perl_safesysrealloc(ptr noundef %1133, i64 noundef %1137) #14
  store ptr %1138, ptr %1126, align 8, !tbaa !30
  store i64 %1137, ptr %1127, align 8, !tbaa !31
  %1139 = shl i64 %1136, 32
  %1140 = ashr exact i64 %1139, 32
  %1141 = getelementptr inbounds i8, ptr %1138, i64 %1140
  store ptr %1141, ptr %1117, align 8, !tbaa !32
  %1142 = getelementptr inbounds i8, ptr %1138, i64 %1137
  store ptr %1142, ptr %1122, align 8, !tbaa !33
  %1143 = load i32, ptr %7, align 4, !tbaa !13
  %1144 = sext i32 %1143 to i64
  br label %1145

1145:                                             ; preds = %1125, %1116
  %1146 = phi i64 [ %1144, %1125 ], [ %1120, %1116 ]
  %1147 = phi ptr [ %1141, %1125 ], [ %1118, %1116 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1147, ptr align 1 %565, i64 %1146, i1 false)
  %1148 = load i32, ptr %7, align 4, !tbaa !13
  %1149 = load ptr, ptr %1117, align 8, !tbaa !32
  %1150 = sext i32 %1148 to i64
  %1151 = getelementptr inbounds i8, ptr %1149, i64 %1150
  store ptr %1151, ptr %1117, align 8, !tbaa !32
  br label %1448

1152:                                             ; preds = %1113
  %1153 = load i32, ptr %7, align 4, !tbaa !13
  %1154 = sext i32 %1153 to i64
  %1155 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1114, ptr noundef %565, i64 noundef %1154) #14
  %1156 = load i32, ptr %7, align 4, !tbaa !13
  %1157 = sext i32 %1156 to i64
  %1158 = icmp eq i64 %1155, %1157
  br i1 %1158, label %1448, label %1449

1159:                                             ; preds = %867
  br i1 %873, label %1160, label %1274

1160:                                             ; preds = %1159
  %1161 = trunc i64 %868 to i8
  %1162 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %1163 = load ptr, ptr %1162, align 8, !tbaa !35
  %1164 = icmp eq ptr %1163, null
  br i1 %1164, label %1165, label %1188

1165:                                             ; preds = %1160
  %1166 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1167 = load ptr, ptr %1166, align 8, !tbaa !32
  %1168 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1169 = load ptr, ptr %1168, align 8, !tbaa !33
  %1170 = icmp ult ptr %1167, %1169
  br i1 %1170, label %1191, label %1171

1171:                                             ; preds = %1165
  %1172 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1173 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1174 = load i64, ptr %1173, align 8, !tbaa !31
  %1175 = load ptr, ptr %1172, align 8, !tbaa !30
  %1176 = ptrtoint ptr %1167 to i64
  %1177 = ptrtoint ptr %1175 to i64
  %1178 = sub i64 %1176, %1177
  %1179 = shl i64 %1174, 32
  %1180 = and i64 %1179, -35184372088832
  %1181 = add i64 %1180, 35184372088832
  %1182 = ashr exact i64 %1181, 32
  %1183 = call ptr @Perl_safesysrealloc(ptr noundef %1175, i64 noundef %1182) #14
  store ptr %1183, ptr %1172, align 8, !tbaa !30
  store i64 %1182, ptr %1173, align 8, !tbaa !31
  %1184 = shl i64 %1178, 32
  %1185 = ashr exact i64 %1184, 32
  %1186 = getelementptr inbounds i8, ptr %1183, i64 %1185
  %1187 = getelementptr inbounds i8, ptr %1183, i64 %1182
  store ptr %1187, ptr %1168, align 8, !tbaa !33
  br label %1191

1188:                                             ; preds = %1160
  %1189 = call i32 @PerlIO_putc(ptr noundef nonnull %1163, i32 noundef 10) #14
  %1190 = icmp eq i32 %1189, -1
  br i1 %1190, label %1449, label %1194

1191:                                             ; preds = %1165, %1171
  %1192 = phi ptr [ %1186, %1171 ], [ %1167, %1165 ]
  %1193 = getelementptr inbounds i8, ptr %1192, i64 1
  store ptr %1193, ptr %1166, align 8, !tbaa !32
  store i8 10, ptr %1192, align 1, !tbaa !11
  br label %1194

1194:                                             ; preds = %1191, %1188
  %1195 = load ptr, ptr %1162, align 8, !tbaa !35
  %1196 = icmp eq ptr %1195, null
  br i1 %1196, label %1197, label %1220

1197:                                             ; preds = %1194
  %1198 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1199 = load ptr, ptr %1198, align 8, !tbaa !32
  %1200 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1201 = load ptr, ptr %1200, align 8, !tbaa !33
  %1202 = icmp ult ptr %1199, %1201
  br i1 %1202, label %1224, label %1203

1203:                                             ; preds = %1197
  %1204 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1205 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1206 = load i64, ptr %1205, align 8, !tbaa !31
  %1207 = load ptr, ptr %1204, align 8, !tbaa !30
  %1208 = ptrtoint ptr %1199 to i64
  %1209 = ptrtoint ptr %1207 to i64
  %1210 = sub i64 %1208, %1209
  %1211 = shl i64 %1206, 32
  %1212 = and i64 %1211, -35184372088832
  %1213 = add i64 %1212, 35184372088832
  %1214 = ashr exact i64 %1213, 32
  %1215 = call ptr @Perl_safesysrealloc(ptr noundef %1207, i64 noundef %1214) #14
  store ptr %1215, ptr %1204, align 8, !tbaa !30
  store i64 %1214, ptr %1205, align 8, !tbaa !31
  %1216 = shl i64 %1210, 32
  %1217 = ashr exact i64 %1216, 32
  %1218 = getelementptr inbounds i8, ptr %1215, i64 %1217
  %1219 = getelementptr inbounds i8, ptr %1215, i64 %1214
  store ptr %1219, ptr %1200, align 8, !tbaa !33
  br label %1224

1220:                                             ; preds = %1194
  %1221 = and i32 %869, 255
  %1222 = call i32 @PerlIO_putc(ptr noundef nonnull %1195, i32 noundef %1221) #14
  %1223 = icmp eq i32 %1222, -1
  br i1 %1223, label %1449, label %1227

1224:                                             ; preds = %1197, %1203
  %1225 = phi ptr [ %1218, %1203 ], [ %1199, %1197 ]
  %1226 = getelementptr inbounds i8, ptr %1225, i64 1
  store ptr %1226, ptr %1198, align 8, !tbaa !32
  store i8 %1161, ptr %1225, align 1, !tbaa !11
  br label %1227

1227:                                             ; preds = %1224, %1220
  %1228 = load i32, ptr %7, align 4, !tbaa !13
  %1229 = icmp eq i32 %1228, 0
  br i1 %1229, label %1448, label %1230

1230:                                             ; preds = %1227
  %1231 = load ptr, ptr %1162, align 8, !tbaa !35
  %1232 = icmp eq ptr %1231, null
  br i1 %1232, label %1233, label %1268

1233:                                             ; preds = %1230
  %1234 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1235 = load ptr, ptr %1234, align 8, !tbaa !32
  %1236 = sext i32 %1228 to i64
  %1237 = getelementptr inbounds i8, ptr %1235, i64 %1236
  %1238 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1239 = load ptr, ptr %1238, align 8, !tbaa !33
  %1240 = icmp ugt ptr %1237, %1239
  br i1 %1240, label %1241, label %1261

1241:                                             ; preds = %1233
  %1242 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1243 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1244 = load i64, ptr %1243, align 8, !tbaa !31
  %1245 = trunc i64 %1244 to i32
  %1246 = add i32 %1228, 8191
  %1247 = add i32 %1246, %1245
  %1248 = and i32 %1247, -8192
  %1249 = load ptr, ptr %1242, align 8, !tbaa !30
  %1250 = ptrtoint ptr %1235 to i64
  %1251 = ptrtoint ptr %1249 to i64
  %1252 = sub i64 %1250, %1251
  %1253 = sext i32 %1248 to i64
  %1254 = call ptr @Perl_safesysrealloc(ptr noundef %1249, i64 noundef %1253) #14
  store ptr %1254, ptr %1242, align 8, !tbaa !30
  store i64 %1253, ptr %1243, align 8, !tbaa !31
  %1255 = shl i64 %1252, 32
  %1256 = ashr exact i64 %1255, 32
  %1257 = getelementptr inbounds i8, ptr %1254, i64 %1256
  store ptr %1257, ptr %1234, align 8, !tbaa !32
  %1258 = getelementptr inbounds i8, ptr %1254, i64 %1253
  store ptr %1258, ptr %1238, align 8, !tbaa !33
  %1259 = load i32, ptr %7, align 4, !tbaa !13
  %1260 = sext i32 %1259 to i64
  br label %1261

1261:                                             ; preds = %1241, %1233
  %1262 = phi i64 [ %1260, %1241 ], [ %1236, %1233 ]
  %1263 = phi ptr [ %1257, %1241 ], [ %1235, %1233 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1263, ptr align 1 %565, i64 %1262, i1 false)
  %1264 = load i32, ptr %7, align 4, !tbaa !13
  %1265 = load ptr, ptr %1234, align 8, !tbaa !32
  %1266 = sext i32 %1264 to i64
  %1267 = getelementptr inbounds i8, ptr %1265, i64 %1266
  store ptr %1267, ptr %1234, align 8, !tbaa !32
  br label %1448

1268:                                             ; preds = %1230
  %1269 = sext i32 %1228 to i64
  %1270 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1231, ptr noundef %565, i64 noundef %1269) #14
  %1271 = load i32, ptr %7, align 4, !tbaa !13
  %1272 = sext i32 %1271 to i64
  %1273 = icmp eq i64 %1270, %1272
  br i1 %1273, label %1448, label %1449

1274:                                             ; preds = %1159
  %1275 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %1276 = load ptr, ptr %1275, align 8, !tbaa !35
  %1277 = icmp eq ptr %1276, null
  br i1 %1277, label %1278, label %1301

1278:                                             ; preds = %1274
  %1279 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1280 = load ptr, ptr %1279, align 8, !tbaa !32
  %1281 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1282 = load ptr, ptr %1281, align 8, !tbaa !33
  %1283 = icmp ult ptr %1280, %1282
  br i1 %1283, label %1304, label %1284

1284:                                             ; preds = %1278
  %1285 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1286 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1287 = load i64, ptr %1286, align 8, !tbaa !31
  %1288 = load ptr, ptr %1285, align 8, !tbaa !30
  %1289 = ptrtoint ptr %1280 to i64
  %1290 = ptrtoint ptr %1288 to i64
  %1291 = sub i64 %1289, %1290
  %1292 = shl i64 %1287, 32
  %1293 = and i64 %1292, -35184372088832
  %1294 = add i64 %1293, 35184372088832
  %1295 = ashr exact i64 %1294, 32
  %1296 = call ptr @Perl_safesysrealloc(ptr noundef %1288, i64 noundef %1295) #14
  store ptr %1296, ptr %1285, align 8, !tbaa !30
  store i64 %1295, ptr %1286, align 8, !tbaa !31
  %1297 = shl i64 %1291, 32
  %1298 = ashr exact i64 %1297, 32
  %1299 = getelementptr inbounds i8, ptr %1296, i64 %1298
  %1300 = getelementptr inbounds i8, ptr %1296, i64 %1295
  store ptr %1300, ptr %1281, align 8, !tbaa !33
  br label %1304

1301:                                             ; preds = %1274
  %1302 = call i32 @PerlIO_putc(ptr noundef nonnull %1276, i32 noundef 1) #14
  %1303 = icmp eq i32 %1302, -1
  br i1 %1303, label %1449, label %1307

1304:                                             ; preds = %1278, %1284
  %1305 = phi ptr [ %1299, %1284 ], [ %1280, %1278 ]
  %1306 = getelementptr inbounds i8, ptr %1305, i64 1
  store ptr %1306, ptr %1279, align 8, !tbaa !32
  store i8 1, ptr %1305, align 1, !tbaa !11
  br label %1307

1307:                                             ; preds = %1304, %1301
  %1308 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %1309 = load i32, ptr %1308, align 8, !tbaa !40
  %1310 = icmp eq i32 %1309, 0
  br i1 %1310, label %1356, label %1311

1311:                                             ; preds = %1307
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #16
  %1312 = load i32, ptr %7, align 4, !tbaa !13
  %1313 = call fastcc i32 @__bswap_32(i32 noundef %1312) #15
  store i32 %1313, ptr %11, align 4, !tbaa !13
  %1314 = load ptr, ptr %1275, align 8, !tbaa !35
  %1315 = icmp eq ptr %1314, null
  br i1 %1315, label %1316, label %1351

1316:                                             ; preds = %1311
  %1317 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1318 = load ptr, ptr %1317, align 8, !tbaa !32
  %1319 = getelementptr inbounds i8, ptr %1318, i64 4
  %1320 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1321 = load ptr, ptr %1320, align 8, !tbaa !33
  %1322 = icmp ugt ptr %1319, %1321
  br i1 %1322, label %1323, label %1340

1323:                                             ; preds = %1316
  %1324 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1325 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1326 = load i64, ptr %1325, align 8, !tbaa !31
  %1327 = load ptr, ptr %1324, align 8, !tbaa !30
  %1328 = ptrtoint ptr %1318 to i64
  %1329 = ptrtoint ptr %1327 to i64
  %1330 = sub i64 %1328, %1329
  %1331 = shl i64 %1326, 32
  %1332 = add i64 %1331, 35197256990720
  %1333 = ashr exact i64 %1332, 32
  %1334 = and i64 %1333, -8192
  %1335 = call ptr @Perl_safesysrealloc(ptr noundef %1327, i64 noundef %1334) #14
  store ptr %1335, ptr %1324, align 8, !tbaa !30
  store i64 %1334, ptr %1325, align 8, !tbaa !31
  %1336 = shl i64 %1330, 32
  %1337 = ashr exact i64 %1336, 32
  %1338 = getelementptr inbounds i8, ptr %1335, i64 %1337
  store ptr %1338, ptr %1317, align 8, !tbaa !32
  %1339 = getelementptr inbounds i8, ptr %1335, i64 %1334
  store ptr %1339, ptr %1320, align 8, !tbaa !33
  br label %1340

1340:                                             ; preds = %1323, %1316
  %1341 = phi ptr [ %1338, %1323 ], [ %1318, %1316 ]
  %1342 = ptrtoint ptr %1341 to i64
  %1343 = and i64 %1342, 3
  %1344 = icmp eq i64 %1343, 0
  br i1 %1344, label %1345, label %1346

1345:                                             ; preds = %1340
  store i32 %1313, ptr %1341, align 4, !tbaa !13
  br label %1348

1346:                                             ; preds = %1340
  store i32 %1313, ptr %1341, align 1
  %1347 = load ptr, ptr %1317, align 8, !tbaa !32
  br label %1348

1348:                                             ; preds = %1346, %1345
  %1349 = phi ptr [ %1347, %1346 ], [ %1341, %1345 ]
  %1350 = getelementptr inbounds i8, ptr %1349, i64 4
  store ptr %1350, ptr %1317, align 8, !tbaa !32
  br label %1354

1351:                                             ; preds = %1311
  %1352 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1314, ptr noundef nonnull %11, i64 noundef 4) #14
  %1353 = icmp eq i64 %1352, 4
  br i1 %1353, label %1354, label %1355

1354:                                             ; preds = %1351, %1348
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #16
  br label %1398

1355:                                             ; preds = %1351
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #16
  br label %1449

1356:                                             ; preds = %1307
  %1357 = load ptr, ptr %1275, align 8, !tbaa !35
  %1358 = icmp eq ptr %1357, null
  br i1 %1358, label %1359, label %1395

1359:                                             ; preds = %1356
  %1360 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1361 = load ptr, ptr %1360, align 8, !tbaa !32
  %1362 = getelementptr inbounds i8, ptr %1361, i64 4
  %1363 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1364 = load ptr, ptr %1363, align 8, !tbaa !33
  %1365 = icmp ugt ptr %1362, %1364
  br i1 %1365, label %1366, label %1383

1366:                                             ; preds = %1359
  %1367 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1368 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1369 = load i64, ptr %1368, align 8, !tbaa !31
  %1370 = load ptr, ptr %1367, align 8, !tbaa !30
  %1371 = ptrtoint ptr %1361 to i64
  %1372 = ptrtoint ptr %1370 to i64
  %1373 = sub i64 %1371, %1372
  %1374 = shl i64 %1369, 32
  %1375 = add i64 %1374, 35197256990720
  %1376 = ashr exact i64 %1375, 32
  %1377 = and i64 %1376, -8192
  %1378 = call ptr @Perl_safesysrealloc(ptr noundef %1370, i64 noundef %1377) #14
  store ptr %1378, ptr %1367, align 8, !tbaa !30
  store i64 %1377, ptr %1368, align 8, !tbaa !31
  %1379 = shl i64 %1373, 32
  %1380 = ashr exact i64 %1379, 32
  %1381 = getelementptr inbounds i8, ptr %1378, i64 %1380
  store ptr %1381, ptr %1360, align 8, !tbaa !32
  %1382 = getelementptr inbounds i8, ptr %1378, i64 %1377
  store ptr %1382, ptr %1363, align 8, !tbaa !33
  br label %1383

1383:                                             ; preds = %1366, %1359
  %1384 = phi ptr [ %1381, %1366 ], [ %1361, %1359 ]
  %1385 = ptrtoint ptr %1384 to i64
  %1386 = and i64 %1385, 3
  %1387 = icmp eq i64 %1386, 0
  %1388 = load i32, ptr %7, align 4
  br i1 %1387, label %1389, label %1390

1389:                                             ; preds = %1383
  store i32 %1388, ptr %1384, align 4, !tbaa !13
  br label %1392

1390:                                             ; preds = %1383
  store i32 %1388, ptr %1384, align 1
  %1391 = load ptr, ptr %1360, align 8, !tbaa !32
  br label %1392

1392:                                             ; preds = %1390, %1389
  %1393 = phi ptr [ %1391, %1390 ], [ %1384, %1389 ]
  %1394 = getelementptr inbounds i8, ptr %1393, i64 4
  store ptr %1394, ptr %1360, align 8, !tbaa !32
  br label %1398

1395:                                             ; preds = %1356
  %1396 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1357, ptr noundef nonnull %7, i64 noundef 4) #14
  %1397 = icmp eq i64 %1396, 4
  br i1 %1397, label %1398, label %1449

1398:                                             ; preds = %1354, %1395, %1392
  %1399 = load ptr, ptr %1275, align 8, !tbaa !35
  %1400 = icmp eq ptr %1399, null
  br i1 %1400, label %1401, label %1437

1401:                                             ; preds = %1398
  %1402 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %1403 = load ptr, ptr %1402, align 8, !tbaa !32
  %1404 = load i32, ptr %7, align 4, !tbaa !13
  %1405 = sext i32 %1404 to i64
  %1406 = getelementptr inbounds i8, ptr %1403, i64 %1405
  %1407 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %1408 = load ptr, ptr %1407, align 8, !tbaa !33
  %1409 = icmp ugt ptr %1406, %1408
  br i1 %1409, label %1410, label %1430

1410:                                             ; preds = %1401
  %1411 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %1412 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %1413 = load i64, ptr %1412, align 8, !tbaa !31
  %1414 = trunc i64 %1413 to i32
  %1415 = add i32 %1404, 8191
  %1416 = add i32 %1415, %1414
  %1417 = and i32 %1416, -8192
  %1418 = load ptr, ptr %1411, align 8, !tbaa !30
  %1419 = ptrtoint ptr %1403 to i64
  %1420 = ptrtoint ptr %1418 to i64
  %1421 = sub i64 %1419, %1420
  %1422 = sext i32 %1417 to i64
  %1423 = call ptr @Perl_safesysrealloc(ptr noundef %1418, i64 noundef %1422) #14
  store ptr %1423, ptr %1411, align 8, !tbaa !30
  store i64 %1422, ptr %1412, align 8, !tbaa !31
  %1424 = shl i64 %1421, 32
  %1425 = ashr exact i64 %1424, 32
  %1426 = getelementptr inbounds i8, ptr %1423, i64 %1425
  store ptr %1426, ptr %1402, align 8, !tbaa !32
  %1427 = getelementptr inbounds i8, ptr %1423, i64 %1422
  store ptr %1427, ptr %1407, align 8, !tbaa !33
  %1428 = load i32, ptr %7, align 4, !tbaa !13
  %1429 = sext i32 %1428 to i64
  br label %1430

1430:                                             ; preds = %1410, %1401
  %1431 = phi i64 [ %1429, %1410 ], [ %1405, %1401 ]
  %1432 = phi ptr [ %1426, %1410 ], [ %1403, %1401 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1432, ptr align 1 %565, i64 %1431, i1 false)
  %1433 = load i32, ptr %7, align 4, !tbaa !13
  %1434 = load ptr, ptr %1402, align 8, !tbaa !32
  %1435 = sext i32 %1433 to i64
  %1436 = getelementptr inbounds i8, ptr %1434, i64 %1435
  store ptr %1436, ptr %1402, align 8, !tbaa !32
  br label %1448

1437:                                             ; preds = %1398
  %1438 = load i32, ptr %7, align 4, !tbaa !13
  %1439 = sext i32 %1438 to i64
  %1440 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %1399, ptr noundef %565, i64 noundef %1439) #14
  %1441 = load i32, ptr %7, align 4, !tbaa !13
  %1442 = sext i32 %1441 to i64
  %1443 = icmp eq i64 %1440, %1442
  br i1 %1443, label %1448, label %1449

1444:                                             ; preds = %549
  %1445 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %1445, align 8, !tbaa !27
  %1446 = tail call ptr @Perl_sv_reftype(ptr noundef nonnull %1, i32 noundef 0) #14
  %1447 = ptrtoint ptr %1 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.37, ptr noundef %1446, i64 noundef %1447) #14
  br label %1448

1448:                                             ; preds = %546, %373, %1227, %1268, %1261, %942, %983, %976, %248, %246, %266, %1145, %1152, %1430, %1437, %1444, %434, %438, %117, %97, %99, %134, %132, %152
  br label %1449

1449:                                             ; preds = %547, %372, %1437, %1395, %1355, %1301, %1188, %1220, %1268, %1152, %1110, %1070, %1016, %903, %935, %983, %866, %438, %401, %231, %266, %152, %117, %78, %48, %1448, %81
  %1450 = phi i32 [ 0, %1448 ], [ -1, %1070 ], [ -1, %1355 ], [ -1, %866 ], [ 0, %81 ], [ -1, %48 ], [ -1, %78 ], [ -1, %117 ], [ -1, %152 ], [ -1, %266 ], [ -1, %231 ], [ -1, %401 ], [ -1, %438 ], [ -1, %983 ], [ -1, %935 ], [ -1, %903 ], [ -1, %1016 ], [ -1, %1110 ], [ -1, %1152 ], [ -1, %1268 ], [ -1, %1220 ], [ -1, %1188 ], [ -1, %1301 ], [ -1, %1395 ], [ -1, %1437 ], [ -1, %372 ], [ -1, %547 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i32 %1450
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @store_array(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %5 = tail call i64 @Perl_av_len(ptr noundef %1) #14
  %6 = trunc i64 %5 to i32
  %7 = add i32 %6, 1
  store i32 %7, ptr %3, align 4, !tbaa !13
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !32
  %14 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !33
  %16 = icmp ult ptr %13, %15
  br i1 %16, label %37, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %19 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !31
  %21 = load ptr, ptr %18, align 8, !tbaa !30
  %22 = ptrtoint ptr %13 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = shl i64 %20, 32
  %26 = and i64 %25, -35184372088832
  %27 = add i64 %26, 35184372088832
  %28 = ashr exact i64 %27, 32
  %29 = tail call ptr @Perl_safesysrealloc(ptr noundef %21, i64 noundef %28) #14
  store ptr %29, ptr %18, align 8, !tbaa !30
  store i64 %28, ptr %19, align 8, !tbaa !31
  %30 = shl i64 %24, 32
  %31 = ashr exact i64 %30, 32
  %32 = getelementptr inbounds i8, ptr %29, i64 %31
  %33 = getelementptr inbounds i8, ptr %29, i64 %28
  store ptr %33, ptr %14, align 8, !tbaa !33
  br label %37

34:                                               ; preds = %2
  %35 = tail call i32 @PerlIO_putc(ptr noundef nonnull %9, i32 noundef 2) #14
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %215, label %40

37:                                               ; preds = %11, %17
  %38 = phi ptr [ %32, %17 ], [ %13, %11 ]
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %39, ptr %12, align 8, !tbaa !32
  store i8 2, ptr %38, align 1, !tbaa !11
  br label %40

40:                                               ; preds = %37, %34
  %41 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %42 = load i32, ptr %41, align 8, !tbaa !40
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %88, label %44

44:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %45 = tail call fastcc i32 @__bswap_32(i32 noundef %7) #15
  store i32 %45, ptr %4, align 4, !tbaa !13
  %46 = load ptr, ptr %8, align 8, !tbaa !35
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %83

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !32
  %51 = getelementptr inbounds i8, ptr %50, i64 4
  %52 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !33
  %54 = icmp ugt ptr %51, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %57 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !31
  %59 = load ptr, ptr %56, align 8, !tbaa !30
  %60 = ptrtoint ptr %50 to i64
  %61 = ptrtoint ptr %59 to i64
  %62 = sub i64 %60, %61
  %63 = shl i64 %58, 32
  %64 = add i64 %63, 35197256990720
  %65 = ashr exact i64 %64, 32
  %66 = and i64 %65, -8192
  %67 = tail call ptr @Perl_safesysrealloc(ptr noundef %59, i64 noundef %66) #14
  store ptr %67, ptr %56, align 8, !tbaa !30
  store i64 %66, ptr %57, align 8, !tbaa !31
  %68 = shl i64 %62, 32
  %69 = ashr exact i64 %68, 32
  %70 = getelementptr inbounds i8, ptr %67, i64 %69
  store ptr %70, ptr %49, align 8, !tbaa !32
  %71 = getelementptr inbounds i8, ptr %67, i64 %66
  store ptr %71, ptr %52, align 8, !tbaa !33
  br label %72

72:                                               ; preds = %55, %48
  %73 = phi ptr [ %70, %55 ], [ %50, %48 ]
  %74 = ptrtoint ptr %73 to i64
  %75 = and i64 %74, 3
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 %45, ptr %73, align 4, !tbaa !13
  br label %80

78:                                               ; preds = %72
  store i32 %45, ptr %73, align 1
  %79 = load ptr, ptr %49, align 8, !tbaa !32
  br label %80

80:                                               ; preds = %78, %77
  %81 = phi ptr [ %79, %78 ], [ %73, %77 ]
  %82 = getelementptr inbounds i8, ptr %81, i64 4
  store ptr %82, ptr %49, align 8, !tbaa !32
  br label %86

83:                                               ; preds = %44
  %84 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %46, ptr noundef nonnull %4, i64 noundef 4) #14
  %85 = icmp eq i64 %84, 4
  br i1 %85, label %86, label %87

86:                                               ; preds = %83, %80
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %131

87:                                               ; preds = %83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %215

88:                                               ; preds = %40
  %89 = load ptr, ptr %8, align 8, !tbaa !35
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %126

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !32
  %94 = getelementptr inbounds i8, ptr %93, i64 4
  %95 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !33
  %97 = icmp ugt ptr %94, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %100 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %101 = load i64, ptr %100, align 8, !tbaa !31
  %102 = load ptr, ptr %99, align 8, !tbaa !30
  %103 = ptrtoint ptr %93 to i64
  %104 = ptrtoint ptr %102 to i64
  %105 = sub i64 %103, %104
  %106 = shl i64 %101, 32
  %107 = add i64 %106, 35197256990720
  %108 = ashr exact i64 %107, 32
  %109 = and i64 %108, -8192
  %110 = tail call ptr @Perl_safesysrealloc(ptr noundef %102, i64 noundef %109) #14
  store ptr %110, ptr %99, align 8, !tbaa !30
  store i64 %109, ptr %100, align 8, !tbaa !31
  %111 = shl i64 %105, 32
  %112 = ashr exact i64 %111, 32
  %113 = getelementptr inbounds i8, ptr %110, i64 %112
  store ptr %113, ptr %92, align 8, !tbaa !32
  %114 = getelementptr inbounds i8, ptr %110, i64 %109
  store ptr %114, ptr %95, align 8, !tbaa !33
  br label %115

115:                                              ; preds = %98, %91
  %116 = phi ptr [ %113, %98 ], [ %93, %91 ]
  %117 = ptrtoint ptr %116 to i64
  %118 = and i64 %117, 3
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i32 %7, ptr %116, align 4, !tbaa !13
  br label %123

121:                                              ; preds = %115
  store i32 %7, ptr %116, align 1
  %122 = load ptr, ptr %92, align 8, !tbaa !32
  br label %123

123:                                              ; preds = %121, %120
  %124 = phi ptr [ %122, %121 ], [ %116, %120 ]
  %125 = getelementptr inbounds i8, ptr %124, i64 4
  store ptr %125, ptr %92, align 8, !tbaa !32
  br label %131

126:                                              ; preds = %88
  %127 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %89, ptr noundef nonnull %3, i64 noundef 4) #14
  %128 = icmp eq i64 %127, 4
  br i1 %128, label %129, label %215

129:                                              ; preds = %126
  %130 = load i32, ptr %3, align 4, !tbaa !13
  br label %131

131:                                              ; preds = %129, %86, %123
  %132 = phi i32 [ %130, %129 ], [ %7, %86 ], [ %7, %123 ]
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %215

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %136 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %137 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %138 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %139 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  br label %140

140:                                              ; preds = %134, %210
  %141 = phi i64 [ 0, %134 ], [ %211, %210 ]
  %142 = call ptr @Perl_av_fetch(ptr noundef %1, i64 noundef %141, i32 noundef 0) #14
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %174

144:                                              ; preds = %140
  %145 = load i64, ptr %135, align 8, !tbaa !53
  %146 = add nsw i64 %145, 1
  store i64 %146, ptr %135, align 8, !tbaa !53
  %147 = load ptr, ptr %8, align 8, !tbaa !35
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %171

149:                                              ; preds = %144
  %150 = load ptr, ptr %136, align 8, !tbaa !32
  %151 = load ptr, ptr %137, align 8, !tbaa !33
  %152 = icmp ult ptr %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %149
  %154 = getelementptr inbounds i8, ptr %150, i64 1
  store ptr %154, ptr %136, align 8, !tbaa !32
  store i8 14, ptr %150, align 1, !tbaa !11
  br label %210

155:                                              ; preds = %149
  %156 = load i64, ptr %139, align 8, !tbaa !31
  %157 = load ptr, ptr %138, align 8, !tbaa !30
  %158 = ptrtoint ptr %150 to i64
  %159 = ptrtoint ptr %157 to i64
  %160 = sub i64 %158, %159
  %161 = shl i64 %156, 32
  %162 = and i64 %161, -35184372088832
  %163 = add i64 %162, 35184372088832
  %164 = ashr exact i64 %163, 32
  %165 = call ptr @Perl_safesysrealloc(ptr noundef %157, i64 noundef %164) #14
  store ptr %165, ptr %138, align 8, !tbaa !30
  store i64 %164, ptr %139, align 8, !tbaa !31
  %166 = shl i64 %160, 32
  %167 = ashr exact i64 %166, 32
  %168 = getelementptr inbounds i8, ptr %165, i64 %167
  %169 = getelementptr inbounds i8, ptr %165, i64 %164
  store ptr %169, ptr %137, align 8, !tbaa !33
  %170 = getelementptr inbounds i8, ptr %168, i64 1
  store ptr %170, ptr %136, align 8, !tbaa !32
  store i8 14, ptr %168, align 1, !tbaa !11
  br label %210

171:                                              ; preds = %144
  %172 = call i32 @PerlIO_putc(ptr noundef nonnull %147, i32 noundef 14) #14
  %173 = icmp eq i32 %172, -1
  br i1 %173, label %215, label %210

174:                                              ; preds = %140
  %175 = load ptr, ptr %142, align 8, !tbaa !12
  %176 = icmp eq ptr %175, @PL_sv_undef
  br i1 %176, label %177, label %207

177:                                              ; preds = %174
  %178 = load i64, ptr %135, align 8, !tbaa !53
  %179 = add nsw i64 %178, 1
  store i64 %179, ptr %135, align 8, !tbaa !53
  %180 = load ptr, ptr %8, align 8, !tbaa !35
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %204

182:                                              ; preds = %177
  %183 = load ptr, ptr %136, align 8, !tbaa !32
  %184 = load ptr, ptr %137, align 8, !tbaa !33
  %185 = icmp ult ptr %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = getelementptr inbounds i8, ptr %183, i64 1
  store ptr %187, ptr %136, align 8, !tbaa !32
  store i8 31, ptr %183, align 1, !tbaa !11
  br label %210

188:                                              ; preds = %182
  %189 = load i64, ptr %139, align 8, !tbaa !31
  %190 = load ptr, ptr %138, align 8, !tbaa !30
  %191 = ptrtoint ptr %183 to i64
  %192 = ptrtoint ptr %190 to i64
  %193 = sub i64 %191, %192
  %194 = shl i64 %189, 32
  %195 = and i64 %194, -35184372088832
  %196 = add i64 %195, 35184372088832
  %197 = ashr exact i64 %196, 32
  %198 = call ptr @Perl_safesysrealloc(ptr noundef %190, i64 noundef %197) #14
  store ptr %198, ptr %138, align 8, !tbaa !30
  store i64 %197, ptr %139, align 8, !tbaa !31
  %199 = shl i64 %193, 32
  %200 = ashr exact i64 %199, 32
  %201 = getelementptr inbounds i8, ptr %198, i64 %200
  %202 = getelementptr inbounds i8, ptr %198, i64 %197
  store ptr %202, ptr %137, align 8, !tbaa !33
  %203 = getelementptr inbounds i8, ptr %201, i64 1
  store ptr %203, ptr %136, align 8, !tbaa !32
  store i8 31, ptr %201, align 1, !tbaa !11
  br label %210

204:                                              ; preds = %177
  %205 = call i32 @PerlIO_putc(ptr noundef nonnull %180, i32 noundef 31) #14
  %206 = icmp eq i32 %205, -1
  br i1 %206, label %215, label %210

207:                                              ; preds = %174
  %208 = call fastcc i32 @store(ptr noundef %0, ptr noundef %175) #15
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %207, %188, %186, %204, %155, %153, %171
  %211 = add nuw nsw i64 %141, 1
  %212 = load i32, ptr %3, align 4, !tbaa !13
  %213 = sext i32 %212 to i64
  %214 = icmp slt i64 %211, %213
  br i1 %214, label %140, label %215, !llvm.loop !92

215:                                              ; preds = %171, %204, %207, %210, %131, %126, %87, %34
  %216 = phi i32 [ -1, %87 ], [ -1, %34 ], [ -1, %126 ], [ 0, %131 ], [ -1, %171 ], [ -1, %204 ], [ %208, %207 ], [ 0, %210 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %216
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @store_hash(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %11 = load ptr, ptr %1, align 8, !tbaa !47
  %12 = getelementptr inbounds %struct.xpvhv, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !93
  %14 = trunc i64 %13 to i32
  store i32 %14, ptr %3, align 4, !tbaa !13
  %15 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !66
  %17 = and i32 %16, 134283264
  %18 = and i32 %16, -2013200384
  %19 = icmp eq i32 %18, 0
  %20 = icmp ne i32 %17, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = icmp eq ptr %23, null
  br i1 %19, label %88, label %25

25:                                               ; preds = %2
  br i1 %24, label %26, label %49

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !32
  %29 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !33
  %31 = icmp ult ptr %28, %30
  br i1 %31, label %52, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %34 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !31
  %36 = load ptr, ptr %33, align 8, !tbaa !30
  %37 = ptrtoint ptr %28 to i64
  %38 = ptrtoint ptr %36 to i64
  %39 = sub i64 %37, %38
  %40 = shl i64 %35, 32
  %41 = and i64 %40, -35184372088832
  %42 = add i64 %41, 35184372088832
  %43 = ashr exact i64 %42, 32
  %44 = tail call ptr @Perl_safesysrealloc(ptr noundef %36, i64 noundef %43) #14
  store ptr %44, ptr %33, align 8, !tbaa !30
  store i64 %43, ptr %34, align 8, !tbaa !31
  %45 = shl i64 %39, 32
  %46 = ashr exact i64 %45, 32
  %47 = getelementptr inbounds i8, ptr %44, i64 %46
  %48 = getelementptr inbounds i8, ptr %44, i64 %43
  store ptr %48, ptr %29, align 8, !tbaa !33
  br label %52

49:                                               ; preds = %25
  %50 = tail call i32 @PerlIO_putc(ptr noundef nonnull %23, i32 noundef 25) #14
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %831, label %55

52:                                               ; preds = %26, %32
  %53 = phi ptr [ %47, %32 ], [ %28, %26 ]
  %54 = getelementptr inbounds i8, ptr %53, i64 1
  store ptr %54, ptr %27, align 8, !tbaa !32
  store i8 25, ptr %53, align 1, !tbaa !11
  br label %55

55:                                               ; preds = %52, %49
  %56 = load ptr, ptr %22, align 8, !tbaa !35
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %84

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !32
  %61 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !33
  %63 = icmp ult ptr %60, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = getelementptr inbounds i8, ptr %60, i64 1
  store ptr %65, ptr %59, align 8, !tbaa !32
  store i8 %21, ptr %60, align 1, !tbaa !11
  br label %118

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %68 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !31
  %70 = load ptr, ptr %67, align 8, !tbaa !30
  %71 = ptrtoint ptr %60 to i64
  %72 = ptrtoint ptr %70 to i64
  %73 = sub i64 %71, %72
  %74 = shl i64 %69, 32
  %75 = and i64 %74, -35184372088832
  %76 = add i64 %75, 35184372088832
  %77 = ashr exact i64 %76, 32
  %78 = tail call ptr @Perl_safesysrealloc(ptr noundef %70, i64 noundef %77) #14
  store ptr %78, ptr %67, align 8, !tbaa !30
  store i64 %77, ptr %68, align 8, !tbaa !31
  %79 = shl i64 %73, 32
  %80 = ashr exact i64 %79, 32
  %81 = getelementptr inbounds i8, ptr %78, i64 %80
  %82 = getelementptr inbounds i8, ptr %78, i64 %77
  store ptr %82, ptr %61, align 8, !tbaa !33
  %83 = getelementptr inbounds i8, ptr %81, i64 1
  store ptr %83, ptr %59, align 8, !tbaa !32
  store i8 %21, ptr %81, align 1, !tbaa !11
  br label %118

84:                                               ; preds = %55
  %85 = zext i1 %20 to i32
  %86 = tail call i32 @PerlIO_putc(ptr noundef nonnull %56, i32 noundef %85) #14
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %831, label %118

88:                                               ; preds = %2
  br i1 %24, label %89, label %115

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !32
  %92 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !33
  %94 = icmp ult ptr %91, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = getelementptr inbounds i8, ptr %91, i64 1
  store ptr %96, ptr %90, align 8, !tbaa !32
  store i8 3, ptr %91, align 1, !tbaa !11
  br label %118

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %99 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %100 = load i64, ptr %99, align 8, !tbaa !31
  %101 = load ptr, ptr %98, align 8, !tbaa !30
  %102 = ptrtoint ptr %91 to i64
  %103 = ptrtoint ptr %101 to i64
  %104 = sub i64 %102, %103
  %105 = shl i64 %100, 32
  %106 = and i64 %105, -35184372088832
  %107 = add i64 %106, 35184372088832
  %108 = ashr exact i64 %107, 32
  %109 = tail call ptr @Perl_safesysrealloc(ptr noundef %101, i64 noundef %108) #14
  store ptr %109, ptr %98, align 8, !tbaa !30
  store i64 %108, ptr %99, align 8, !tbaa !31
  %110 = shl i64 %104, 32
  %111 = ashr exact i64 %110, 32
  %112 = getelementptr inbounds i8, ptr %109, i64 %111
  %113 = getelementptr inbounds i8, ptr %109, i64 %108
  store ptr %113, ptr %92, align 8, !tbaa !33
  %114 = getelementptr inbounds i8, ptr %112, i64 1
  store ptr %114, ptr %90, align 8, !tbaa !32
  store i8 3, ptr %112, align 1, !tbaa !11
  br label %118

115:                                              ; preds = %88
  %116 = tail call i32 @PerlIO_putc(ptr noundef nonnull %23, i32 noundef 3) #14
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %831, label %118

118:                                              ; preds = %84, %64, %66, %115, %95, %97
  %119 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %120 = load i32, ptr %119, align 8, !tbaa !40
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %168, label %122

122:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %123 = load i32, ptr %3, align 4, !tbaa !13
  %124 = tail call fastcc i32 @__bswap_32(i32 noundef %123) #15
  store i32 %124, ptr %4, align 4, !tbaa !13
  %125 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %126 = load ptr, ptr %125, align 8, !tbaa !35
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %163

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !32
  %131 = getelementptr inbounds i8, ptr %130, i64 4
  %132 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !33
  %134 = icmp ugt ptr %131, %133
  br i1 %134, label %135, label %152

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %137 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %138 = load i64, ptr %137, align 8, !tbaa !31
  %139 = load ptr, ptr %136, align 8, !tbaa !30
  %140 = ptrtoint ptr %130 to i64
  %141 = ptrtoint ptr %139 to i64
  %142 = sub i64 %140, %141
  %143 = shl i64 %138, 32
  %144 = add i64 %143, 35197256990720
  %145 = ashr exact i64 %144, 32
  %146 = and i64 %145, -8192
  %147 = tail call ptr @Perl_safesysrealloc(ptr noundef %139, i64 noundef %146) #14
  store ptr %147, ptr %136, align 8, !tbaa !30
  store i64 %146, ptr %137, align 8, !tbaa !31
  %148 = shl i64 %142, 32
  %149 = ashr exact i64 %148, 32
  %150 = getelementptr inbounds i8, ptr %147, i64 %149
  store ptr %150, ptr %129, align 8, !tbaa !32
  %151 = getelementptr inbounds i8, ptr %147, i64 %146
  store ptr %151, ptr %132, align 8, !tbaa !33
  br label %152

152:                                              ; preds = %135, %128
  %153 = phi ptr [ %150, %135 ], [ %130, %128 ]
  %154 = ptrtoint ptr %153 to i64
  %155 = and i64 %154, 3
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  store i32 %124, ptr %153, align 4, !tbaa !13
  br label %160

158:                                              ; preds = %152
  store i32 %124, ptr %153, align 1
  %159 = load ptr, ptr %129, align 8, !tbaa !32
  br label %160

160:                                              ; preds = %158, %157
  %161 = phi ptr [ %159, %158 ], [ %153, %157 ]
  %162 = getelementptr inbounds i8, ptr %161, i64 4
  store ptr %162, ptr %129, align 8, !tbaa !32
  br label %166

163:                                              ; preds = %122
  %164 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %126, ptr noundef nonnull %4, i64 noundef 4) #14
  %165 = icmp eq i64 %164, 4
  br i1 %165, label %166, label %167

166:                                              ; preds = %163, %160
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %211

167:                                              ; preds = %163
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %831

168:                                              ; preds = %118
  %169 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %170 = load ptr, ptr %169, align 8, !tbaa !35
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %208

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !32
  %175 = getelementptr inbounds i8, ptr %174, i64 4
  %176 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !33
  %178 = icmp ugt ptr %175, %177
  br i1 %178, label %179, label %196

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %181 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %182 = load i64, ptr %181, align 8, !tbaa !31
  %183 = load ptr, ptr %180, align 8, !tbaa !30
  %184 = ptrtoint ptr %174 to i64
  %185 = ptrtoint ptr %183 to i64
  %186 = sub i64 %184, %185
  %187 = shl i64 %182, 32
  %188 = add i64 %187, 35197256990720
  %189 = ashr exact i64 %188, 32
  %190 = and i64 %189, -8192
  %191 = tail call ptr @Perl_safesysrealloc(ptr noundef %183, i64 noundef %190) #14
  store ptr %191, ptr %180, align 8, !tbaa !30
  store i64 %190, ptr %181, align 8, !tbaa !31
  %192 = shl i64 %186, 32
  %193 = ashr exact i64 %192, 32
  %194 = getelementptr inbounds i8, ptr %191, i64 %193
  store ptr %194, ptr %173, align 8, !tbaa !32
  %195 = getelementptr inbounds i8, ptr %191, i64 %190
  store ptr %195, ptr %176, align 8, !tbaa !33
  br label %196

196:                                              ; preds = %179, %172
  %197 = phi ptr [ %194, %179 ], [ %174, %172 ]
  %198 = ptrtoint ptr %197 to i64
  %199 = and i64 %198, 3
  %200 = icmp eq i64 %199, 0
  %201 = load i32, ptr %3, align 4
  br i1 %200, label %202, label %203

202:                                              ; preds = %196
  store i32 %201, ptr %197, align 4, !tbaa !13
  br label %205

203:                                              ; preds = %196
  store i32 %201, ptr %197, align 1
  %204 = load ptr, ptr %173, align 8, !tbaa !32
  br label %205

205:                                              ; preds = %203, %202
  %206 = phi ptr [ %204, %203 ], [ %197, %202 ]
  %207 = getelementptr inbounds i8, ptr %206, i64 4
  store ptr %207, ptr %173, align 8, !tbaa !32
  br label %211

208:                                              ; preds = %168
  %209 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %170, ptr noundef nonnull %3, i64 noundef 4) #14
  %210 = icmp eq i64 %209, 4
  br i1 %210, label %211, label %831

211:                                              ; preds = %166, %205, %208
  %212 = load i32, ptr %15, align 4, !tbaa !66
  %213 = and i32 %212, 33554432
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %226, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 3
  %217 = load ptr, ptr %216, align 8, !tbaa !11
  %218 = load ptr, ptr %1, align 8, !tbaa !47
  %219 = getelementptr inbounds %struct.xpvhv, ptr %218, i64 0, i32 3
  %220 = load i64, ptr %219, align 8, !tbaa !49
  %221 = getelementptr ptr, ptr %217, i64 %220
  %222 = getelementptr ptr, ptr %221, i64 4
  %223 = load i32, ptr %222, align 8, !tbaa !94
  %224 = getelementptr ptr, ptr %221, i64 3
  %225 = load ptr, ptr %224, align 8, !tbaa !95
  br label %226

226:                                              ; preds = %211, %215
  %227 = phi i32 [ %223, %215 ], [ -1, %211 ]
  %228 = phi ptr [ %225, %215 ], [ null, %211 ]
  %229 = call i32 @Perl_hv_iterinit(ptr noundef nonnull %1) #14
  %230 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 1
  %231 = load i32, ptr %230, align 4, !tbaa !23
  %232 = and i32 %231, 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %609

234:                                              ; preds = %226
  %235 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 17
  %236 = load i32, ptr %235, align 8, !tbaa !43
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %339, label %238

238:                                              ; preds = %234
  %239 = icmp slt i32 %236, 0
  br i1 %239, label %240, label %609

240:                                              ; preds = %238
  %241 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #14
  %242 = icmp eq ptr %241, null
  br i1 %242, label %608, label %243

243:                                              ; preds = %240
  %244 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #14
  %245 = getelementptr inbounds %struct.sv, ptr %244, i64 0, i32 2
  %246 = load i32, ptr %245, align 4, !tbaa !28
  %247 = and i32 %246, 2097152
  %248 = icmp eq i32 %247, 0
  %249 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #14
  br i1 %248, label %253, label %250

250:                                              ; preds = %243
  %251 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %249, i32 noundef 2) #14
  %252 = zext i1 %251 to i32
  store i32 %252, ptr %235, align 8, !tbaa !43
  br i1 %251, label %339, label %609

253:                                              ; preds = %243
  %254 = getelementptr inbounds %struct.sv, ptr %249, i64 0, i32 2
  %255 = load i32, ptr %254, align 4, !tbaa !28
  %256 = and i32 %255, 65280
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %270

258:                                              ; preds = %253
  %259 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #14
  %260 = getelementptr inbounds %struct.sv, ptr %259, i64 0, i32 2
  %261 = load i32, ptr %260, align 4, !tbaa !28
  %262 = and i32 %261, 255
  %263 = icmp eq i32 %262, 8
  br i1 %263, label %270, label %264

264:                                              ; preds = %258
  %265 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #14
  %266 = getelementptr inbounds %struct.sv, ptr %265, i64 0, i32 2
  %267 = load i32, ptr %266, align 4, !tbaa !28
  %268 = and i32 %267, 16826623
  %269 = icmp eq i32 %268, 16777226
  br i1 %269, label %270, label %608

270:                                              ; preds = %264, %258, %253
  %271 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #14
  %272 = getelementptr inbounds %struct.sv, ptr %271, i64 0, i32 2
  %273 = load i32, ptr %272, align 4, !tbaa !28
  %274 = and i32 %273, 1024
  %275 = icmp eq i32 %274, 0
  %276 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #14
  br i1 %275, label %299, label %277

277:                                              ; preds = %270
  %278 = load ptr, ptr %276, align 8, !tbaa !55
  %279 = icmp eq ptr %278, null
  br i1 %279, label %608, label %280

280:                                              ; preds = %277
  %281 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #14
  %282 = load ptr, ptr %281, align 8, !tbaa !55
  %283 = getelementptr inbounds %struct.xpv, ptr %282, i64 0, i32 2
  %284 = load i64, ptr %283, align 8, !tbaa !74
  %285 = icmp ugt i64 %284, 1
  br i1 %285, label %338, label %286

286:                                              ; preds = %280
  %287 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #14
  %288 = load ptr, ptr %287, align 8, !tbaa !55
  %289 = getelementptr inbounds %struct.xpv, ptr %288, i64 0, i32 2
  %290 = load i64, ptr %289, align 8, !tbaa !74
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %608, label %292

292:                                              ; preds = %286
  %293 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #14
  %294 = getelementptr inbounds %struct.sv, ptr %293, i64 0, i32 3
  %295 = load ptr, ptr %294, align 8, !tbaa !11
  %296 = load i8, ptr %295, align 1, !tbaa !11
  %297 = icmp ne i8 %296, 48
  %298 = zext i1 %297 to i32
  store i32 %298, ptr %235, align 8, !tbaa !43
  br i1 %297, label %339, label %609

299:                                              ; preds = %270
  %300 = getelementptr inbounds %struct.sv, ptr %276, i64 0, i32 2
  %301 = load i32, ptr %300, align 4, !tbaa !28
  %302 = and i32 %301, 768
  %303 = icmp eq i32 %302, 0
  %304 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #14
  br i1 %303, label %328, label %305

305:                                              ; preds = %299
  %306 = getelementptr inbounds %struct.sv, ptr %304, i64 0, i32 2
  %307 = load i32, ptr %306, align 4, !tbaa !28
  %308 = and i32 %307, 256
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %316, label %310

310:                                              ; preds = %305
  %311 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #14
  %312 = load ptr, ptr %311, align 8, !tbaa !55
  %313 = getelementptr inbounds %struct.xpviv, ptr %312, i64 0, i32 4
  %314 = load i64, ptr %313, align 8, !tbaa !11
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %316, label %338

316:                                              ; preds = %310, %305
  %317 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #14
  %318 = getelementptr inbounds %struct.sv, ptr %317, i64 0, i32 2
  %319 = load i32, ptr %318, align 4, !tbaa !28
  %320 = and i32 %319, 512
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %608, label %322

322:                                              ; preds = %316
  %323 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #14
  %324 = load ptr, ptr %323, align 8, !tbaa !55
  %325 = getelementptr inbounds %struct.xpvnv, ptr %324, i64 0, i32 5
  %326 = load double, ptr %325, align 8, !tbaa !11
  %327 = fcmp uno double %326, 0.000000e+00
  br i1 %327, label %338, label %331

328:                                              ; preds = %299
  %329 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %304, i32 noundef 0) #14
  %330 = zext i1 %329 to i32
  store i32 %330, ptr %235, align 8, !tbaa !43
  br i1 %329, label %339, label %609

331:                                              ; preds = %322
  %332 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.38, i32 noundef 1) #14
  %333 = load ptr, ptr %332, align 8, !tbaa !55
  %334 = getelementptr inbounds %struct.xpvnv, ptr %333, i64 0, i32 5
  %335 = load double, ptr %334, align 8, !tbaa !11
  %336 = fcmp une double %335, 0.000000e+00
  %337 = zext i1 %336 to i32
  store i32 %337, ptr %235, align 8, !tbaa !43
  br i1 %336, label %339, label %609

338:                                              ; preds = %322, %310, %280
  store i32 1, ptr %235, align 8, !tbaa !43
  br label %339

339:                                              ; preds = %292, %328, %250, %338, %331, %234
  %340 = call ptr @Perl_newSV_type(i32 noundef 11) #14
  %341 = load i32, ptr %3, align 4, !tbaa !13
  %342 = icmp sgt i32 %341, 0
  br i1 %342, label %343, label %361

343:                                              ; preds = %339
  %344 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  br label %345

345:                                              ; preds = %343, %351
  %346 = phi i32 [ 0, %343 ], [ %358, %351 ]
  %347 = call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %1, i32 noundef 1) #14
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %351

349:                                              ; preds = %345
  store i32 1, ptr %344, align 8, !tbaa !27
  %350 = load i32, ptr %3, align 4, !tbaa !13
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.39, ptr noundef nonnull %1, i32 noundef %350, i32 noundef %346) #14
  br label %351

351:                                              ; preds = %349, %345
  %352 = call ptr @Perl_hv_iterkeysv(ptr noundef %347) #14
  %353 = load ptr, ptr %340, align 8, !tbaa !70
  %354 = getelementptr inbounds %struct.xpvav, ptr %353, i64 0, i32 2
  %355 = load i64, ptr %354, align 8, !tbaa !72
  %356 = add nsw i64 %355, 1
  %357 = call ptr @Perl_av_store(ptr noundef nonnull %340, i64 noundef %356, ptr noundef %352) #14
  %358 = add nuw nsw i32 %346, 1
  %359 = load i32, ptr %3, align 4, !tbaa !13
  %360 = icmp slt i32 %358, %359
  br i1 %360, label %345, label %361, !llvm.loop !96

361:                                              ; preds = %351, %339
  %362 = phi i32 [ %341, %339 ], [ %359, %351 ]
  %363 = getelementptr inbounds %struct.av, ptr %340, i64 0, i32 3
  %364 = load ptr, ptr %363, align 8, !tbaa !11
  %365 = sext i32 %362 to i64
  call void @Perl_sortsv(ptr noundef %364, i64 noundef %365, ptr noundef nonnull @Perl_sv_cmp) #14
  %366 = load i32, ptr %3, align 4, !tbaa !13
  %367 = icmp sgt i32 %366, 0
  br i1 %367, label %368, label %604

368:                                              ; preds = %361
  %369 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %370 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %371 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %372 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %373 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  br label %374

374:                                              ; preds = %368, %600
  %375 = phi i32 [ 0, %368 ], [ %601, %600 ]
  %376 = load ptr, ptr %1, align 8, !tbaa !47
  %377 = getelementptr inbounds %struct.xpvmg, ptr %376, i64 0, i32 1
  %378 = load ptr, ptr %377, align 8, !tbaa !11
  %379 = icmp eq ptr %378, null
  br i1 %379, label %382, label %380

380:                                              ; preds = %374
  %381 = call i32 @Perl_hv_placeholders_get(ptr noundef nonnull %1) #14
  br label %382

382:                                              ; preds = %374, %380
  %383 = phi i32 [ %381, %380 ], [ 0, %374 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %384 = call ptr @Perl_av_shift(ptr noundef %340) #14
  %385 = call ptr @Perl_hv_common(ptr noundef nonnull %1, ptr noundef %384, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0) #14
  %386 = icmp eq ptr %385, null
  br i1 %386, label %391, label %387

387:                                              ; preds = %382
  %388 = getelementptr inbounds %struct.he, ptr %385, i64 0, i32 2
  %389 = load ptr, ptr %388, align 8, !tbaa !11
  %390 = icmp eq ptr %389, null
  br i1 %390, label %605, label %393

391:                                              ; preds = %382
  %392 = icmp slt i32 %383, 0
  br i1 %392, label %605, label %393

393:                                              ; preds = %391, %387
  %394 = phi ptr [ %389, %387 ], [ @PL_sv_undef, %391 ]
  %395 = phi i8 [ 0, %387 ], [ 16, %391 ]
  %396 = call fastcc i32 @store(ptr noundef %0, ptr noundef nonnull %394) #15
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %398, label %607

398:                                              ; preds = %393
  br i1 %20, label %399, label %406

399:                                              ; preds = %398
  %400 = getelementptr inbounds %struct.sv, ptr %394, i64 0, i32 2
  %401 = load i32, ptr %400, align 4, !tbaa !28
  %402 = and i32 %401, 134283264
  %403 = icmp eq i32 %402, 0
  %404 = or disjoint i8 %395, 4
  %405 = select i1 %403, i8 %395, i8 %404
  br label %406

406:                                              ; preds = %399, %398
  %407 = phi i8 [ %395, %398 ], [ %405, %399 ]
  %408 = getelementptr inbounds %struct.sv, ptr %384, i64 0, i32 2
  %409 = load i32, ptr %408, align 4, !tbaa !28
  %410 = and i32 %409, 2098176
  %411 = icmp eq i32 %410, 1024
  br i1 %411, label %412, label %418

412:                                              ; preds = %406
  %413 = load ptr, ptr %384, align 8, !tbaa !55
  %414 = getelementptr inbounds %struct.xpv, ptr %413, i64 0, i32 2
  %415 = load i64, ptr %414, align 8, !tbaa !74
  store i64 %415, ptr %5, align 8, !tbaa !39
  %416 = getelementptr inbounds %struct.sv, ptr %384, i64 0, i32 3
  %417 = load ptr, ptr %416, align 8, !tbaa !11
  br label %422

418:                                              ; preds = %406
  %419 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %384, ptr noundef nonnull %5, i32 noundef 2) #14
  %420 = load i64, ptr %5, align 8, !tbaa !39
  %421 = load i32, ptr %408, align 4, !tbaa !28
  br label %422

422:                                              ; preds = %418, %412
  %423 = phi i32 [ %409, %412 ], [ %421, %418 ]
  %424 = phi i64 [ %415, %412 ], [ %420, %418 ]
  %425 = phi ptr [ %417, %412 ], [ %419, %418 ]
  %426 = trunc i64 %424 to i32
  store i32 %426, ptr %6, align 4, !tbaa !13
  %427 = and i32 %423, 536870912
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %438, label %429

429:                                              ; preds = %422
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #16
  store i8 1, ptr %7, align 1, !tbaa !97
  %430 = call ptr @Perl_bytes_from_utf8(ptr noundef %425, ptr noundef nonnull %5, ptr noundef nonnull %7) #14
  %431 = icmp eq ptr %430, %425
  br i1 %431, label %435, label %432

432:                                              ; preds = %429
  %433 = load i64, ptr %5, align 8, !tbaa !39
  %434 = trunc i64 %433 to i32
  store i32 %434, ptr %6, align 4, !tbaa !13
  br label %435

435:                                              ; preds = %429, %432
  %436 = phi i8 [ 2, %432 ], [ 1, %429 ]
  %437 = or i8 %407, %436
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #16
  br label %438

438:                                              ; preds = %435, %422
  %439 = phi ptr [ %430, %435 ], [ %425, %422 ]
  %440 = phi i8 [ %437, %435 ], [ %407, %422 ]
  br i1 %19, label %470, label %441

441:                                              ; preds = %438
  %442 = load ptr, ptr %369, align 8, !tbaa !35
  %443 = icmp eq ptr %442, null
  br i1 %443, label %444, label %463

444:                                              ; preds = %441
  %445 = load ptr, ptr %370, align 8, !tbaa !32
  %446 = load ptr, ptr %371, align 8, !tbaa !33
  %447 = icmp ult ptr %445, %446
  br i1 %447, label %467, label %448

448:                                              ; preds = %444
  %449 = load i64, ptr %373, align 8, !tbaa !31
  %450 = load ptr, ptr %372, align 8, !tbaa !30
  %451 = ptrtoint ptr %445 to i64
  %452 = ptrtoint ptr %450 to i64
  %453 = sub i64 %451, %452
  %454 = shl i64 %449, 32
  %455 = and i64 %454, -35184372088832
  %456 = add i64 %455, 35184372088832
  %457 = ashr exact i64 %456, 32
  %458 = call ptr @Perl_safesysrealloc(ptr noundef %450, i64 noundef %457) #14
  store ptr %458, ptr %372, align 8, !tbaa !30
  store i64 %457, ptr %373, align 8, !tbaa !31
  %459 = shl i64 %453, 32
  %460 = ashr exact i64 %459, 32
  %461 = getelementptr inbounds i8, ptr %458, i64 %460
  %462 = getelementptr inbounds i8, ptr %458, i64 %457
  store ptr %462, ptr %371, align 8, !tbaa !33
  br label %467

463:                                              ; preds = %441
  %464 = zext nneg i8 %440 to i32
  %465 = call i32 @PerlIO_putc(ptr noundef nonnull %442, i32 noundef %464) #14
  %466 = icmp eq i32 %465, -1
  br i1 %466, label %605, label %470

467:                                              ; preds = %444, %448
  %468 = phi ptr [ %461, %448 ], [ %445, %444 ]
  %469 = getelementptr inbounds i8, ptr %468, i64 1
  store ptr %469, ptr %370, align 8, !tbaa !32
  store i8 %440, ptr %468, align 1, !tbaa !11
  br label %470

470:                                              ; preds = %467, %463, %438
  %471 = load i32, ptr %119, align 8, !tbaa !40
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %515, label %473

473:                                              ; preds = %470
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  %474 = load i32, ptr %6, align 4, !tbaa !13
  %475 = call fastcc i32 @__bswap_32(i32 noundef %474) #15
  store i32 %475, ptr %8, align 4, !tbaa !13
  %476 = load ptr, ptr %369, align 8, !tbaa !35
  %477 = icmp eq ptr %476, null
  br i1 %477, label %478, label %510

478:                                              ; preds = %473
  %479 = load ptr, ptr %370, align 8, !tbaa !32
  %480 = getelementptr inbounds i8, ptr %479, i64 4
  %481 = load ptr, ptr %371, align 8, !tbaa !33
  %482 = icmp ugt ptr %480, %481
  br i1 %482, label %483, label %498

483:                                              ; preds = %478
  %484 = load i64, ptr %373, align 8, !tbaa !31
  %485 = load ptr, ptr %372, align 8, !tbaa !30
  %486 = ptrtoint ptr %479 to i64
  %487 = ptrtoint ptr %485 to i64
  %488 = sub i64 %486, %487
  %489 = shl i64 %484, 32
  %490 = add i64 %489, 35197256990720
  %491 = ashr exact i64 %490, 32
  %492 = and i64 %491, -8192
  %493 = call ptr @Perl_safesysrealloc(ptr noundef %485, i64 noundef %492) #14
  store ptr %493, ptr %372, align 8, !tbaa !30
  store i64 %492, ptr %373, align 8, !tbaa !31
  %494 = shl i64 %488, 32
  %495 = ashr exact i64 %494, 32
  %496 = getelementptr inbounds i8, ptr %493, i64 %495
  store ptr %496, ptr %370, align 8, !tbaa !32
  %497 = getelementptr inbounds i8, ptr %493, i64 %492
  store ptr %497, ptr %371, align 8, !tbaa !33
  br label %498

498:                                              ; preds = %483, %478
  %499 = phi ptr [ %496, %483 ], [ %479, %478 ]
  %500 = ptrtoint ptr %499 to i64
  %501 = and i64 %500, 3
  %502 = icmp eq i64 %501, 0
  %503 = load i32, ptr %8, align 4
  br i1 %502, label %504, label %505

504:                                              ; preds = %498
  store i32 %503, ptr %499, align 4, !tbaa !13
  br label %507

505:                                              ; preds = %498
  store i32 %503, ptr %499, align 1
  %506 = load ptr, ptr %370, align 8, !tbaa !32
  br label %507

507:                                              ; preds = %505, %504
  %508 = phi ptr [ %506, %505 ], [ %499, %504 ]
  %509 = getelementptr inbounds i8, ptr %508, i64 4
  store ptr %509, ptr %370, align 8, !tbaa !32
  br label %513

510:                                              ; preds = %473
  %511 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %476, ptr noundef nonnull %8, i64 noundef 4) #14
  %512 = icmp eq i64 %511, 4
  br i1 %512, label %513, label %514

513:                                              ; preds = %507, %510
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  br label %553

514:                                              ; preds = %510
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  br label %605

515:                                              ; preds = %470
  %516 = load ptr, ptr %369, align 8, !tbaa !35
  %517 = icmp eq ptr %516, null
  br i1 %517, label %518, label %550

518:                                              ; preds = %515
  %519 = load ptr, ptr %370, align 8, !tbaa !32
  %520 = getelementptr inbounds i8, ptr %519, i64 4
  %521 = load ptr, ptr %371, align 8, !tbaa !33
  %522 = icmp ugt ptr %520, %521
  br i1 %522, label %523, label %538

523:                                              ; preds = %518
  %524 = load i64, ptr %373, align 8, !tbaa !31
  %525 = load ptr, ptr %372, align 8, !tbaa !30
  %526 = ptrtoint ptr %519 to i64
  %527 = ptrtoint ptr %525 to i64
  %528 = sub i64 %526, %527
  %529 = shl i64 %524, 32
  %530 = add i64 %529, 35197256990720
  %531 = ashr exact i64 %530, 32
  %532 = and i64 %531, -8192
  %533 = call ptr @Perl_safesysrealloc(ptr noundef %525, i64 noundef %532) #14
  store ptr %533, ptr %372, align 8, !tbaa !30
  store i64 %532, ptr %373, align 8, !tbaa !31
  %534 = shl i64 %528, 32
  %535 = ashr exact i64 %534, 32
  %536 = getelementptr inbounds i8, ptr %533, i64 %535
  store ptr %536, ptr %370, align 8, !tbaa !32
  %537 = getelementptr inbounds i8, ptr %533, i64 %532
  store ptr %537, ptr %371, align 8, !tbaa !33
  br label %538

538:                                              ; preds = %523, %518
  %539 = phi ptr [ %536, %523 ], [ %519, %518 ]
  %540 = ptrtoint ptr %539 to i64
  %541 = and i64 %540, 3
  %542 = icmp eq i64 %541, 0
  %543 = load i32, ptr %6, align 4
  br i1 %542, label %544, label %545

544:                                              ; preds = %538
  store i32 %543, ptr %539, align 4, !tbaa !13
  br label %547

545:                                              ; preds = %538
  store i32 %543, ptr %539, align 1
  %546 = load ptr, ptr %370, align 8, !tbaa !32
  br label %547

547:                                              ; preds = %545, %544
  %548 = phi ptr [ %546, %545 ], [ %539, %544 ]
  %549 = getelementptr inbounds i8, ptr %548, i64 4
  store ptr %549, ptr %370, align 8, !tbaa !32
  br label %553

550:                                              ; preds = %515
  %551 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %516, ptr noundef nonnull %6, i64 noundef 4) #14
  %552 = icmp eq i64 %551, 4
  br i1 %552, label %553, label %605

553:                                              ; preds = %513, %547, %550
  %554 = load i32, ptr %6, align 4, !tbaa !13
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %596, label %556

556:                                              ; preds = %553
  %557 = load ptr, ptr %369, align 8, !tbaa !35
  %558 = icmp eq ptr %557, null
  br i1 %558, label %559, label %590

559:                                              ; preds = %556
  %560 = load ptr, ptr %370, align 8, !tbaa !32
  %561 = sext i32 %554 to i64
  %562 = getelementptr inbounds i8, ptr %560, i64 %561
  %563 = load ptr, ptr %371, align 8, !tbaa !33
  %564 = icmp ugt ptr %562, %563
  br i1 %564, label %565, label %583

565:                                              ; preds = %559
  %566 = load i64, ptr %373, align 8, !tbaa !31
  %567 = trunc i64 %566 to i32
  %568 = add i32 %554, 8191
  %569 = add i32 %568, %567
  %570 = and i32 %569, -8192
  %571 = load ptr, ptr %372, align 8, !tbaa !30
  %572 = ptrtoint ptr %560 to i64
  %573 = ptrtoint ptr %571 to i64
  %574 = sub i64 %572, %573
  %575 = sext i32 %570 to i64
  %576 = call ptr @Perl_safesysrealloc(ptr noundef %571, i64 noundef %575) #14
  store ptr %576, ptr %372, align 8, !tbaa !30
  store i64 %575, ptr %373, align 8, !tbaa !31
  %577 = shl i64 %574, 32
  %578 = ashr exact i64 %577, 32
  %579 = getelementptr inbounds i8, ptr %576, i64 %578
  store ptr %579, ptr %370, align 8, !tbaa !32
  %580 = getelementptr inbounds i8, ptr %576, i64 %575
  store ptr %580, ptr %371, align 8, !tbaa !33
  %581 = load i32, ptr %6, align 4, !tbaa !13
  %582 = sext i32 %581 to i64
  br label %583

583:                                              ; preds = %565, %559
  %584 = phi i64 [ %582, %565 ], [ %561, %559 ]
  %585 = phi ptr [ %579, %565 ], [ %560, %559 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %585, ptr align 1 %439, i64 %584, i1 false)
  %586 = load i32, ptr %6, align 4, !tbaa !13
  %587 = load ptr, ptr %370, align 8, !tbaa !32
  %588 = sext i32 %586 to i64
  %589 = getelementptr inbounds i8, ptr %587, i64 %588
  store ptr %589, ptr %370, align 8, !tbaa !32
  br label %596

590:                                              ; preds = %556
  %591 = sext i32 %554 to i64
  %592 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %557, ptr noundef %439, i64 noundef %591) #14
  %593 = load i32, ptr %6, align 4, !tbaa !13
  %594 = sext i32 %593 to i64
  %595 = icmp eq i64 %592, %594
  br i1 %595, label %596, label %605

596:                                              ; preds = %583, %590, %553
  %597 = and i8 %440, 2
  %598 = icmp eq i8 %597, 0
  br i1 %598, label %600, label %599

599:                                              ; preds = %596
  call void @Perl_safesysfree(ptr noundef %439) #14
  br label %600

600:                                              ; preds = %599, %596
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  %601 = add nuw nsw i32 %375, 1
  %602 = load i32, ptr %3, align 4, !tbaa !13
  %603 = icmp slt i32 %601, %602
  br i1 %603, label %374, label %604, !llvm.loop !99

604:                                              ; preds = %600, %361
  call void @Perl_av_undef(ptr noundef %340) #14
  call void @Perl_sv_free(ptr noundef %340) #14
  br label %829

605:                                              ; preds = %590, %550, %463, %391, %387, %514
  %606 = phi i32 [ -1, %514 ], [ -1, %590 ], [ -1, %550 ], [ -1, %463 ], [ 1, %391 ], [ 1, %387 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %831

607:                                              ; preds = %393
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %829

608:                                              ; preds = %316, %286, %277, %264, %240
  store i32 0, ptr %235, align 8, !tbaa !43
  br label %609

609:                                              ; preds = %292, %328, %250, %608, %331, %238, %226
  %610 = load i32, ptr %3, align 4, !tbaa !13
  %611 = icmp sgt i32 %610, 0
  br i1 %611, label %612, label %829

612:                                              ; preds = %609
  %613 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %614 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %615 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %616 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %617 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  br label %618

618:                                              ; preds = %612, %825
  %619 = phi i32 [ 0, %612 ], [ %826, %825 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  %620 = call ptr @Perl_hv_iternext_flags(ptr noundef nonnull %1, i32 noundef 1) #14
  %621 = icmp eq ptr %620, null
  br i1 %621, label %822, label %622

622:                                              ; preds = %618
  %623 = call ptr @Perl_hv_iterval(ptr noundef nonnull %1, ptr noundef nonnull %620) #14
  %624 = icmp eq ptr %623, null
  br i1 %624, label %822, label %625

625:                                              ; preds = %622
  br i1 %20, label %626, label %633

626:                                              ; preds = %625
  %627 = getelementptr inbounds %struct.sv, ptr %623, i64 0, i32 2
  %628 = load i32, ptr %627, align 4, !tbaa !28
  %629 = freeze i32 %628
  %630 = and i32 %629, 134283264
  %631 = icmp eq i32 %630, 0
  %632 = select i1 %631, i8 0, i8 4
  br label %633

633:                                              ; preds = %626, %625
  %634 = phi i8 [ 0, %625 ], [ %632, %626 ]
  %635 = icmp eq ptr %623, @PL_sv_placeholder
  %636 = or disjoint i8 %634, 16
  %637 = select i1 %635, i8 %636, i8 %634
  %638 = select i1 %635, ptr @PL_sv_undef, ptr %623
  %639 = call fastcc i32 @store(ptr noundef %0, ptr noundef nonnull %638) #15
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %641, label %824

641:                                              ; preds = %633
  %642 = getelementptr inbounds %struct.he, ptr %620, i64 0, i32 1
  %643 = load ptr, ptr %642, align 8, !tbaa !100
  %644 = getelementptr inbounds %struct.hek, ptr %643, i64 0, i32 1
  %645 = load i32, ptr %644, align 4, !tbaa !102
  store i32 %645, ptr %9, align 4, !tbaa !13
  %646 = icmp eq i32 %645, -2
  %647 = getelementptr inbounds %struct.hek, ptr %643, i64 0, i32 2
  br i1 %646, label %648, label %651

648:                                              ; preds = %641
  %649 = load ptr, ptr %647, align 4, !tbaa !12
  %650 = or disjoint i8 %637, 8
  br label %658

651:                                              ; preds = %641
  %652 = sext i32 %645 to i64
  %653 = getelementptr inbounds i8, ptr %647, i64 %652
  %654 = getelementptr inbounds i8, ptr %653, i64 1
  %655 = load i8, ptr %654, align 1, !tbaa !11
  %656 = and i8 %655, 3
  %657 = or disjoint i8 %656, %637
  br label %658

658:                                              ; preds = %651, %648
  %659 = phi i8 [ %650, %648 ], [ %657, %651 ]
  %660 = phi ptr [ %649, %648 ], [ null, %651 ]
  %661 = phi ptr [ null, %648 ], [ %647, %651 ]
  br i1 %19, label %691, label %662

662:                                              ; preds = %658
  %663 = load ptr, ptr %613, align 8, !tbaa !35
  %664 = icmp eq ptr %663, null
  br i1 %664, label %665, label %684

665:                                              ; preds = %662
  %666 = load ptr, ptr %614, align 8, !tbaa !32
  %667 = load ptr, ptr %615, align 8, !tbaa !33
  %668 = icmp ult ptr %666, %667
  br i1 %668, label %688, label %669

669:                                              ; preds = %665
  %670 = load i64, ptr %617, align 8, !tbaa !31
  %671 = load ptr, ptr %616, align 8, !tbaa !30
  %672 = ptrtoint ptr %666 to i64
  %673 = ptrtoint ptr %671 to i64
  %674 = sub i64 %672, %673
  %675 = shl i64 %670, 32
  %676 = and i64 %675, -35184372088832
  %677 = add i64 %676, 35184372088832
  %678 = ashr exact i64 %677, 32
  %679 = call ptr @Perl_safesysrealloc(ptr noundef %671, i64 noundef %678) #14
  store ptr %679, ptr %616, align 8, !tbaa !30
  store i64 %678, ptr %617, align 8, !tbaa !31
  %680 = shl i64 %674, 32
  %681 = ashr exact i64 %680, 32
  %682 = getelementptr inbounds i8, ptr %679, i64 %681
  %683 = getelementptr inbounds i8, ptr %679, i64 %678
  store ptr %683, ptr %615, align 8, !tbaa !33
  br label %688

684:                                              ; preds = %662
  %685 = zext nneg i8 %659 to i32
  %686 = call i32 @PerlIO_putc(ptr noundef nonnull %663, i32 noundef %685) #14
  %687 = icmp eq i32 %686, -1
  br i1 %687, label %822, label %691

688:                                              ; preds = %665, %669
  %689 = phi ptr [ %682, %669 ], [ %666, %665 ]
  %690 = getelementptr inbounds i8, ptr %689, i64 1
  store ptr %690, ptr %614, align 8, !tbaa !32
  store i8 %659, ptr %689, align 1, !tbaa !11
  br label %691

691:                                              ; preds = %688, %658, %684
  %692 = and i8 %659, 8
  %693 = icmp eq i8 %692, 0
  br i1 %693, label %696, label %694

694:                                              ; preds = %691
  %695 = call fastcc i32 @store(ptr noundef %0, ptr noundef %660) #15
  br label %825

696:                                              ; preds = %691
  %697 = load i32, ptr %119, align 8, !tbaa !40
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %741, label %699

699:                                              ; preds = %696
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  %700 = load i32, ptr %9, align 4, !tbaa !13
  %701 = call fastcc i32 @__bswap_32(i32 noundef %700) #15
  store i32 %701, ptr %10, align 4, !tbaa !13
  %702 = load ptr, ptr %613, align 8, !tbaa !35
  %703 = icmp eq ptr %702, null
  br i1 %703, label %704, label %736

704:                                              ; preds = %699
  %705 = load ptr, ptr %614, align 8, !tbaa !32
  %706 = getelementptr inbounds i8, ptr %705, i64 4
  %707 = load ptr, ptr %615, align 8, !tbaa !33
  %708 = icmp ugt ptr %706, %707
  br i1 %708, label %709, label %724

709:                                              ; preds = %704
  %710 = load i64, ptr %617, align 8, !tbaa !31
  %711 = load ptr, ptr %616, align 8, !tbaa !30
  %712 = ptrtoint ptr %705 to i64
  %713 = ptrtoint ptr %711 to i64
  %714 = sub i64 %712, %713
  %715 = shl i64 %710, 32
  %716 = add i64 %715, 35197256990720
  %717 = ashr exact i64 %716, 32
  %718 = and i64 %717, -8192
  %719 = call ptr @Perl_safesysrealloc(ptr noundef %711, i64 noundef %718) #14
  store ptr %719, ptr %616, align 8, !tbaa !30
  store i64 %718, ptr %617, align 8, !tbaa !31
  %720 = shl i64 %714, 32
  %721 = ashr exact i64 %720, 32
  %722 = getelementptr inbounds i8, ptr %719, i64 %721
  store ptr %722, ptr %614, align 8, !tbaa !32
  %723 = getelementptr inbounds i8, ptr %719, i64 %718
  store ptr %723, ptr %615, align 8, !tbaa !33
  br label %724

724:                                              ; preds = %709, %704
  %725 = phi ptr [ %722, %709 ], [ %705, %704 ]
  %726 = ptrtoint ptr %725 to i64
  %727 = and i64 %726, 3
  %728 = icmp eq i64 %727, 0
  %729 = load i32, ptr %10, align 4
  br i1 %728, label %730, label %731

730:                                              ; preds = %724
  store i32 %729, ptr %725, align 4, !tbaa !13
  br label %733

731:                                              ; preds = %724
  store i32 %729, ptr %725, align 1
  %732 = load ptr, ptr %614, align 8, !tbaa !32
  br label %733

733:                                              ; preds = %731, %730
  %734 = phi ptr [ %732, %731 ], [ %725, %730 ]
  %735 = getelementptr inbounds i8, ptr %734, i64 4
  store ptr %735, ptr %614, align 8, !tbaa !32
  br label %739

736:                                              ; preds = %699
  %737 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %702, ptr noundef nonnull %10, i64 noundef 4) #14
  %738 = icmp eq i64 %737, 4
  br i1 %738, label %739, label %740

739:                                              ; preds = %733, %736
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  br label %779

740:                                              ; preds = %736
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  br label %822

741:                                              ; preds = %696
  %742 = load ptr, ptr %613, align 8, !tbaa !35
  %743 = icmp eq ptr %742, null
  br i1 %743, label %744, label %776

744:                                              ; preds = %741
  %745 = load ptr, ptr %614, align 8, !tbaa !32
  %746 = getelementptr inbounds i8, ptr %745, i64 4
  %747 = load ptr, ptr %615, align 8, !tbaa !33
  %748 = icmp ugt ptr %746, %747
  br i1 %748, label %749, label %764

749:                                              ; preds = %744
  %750 = load i64, ptr %617, align 8, !tbaa !31
  %751 = load ptr, ptr %616, align 8, !tbaa !30
  %752 = ptrtoint ptr %745 to i64
  %753 = ptrtoint ptr %751 to i64
  %754 = sub i64 %752, %753
  %755 = shl i64 %750, 32
  %756 = add i64 %755, 35197256990720
  %757 = ashr exact i64 %756, 32
  %758 = and i64 %757, -8192
  %759 = call ptr @Perl_safesysrealloc(ptr noundef %751, i64 noundef %758) #14
  store ptr %759, ptr %616, align 8, !tbaa !30
  store i64 %758, ptr %617, align 8, !tbaa !31
  %760 = shl i64 %754, 32
  %761 = ashr exact i64 %760, 32
  %762 = getelementptr inbounds i8, ptr %759, i64 %761
  store ptr %762, ptr %614, align 8, !tbaa !32
  %763 = getelementptr inbounds i8, ptr %759, i64 %758
  store ptr %763, ptr %615, align 8, !tbaa !33
  br label %764

764:                                              ; preds = %749, %744
  %765 = phi ptr [ %762, %749 ], [ %745, %744 ]
  %766 = ptrtoint ptr %765 to i64
  %767 = and i64 %766, 3
  %768 = icmp eq i64 %767, 0
  %769 = load i32, ptr %9, align 4
  br i1 %768, label %770, label %771

770:                                              ; preds = %764
  store i32 %769, ptr %765, align 4, !tbaa !13
  br label %773

771:                                              ; preds = %764
  store i32 %769, ptr %765, align 1
  %772 = load ptr, ptr %614, align 8, !tbaa !32
  br label %773

773:                                              ; preds = %771, %770
  %774 = phi ptr [ %772, %771 ], [ %765, %770 ]
  %775 = getelementptr inbounds i8, ptr %774, i64 4
  store ptr %775, ptr %614, align 8, !tbaa !32
  br label %779

776:                                              ; preds = %741
  %777 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %742, ptr noundef nonnull %9, i64 noundef 4) #14
  %778 = icmp eq i64 %777, 4
  br i1 %778, label %779, label %822

779:                                              ; preds = %739, %773, %776
  %780 = load i32, ptr %9, align 4, !tbaa !13
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %825, label %782

782:                                              ; preds = %779
  %783 = load ptr, ptr %613, align 8, !tbaa !35
  %784 = icmp eq ptr %783, null
  br i1 %784, label %785, label %816

785:                                              ; preds = %782
  %786 = load ptr, ptr %614, align 8, !tbaa !32
  %787 = sext i32 %780 to i64
  %788 = getelementptr inbounds i8, ptr %786, i64 %787
  %789 = load ptr, ptr %615, align 8, !tbaa !33
  %790 = icmp ugt ptr %788, %789
  br i1 %790, label %791, label %809

791:                                              ; preds = %785
  %792 = load i64, ptr %617, align 8, !tbaa !31
  %793 = trunc i64 %792 to i32
  %794 = add i32 %780, 8191
  %795 = add i32 %794, %793
  %796 = and i32 %795, -8192
  %797 = load ptr, ptr %616, align 8, !tbaa !30
  %798 = ptrtoint ptr %786 to i64
  %799 = ptrtoint ptr %797 to i64
  %800 = sub i64 %798, %799
  %801 = sext i32 %796 to i64
  %802 = call ptr @Perl_safesysrealloc(ptr noundef %797, i64 noundef %801) #14
  store ptr %802, ptr %616, align 8, !tbaa !30
  store i64 %801, ptr %617, align 8, !tbaa !31
  %803 = shl i64 %800, 32
  %804 = ashr exact i64 %803, 32
  %805 = getelementptr inbounds i8, ptr %802, i64 %804
  store ptr %805, ptr %614, align 8, !tbaa !32
  %806 = getelementptr inbounds i8, ptr %802, i64 %801
  store ptr %806, ptr %615, align 8, !tbaa !33
  %807 = load i32, ptr %9, align 4, !tbaa !13
  %808 = sext i32 %807 to i64
  br label %809

809:                                              ; preds = %791, %785
  %810 = phi i64 [ %808, %791 ], [ %787, %785 ]
  %811 = phi ptr [ %805, %791 ], [ %786, %785 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %811, ptr align 1 %661, i64 %810, i1 false)
  %812 = load i32, ptr %9, align 4, !tbaa !13
  %813 = load ptr, ptr %614, align 8, !tbaa !32
  %814 = sext i32 %812 to i64
  %815 = getelementptr inbounds i8, ptr %813, i64 %814
  store ptr %815, ptr %614, align 8, !tbaa !32
  br label %825

816:                                              ; preds = %782
  %817 = sext i32 %780 to i64
  %818 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %783, ptr noundef %661, i64 noundef %817) #14
  %819 = load i32, ptr %9, align 4, !tbaa !13
  %820 = sext i32 %819 to i64
  %821 = icmp eq i64 %818, %820
  br i1 %821, label %825, label %822

822:                                              ; preds = %622, %684, %776, %816, %618, %740
  %823 = phi i32 [ -1, %740 ], [ 1, %618 ], [ 1, %622 ], [ -1, %684 ], [ -1, %776 ], [ -1, %816 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  br label %831

824:                                              ; preds = %633
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  br label %829

825:                                              ; preds = %816, %779, %809, %694
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  %826 = add nuw nsw i32 %619, 1
  %827 = load i32, ptr %3, align 4, !tbaa !13
  %828 = icmp slt i32 %826, %827
  br i1 %828, label %618, label %829, !llvm.loop !104

829:                                              ; preds = %825, %609, %824, %607, %604
  %830 = phi i32 [ %639, %824 ], [ %396, %607 ], [ 0, %604 ], [ 0, %609 ], [ 0, %825 ]
  call void @Perl_hv_riter_set(ptr noundef nonnull %1, i32 noundef %227) #14
  call void @Perl_hv_eiter_set(ptr noundef nonnull %1, ptr noundef %228) #14
  br label %831

831:                                              ; preds = %822, %605, %208, %167, %115, %84, %49, %829
  %832 = phi i32 [ %830, %829 ], [ -1, %167 ], [ -1, %49 ], [ -1, %84 ], [ -1, %115 ], [ -1, %208 ], [ %606, %605 ], [ %823, %822 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %832
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @store_tied(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !28
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, 12
  br i1 %6, label %7, label %40

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !32
  %14 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !33
  %16 = icmp ult ptr %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %18, ptr %12, align 8, !tbaa !32
  store i8 12, ptr %13, align 1, !tbaa !11
  br label %105

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %21 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !31
  %23 = load ptr, ptr %20, align 8, !tbaa !30
  %24 = ptrtoint ptr %13 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = sub i64 %24, %25
  %27 = shl i64 %22, 32
  %28 = and i64 %27, -35184372088832
  %29 = add i64 %28, 35184372088832
  %30 = ashr exact i64 %29, 32
  %31 = tail call ptr @Perl_safesysrealloc(ptr noundef %23, i64 noundef %30) #14
  store ptr %31, ptr %20, align 8, !tbaa !30
  store i64 %30, ptr %21, align 8, !tbaa !31
  %32 = shl i64 %26, 32
  %33 = ashr exact i64 %32, 32
  %34 = getelementptr inbounds i8, ptr %31, i64 %33
  %35 = getelementptr inbounds i8, ptr %31, i64 %30
  store ptr %35, ptr %14, align 8, !tbaa !33
  %36 = getelementptr inbounds i8, ptr %34, i64 1
  store ptr %36, ptr %12, align 8, !tbaa !32
  store i8 12, ptr %34, align 1, !tbaa !11
  br label %105

37:                                               ; preds = %7
  %38 = tail call i32 @PerlIO_putc(ptr noundef nonnull %9, i32 noundef 12) #14
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %123, label %105

40:                                               ; preds = %2
  %41 = icmp eq i32 %5, 11
  %42 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %43 = load ptr, ptr %42, align 8, !tbaa !35
  %44 = icmp eq ptr %43, null
  br i1 %41, label %45, label %75

45:                                               ; preds = %40
  br i1 %44, label %46, label %72

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !32
  %49 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !33
  %51 = icmp ult ptr %48, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = getelementptr inbounds i8, ptr %48, i64 1
  store ptr %53, ptr %47, align 8, !tbaa !32
  store i8 11, ptr %48, align 1, !tbaa !11
  br label %105

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %56 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !31
  %58 = load ptr, ptr %55, align 8, !tbaa !30
  %59 = ptrtoint ptr %48 to i64
  %60 = ptrtoint ptr %58 to i64
  %61 = sub i64 %59, %60
  %62 = shl i64 %57, 32
  %63 = and i64 %62, -35184372088832
  %64 = add i64 %63, 35184372088832
  %65 = ashr exact i64 %64, 32
  %66 = tail call ptr @Perl_safesysrealloc(ptr noundef %58, i64 noundef %65) #14
  store ptr %66, ptr %55, align 8, !tbaa !30
  store i64 %65, ptr %56, align 8, !tbaa !31
  %67 = shl i64 %61, 32
  %68 = ashr exact i64 %67, 32
  %69 = getelementptr inbounds i8, ptr %66, i64 %68
  %70 = getelementptr inbounds i8, ptr %66, i64 %65
  store ptr %70, ptr %49, align 8, !tbaa !33
  %71 = getelementptr inbounds i8, ptr %69, i64 1
  store ptr %71, ptr %47, align 8, !tbaa !32
  store i8 11, ptr %69, align 1, !tbaa !11
  br label %105

72:                                               ; preds = %45
  %73 = tail call i32 @PerlIO_putc(ptr noundef nonnull %43, i32 noundef 11) #14
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %123, label %105

75:                                               ; preds = %40
  br i1 %44, label %76, label %102

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !32
  %79 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !33
  %81 = icmp ult ptr %78, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = getelementptr inbounds i8, ptr %78, i64 1
  store ptr %83, ptr %77, align 8, !tbaa !32
  store i8 13, ptr %78, align 1, !tbaa !11
  br label %105

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %86 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %87 = load i64, ptr %86, align 8, !tbaa !31
  %88 = load ptr, ptr %85, align 8, !tbaa !30
  %89 = ptrtoint ptr %78 to i64
  %90 = ptrtoint ptr %88 to i64
  %91 = sub i64 %89, %90
  %92 = shl i64 %87, 32
  %93 = and i64 %92, -35184372088832
  %94 = add i64 %93, 35184372088832
  %95 = ashr exact i64 %94, 32
  %96 = tail call ptr @Perl_safesysrealloc(ptr noundef %88, i64 noundef %95) #14
  store ptr %96, ptr %85, align 8, !tbaa !30
  store i64 %95, ptr %86, align 8, !tbaa !31
  %97 = shl i64 %91, 32
  %98 = ashr exact i64 %97, 32
  %99 = getelementptr inbounds i8, ptr %96, i64 %98
  %100 = getelementptr inbounds i8, ptr %96, i64 %95
  store ptr %100, ptr %79, align 8, !tbaa !33
  %101 = getelementptr inbounds i8, ptr %99, i64 1
  store ptr %101, ptr %77, align 8, !tbaa !32
  store i8 13, ptr %99, align 1, !tbaa !11
  br label %105

102:                                              ; preds = %75
  %103 = tail call i32 @PerlIO_putc(ptr noundef nonnull %43, i32 noundef 13) #14
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %123, label %105

105:                                              ; preds = %84, %82, %102, %72, %52, %54, %19, %17, %37
  %106 = phi i32 [ 80, %37 ], [ 80, %17 ], [ 80, %19 ], [ 80, %72 ], [ 80, %52 ], [ 80, %54 ], [ 113, %102 ], [ 113, %82 ], [ 113, %84 ]
  %107 = tail call ptr @Perl_mg_find(ptr noundef nonnull %1, i32 noundef %106) #14
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %110, align 8, !tbaa !27
  %111 = icmp eq i32 %5, 11
  %112 = select i1 %111, ptr @.str.34, ptr @.str.35
  %113 = select i1 %6, ptr @.str.33, ptr %112
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.40, i32 noundef %106, ptr noundef nonnull %113) #14
  br label %114

114:                                              ; preds = %109, %105
  %115 = getelementptr inbounds %struct.magic, ptr %107, i64 0, i32 6
  %116 = load ptr, ptr %115, align 8, !tbaa !80
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = tail call ptr @Perl_newSV(i64 noundef 0) #14
  br label %120

120:                                              ; preds = %114, %118
  %121 = phi ptr [ %119, %118 ], [ %116, %114 ]
  %122 = tail call fastcc i32 @store(ptr noundef nonnull %0, ptr noundef %121) #15
  br label %123

123:                                              ; preds = %120, %102, %72, %37
  %124 = phi i32 [ -1, %37 ], [ -1, %72 ], [ -1, %102 ], [ %122, %120 ]
  ret i32 %124
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @store_tied_item(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @Perl_mg_find(ptr noundef %1, i32 noundef 112) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %8, align 8, !tbaa !27
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.41) #14
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.magic, ptr %5, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  %12 = icmp eq ptr %11, null
  br i1 %12, label %55, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !32
  %20 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !33
  %22 = icmp ult ptr %19, %21
  br i1 %22, label %43, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %25 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !31
  %27 = load ptr, ptr %24, align 8, !tbaa !30
  %28 = ptrtoint ptr %19 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = shl i64 %26, 32
  %32 = and i64 %31, -35184372088832
  %33 = add i64 %32, 35184372088832
  %34 = ashr exact i64 %33, 32
  %35 = tail call ptr @Perl_safesysrealloc(ptr noundef %27, i64 noundef %34) #14
  store ptr %35, ptr %24, align 8, !tbaa !30
  store i64 %34, ptr %25, align 8, !tbaa !31
  %36 = shl i64 %30, 32
  %37 = ashr exact i64 %36, 32
  %38 = getelementptr inbounds i8, ptr %35, i64 %37
  %39 = getelementptr inbounds i8, ptr %35, i64 %34
  store ptr %39, ptr %20, align 8, !tbaa !33
  br label %43

40:                                               ; preds = %13
  %41 = tail call i32 @PerlIO_putc(ptr noundef nonnull %15, i32 noundef 21) #14
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %189, label %46

43:                                               ; preds = %17, %23
  %44 = phi ptr [ %38, %23 ], [ %19, %17 ]
  %45 = getelementptr inbounds i8, ptr %44, i64 1
  store ptr %45, ptr %18, align 8, !tbaa !32
  store i8 21, ptr %44, align 1, !tbaa !11
  br label %46

46:                                               ; preds = %43, %40
  %47 = getelementptr inbounds %struct.magic, ptr %5, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !80
  %49 = tail call fastcc i32 @store(ptr noundef nonnull %0, ptr noundef %48) #15
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %189

51:                                               ; preds = %46
  %52 = load ptr, ptr %10, align 8, !tbaa !91
  %53 = tail call fastcc i32 @store(ptr noundef nonnull %0, ptr noundef %52) #15
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %188, label %189

55:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %56 = getelementptr inbounds %struct.magic, ptr %5, i64 0, i32 5
  %57 = load i64, ptr %56, align 8, !tbaa !90
  %58 = trunc i64 %57 to i32
  store i32 %58, ptr %3, align 4, !tbaa !13
  %59 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %60 = load ptr, ptr %59, align 8, !tbaa !35
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %85

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !32
  %65 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !33
  %67 = icmp ult ptr %64, %66
  br i1 %67, label %88, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %70 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !31
  %72 = load ptr, ptr %69, align 8, !tbaa !30
  %73 = ptrtoint ptr %64 to i64
  %74 = ptrtoint ptr %72 to i64
  %75 = sub i64 %73, %74
  %76 = shl i64 %71, 32
  %77 = and i64 %76, -35184372088832
  %78 = add i64 %77, 35184372088832
  %79 = ashr exact i64 %78, 32
  %80 = tail call ptr @Perl_safesysrealloc(ptr noundef %72, i64 noundef %79) #14
  store ptr %80, ptr %69, align 8, !tbaa !30
  store i64 %79, ptr %70, align 8, !tbaa !31
  %81 = shl i64 %75, 32
  %82 = ashr exact i64 %81, 32
  %83 = getelementptr inbounds i8, ptr %80, i64 %82
  %84 = getelementptr inbounds i8, ptr %80, i64 %79
  store ptr %84, ptr %65, align 8, !tbaa !33
  br label %88

85:                                               ; preds = %55
  %86 = tail call i32 @PerlIO_putc(ptr noundef nonnull %60, i32 noundef 22) #14
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %185, label %91

88:                                               ; preds = %62, %68
  %89 = phi ptr [ %83, %68 ], [ %64, %62 ]
  %90 = getelementptr inbounds i8, ptr %89, i64 1
  store ptr %90, ptr %63, align 8, !tbaa !32
  store i8 22, ptr %89, align 1, !tbaa !11
  br label %91

91:                                               ; preds = %88, %85
  %92 = getelementptr inbounds %struct.magic, ptr %5, i64 0, i32 6
  %93 = load ptr, ptr %92, align 8, !tbaa !80
  %94 = tail call fastcc i32 @store(ptr noundef nonnull %0, ptr noundef %93) #15
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %185

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %98 = load i32, ptr %97, align 8, !tbaa !40
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %144, label %100

100:                                              ; preds = %96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %101 = tail call fastcc i32 @__bswap_32(i32 noundef %58) #15
  store i32 %101, ptr %4, align 4, !tbaa !13
  %102 = load ptr, ptr %59, align 8, !tbaa !35
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %139

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !32
  %107 = getelementptr inbounds i8, ptr %106, i64 4
  %108 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !33
  %110 = icmp ugt ptr %107, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %113 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %114 = load i64, ptr %113, align 8, !tbaa !31
  %115 = load ptr, ptr %112, align 8, !tbaa !30
  %116 = ptrtoint ptr %106 to i64
  %117 = ptrtoint ptr %115 to i64
  %118 = sub i64 %116, %117
  %119 = shl i64 %114, 32
  %120 = add i64 %119, 35197256990720
  %121 = ashr exact i64 %120, 32
  %122 = and i64 %121, -8192
  %123 = tail call ptr @Perl_safesysrealloc(ptr noundef %115, i64 noundef %122) #14
  store ptr %123, ptr %112, align 8, !tbaa !30
  store i64 %122, ptr %113, align 8, !tbaa !31
  %124 = shl i64 %118, 32
  %125 = ashr exact i64 %124, 32
  %126 = getelementptr inbounds i8, ptr %123, i64 %125
  store ptr %126, ptr %105, align 8, !tbaa !32
  %127 = getelementptr inbounds i8, ptr %123, i64 %122
  store ptr %127, ptr %108, align 8, !tbaa !33
  br label %128

128:                                              ; preds = %111, %104
  %129 = phi ptr [ %126, %111 ], [ %106, %104 ]
  %130 = ptrtoint ptr %129 to i64
  %131 = and i64 %130, 3
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  store i32 %101, ptr %129, align 4, !tbaa !13
  br label %136

134:                                              ; preds = %128
  store i32 %101, ptr %129, align 1
  %135 = load ptr, ptr %105, align 8, !tbaa !32
  br label %136

136:                                              ; preds = %134, %133
  %137 = phi ptr [ %135, %134 ], [ %129, %133 ]
  %138 = getelementptr inbounds i8, ptr %137, i64 4
  store ptr %138, ptr %105, align 8, !tbaa !32
  br label %142

139:                                              ; preds = %100
  %140 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %102, ptr noundef nonnull %4, i64 noundef 4) #14
  %141 = icmp eq i64 %140, 4
  br i1 %141, label %142, label %143

142:                                              ; preds = %139, %136
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %187

143:                                              ; preds = %139
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %185

144:                                              ; preds = %96
  %145 = load ptr, ptr %59, align 8, !tbaa !35
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %182

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !32
  %150 = getelementptr inbounds i8, ptr %149, i64 4
  %151 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !33
  %153 = icmp ugt ptr %150, %152
  br i1 %153, label %154, label %171

154:                                              ; preds = %147
  %155 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %156 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %157 = load i64, ptr %156, align 8, !tbaa !31
  %158 = load ptr, ptr %155, align 8, !tbaa !30
  %159 = ptrtoint ptr %149 to i64
  %160 = ptrtoint ptr %158 to i64
  %161 = sub i64 %159, %160
  %162 = shl i64 %157, 32
  %163 = add i64 %162, 35197256990720
  %164 = ashr exact i64 %163, 32
  %165 = and i64 %164, -8192
  %166 = tail call ptr @Perl_safesysrealloc(ptr noundef %158, i64 noundef %165) #14
  store ptr %166, ptr %155, align 8, !tbaa !30
  store i64 %165, ptr %156, align 8, !tbaa !31
  %167 = shl i64 %161, 32
  %168 = ashr exact i64 %167, 32
  %169 = getelementptr inbounds i8, ptr %166, i64 %168
  store ptr %169, ptr %148, align 8, !tbaa !32
  %170 = getelementptr inbounds i8, ptr %166, i64 %165
  store ptr %170, ptr %151, align 8, !tbaa !33
  br label %171

171:                                              ; preds = %154, %147
  %172 = phi ptr [ %169, %154 ], [ %149, %147 ]
  %173 = ptrtoint ptr %172 to i64
  %174 = and i64 %173, 3
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  store i32 %58, ptr %172, align 4, !tbaa !13
  br label %179

177:                                              ; preds = %171
  store i32 %58, ptr %172, align 1
  %178 = load ptr, ptr %148, align 8, !tbaa !32
  br label %179

179:                                              ; preds = %177, %176
  %180 = phi ptr [ %178, %177 ], [ %172, %176 ]
  %181 = getelementptr inbounds i8, ptr %180, i64 4
  store ptr %181, ptr %148, align 8, !tbaa !32
  br label %187

182:                                              ; preds = %144
  %183 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %145, ptr noundef nonnull %3, i64 noundef 4) #14
  %184 = icmp eq i64 %183, 4
  br i1 %184, label %187, label %185

185:                                              ; preds = %143, %85, %91, %182
  %186 = phi i32 [ -1, %182 ], [ %94, %91 ], [ -1, %85 ], [ -1, %143 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %189

187:                                              ; preds = %182, %179, %142
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %188

188:                                              ; preds = %187, %51
  br label %189

189:                                              ; preds = %185, %51, %46, %40, %188
  %190 = phi i32 [ 0, %188 ], [ -1, %40 ], [ %49, %46 ], [ %53, %51 ], [ %186, %185 ]
  ret i32 %190
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @store_code(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %6 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 15
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %110, label %9

9:                                                ; preds = %2
  %10 = icmp slt i32 %7, 0
  br i1 %10, label %11, label %113

11:                                               ; preds = %9
  %12 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %109, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #14
  %16 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !28
  %18 = and i32 %17, 2097152
  %19 = icmp eq i32 %18, 0
  %20 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #14
  br i1 %19, label %24, label %21

21:                                               ; preds = %14
  %22 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %20, i32 noundef 2) #14
  %23 = zext i1 %22 to i32
  store i32 %23, ptr %6, align 4, !tbaa !41
  br i1 %22, label %113, label %110

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !28
  %27 = and i32 %26, 65280
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #14
  %31 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !28
  %33 = and i32 %32, 255
  %34 = icmp eq i32 %33, 8
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #14
  %37 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !28
  %39 = and i32 %38, 16826623
  %40 = icmp eq i32 %39, 16777226
  br i1 %40, label %41, label %109

41:                                               ; preds = %35, %29, %24
  %42 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #14
  %43 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !28
  %45 = and i32 %44, 1024
  %46 = icmp eq i32 %45, 0
  %47 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #14
  br i1 %46, label %70, label %48

48:                                               ; preds = %41
  %49 = load ptr, ptr %47, align 8, !tbaa !55
  %50 = icmp eq ptr %49, null
  br i1 %50, label %109, label %51

51:                                               ; preds = %48
  %52 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #14
  %53 = load ptr, ptr %52, align 8, !tbaa !55
  %54 = getelementptr inbounds %struct.xpv, ptr %53, i64 0, i32 2
  %55 = load i64, ptr %54, align 8, !tbaa !74
  %56 = icmp ugt i64 %55, 1
  br i1 %56, label %112, label %57

57:                                               ; preds = %51
  %58 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #14
  %59 = load ptr, ptr %58, align 8, !tbaa !55
  %60 = getelementptr inbounds %struct.xpv, ptr %59, i64 0, i32 2
  %61 = load i64, ptr %60, align 8, !tbaa !74
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %109, label %63

63:                                               ; preds = %57
  %64 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #14
  %65 = getelementptr inbounds %struct.sv, ptr %64, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !11
  %67 = load i8, ptr %66, align 1, !tbaa !11
  %68 = icmp ne i8 %67, 48
  %69 = zext i1 %68 to i32
  store i32 %69, ptr %6, align 4, !tbaa !41
  br i1 %68, label %113, label %110

70:                                               ; preds = %41
  %71 = getelementptr inbounds %struct.sv, ptr %47, i64 0, i32 2
  %72 = load i32, ptr %71, align 4, !tbaa !28
  %73 = and i32 %72, 768
  %74 = icmp eq i32 %73, 0
  %75 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #14
  br i1 %74, label %99, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.sv, ptr %75, i64 0, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !28
  %79 = and i32 %78, 256
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #14
  %83 = load ptr, ptr %82, align 8, !tbaa !55
  %84 = getelementptr inbounds %struct.xpviv, ptr %83, i64 0, i32 4
  %85 = load i64, ptr %84, align 8, !tbaa !11
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %112

87:                                               ; preds = %81, %76
  %88 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #14
  %89 = getelementptr inbounds %struct.sv, ptr %88, i64 0, i32 2
  %90 = load i32, ptr %89, align 4, !tbaa !28
  %91 = and i32 %90, 512
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %109, label %93

93:                                               ; preds = %87
  %94 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #14
  %95 = load ptr, ptr %94, align 8, !tbaa !55
  %96 = getelementptr inbounds %struct.xpvnv, ptr %95, i64 0, i32 5
  %97 = load double, ptr %96, align 8, !tbaa !11
  %98 = fcmp uno double %97, 0.000000e+00
  br i1 %98, label %112, label %102

99:                                               ; preds = %70
  %100 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %75, i32 noundef 0) #14
  %101 = zext i1 %100 to i32
  store i32 %101, ptr %6, align 4, !tbaa !41
  br i1 %100, label %113, label %110

102:                                              ; preds = %93
  %103 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.42, i32 noundef 1) #14
  %104 = load ptr, ptr %103, align 8, !tbaa !55
  %105 = getelementptr inbounds %struct.xpvnv, ptr %104, i64 0, i32 5
  %106 = load double, ptr %105, align 8, !tbaa !11
  %107 = fcmp une double %106, 0.000000e+00
  %108 = zext i1 %107 to i32
  store i32 %108, ptr %6, align 4, !tbaa !41
  br i1 %107, label %113, label %110

109:                                              ; preds = %87, %57, %48, %35, %11
  store i32 0, ptr %6, align 4, !tbaa !41
  br label %110

110:                                              ; preds = %63, %99, %21, %109, %102, %2
  %111 = tail call i32 @store_other(ptr noundef nonnull %0, ptr noundef %1) #15, !range !34
  br label %907

112:                                              ; preds = %93, %81, %51
  store i32 1, ptr %6, align 4, !tbaa !41
  br label %113

113:                                              ; preds = %63, %99, %21, %112, %102, %9
  %114 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.43, i64 noundef 10) #14
  %115 = tail call ptr @Perl_newSVnv(double noundef 6.100000e-01) #14
  tail call void (i32, ptr, ptr, ...) @Perl_load_module(i32 noundef 2, ptr noundef %114, ptr noundef %115) #14
  %116 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  tail call void @Perl_push_scope() #14
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #14
  %117 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !39
  store i64 %117, ptr @PL_tmps_floor, align 8, !tbaa !39
  %118 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %119 = getelementptr inbounds i32, ptr %118, i64 1
  store ptr %119, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %120 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !12
  %121 = icmp eq ptr %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = tail call ptr @Perl_markstack_grow() #14
  br label %124

124:                                              ; preds = %113, %122
  %125 = phi ptr [ %123, %122 ], [ %119, %113 ]
  %126 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %127 = ptrtoint ptr %116 to i64
  %128 = ptrtoint ptr %126 to i64
  %129 = sub i64 %127, %128
  %130 = lshr exact i64 %129, 3
  %131 = trunc i64 %130 to i32
  store i32 %131, ptr %125, align 4, !tbaa !13
  %132 = load ptr, ptr @PL_stack_max, align 8, !tbaa !12
  %133 = ptrtoint ptr %132 to i64
  %134 = sub i64 %133, %127
  %135 = icmp slt i64 %134, 8
  br i1 %135, label %136, label %138

136:                                              ; preds = %124
  %137 = tail call ptr @Perl_stack_grow(ptr noundef %116, ptr noundef %116, i64 noundef 1) #14
  br label %138

138:                                              ; preds = %124, %136
  %139 = phi ptr [ %137, %136 ], [ %116, %124 ]
  %140 = tail call ptr @Perl_newSVpvn_flags(ptr noundef nonnull @.str.43, i64 noundef 10, i32 noundef 524288) #14
  %141 = getelementptr inbounds ptr, ptr %139, i64 1
  store ptr %140, ptr %141, align 8, !tbaa !12
  store ptr %141, ptr @PL_stack_sp, align 8, !tbaa !12
  %142 = tail call i32 @Perl_call_method(ptr noundef nonnull @.str.44, i32 noundef 2) #14
  %143 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %144 = icmp eq i32 %142, 1
  br i1 %144, label %147, label %145

145:                                              ; preds = %138
  %146 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %146, align 8, !tbaa !27
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.45) #14
  br label %147

147:                                              ; preds = %145, %138
  %148 = getelementptr inbounds ptr, ptr %143, i64 -1
  %149 = load ptr, ptr %143, align 8, !tbaa !12
  %150 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %151 = getelementptr inbounds i32, ptr %150, i64 1
  store ptr %151, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %152 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !12
  %153 = icmp eq ptr %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = tail call ptr @Perl_markstack_grow() #14
  br label %156

156:                                              ; preds = %147, %154
  %157 = phi ptr [ %155, %154 ], [ %151, %147 ]
  %158 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %159 = ptrtoint ptr %148 to i64
  %160 = ptrtoint ptr %158 to i64
  %161 = sub i64 %159, %160
  %162 = lshr exact i64 %161, 3
  %163 = trunc i64 %162 to i32
  store i32 %163, ptr %157, align 4, !tbaa !13
  %164 = load ptr, ptr @PL_stack_max, align 8, !tbaa !12
  %165 = ptrtoint ptr %164 to i64
  %166 = sub i64 %165, %159
  %167 = icmp slt i64 %166, 8
  br i1 %167, label %168, label %172

168:                                              ; preds = %156
  %169 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %148, ptr noundef nonnull %148, i64 noundef 1) #14
  %170 = load ptr, ptr @PL_stack_max, align 8, !tbaa !12
  %171 = ptrtoint ptr %170 to i64
  br label %172

172:                                              ; preds = %156, %168
  %173 = phi i64 [ %165, %156 ], [ %171, %168 ]
  %174 = phi ptr [ %148, %156 ], [ %169, %168 ]
  %175 = getelementptr inbounds ptr, ptr %174, i64 1
  store ptr %149, ptr %175, align 8, !tbaa !12
  %176 = ptrtoint ptr %175 to i64
  %177 = sub i64 %173, %176
  %178 = icmp slt i64 %177, 8
  br i1 %178, label %179, label %181

179:                                              ; preds = %172
  %180 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %175, ptr noundef nonnull %175, i64 noundef 1) #14
  br label %181

181:                                              ; preds = %172, %179
  %182 = phi ptr [ %180, %179 ], [ %175, %172 ]
  %183 = tail call ptr @Perl_newRV(ptr noundef %1) #14
  %184 = tail call ptr @Perl_sv_2mortal(ptr noundef %183) #14
  %185 = getelementptr inbounds ptr, ptr %182, i64 1
  store ptr %184, ptr %185, align 8, !tbaa !12
  store ptr %185, ptr @PL_stack_sp, align 8, !tbaa !12
  %186 = tail call i32 @Perl_call_method(ptr noundef nonnull @.str.46, i32 noundef 2) #14
  %187 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %188 = icmp eq i32 %186, 1
  br i1 %188, label %191, label %189

189:                                              ; preds = %181
  %190 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %190, align 8, !tbaa !27
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.47) #14
  br label %191

191:                                              ; preds = %189, %181
  %192 = load ptr, ptr %187, align 8, !tbaa !12
  %193 = load ptr, ptr %192, align 8, !tbaa !55
  %194 = getelementptr inbounds %struct.xpv, ptr %193, i64 0, i32 2
  %195 = load i64, ptr %194, align 8, !tbaa !74
  %196 = trunc i64 %195 to i32
  store i32 %196, ptr %3, align 4, !tbaa !13
  %197 = getelementptr inbounds %struct.sv, ptr %192, i64 0, i32 2
  %198 = load i32, ptr %197, align 4, !tbaa !28
  %199 = and i32 %198, 2098176
  %200 = icmp eq i32 %199, 1024
  br i1 %200, label %201, label %204

201:                                              ; preds = %191
  %202 = getelementptr inbounds %struct.sv, ptr %192, i64 0, i32 3
  %203 = load ptr, ptr %202, align 8, !tbaa !11
  br label %206

204:                                              ; preds = %191
  %205 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %192, ptr noundef null, i32 noundef 2) #14
  br label %206

206:                                              ; preds = %204, %201
  %207 = phi ptr [ %203, %201 ], [ %205, %204 ]
  %208 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %207) #17
  %209 = icmp eq i32 %196, 0
  br i1 %209, label %227, label %210

210:                                              ; preds = %206
  %211 = load i32, ptr %197, align 4, !tbaa !28
  %212 = and i32 %211, 2098176
  %213 = icmp eq i32 %212, 1024
  br i1 %213, label %214, label %217

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.sv, ptr %192, i64 0, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !11
  br label %219

217:                                              ; preds = %210
  %218 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %192, ptr noundef null, i32 noundef 2) #14
  br label %219

219:                                              ; preds = %217, %214
  %220 = phi ptr [ %216, %214 ], [ %218, %217 ]
  %221 = shl i64 %208, 32
  %222 = ashr exact i64 %221, 32
  %223 = getelementptr inbounds i8, ptr %220, i64 %222
  %224 = getelementptr inbounds i8, ptr %223, i64 -1
  %225 = load i8, ptr %224, align 1, !tbaa !11
  %226 = icmp eq i8 %225, 59
  br i1 %226, label %227, label %229

227:                                              ; preds = %206, %219
  %228 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %228, align 8, !tbaa !27
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.48) #14
  br label %229

229:                                              ; preds = %219, %227
  %230 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %231 = load ptr, ptr %230, align 8, !tbaa !35
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %256

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !32
  %236 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %237 = load ptr, ptr %236, align 8, !tbaa !33
  %238 = icmp ult ptr %235, %237
  br i1 %238, label %259, label %239

239:                                              ; preds = %233
  %240 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %241 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %242 = load i64, ptr %241, align 8, !tbaa !31
  %243 = load ptr, ptr %240, align 8, !tbaa !30
  %244 = ptrtoint ptr %235 to i64
  %245 = ptrtoint ptr %243 to i64
  %246 = sub i64 %244, %245
  %247 = shl i64 %242, 32
  %248 = and i64 %247, -35184372088832
  %249 = add i64 %248, 35184372088832
  %250 = ashr exact i64 %249, 32
  %251 = tail call ptr @Perl_safesysrealloc(ptr noundef %243, i64 noundef %250) #14
  store ptr %251, ptr %240, align 8, !tbaa !30
  store i64 %250, ptr %241, align 8, !tbaa !31
  %252 = shl i64 %246, 32
  %253 = ashr exact i64 %252, 32
  %254 = getelementptr inbounds i8, ptr %251, i64 %253
  %255 = getelementptr inbounds i8, ptr %251, i64 %250
  store ptr %255, ptr %236, align 8, !tbaa !33
  br label %259

256:                                              ; preds = %229
  %257 = tail call i32 @PerlIO_putc(ptr noundef nonnull %231, i32 noundef 26) #14
  %258 = icmp eq i32 %257, -1
  br i1 %258, label %907, label %262

259:                                              ; preds = %233, %239
  %260 = phi ptr [ %254, %239 ], [ %235, %233 ]
  %261 = getelementptr inbounds i8, ptr %260, i64 1
  store ptr %261, ptr %234, align 8, !tbaa !32
  store i8 26, ptr %260, align 1, !tbaa !11
  br label %262

262:                                              ; preds = %259, %256
  %263 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %264 = load i64, ptr %263, align 8, !tbaa !53
  %265 = add nsw i64 %264, 1
  store i64 %265, ptr %263, align 8, !tbaa !53
  %266 = load i32, ptr %197, align 4, !tbaa !28
  %267 = and i32 %266, 536870912
  %268 = icmp eq i32 %267, 0
  %269 = load i32, ptr %3, align 4, !tbaa !13
  %270 = icmp slt i32 %269, 256
  br i1 %268, label %586, label %271

271:                                              ; preds = %262
  br i1 %270, label %272, label %398

272:                                              ; preds = %271
  %273 = trunc i32 %269 to i8
  %274 = load ptr, ptr %230, align 8, !tbaa !35
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %299

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %278 = load ptr, ptr %277, align 8, !tbaa !32
  %279 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %280 = load ptr, ptr %279, align 8, !tbaa !33
  %281 = icmp ult ptr %278, %280
  br i1 %281, label %302, label %282

282:                                              ; preds = %276
  %283 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %284 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %285 = load i64, ptr %284, align 8, !tbaa !31
  %286 = load ptr, ptr %283, align 8, !tbaa !30
  %287 = ptrtoint ptr %278 to i64
  %288 = ptrtoint ptr %286 to i64
  %289 = sub i64 %287, %288
  %290 = shl i64 %285, 32
  %291 = and i64 %290, -35184372088832
  %292 = add i64 %291, 35184372088832
  %293 = ashr exact i64 %292, 32
  %294 = tail call ptr @Perl_safesysrealloc(ptr noundef %286, i64 noundef %293) #14
  store ptr %294, ptr %283, align 8, !tbaa !30
  store i64 %293, ptr %284, align 8, !tbaa !31
  %295 = shl i64 %289, 32
  %296 = ashr exact i64 %295, 32
  %297 = getelementptr inbounds i8, ptr %294, i64 %296
  %298 = getelementptr inbounds i8, ptr %294, i64 %293
  store ptr %298, ptr %279, align 8, !tbaa !33
  br label %302

299:                                              ; preds = %272
  %300 = tail call i32 @PerlIO_putc(ptr noundef nonnull %274, i32 noundef 23) #14
  %301 = icmp eq i32 %300, -1
  br i1 %301, label %907, label %305

302:                                              ; preds = %276, %282
  %303 = phi ptr [ %297, %282 ], [ %278, %276 ]
  %304 = getelementptr inbounds i8, ptr %303, i64 1
  store ptr %304, ptr %277, align 8, !tbaa !32
  store i8 23, ptr %303, align 1, !tbaa !11
  br label %305

305:                                              ; preds = %302, %299
  %306 = load ptr, ptr %230, align 8, !tbaa !35
  %307 = icmp eq ptr %306, null
  br i1 %307, label %308, label %331

308:                                              ; preds = %305
  %309 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %310 = load ptr, ptr %309, align 8, !tbaa !32
  %311 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %312 = load ptr, ptr %311, align 8, !tbaa !33
  %313 = icmp ult ptr %310, %312
  br i1 %313, label %335, label %314

314:                                              ; preds = %308
  %315 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %316 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %317 = load i64, ptr %316, align 8, !tbaa !31
  %318 = load ptr, ptr %315, align 8, !tbaa !30
  %319 = ptrtoint ptr %310 to i64
  %320 = ptrtoint ptr %318 to i64
  %321 = sub i64 %319, %320
  %322 = shl i64 %317, 32
  %323 = and i64 %322, -35184372088832
  %324 = add i64 %323, 35184372088832
  %325 = ashr exact i64 %324, 32
  %326 = tail call ptr @Perl_safesysrealloc(ptr noundef %318, i64 noundef %325) #14
  store ptr %326, ptr %315, align 8, !tbaa !30
  store i64 %325, ptr %316, align 8, !tbaa !31
  %327 = shl i64 %321, 32
  %328 = ashr exact i64 %327, 32
  %329 = getelementptr inbounds i8, ptr %326, i64 %328
  %330 = getelementptr inbounds i8, ptr %326, i64 %325
  store ptr %330, ptr %311, align 8, !tbaa !33
  br label %335

331:                                              ; preds = %305
  %332 = and i32 %269, 255
  %333 = tail call i32 @PerlIO_putc(ptr noundef nonnull %306, i32 noundef %332) #14
  %334 = icmp eq i32 %333, -1
  br i1 %334, label %907, label %338

335:                                              ; preds = %308, %314
  %336 = phi ptr [ %329, %314 ], [ %310, %308 ]
  %337 = getelementptr inbounds i8, ptr %336, i64 1
  store ptr %337, ptr %309, align 8, !tbaa !32
  store i8 %273, ptr %336, align 1, !tbaa !11
  br label %338

338:                                              ; preds = %335, %331
  %339 = load i32, ptr %3, align 4, !tbaa !13
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %901, label %341

341:                                              ; preds = %338
  %342 = load ptr, ptr %230, align 8, !tbaa !35
  %343 = icmp eq ptr %342, null
  br i1 %343, label %344, label %384

344:                                              ; preds = %341
  %345 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %346 = load ptr, ptr %345, align 8, !tbaa !32
  %347 = sext i32 %339 to i64
  %348 = getelementptr inbounds i8, ptr %346, i64 %347
  %349 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %350 = load ptr, ptr %349, align 8, !tbaa !33
  %351 = icmp ugt ptr %348, %350
  br i1 %351, label %352, label %370

352:                                              ; preds = %344
  %353 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %354 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %355 = load i64, ptr %354, align 8, !tbaa !31
  %356 = trunc i64 %355 to i32
  %357 = add i32 %339, 8191
  %358 = add i32 %357, %356
  %359 = and i32 %358, -8192
  %360 = load ptr, ptr %353, align 8, !tbaa !30
  %361 = ptrtoint ptr %346 to i64
  %362 = ptrtoint ptr %360 to i64
  %363 = sub i64 %361, %362
  %364 = sext i32 %359 to i64
  %365 = tail call ptr @Perl_safesysrealloc(ptr noundef %360, i64 noundef %364) #14
  store ptr %365, ptr %353, align 8, !tbaa !30
  store i64 %364, ptr %354, align 8, !tbaa !31
  %366 = shl i64 %363, 32
  %367 = ashr exact i64 %366, 32
  %368 = getelementptr inbounds i8, ptr %365, i64 %367
  store ptr %368, ptr %345, align 8, !tbaa !32
  %369 = getelementptr inbounds i8, ptr %365, i64 %364
  store ptr %369, ptr %349, align 8, !tbaa !33
  br label %370

370:                                              ; preds = %352, %344
  %371 = phi ptr [ %368, %352 ], [ %346, %344 ]
  %372 = load i32, ptr %197, align 4, !tbaa !28
  %373 = and i32 %372, 2098176
  %374 = icmp eq i32 %373, 1024
  br i1 %374, label %375, label %378

375:                                              ; preds = %370
  %376 = getelementptr inbounds %struct.sv, ptr %192, i64 0, i32 3
  %377 = load ptr, ptr %376, align 8, !tbaa !11
  br label %380

378:                                              ; preds = %370
  %379 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %192, ptr noundef null, i32 noundef 2) #14
  br label %380

380:                                              ; preds = %378, %375
  %381 = phi ptr [ %377, %375 ], [ %379, %378 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %371, ptr align 1 %381, i64 %347, i1 false)
  %382 = load ptr, ptr %345, align 8, !tbaa !32
  %383 = getelementptr inbounds i8, ptr %382, i64 %347
  store ptr %383, ptr %345, align 8, !tbaa !32
  br label %901

384:                                              ; preds = %341
  %385 = load i32, ptr %197, align 4, !tbaa !28
  %386 = and i32 %385, 2098176
  %387 = icmp eq i32 %386, 1024
  br i1 %387, label %388, label %391

388:                                              ; preds = %384
  %389 = getelementptr inbounds %struct.sv, ptr %192, i64 0, i32 3
  %390 = load ptr, ptr %389, align 8, !tbaa !11
  br label %393

391:                                              ; preds = %384
  %392 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %192, ptr noundef null, i32 noundef 2) #14
  br label %393

393:                                              ; preds = %391, %388
  %394 = phi ptr [ %390, %388 ], [ %392, %391 ]
  %395 = sext i32 %339 to i64
  %396 = tail call i64 @Perl_PerlIO_write(ptr noundef nonnull %342, ptr noundef %394, i64 noundef %395) #14
  %397 = icmp eq i64 %396, %395
  br i1 %397, label %901, label %907

398:                                              ; preds = %271
  %399 = load ptr, ptr %230, align 8, !tbaa !35
  %400 = icmp eq ptr %399, null
  br i1 %400, label %401, label %424

401:                                              ; preds = %398
  %402 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %403 = load ptr, ptr %402, align 8, !tbaa !32
  %404 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %405 = load ptr, ptr %404, align 8, !tbaa !33
  %406 = icmp ult ptr %403, %405
  br i1 %406, label %427, label %407

407:                                              ; preds = %401
  %408 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %409 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %410 = load i64, ptr %409, align 8, !tbaa !31
  %411 = load ptr, ptr %408, align 8, !tbaa !30
  %412 = ptrtoint ptr %403 to i64
  %413 = ptrtoint ptr %411 to i64
  %414 = sub i64 %412, %413
  %415 = shl i64 %410, 32
  %416 = and i64 %415, -35184372088832
  %417 = add i64 %416, 35184372088832
  %418 = ashr exact i64 %417, 32
  %419 = tail call ptr @Perl_safesysrealloc(ptr noundef %411, i64 noundef %418) #14
  store ptr %419, ptr %408, align 8, !tbaa !30
  store i64 %418, ptr %409, align 8, !tbaa !31
  %420 = shl i64 %414, 32
  %421 = ashr exact i64 %420, 32
  %422 = getelementptr inbounds i8, ptr %419, i64 %421
  %423 = getelementptr inbounds i8, ptr %419, i64 %418
  store ptr %423, ptr %404, align 8, !tbaa !33
  br label %427

424:                                              ; preds = %398
  %425 = tail call i32 @PerlIO_putc(ptr noundef nonnull %399, i32 noundef 24) #14
  %426 = icmp eq i32 %425, -1
  br i1 %426, label %907, label %430

427:                                              ; preds = %401, %407
  %428 = phi ptr [ %422, %407 ], [ %403, %401 ]
  %429 = getelementptr inbounds i8, ptr %428, i64 1
  store ptr %429, ptr %402, align 8, !tbaa !32
  store i8 24, ptr %428, align 1, !tbaa !11
  br label %430

430:                                              ; preds = %427, %424
  %431 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %432 = load i32, ptr %431, align 8, !tbaa !40
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %479, label %434

434:                                              ; preds = %430
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %435 = load i32, ptr %3, align 4, !tbaa !13
  %436 = tail call fastcc i32 @__bswap_32(i32 noundef %435) #15
  store i32 %436, ptr %4, align 4, !tbaa !13
  %437 = load ptr, ptr %230, align 8, !tbaa !35
  %438 = icmp eq ptr %437, null
  br i1 %438, label %439, label %474

439:                                              ; preds = %434
  %440 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %441 = load ptr, ptr %440, align 8, !tbaa !32
  %442 = getelementptr inbounds i8, ptr %441, i64 4
  %443 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %444 = load ptr, ptr %443, align 8, !tbaa !33
  %445 = icmp ugt ptr %442, %444
  br i1 %445, label %446, label %463

446:                                              ; preds = %439
  %447 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %448 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %449 = load i64, ptr %448, align 8, !tbaa !31
  %450 = load ptr, ptr %447, align 8, !tbaa !30
  %451 = ptrtoint ptr %441 to i64
  %452 = ptrtoint ptr %450 to i64
  %453 = sub i64 %451, %452
  %454 = shl i64 %449, 32
  %455 = add i64 %454, 35197256990720
  %456 = ashr exact i64 %455, 32
  %457 = and i64 %456, -8192
  %458 = tail call ptr @Perl_safesysrealloc(ptr noundef %450, i64 noundef %457) #14
  store ptr %458, ptr %447, align 8, !tbaa !30
  store i64 %457, ptr %448, align 8, !tbaa !31
  %459 = shl i64 %453, 32
  %460 = ashr exact i64 %459, 32
  %461 = getelementptr inbounds i8, ptr %458, i64 %460
  store ptr %461, ptr %440, align 8, !tbaa !32
  %462 = getelementptr inbounds i8, ptr %458, i64 %457
  store ptr %462, ptr %443, align 8, !tbaa !33
  br label %463

463:                                              ; preds = %446, %439
  %464 = phi ptr [ %461, %446 ], [ %441, %439 ]
  %465 = ptrtoint ptr %464 to i64
  %466 = and i64 %465, 3
  %467 = icmp eq i64 %466, 0
  br i1 %467, label %468, label %469

468:                                              ; preds = %463
  store i32 %436, ptr %464, align 4, !tbaa !13
  br label %471

469:                                              ; preds = %463
  store i32 %436, ptr %464, align 1
  %470 = load ptr, ptr %440, align 8, !tbaa !32
  br label %471

471:                                              ; preds = %469, %468
  %472 = phi ptr [ %470, %469 ], [ %464, %468 ]
  %473 = getelementptr inbounds i8, ptr %472, i64 4
  store ptr %473, ptr %440, align 8, !tbaa !32
  br label %477

474:                                              ; preds = %434
  %475 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %437, ptr noundef nonnull %4, i64 noundef 4) #14
  %476 = icmp eq i64 %475, 4
  br i1 %476, label %477, label %478

477:                                              ; preds = %474, %471
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %521

478:                                              ; preds = %474
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %907

479:                                              ; preds = %430
  %480 = load ptr, ptr %230, align 8, !tbaa !35
  %481 = icmp eq ptr %480, null
  br i1 %481, label %482, label %518

482:                                              ; preds = %479
  %483 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %484 = load ptr, ptr %483, align 8, !tbaa !32
  %485 = getelementptr inbounds i8, ptr %484, i64 4
  %486 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %487 = load ptr, ptr %486, align 8, !tbaa !33
  %488 = icmp ugt ptr %485, %487
  br i1 %488, label %489, label %506

489:                                              ; preds = %482
  %490 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %491 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %492 = load i64, ptr %491, align 8, !tbaa !31
  %493 = load ptr, ptr %490, align 8, !tbaa !30
  %494 = ptrtoint ptr %484 to i64
  %495 = ptrtoint ptr %493 to i64
  %496 = sub i64 %494, %495
  %497 = shl i64 %492, 32
  %498 = add i64 %497, 35197256990720
  %499 = ashr exact i64 %498, 32
  %500 = and i64 %499, -8192
  %501 = tail call ptr @Perl_safesysrealloc(ptr noundef %493, i64 noundef %500) #14
  store ptr %501, ptr %490, align 8, !tbaa !30
  store i64 %500, ptr %491, align 8, !tbaa !31
  %502 = shl i64 %496, 32
  %503 = ashr exact i64 %502, 32
  %504 = getelementptr inbounds i8, ptr %501, i64 %503
  store ptr %504, ptr %483, align 8, !tbaa !32
  %505 = getelementptr inbounds i8, ptr %501, i64 %500
  store ptr %505, ptr %486, align 8, !tbaa !33
  br label %506

506:                                              ; preds = %489, %482
  %507 = phi ptr [ %504, %489 ], [ %484, %482 ]
  %508 = ptrtoint ptr %507 to i64
  %509 = and i64 %508, 3
  %510 = icmp eq i64 %509, 0
  %511 = load i32, ptr %3, align 4
  br i1 %510, label %512, label %513

512:                                              ; preds = %506
  store i32 %511, ptr %507, align 4, !tbaa !13
  br label %515

513:                                              ; preds = %506
  store i32 %511, ptr %507, align 1
  %514 = load ptr, ptr %483, align 8, !tbaa !32
  br label %515

515:                                              ; preds = %513, %512
  %516 = phi ptr [ %514, %513 ], [ %507, %512 ]
  %517 = getelementptr inbounds i8, ptr %516, i64 4
  store ptr %517, ptr %483, align 8, !tbaa !32
  br label %521

518:                                              ; preds = %479
  %519 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %480, ptr noundef nonnull %3, i64 noundef 4) #14
  %520 = icmp eq i64 %519, 4
  br i1 %520, label %521, label %907

521:                                              ; preds = %477, %518, %515
  %522 = load ptr, ptr %230, align 8, !tbaa !35
  %523 = icmp eq ptr %522, null
  br i1 %523, label %524, label %569

524:                                              ; preds = %521
  %525 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %526 = load ptr, ptr %525, align 8, !tbaa !32
  %527 = load i32, ptr %3, align 4, !tbaa !13
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds i8, ptr %526, i64 %528
  %530 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %531 = load ptr, ptr %530, align 8, !tbaa !33
  %532 = icmp ugt ptr %529, %531
  br i1 %532, label %533, label %551

533:                                              ; preds = %524
  %534 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %535 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %536 = load i64, ptr %535, align 8, !tbaa !31
  %537 = trunc i64 %536 to i32
  %538 = add i32 %527, 8191
  %539 = add i32 %538, %537
  %540 = and i32 %539, -8192
  %541 = load ptr, ptr %534, align 8, !tbaa !30
  %542 = ptrtoint ptr %526 to i64
  %543 = ptrtoint ptr %541 to i64
  %544 = sub i64 %542, %543
  %545 = sext i32 %540 to i64
  %546 = call ptr @Perl_safesysrealloc(ptr noundef %541, i64 noundef %545) #14
  store ptr %546, ptr %534, align 8, !tbaa !30
  store i64 %545, ptr %535, align 8, !tbaa !31
  %547 = shl i64 %544, 32
  %548 = ashr exact i64 %547, 32
  %549 = getelementptr inbounds i8, ptr %546, i64 %548
  store ptr %549, ptr %525, align 8, !tbaa !32
  %550 = getelementptr inbounds i8, ptr %546, i64 %545
  store ptr %550, ptr %530, align 8, !tbaa !33
  br label %551

551:                                              ; preds = %533, %524
  %552 = phi ptr [ %549, %533 ], [ %526, %524 ]
  %553 = load i32, ptr %197, align 4, !tbaa !28
  %554 = and i32 %553, 2098176
  %555 = icmp eq i32 %554, 1024
  br i1 %555, label %556, label %559

556:                                              ; preds = %551
  %557 = getelementptr inbounds %struct.sv, ptr %192, i64 0, i32 3
  %558 = load ptr, ptr %557, align 8, !tbaa !11
  br label %561

559:                                              ; preds = %551
  %560 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %192, ptr noundef null, i32 noundef 2) #14
  br label %561

561:                                              ; preds = %559, %556
  %562 = phi ptr [ %558, %556 ], [ %560, %559 ]
  %563 = load i32, ptr %3, align 4, !tbaa !13
  %564 = sext i32 %563 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %552, ptr align 1 %562, i64 %564, i1 false)
  %565 = load i32, ptr %3, align 4, !tbaa !13
  %566 = load ptr, ptr %525, align 8, !tbaa !32
  %567 = sext i32 %565 to i64
  %568 = getelementptr inbounds i8, ptr %566, i64 %567
  store ptr %568, ptr %525, align 8, !tbaa !32
  br label %901

569:                                              ; preds = %521
  %570 = load i32, ptr %197, align 4, !tbaa !28
  %571 = and i32 %570, 2098176
  %572 = icmp eq i32 %571, 1024
  br i1 %572, label %573, label %576

573:                                              ; preds = %569
  %574 = getelementptr inbounds %struct.sv, ptr %192, i64 0, i32 3
  %575 = load ptr, ptr %574, align 8, !tbaa !11
  br label %578

576:                                              ; preds = %569
  %577 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %192, ptr noundef null, i32 noundef 2) #14
  br label %578

578:                                              ; preds = %576, %573
  %579 = phi ptr [ %575, %573 ], [ %577, %576 ]
  %580 = load i32, ptr %3, align 4, !tbaa !13
  %581 = sext i32 %580 to i64
  %582 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %522, ptr noundef %579, i64 noundef %581) #14
  %583 = load i32, ptr %3, align 4, !tbaa !13
  %584 = sext i32 %583 to i64
  %585 = icmp eq i64 %582, %584
  br i1 %585, label %901, label %907

586:                                              ; preds = %262
  br i1 %270, label %587, label %713

587:                                              ; preds = %586
  %588 = trunc i32 %269 to i8
  %589 = load ptr, ptr %230, align 8, !tbaa !35
  %590 = icmp eq ptr %589, null
  br i1 %590, label %591, label %614

591:                                              ; preds = %587
  %592 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %593 = load ptr, ptr %592, align 8, !tbaa !32
  %594 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %595 = load ptr, ptr %594, align 8, !tbaa !33
  %596 = icmp ult ptr %593, %595
  br i1 %596, label %617, label %597

597:                                              ; preds = %591
  %598 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %599 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %600 = load i64, ptr %599, align 8, !tbaa !31
  %601 = load ptr, ptr %598, align 8, !tbaa !30
  %602 = ptrtoint ptr %593 to i64
  %603 = ptrtoint ptr %601 to i64
  %604 = sub i64 %602, %603
  %605 = shl i64 %600, 32
  %606 = and i64 %605, -35184372088832
  %607 = add i64 %606, 35184372088832
  %608 = ashr exact i64 %607, 32
  %609 = tail call ptr @Perl_safesysrealloc(ptr noundef %601, i64 noundef %608) #14
  store ptr %609, ptr %598, align 8, !tbaa !30
  store i64 %608, ptr %599, align 8, !tbaa !31
  %610 = shl i64 %604, 32
  %611 = ashr exact i64 %610, 32
  %612 = getelementptr inbounds i8, ptr %609, i64 %611
  %613 = getelementptr inbounds i8, ptr %609, i64 %608
  store ptr %613, ptr %594, align 8, !tbaa !33
  br label %617

614:                                              ; preds = %587
  %615 = tail call i32 @PerlIO_putc(ptr noundef nonnull %589, i32 noundef 10) #14
  %616 = icmp eq i32 %615, -1
  br i1 %616, label %907, label %620

617:                                              ; preds = %591, %597
  %618 = phi ptr [ %612, %597 ], [ %593, %591 ]
  %619 = getelementptr inbounds i8, ptr %618, i64 1
  store ptr %619, ptr %592, align 8, !tbaa !32
  store i8 10, ptr %618, align 1, !tbaa !11
  br label %620

620:                                              ; preds = %617, %614
  %621 = load ptr, ptr %230, align 8, !tbaa !35
  %622 = icmp eq ptr %621, null
  br i1 %622, label %623, label %646

623:                                              ; preds = %620
  %624 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %625 = load ptr, ptr %624, align 8, !tbaa !32
  %626 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %627 = load ptr, ptr %626, align 8, !tbaa !33
  %628 = icmp ult ptr %625, %627
  br i1 %628, label %650, label %629

629:                                              ; preds = %623
  %630 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %631 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %632 = load i64, ptr %631, align 8, !tbaa !31
  %633 = load ptr, ptr %630, align 8, !tbaa !30
  %634 = ptrtoint ptr %625 to i64
  %635 = ptrtoint ptr %633 to i64
  %636 = sub i64 %634, %635
  %637 = shl i64 %632, 32
  %638 = and i64 %637, -35184372088832
  %639 = add i64 %638, 35184372088832
  %640 = ashr exact i64 %639, 32
  %641 = tail call ptr @Perl_safesysrealloc(ptr noundef %633, i64 noundef %640) #14
  store ptr %641, ptr %630, align 8, !tbaa !30
  store i64 %640, ptr %631, align 8, !tbaa !31
  %642 = shl i64 %636, 32
  %643 = ashr exact i64 %642, 32
  %644 = getelementptr inbounds i8, ptr %641, i64 %643
  %645 = getelementptr inbounds i8, ptr %641, i64 %640
  store ptr %645, ptr %626, align 8, !tbaa !33
  br label %650

646:                                              ; preds = %620
  %647 = and i32 %269, 255
  %648 = tail call i32 @PerlIO_putc(ptr noundef nonnull %621, i32 noundef %647) #14
  %649 = icmp eq i32 %648, -1
  br i1 %649, label %907, label %653

650:                                              ; preds = %623, %629
  %651 = phi ptr [ %644, %629 ], [ %625, %623 ]
  %652 = getelementptr inbounds i8, ptr %651, i64 1
  store ptr %652, ptr %624, align 8, !tbaa !32
  store i8 %588, ptr %651, align 1, !tbaa !11
  br label %653

653:                                              ; preds = %650, %646
  %654 = load i32, ptr %3, align 4, !tbaa !13
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %901, label %656

656:                                              ; preds = %653
  %657 = load ptr, ptr %230, align 8, !tbaa !35
  %658 = icmp eq ptr %657, null
  br i1 %658, label %659, label %699

659:                                              ; preds = %656
  %660 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %661 = load ptr, ptr %660, align 8, !tbaa !32
  %662 = sext i32 %654 to i64
  %663 = getelementptr inbounds i8, ptr %661, i64 %662
  %664 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %665 = load ptr, ptr %664, align 8, !tbaa !33
  %666 = icmp ugt ptr %663, %665
  br i1 %666, label %667, label %685

667:                                              ; preds = %659
  %668 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %669 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %670 = load i64, ptr %669, align 8, !tbaa !31
  %671 = trunc i64 %670 to i32
  %672 = add i32 %654, 8191
  %673 = add i32 %672, %671
  %674 = and i32 %673, -8192
  %675 = load ptr, ptr %668, align 8, !tbaa !30
  %676 = ptrtoint ptr %661 to i64
  %677 = ptrtoint ptr %675 to i64
  %678 = sub i64 %676, %677
  %679 = sext i32 %674 to i64
  %680 = tail call ptr @Perl_safesysrealloc(ptr noundef %675, i64 noundef %679) #14
  store ptr %680, ptr %668, align 8, !tbaa !30
  store i64 %679, ptr %669, align 8, !tbaa !31
  %681 = shl i64 %678, 32
  %682 = ashr exact i64 %681, 32
  %683 = getelementptr inbounds i8, ptr %680, i64 %682
  store ptr %683, ptr %660, align 8, !tbaa !32
  %684 = getelementptr inbounds i8, ptr %680, i64 %679
  store ptr %684, ptr %664, align 8, !tbaa !33
  br label %685

685:                                              ; preds = %667, %659
  %686 = phi ptr [ %683, %667 ], [ %661, %659 ]
  %687 = load i32, ptr %197, align 4, !tbaa !28
  %688 = and i32 %687, 2098176
  %689 = icmp eq i32 %688, 1024
  br i1 %689, label %690, label %693

690:                                              ; preds = %685
  %691 = getelementptr inbounds %struct.sv, ptr %192, i64 0, i32 3
  %692 = load ptr, ptr %691, align 8, !tbaa !11
  br label %695

693:                                              ; preds = %685
  %694 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %192, ptr noundef null, i32 noundef 2) #14
  br label %695

695:                                              ; preds = %693, %690
  %696 = phi ptr [ %692, %690 ], [ %694, %693 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %686, ptr align 1 %696, i64 %662, i1 false)
  %697 = load ptr, ptr %660, align 8, !tbaa !32
  %698 = getelementptr inbounds i8, ptr %697, i64 %662
  store ptr %698, ptr %660, align 8, !tbaa !32
  br label %901

699:                                              ; preds = %656
  %700 = load i32, ptr %197, align 4, !tbaa !28
  %701 = and i32 %700, 2098176
  %702 = icmp eq i32 %701, 1024
  br i1 %702, label %703, label %706

703:                                              ; preds = %699
  %704 = getelementptr inbounds %struct.sv, ptr %192, i64 0, i32 3
  %705 = load ptr, ptr %704, align 8, !tbaa !11
  br label %708

706:                                              ; preds = %699
  %707 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %192, ptr noundef null, i32 noundef 2) #14
  br label %708

708:                                              ; preds = %706, %703
  %709 = phi ptr [ %705, %703 ], [ %707, %706 ]
  %710 = sext i32 %654 to i64
  %711 = tail call i64 @Perl_PerlIO_write(ptr noundef nonnull %657, ptr noundef %709, i64 noundef %710) #14
  %712 = icmp eq i64 %711, %710
  br i1 %712, label %901, label %907

713:                                              ; preds = %586
  %714 = load ptr, ptr %230, align 8, !tbaa !35
  %715 = icmp eq ptr %714, null
  br i1 %715, label %716, label %739

716:                                              ; preds = %713
  %717 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %718 = load ptr, ptr %717, align 8, !tbaa !32
  %719 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %720 = load ptr, ptr %719, align 8, !tbaa !33
  %721 = icmp ult ptr %718, %720
  br i1 %721, label %742, label %722

722:                                              ; preds = %716
  %723 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %724 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %725 = load i64, ptr %724, align 8, !tbaa !31
  %726 = load ptr, ptr %723, align 8, !tbaa !30
  %727 = ptrtoint ptr %718 to i64
  %728 = ptrtoint ptr %726 to i64
  %729 = sub i64 %727, %728
  %730 = shl i64 %725, 32
  %731 = and i64 %730, -35184372088832
  %732 = add i64 %731, 35184372088832
  %733 = ashr exact i64 %732, 32
  %734 = tail call ptr @Perl_safesysrealloc(ptr noundef %726, i64 noundef %733) #14
  store ptr %734, ptr %723, align 8, !tbaa !30
  store i64 %733, ptr %724, align 8, !tbaa !31
  %735 = shl i64 %729, 32
  %736 = ashr exact i64 %735, 32
  %737 = getelementptr inbounds i8, ptr %734, i64 %736
  %738 = getelementptr inbounds i8, ptr %734, i64 %733
  store ptr %738, ptr %719, align 8, !tbaa !33
  br label %742

739:                                              ; preds = %713
  %740 = tail call i32 @PerlIO_putc(ptr noundef nonnull %714, i32 noundef 1) #14
  %741 = icmp eq i32 %740, -1
  br i1 %741, label %907, label %745

742:                                              ; preds = %716, %722
  %743 = phi ptr [ %737, %722 ], [ %718, %716 ]
  %744 = getelementptr inbounds i8, ptr %743, i64 1
  store ptr %744, ptr %717, align 8, !tbaa !32
  store i8 1, ptr %743, align 1, !tbaa !11
  br label %745

745:                                              ; preds = %742, %739
  %746 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %747 = load i32, ptr %746, align 8, !tbaa !40
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %794, label %749

749:                                              ; preds = %745
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %750 = load i32, ptr %3, align 4, !tbaa !13
  %751 = tail call fastcc i32 @__bswap_32(i32 noundef %750) #15
  store i32 %751, ptr %5, align 4, !tbaa !13
  %752 = load ptr, ptr %230, align 8, !tbaa !35
  %753 = icmp eq ptr %752, null
  br i1 %753, label %754, label %789

754:                                              ; preds = %749
  %755 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %756 = load ptr, ptr %755, align 8, !tbaa !32
  %757 = getelementptr inbounds i8, ptr %756, i64 4
  %758 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %759 = load ptr, ptr %758, align 8, !tbaa !33
  %760 = icmp ugt ptr %757, %759
  br i1 %760, label %761, label %778

761:                                              ; preds = %754
  %762 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %763 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %764 = load i64, ptr %763, align 8, !tbaa !31
  %765 = load ptr, ptr %762, align 8, !tbaa !30
  %766 = ptrtoint ptr %756 to i64
  %767 = ptrtoint ptr %765 to i64
  %768 = sub i64 %766, %767
  %769 = shl i64 %764, 32
  %770 = add i64 %769, 35197256990720
  %771 = ashr exact i64 %770, 32
  %772 = and i64 %771, -8192
  %773 = tail call ptr @Perl_safesysrealloc(ptr noundef %765, i64 noundef %772) #14
  store ptr %773, ptr %762, align 8, !tbaa !30
  store i64 %772, ptr %763, align 8, !tbaa !31
  %774 = shl i64 %768, 32
  %775 = ashr exact i64 %774, 32
  %776 = getelementptr inbounds i8, ptr %773, i64 %775
  store ptr %776, ptr %755, align 8, !tbaa !32
  %777 = getelementptr inbounds i8, ptr %773, i64 %772
  store ptr %777, ptr %758, align 8, !tbaa !33
  br label %778

778:                                              ; preds = %761, %754
  %779 = phi ptr [ %776, %761 ], [ %756, %754 ]
  %780 = ptrtoint ptr %779 to i64
  %781 = and i64 %780, 3
  %782 = icmp eq i64 %781, 0
  br i1 %782, label %783, label %784

783:                                              ; preds = %778
  store i32 %751, ptr %779, align 4, !tbaa !13
  br label %786

784:                                              ; preds = %778
  store i32 %751, ptr %779, align 1
  %785 = load ptr, ptr %755, align 8, !tbaa !32
  br label %786

786:                                              ; preds = %784, %783
  %787 = phi ptr [ %785, %784 ], [ %779, %783 ]
  %788 = getelementptr inbounds i8, ptr %787, i64 4
  store ptr %788, ptr %755, align 8, !tbaa !32
  br label %792

789:                                              ; preds = %749
  %790 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %752, ptr noundef nonnull %5, i64 noundef 4) #14
  %791 = icmp eq i64 %790, 4
  br i1 %791, label %792, label %793

792:                                              ; preds = %789, %786
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %836

793:                                              ; preds = %789
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %907

794:                                              ; preds = %745
  %795 = load ptr, ptr %230, align 8, !tbaa !35
  %796 = icmp eq ptr %795, null
  br i1 %796, label %797, label %833

797:                                              ; preds = %794
  %798 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %799 = load ptr, ptr %798, align 8, !tbaa !32
  %800 = getelementptr inbounds i8, ptr %799, i64 4
  %801 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %802 = load ptr, ptr %801, align 8, !tbaa !33
  %803 = icmp ugt ptr %800, %802
  br i1 %803, label %804, label %821

804:                                              ; preds = %797
  %805 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %806 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %807 = load i64, ptr %806, align 8, !tbaa !31
  %808 = load ptr, ptr %805, align 8, !tbaa !30
  %809 = ptrtoint ptr %799 to i64
  %810 = ptrtoint ptr %808 to i64
  %811 = sub i64 %809, %810
  %812 = shl i64 %807, 32
  %813 = add i64 %812, 35197256990720
  %814 = ashr exact i64 %813, 32
  %815 = and i64 %814, -8192
  %816 = tail call ptr @Perl_safesysrealloc(ptr noundef %808, i64 noundef %815) #14
  store ptr %816, ptr %805, align 8, !tbaa !30
  store i64 %815, ptr %806, align 8, !tbaa !31
  %817 = shl i64 %811, 32
  %818 = ashr exact i64 %817, 32
  %819 = getelementptr inbounds i8, ptr %816, i64 %818
  store ptr %819, ptr %798, align 8, !tbaa !32
  %820 = getelementptr inbounds i8, ptr %816, i64 %815
  store ptr %820, ptr %801, align 8, !tbaa !33
  br label %821

821:                                              ; preds = %804, %797
  %822 = phi ptr [ %819, %804 ], [ %799, %797 ]
  %823 = ptrtoint ptr %822 to i64
  %824 = and i64 %823, 3
  %825 = icmp eq i64 %824, 0
  %826 = load i32, ptr %3, align 4
  br i1 %825, label %827, label %828

827:                                              ; preds = %821
  store i32 %826, ptr %822, align 4, !tbaa !13
  br label %830

828:                                              ; preds = %821
  store i32 %826, ptr %822, align 1
  %829 = load ptr, ptr %798, align 8, !tbaa !32
  br label %830

830:                                              ; preds = %828, %827
  %831 = phi ptr [ %829, %828 ], [ %822, %827 ]
  %832 = getelementptr inbounds i8, ptr %831, i64 4
  store ptr %832, ptr %798, align 8, !tbaa !32
  br label %836

833:                                              ; preds = %794
  %834 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %795, ptr noundef nonnull %3, i64 noundef 4) #14
  %835 = icmp eq i64 %834, 4
  br i1 %835, label %836, label %907

836:                                              ; preds = %792, %833, %830
  %837 = load ptr, ptr %230, align 8, !tbaa !35
  %838 = icmp eq ptr %837, null
  br i1 %838, label %839, label %884

839:                                              ; preds = %836
  %840 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %841 = load ptr, ptr %840, align 8, !tbaa !32
  %842 = load i32, ptr %3, align 4, !tbaa !13
  %843 = sext i32 %842 to i64
  %844 = getelementptr inbounds i8, ptr %841, i64 %843
  %845 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %846 = load ptr, ptr %845, align 8, !tbaa !33
  %847 = icmp ugt ptr %844, %846
  br i1 %847, label %848, label %866

848:                                              ; preds = %839
  %849 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %850 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %851 = load i64, ptr %850, align 8, !tbaa !31
  %852 = trunc i64 %851 to i32
  %853 = add i32 %842, 8191
  %854 = add i32 %853, %852
  %855 = and i32 %854, -8192
  %856 = load ptr, ptr %849, align 8, !tbaa !30
  %857 = ptrtoint ptr %841 to i64
  %858 = ptrtoint ptr %856 to i64
  %859 = sub i64 %857, %858
  %860 = sext i32 %855 to i64
  %861 = call ptr @Perl_safesysrealloc(ptr noundef %856, i64 noundef %860) #14
  store ptr %861, ptr %849, align 8, !tbaa !30
  store i64 %860, ptr %850, align 8, !tbaa !31
  %862 = shl i64 %859, 32
  %863 = ashr exact i64 %862, 32
  %864 = getelementptr inbounds i8, ptr %861, i64 %863
  store ptr %864, ptr %840, align 8, !tbaa !32
  %865 = getelementptr inbounds i8, ptr %861, i64 %860
  store ptr %865, ptr %845, align 8, !tbaa !33
  br label %866

866:                                              ; preds = %848, %839
  %867 = phi ptr [ %864, %848 ], [ %841, %839 ]
  %868 = load i32, ptr %197, align 4, !tbaa !28
  %869 = and i32 %868, 2098176
  %870 = icmp eq i32 %869, 1024
  br i1 %870, label %871, label %874

871:                                              ; preds = %866
  %872 = getelementptr inbounds %struct.sv, ptr %192, i64 0, i32 3
  %873 = load ptr, ptr %872, align 8, !tbaa !11
  br label %876

874:                                              ; preds = %866
  %875 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %192, ptr noundef null, i32 noundef 2) #14
  br label %876

876:                                              ; preds = %874, %871
  %877 = phi ptr [ %873, %871 ], [ %875, %874 ]
  %878 = load i32, ptr %3, align 4, !tbaa !13
  %879 = sext i32 %878 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %867, ptr align 1 %877, i64 %879, i1 false)
  %880 = load i32, ptr %3, align 4, !tbaa !13
  %881 = load ptr, ptr %840, align 8, !tbaa !32
  %882 = sext i32 %880 to i64
  %883 = getelementptr inbounds i8, ptr %881, i64 %882
  store ptr %883, ptr %840, align 8, !tbaa !32
  br label %901

884:                                              ; preds = %836
  %885 = load i32, ptr %197, align 4, !tbaa !28
  %886 = and i32 %885, 2098176
  %887 = icmp eq i32 %886, 1024
  br i1 %887, label %888, label %891

888:                                              ; preds = %884
  %889 = getelementptr inbounds %struct.sv, ptr %192, i64 0, i32 3
  %890 = load ptr, ptr %889, align 8, !tbaa !11
  br label %893

891:                                              ; preds = %884
  %892 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %192, ptr noundef null, i32 noundef 2) #14
  br label %893

893:                                              ; preds = %891, %888
  %894 = phi ptr [ %890, %888 ], [ %892, %891 ]
  %895 = load i32, ptr %3, align 4, !tbaa !13
  %896 = sext i32 %895 to i64
  %897 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %837, ptr noundef %894, i64 noundef %896) #14
  %898 = load i32, ptr %3, align 4, !tbaa !13
  %899 = sext i32 %898 to i64
  %900 = icmp eq i64 %897, %899
  br i1 %900, label %901, label %907

901:                                              ; preds = %653, %708, %695, %338, %393, %380, %893, %876, %578, %561
  %902 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !39
  %903 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !39
  %904 = icmp sgt i64 %902, %903
  br i1 %904, label %905, label %906

905:                                              ; preds = %901
  call void @Perl_free_tmps() #14
  br label %906

906:                                              ; preds = %905, %901
  call void @Perl_pop_scope() #14
  br label %907

907:                                              ; preds = %893, %833, %793, %739, %614, %646, %708, %578, %518, %478, %424, %299, %331, %393, %256, %906, %110
  %908 = phi i32 [ %111, %110 ], [ 0, %906 ], [ -1, %478 ], [ -1, %793 ], [ -1, %256 ], [ -1, %393 ], [ -1, %331 ], [ -1, %299 ], [ -1, %424 ], [ -1, %518 ], [ -1, %578 ], [ -1, %708 ], [ -1, %646 ], [ -1, %614 ], [ -1, %739 ], [ -1, %833 ], [ -1, %893 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %908
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @store_other(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [80 x i8], align 16
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #16
  %6 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 14
  %7 = load i32, ptr %6, align 8, !tbaa !25
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %110, label %9

9:                                                ; preds = %2
  %10 = icmp slt i32 %7, 0
  br i1 %10, label %11, label %114

11:                                               ; preds = %9
  %12 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %109, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %16 = getelementptr inbounds %struct.sv, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !28
  %18 = and i32 %17, 2097152
  %19 = icmp eq i32 %18, 0
  %20 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  br i1 %19, label %24, label %21

21:                                               ; preds = %14
  %22 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %20, i32 noundef 2) #14
  %23 = zext i1 %22 to i32
  store i32 %23, ptr %6, align 8, !tbaa !25
  br i1 %22, label %114, label %110

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !28
  %27 = and i32 %26, 65280
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %31 = getelementptr inbounds %struct.sv, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !28
  %33 = and i32 %32, 255
  %34 = icmp eq i32 %33, 8
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %37 = getelementptr inbounds %struct.sv, ptr %36, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !28
  %39 = and i32 %38, 16826623
  %40 = icmp eq i32 %39, 16777226
  br i1 %40, label %41, label %109

41:                                               ; preds = %35, %29, %24
  %42 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %43 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !28
  %45 = and i32 %44, 1024
  %46 = icmp eq i32 %45, 0
  %47 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  br i1 %46, label %70, label %48

48:                                               ; preds = %41
  %49 = load ptr, ptr %47, align 8, !tbaa !55
  %50 = icmp eq ptr %49, null
  br i1 %50, label %109, label %51

51:                                               ; preds = %48
  %52 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %53 = load ptr, ptr %52, align 8, !tbaa !55
  %54 = getelementptr inbounds %struct.xpv, ptr %53, i64 0, i32 2
  %55 = load i64, ptr %54, align 8, !tbaa !74
  %56 = icmp ugt i64 %55, 1
  br i1 %56, label %113, label %57

57:                                               ; preds = %51
  %58 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %59 = load ptr, ptr %58, align 8, !tbaa !55
  %60 = getelementptr inbounds %struct.xpv, ptr %59, i64 0, i32 2
  %61 = load i64, ptr %60, align 8, !tbaa !74
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %109, label %63

63:                                               ; preds = %57
  %64 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %65 = getelementptr inbounds %struct.sv, ptr %64, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !11
  %67 = load i8, ptr %66, align 1, !tbaa !11
  %68 = icmp ne i8 %67, 48
  %69 = zext i1 %68 to i32
  store i32 %69, ptr %6, align 8, !tbaa !25
  br i1 %68, label %114, label %110

70:                                               ; preds = %41
  %71 = getelementptr inbounds %struct.sv, ptr %47, i64 0, i32 2
  %72 = load i32, ptr %71, align 4, !tbaa !28
  %73 = and i32 %72, 768
  %74 = icmp eq i32 %73, 0
  %75 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  br i1 %74, label %99, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.sv, ptr %75, i64 0, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !28
  %79 = and i32 %78, 256
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %83 = load ptr, ptr %82, align 8, !tbaa !55
  %84 = getelementptr inbounds %struct.xpviv, ptr %83, i64 0, i32 4
  %85 = load i64, ptr %84, align 8, !tbaa !11
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %113

87:                                               ; preds = %81, %76
  %88 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %89 = getelementptr inbounds %struct.sv, ptr %88, i64 0, i32 2
  %90 = load i32, ptr %89, align 4, !tbaa !28
  %91 = and i32 %90, 512
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %109, label %93

93:                                               ; preds = %87
  %94 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %95 = load ptr, ptr %94, align 8, !tbaa !55
  %96 = getelementptr inbounds %struct.xpvnv, ptr %95, i64 0, i32 5
  %97 = load double, ptr %96, align 8, !tbaa !11
  %98 = fcmp uno double %97, 0.000000e+00
  br i1 %98, label %113, label %102

99:                                               ; preds = %70
  %100 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %75, i32 noundef 0) #14
  %101 = zext i1 %100 to i32
  store i32 %101, ptr %6, align 8, !tbaa !25
  br i1 %100, label %114, label %110

102:                                              ; preds = %93
  %103 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %104 = load ptr, ptr %103, align 8, !tbaa !55
  %105 = getelementptr inbounds %struct.xpvnv, ptr %104, i64 0, i32 5
  %106 = load double, ptr %105, align 8, !tbaa !11
  %107 = fcmp une double %106, 0.000000e+00
  %108 = zext i1 %107 to i32
  store i32 %108, ptr %6, align 8, !tbaa !25
  br i1 %107, label %114, label %110

109:                                              ; preds = %87, %57, %48, %35, %11
  store i32 0, ptr %6, align 8, !tbaa !25
  br label %110

110:                                              ; preds = %63, %99, %21, %109, %2, %102
  %111 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %111, align 8, !tbaa !27
  %112 = tail call ptr @Perl_sv_reftype(ptr noundef %1, i32 noundef 0) #14
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.50, ptr noundef %112) #14
  br label %114

113:                                              ; preds = %93, %81, %51
  store i32 1, ptr %6, align 8, !tbaa !25
  br label %114

114:                                              ; preds = %63, %99, %21, %113, %110, %102, %9
  %115 = tail call ptr @Perl_sv_reftype(ptr noundef %1, i32 noundef 0) #14
  %116 = ptrtoint ptr %1 to i64
  tail call void (ptr, ...) @Perl_warn(ptr noundef nonnull @.str.51, ptr noundef %115, i64 noundef %116) #14
  %117 = tail call ptr @Perl_sv_reftype(ptr noundef %1, i32 noundef 0) #14
  %118 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.52, ptr noundef %117, i64 noundef %116, i32 noundef 0) #14
  %119 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #17
  %120 = trunc i64 %119 to i32
  store i32 %120, ptr %3, align 4, !tbaa !13
  %121 = icmp slt i32 %120, 256
  br i1 %121, label %122, label %230

122:                                              ; preds = %114
  %123 = trunc i64 %119 to i8
  %124 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %125 = load ptr, ptr %124, align 8, !tbaa !35
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %150

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !32
  %130 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !33
  %132 = icmp ult ptr %129, %131
  br i1 %132, label %153, label %133

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %135 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %136 = load i64, ptr %135, align 8, !tbaa !31
  %137 = load ptr, ptr %134, align 8, !tbaa !30
  %138 = ptrtoint ptr %129 to i64
  %139 = ptrtoint ptr %137 to i64
  %140 = sub i64 %138, %139
  %141 = shl i64 %136, 32
  %142 = and i64 %141, -35184372088832
  %143 = add i64 %142, 35184372088832
  %144 = ashr exact i64 %143, 32
  %145 = tail call ptr @Perl_safesysrealloc(ptr noundef %137, i64 noundef %144) #14
  store ptr %145, ptr %134, align 8, !tbaa !30
  store i64 %144, ptr %135, align 8, !tbaa !31
  %146 = shl i64 %140, 32
  %147 = ashr exact i64 %146, 32
  %148 = getelementptr inbounds i8, ptr %145, i64 %147
  %149 = getelementptr inbounds i8, ptr %145, i64 %144
  store ptr %149, ptr %130, align 8, !tbaa !33
  br label %153

150:                                              ; preds = %122
  %151 = tail call i32 @PerlIO_putc(ptr noundef nonnull %125, i32 noundef 10) #14
  %152 = icmp eq i32 %151, -1
  br i1 %152, label %399, label %156

153:                                              ; preds = %127, %133
  %154 = phi ptr [ %148, %133 ], [ %129, %127 ]
  %155 = getelementptr inbounds i8, ptr %154, i64 1
  store ptr %155, ptr %128, align 8, !tbaa !32
  store i8 10, ptr %154, align 1, !tbaa !11
  br label %156

156:                                              ; preds = %153, %150
  %157 = load ptr, ptr %124, align 8, !tbaa !35
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %182

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %161 = load ptr, ptr %160, align 8, !tbaa !32
  %162 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !33
  %164 = icmp ult ptr %161, %163
  br i1 %164, label %186, label %165

165:                                              ; preds = %159
  %166 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %167 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %168 = load i64, ptr %167, align 8, !tbaa !31
  %169 = load ptr, ptr %166, align 8, !tbaa !30
  %170 = ptrtoint ptr %161 to i64
  %171 = ptrtoint ptr %169 to i64
  %172 = sub i64 %170, %171
  %173 = shl i64 %168, 32
  %174 = and i64 %173, -35184372088832
  %175 = add i64 %174, 35184372088832
  %176 = ashr exact i64 %175, 32
  %177 = tail call ptr @Perl_safesysrealloc(ptr noundef %169, i64 noundef %176) #14
  store ptr %177, ptr %166, align 8, !tbaa !30
  store i64 %176, ptr %167, align 8, !tbaa !31
  %178 = shl i64 %172, 32
  %179 = ashr exact i64 %178, 32
  %180 = getelementptr inbounds i8, ptr %177, i64 %179
  %181 = getelementptr inbounds i8, ptr %177, i64 %176
  store ptr %181, ptr %162, align 8, !tbaa !33
  br label %186

182:                                              ; preds = %156
  %183 = and i32 %120, 255
  %184 = tail call i32 @PerlIO_putc(ptr noundef nonnull %157, i32 noundef %183) #14
  %185 = icmp eq i32 %184, -1
  br i1 %185, label %399, label %189

186:                                              ; preds = %159, %165
  %187 = phi ptr [ %180, %165 ], [ %161, %159 ]
  %188 = getelementptr inbounds i8, ptr %187, i64 1
  store ptr %188, ptr %160, align 8, !tbaa !32
  store i8 %123, ptr %187, align 1, !tbaa !11
  br label %189

189:                                              ; preds = %186, %182
  %190 = icmp eq i32 %120, 0
  br i1 %190, label %398, label %191

191:                                              ; preds = %189
  %192 = load ptr, ptr %124, align 8, !tbaa !35
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %225

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !32
  %197 = shl i64 %119, 32
  %198 = ashr exact i64 %197, 32
  %199 = getelementptr inbounds i8, ptr %196, i64 %198
  %200 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %201 = load ptr, ptr %200, align 8, !tbaa !33
  %202 = icmp ugt ptr %199, %201
  br i1 %202, label %203, label %221

203:                                              ; preds = %194
  %204 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %205 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %206 = load i64, ptr %205, align 8, !tbaa !31
  %207 = add i64 %119, 8191
  %208 = add i64 %207, %206
  %209 = load ptr, ptr %204, align 8, !tbaa !30
  %210 = ptrtoint ptr %196 to i64
  %211 = ptrtoint ptr %209 to i64
  %212 = sub i64 %210, %211
  %213 = shl i64 %208, 32
  %214 = ashr exact i64 %213, 32
  %215 = and i64 %214, -8192
  %216 = tail call ptr @Perl_safesysrealloc(ptr noundef %209, i64 noundef %215) #14
  store ptr %216, ptr %204, align 8, !tbaa !30
  store i64 %215, ptr %205, align 8, !tbaa !31
  %217 = shl i64 %212, 32
  %218 = ashr exact i64 %217, 32
  %219 = getelementptr inbounds i8, ptr %216, i64 %218
  store ptr %219, ptr %195, align 8, !tbaa !32
  %220 = getelementptr inbounds i8, ptr %216, i64 %215
  store ptr %220, ptr %200, align 8, !tbaa !33
  br label %221

221:                                              ; preds = %203, %194
  %222 = phi ptr [ %219, %203 ], [ %196, %194 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %222, ptr nonnull align 16 %4, i64 %198, i1 false)
  %223 = load ptr, ptr %195, align 8, !tbaa !32
  %224 = getelementptr inbounds i8, ptr %223, i64 %198
  store ptr %224, ptr %195, align 8, !tbaa !32
  br label %398

225:                                              ; preds = %191
  %226 = shl i64 %119, 32
  %227 = ashr exact i64 %226, 32
  %228 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %192, ptr noundef nonnull %4, i64 noundef %227) #14
  %229 = icmp eq i64 %228, %227
  br i1 %229, label %398, label %399

230:                                              ; preds = %114
  %231 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %232 = load ptr, ptr %231, align 8, !tbaa !35
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %257

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !32
  %237 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %238 = load ptr, ptr %237, align 8, !tbaa !33
  %239 = icmp ult ptr %236, %238
  br i1 %239, label %260, label %240

240:                                              ; preds = %234
  %241 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %242 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %243 = load i64, ptr %242, align 8, !tbaa !31
  %244 = load ptr, ptr %241, align 8, !tbaa !30
  %245 = ptrtoint ptr %236 to i64
  %246 = ptrtoint ptr %244 to i64
  %247 = sub i64 %245, %246
  %248 = shl i64 %243, 32
  %249 = and i64 %248, -35184372088832
  %250 = add i64 %249, 35184372088832
  %251 = ashr exact i64 %250, 32
  %252 = tail call ptr @Perl_safesysrealloc(ptr noundef %244, i64 noundef %251) #14
  store ptr %252, ptr %241, align 8, !tbaa !30
  store i64 %251, ptr %242, align 8, !tbaa !31
  %253 = shl i64 %247, 32
  %254 = ashr exact i64 %253, 32
  %255 = getelementptr inbounds i8, ptr %252, i64 %254
  %256 = getelementptr inbounds i8, ptr %252, i64 %251
  store ptr %256, ptr %237, align 8, !tbaa !33
  br label %260

257:                                              ; preds = %230
  %258 = tail call i32 @PerlIO_putc(ptr noundef nonnull %232, i32 noundef 1) #14
  %259 = icmp eq i32 %258, -1
  br i1 %259, label %399, label %263

260:                                              ; preds = %234, %240
  %261 = phi ptr [ %255, %240 ], [ %236, %234 ]
  %262 = getelementptr inbounds i8, ptr %261, i64 1
  store ptr %262, ptr %235, align 8, !tbaa !32
  store i8 1, ptr %261, align 1, !tbaa !11
  br label %263

263:                                              ; preds = %260, %257
  %264 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %265 = load i32, ptr %264, align 8, !tbaa !40
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %311, label %267

267:                                              ; preds = %263
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %268 = tail call fastcc i32 @__bswap_32(i32 noundef %120) #15
  store i32 %268, ptr %5, align 4, !tbaa !13
  %269 = load ptr, ptr %231, align 8, !tbaa !35
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %306

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %273 = load ptr, ptr %272, align 8, !tbaa !32
  %274 = getelementptr inbounds i8, ptr %273, i64 4
  %275 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %276 = load ptr, ptr %275, align 8, !tbaa !33
  %277 = icmp ugt ptr %274, %276
  br i1 %277, label %278, label %295

278:                                              ; preds = %271
  %279 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %280 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %281 = load i64, ptr %280, align 8, !tbaa !31
  %282 = load ptr, ptr %279, align 8, !tbaa !30
  %283 = ptrtoint ptr %273 to i64
  %284 = ptrtoint ptr %282 to i64
  %285 = sub i64 %283, %284
  %286 = shl i64 %281, 32
  %287 = add i64 %286, 35197256990720
  %288 = ashr exact i64 %287, 32
  %289 = and i64 %288, -8192
  %290 = tail call ptr @Perl_safesysrealloc(ptr noundef %282, i64 noundef %289) #14
  store ptr %290, ptr %279, align 8, !tbaa !30
  store i64 %289, ptr %280, align 8, !tbaa !31
  %291 = shl i64 %285, 32
  %292 = ashr exact i64 %291, 32
  %293 = getelementptr inbounds i8, ptr %290, i64 %292
  store ptr %293, ptr %272, align 8, !tbaa !32
  %294 = getelementptr inbounds i8, ptr %290, i64 %289
  store ptr %294, ptr %275, align 8, !tbaa !33
  br label %295

295:                                              ; preds = %278, %271
  %296 = phi ptr [ %293, %278 ], [ %273, %271 ]
  %297 = ptrtoint ptr %296 to i64
  %298 = and i64 %297, 3
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %295
  store i32 %268, ptr %296, align 4, !tbaa !13
  br label %303

301:                                              ; preds = %295
  store i32 %268, ptr %296, align 1
  %302 = load ptr, ptr %272, align 8, !tbaa !32
  br label %303

303:                                              ; preds = %301, %300
  %304 = phi ptr [ %302, %301 ], [ %296, %300 ]
  %305 = getelementptr inbounds i8, ptr %304, i64 4
  store ptr %305, ptr %272, align 8, !tbaa !32
  br label %309

306:                                              ; preds = %267
  %307 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %269, ptr noundef nonnull %5, i64 noundef 4) #14
  %308 = icmp eq i64 %307, 4
  br i1 %308, label %309, label %310

309:                                              ; preds = %306, %303
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %352

310:                                              ; preds = %306
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %399

311:                                              ; preds = %263
  %312 = load ptr, ptr %231, align 8, !tbaa !35
  %313 = icmp eq ptr %312, null
  br i1 %313, label %314, label %349

314:                                              ; preds = %311
  %315 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %316 = load ptr, ptr %315, align 8, !tbaa !32
  %317 = getelementptr inbounds i8, ptr %316, i64 4
  %318 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %319 = load ptr, ptr %318, align 8, !tbaa !33
  %320 = icmp ugt ptr %317, %319
  br i1 %320, label %321, label %338

321:                                              ; preds = %314
  %322 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %323 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %324 = load i64, ptr %323, align 8, !tbaa !31
  %325 = load ptr, ptr %322, align 8, !tbaa !30
  %326 = ptrtoint ptr %316 to i64
  %327 = ptrtoint ptr %325 to i64
  %328 = sub i64 %326, %327
  %329 = shl i64 %324, 32
  %330 = add i64 %329, 35197256990720
  %331 = ashr exact i64 %330, 32
  %332 = and i64 %331, -8192
  %333 = tail call ptr @Perl_safesysrealloc(ptr noundef %325, i64 noundef %332) #14
  store ptr %333, ptr %322, align 8, !tbaa !30
  store i64 %332, ptr %323, align 8, !tbaa !31
  %334 = shl i64 %328, 32
  %335 = ashr exact i64 %334, 32
  %336 = getelementptr inbounds i8, ptr %333, i64 %335
  store ptr %336, ptr %315, align 8, !tbaa !32
  %337 = getelementptr inbounds i8, ptr %333, i64 %332
  store ptr %337, ptr %318, align 8, !tbaa !33
  br label %338

338:                                              ; preds = %321, %314
  %339 = phi ptr [ %336, %321 ], [ %316, %314 ]
  %340 = ptrtoint ptr %339 to i64
  %341 = and i64 %340, 3
  %342 = icmp eq i64 %341, 0
  br i1 %342, label %343, label %344

343:                                              ; preds = %338
  store i32 %120, ptr %339, align 4, !tbaa !13
  br label %346

344:                                              ; preds = %338
  store i32 %120, ptr %339, align 1
  %345 = load ptr, ptr %315, align 8, !tbaa !32
  br label %346

346:                                              ; preds = %344, %343
  %347 = phi ptr [ %345, %344 ], [ %339, %343 ]
  %348 = getelementptr inbounds i8, ptr %347, i64 4
  store ptr %348, ptr %315, align 8, !tbaa !32
  br label %352

349:                                              ; preds = %311
  %350 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %312, ptr noundef nonnull %3, i64 noundef 4) #14
  %351 = icmp eq i64 %350, 4
  br i1 %351, label %352, label %399

352:                                              ; preds = %309, %349, %346
  %353 = load ptr, ptr %231, align 8, !tbaa !35
  %354 = icmp eq ptr %353, null
  br i1 %354, label %355, label %391

355:                                              ; preds = %352
  %356 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %357 = load ptr, ptr %356, align 8, !tbaa !32
  %358 = load i32, ptr %3, align 4, !tbaa !13
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i8, ptr %357, i64 %359
  %361 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %362 = load ptr, ptr %361, align 8, !tbaa !33
  %363 = icmp ugt ptr %360, %362
  br i1 %363, label %364, label %384

364:                                              ; preds = %355
  %365 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22
  %366 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 1
  %367 = load i64, ptr %366, align 8, !tbaa !31
  %368 = trunc i64 %367 to i32
  %369 = add i32 %358, 8191
  %370 = add i32 %369, %368
  %371 = and i32 %370, -8192
  %372 = load ptr, ptr %365, align 8, !tbaa !30
  %373 = ptrtoint ptr %357 to i64
  %374 = ptrtoint ptr %372 to i64
  %375 = sub i64 %373, %374
  %376 = sext i32 %371 to i64
  %377 = call ptr @Perl_safesysrealloc(ptr noundef %372, i64 noundef %376) #14
  store ptr %377, ptr %365, align 8, !tbaa !30
  store i64 %376, ptr %366, align 8, !tbaa !31
  %378 = shl i64 %375, 32
  %379 = ashr exact i64 %378, 32
  %380 = getelementptr inbounds i8, ptr %377, i64 %379
  store ptr %380, ptr %356, align 8, !tbaa !32
  %381 = getelementptr inbounds i8, ptr %377, i64 %376
  store ptr %381, ptr %361, align 8, !tbaa !33
  %382 = load i32, ptr %3, align 4, !tbaa !13
  %383 = sext i32 %382 to i64
  br label %384

384:                                              ; preds = %364, %355
  %385 = phi i64 [ %383, %364 ], [ %359, %355 ]
  %386 = phi ptr [ %380, %364 ], [ %357, %355 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %386, ptr nonnull align 16 %4, i64 %385, i1 false)
  %387 = load i32, ptr %3, align 4, !tbaa !13
  %388 = load ptr, ptr %356, align 8, !tbaa !32
  %389 = sext i32 %387 to i64
  %390 = getelementptr inbounds i8, ptr %388, i64 %389
  store ptr %390, ptr %356, align 8, !tbaa !32
  br label %398

391:                                              ; preds = %352
  %392 = load i32, ptr %3, align 4, !tbaa !13
  %393 = sext i32 %392 to i64
  %394 = call i64 @Perl_PerlIO_write(ptr noundef nonnull %353, ptr noundef nonnull %4, i64 noundef %393) #14
  %395 = load i32, ptr %3, align 4, !tbaa !13
  %396 = sext i32 %395 to i64
  %397 = icmp eq i64 %394, %396
  br i1 %397, label %398, label %399

398:                                              ; preds = %189, %225, %221, %384, %391
  br label %399

399:                                              ; preds = %391, %349, %310, %257, %150, %182, %225, %398
  %400 = phi i32 [ 0, %398 ], [ -1, %310 ], [ -1, %225 ], [ -1, %182 ], [ -1, %150 ], [ -1, %257 ], [ -1, %349 ], [ -1, %391 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %400
}

; Function Attrs: optsize
declare i32 @Perl_Gv_AMupdate(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_2iv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_sv_2uv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare double @Perl_sv_2nv_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_reftype(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @Perl_av_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_av_fetch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_hv_iterinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_get_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_2bool_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_iternext_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_iterkeysv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sortsv(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_sv_cmp(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare i32 @Perl_hv_placeholders_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_av_shift(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_common(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_bytes_from_utf8(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_hv_iterval(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_hv_riter_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_hv_eiter_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_load_module(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvn(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVnv(double noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_newSVpvn_flags(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_call_method(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_warn(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @Perl_newSVpv(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_ptr_table_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @pretrieve(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @do_retrieve(ptr noundef %0, ptr noundef null, i32 noundef 0) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @do_retrieve(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = load ptr, ptr @Context_ptr, align 8, !tbaa !12
  %8 = or i32 %2, 2
  %9 = getelementptr inbounds %struct.stcxt, ptr %7, i64 0, i32 19
  %10 = load i32, ptr %9, align 8, !tbaa !27
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call fastcc void @clean_context(ptr noundef nonnull %7) #15
  br label %13

13:                                               ; preds = %12, %3
  %14 = load i32, ptr %7, align 8, !tbaa !20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = tail call fastcc ptr @allocate_context(ptr noundef nonnull %7) #15
  %18 = load i32, ptr %17, align 8, !tbaa !20
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i32 [ %18, %16 ], [ 0, %13 ]
  %21 = phi ptr [ %17, %16 ], [ %7, %13 ]
  %22 = add nsw i32 %20, 1
  store i32 %22, ptr %21, align 8, !tbaa !20
  %23 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 21
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = tail call ptr @Perl_safesysmalloc(i64 noundef 128) #14
  store ptr %27, ptr %23, align 8, !tbaa !64
  %28 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 21, i32 1
  store i64 128, ptr %28, align 8, !tbaa !105
  br label %29

29:                                               ; preds = %26, %19
  %30 = icmp eq ptr %0, null
  %31 = icmp ne ptr %1, null
  %32 = and i1 %30, %31
  br i1 %32, label %33, label %114

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !28
  %36 = and i32 %35, 536870912
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %81, label %38

38:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %39 = and i32 %35, 2098176
  %40 = icmp eq i32 %39, 1024
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load ptr, ptr %1, align 8, !tbaa !55
  %43 = getelementptr inbounds %struct.xpv, ptr %42, i64 0, i32 2
  %44 = load i64, ptr %43, align 8, !tbaa !74
  store i64 %44, ptr %4, align 8, !tbaa !39
  %45 = getelementptr inbounds %struct.sv, ptr %1, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !11
  br label %50

47:                                               ; preds = %38
  %48 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %1, ptr noundef nonnull %4, i32 noundef 2) #14
  %49 = load i64, ptr %4, align 8, !tbaa !39
  br label %50

50:                                               ; preds = %47, %41
  %51 = phi i64 [ %44, %41 ], [ %49, %47 ]
  %52 = phi ptr [ %46, %41 ], [ %48, %47 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %53 = add i64 %51, 1
  store i64 %53, ptr %5, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  store i8 1, ptr %6, align 1, !tbaa !97
  %54 = call ptr @Perl_bytes_from_utf8(ptr noundef %52, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  %55 = load i8, ptr %6, align 1, !tbaa !97, !range !106, !noundef !67
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 19
  store i32 1, ptr %58, align 8, !tbaa !27
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.55) #14
  br label %59

59:                                               ; preds = %57, %50
  %60 = icmp eq ptr %54, %52
  br i1 %60, label %79, label %61

61:                                               ; preds = %59
  %62 = call ptr @Perl_sv_newmortal() #14
  %63 = getelementptr inbounds %struct.sv, ptr %62, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !28
  %65 = and i32 %64, 255
  %66 = icmp ugt i32 %65, 2
  br i1 %66, label %69, label %67

67:                                               ; preds = %61
  call void @Perl_sv_upgrade(ptr noundef nonnull %62, i32 noundef 3) #14
  %68 = load i32, ptr %63, align 4, !tbaa !28
  br label %69

69:                                               ; preds = %67, %61
  %70 = phi i32 [ %68, %67 ], [ %64, %61 ]
  %71 = or i32 %70, 17408
  store i32 %71, ptr %63, align 4, !tbaa !28
  %72 = getelementptr inbounds %struct.sv, ptr %62, i64 0, i32 3
  store ptr %54, ptr %72, align 8, !tbaa !11
  %73 = load i64, ptr %5, align 8, !tbaa !39
  %74 = load ptr, ptr %62, align 8, !tbaa !55
  %75 = getelementptr inbounds %struct.xpv, ptr %74, i64 0, i32 3
  store i64 %73, ptr %75, align 8, !tbaa !11
  %76 = add i64 %73, -1
  %77 = load ptr, ptr %62, align 8, !tbaa !55
  %78 = getelementptr inbounds %struct.xpv, ptr %77, i64 0, i32 2
  store i64 %76, ptr %78, align 8, !tbaa !74
  br label %79

79:                                               ; preds = %69, %59
  %80 = phi ptr [ %62, %69 ], [ %1, %59 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %81

81:                                               ; preds = %33, %79
  %82 = phi ptr [ %80, %79 ], [ %1, %33 ]
  %83 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 20
  store i32 1, ptr %83, align 4, !tbaa !37
  %84 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 23
  %85 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %84, ptr noundef nonnull align 8 dereferenceable(32) %85, i64 32, i1 false), !tbaa.struct !38
  %86 = getelementptr inbounds %struct.sv, ptr %82, i64 0, i32 2
  %87 = load i32, ptr %86, align 4, !tbaa !28
  %88 = and i32 %87, 16384
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 19
  store i32 1, ptr %91, align 8, !tbaa !27
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.56) #14
  %92 = load i32, ptr %86, align 4, !tbaa !28
  br label %93

93:                                               ; preds = %90, %81
  %94 = phi i32 [ %92, %90 ], [ %87, %81 ]
  %95 = and i32 %94, 2098176
  %96 = icmp eq i32 %95, 1024
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load ptr, ptr %82, align 8, !tbaa !55
  %99 = getelementptr inbounds %struct.xpv, ptr %98, i64 0, i32 2
  %100 = load i64, ptr %99, align 8, !tbaa !74
  %101 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 22, i32 1
  store i64 %100, ptr %101, align 8, !tbaa !31
  %102 = getelementptr inbounds %struct.sv, ptr %82, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !11
  br label %108

104:                                              ; preds = %93
  %105 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 22, i32 1
  %106 = call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %82, ptr noundef nonnull %105, i32 noundef 2) #14
  %107 = load i64, ptr %105, align 8, !tbaa !31
  br label %108

108:                                              ; preds = %104, %97
  %109 = phi i64 [ %100, %97 ], [ %107, %104 ]
  %110 = phi ptr [ %103, %97 ], [ %106, %104 ]
  store ptr %110, ptr %85, align 8, !tbaa !30
  %111 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 22, i32 2
  store ptr %110, ptr %111, align 8, !tbaa !32
  %112 = getelementptr inbounds i8, ptr %110, i64 %109
  %113 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 22, i32 3
  store ptr %112, ptr %113, align 8, !tbaa !33
  br label %114

114:                                              ; preds = %108, %29
  %115 = phi ptr [ %82, %108 ], [ %1, %29 ]
  %116 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 24
  store ptr %0, ptr %116, align 8, !tbaa !35
  %117 = call fastcc ptr @magic_check(ptr noundef nonnull %21) #15
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 19
  store i32 1, ptr %120, align 8, !tbaa !27
  %121 = load ptr, ptr %116, align 8, !tbaa !35
  %122 = icmp eq ptr %121, null
  %123 = select i1 %122, ptr @.str.59, ptr @.str.58
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.57, ptr noundef nonnull %123) #14
  br label %124

124:                                              ; preds = %119, %114
  br i1 %30, label %125, label %138

125:                                              ; preds = %124
  %126 = icmp eq ptr %115, null
  br i1 %126, label %135, label %127

127:                                              ; preds = %125
  %128 = getelementptr inbounds %struct.sv, ptr %115, i64 0, i32 2
  %129 = load i32, ptr %128, align 4, !tbaa !28
  %130 = and i32 %129, 14680064
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %138, label %132

132:                                              ; preds = %127
  %133 = call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %115) #14
  %134 = zext i1 %133 to i32
  br label %138

135:                                              ; preds = %125
  %136 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 13
  %137 = load i32, ptr %136, align 4, !tbaa !107
  br label %138

138:                                              ; preds = %127, %132, %135, %124
  %139 = phi i32 [ 1, %124 ], [ %137, %135 ], [ 0, %127 ], [ %134, %132 ]
  call fastcc void @init_retrieve_context(ptr noundef nonnull %21, i32 noundef %8, i32 noundef %139) #15
  %140 = call fastcc ptr @retrieve(ptr noundef nonnull %21, ptr noundef null) #15
  %141 = icmp ne ptr %115, null
  %142 = and i1 %30, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 20
  store i32 0, ptr %144, align 4, !tbaa !37
  %145 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 22
  %146 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %145, ptr noundef nonnull align 8 dereferenceable(32) %146, i64 32, i1 false), !tbaa.struct !38
  br label %147

147:                                              ; preds = %143, %138
  %148 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !45
  %150 = icmp eq ptr %149, null
  call fastcc void @clean_retrieve_context(ptr noundef nonnull %21) #15
  %151 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 28
  %152 = load ptr, ptr %151, align 8, !tbaa !36
  %153 = icmp eq ptr %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %147
  call fastcc void @free_context(ptr noundef nonnull %21) #15
  br label %155

155:                                              ; preds = %154, %147
  %156 = icmp eq ptr %140, null
  br i1 %156, label %213, label %157

157:                                              ; preds = %155
  br i1 %150, label %170, label %158

158:                                              ; preds = %157
  %159 = call fastcc i32 @sv_type(ptr noundef nonnull %140) #15, !range !54
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.sv, ptr %140, i64 0, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !11
  %164 = icmp eq ptr %163, null
  br i1 %164, label %170, label %165

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.sv, ptr %163, i64 0, i32 2
  %167 = load i32, ptr %166, align 4, !tbaa !28
  %168 = and i32 %167, 1048576
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %213

170:                                              ; preds = %158, %161, %165, %157
  %171 = getelementptr inbounds %struct.sv, ptr %140, i64 0, i32 2
  %172 = load i32, ptr %171, align 4, !tbaa !28
  %173 = and i32 %172, 1048576
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %211, label %175

175:                                              ; preds = %170
  %176 = load ptr, ptr %140, align 8, !tbaa !55
  %177 = load ptr, ptr %176, align 8, !tbaa !56
  %178 = call ptr @Perl_newRV_noinc(ptr noundef nonnull %140) #14
  %179 = icmp eq ptr %177, null
  br i1 %179, label %213, label %180

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct.hv, ptr %177, i64 0, i32 2
  %182 = load i32, ptr %181, align 4, !tbaa !66
  %183 = and i32 %182, 33554432
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %207, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.hv, ptr %177, i64 0, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !11
  %188 = load ptr, ptr %177, align 8, !tbaa !47
  %189 = getelementptr inbounds %struct.xpvhv, ptr %188, i64 0, i32 3
  %190 = load i64, ptr %189, align 8, !tbaa !49
  %191 = getelementptr ptr, ptr %187, i64 %190
  %192 = getelementptr ptr, ptr %191, i64 1
  %193 = load ptr, ptr %192, align 8, !tbaa !11
  %194 = icmp eq ptr %193, null
  br i1 %194, label %207, label %195

195:                                              ; preds = %185
  %196 = getelementptr i8, ptr %191, i64 36
  %197 = load i32, ptr %196, align 4, !tbaa !68
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %195
  %200 = load ptr, ptr %193, align 8, !tbaa !12
  %201 = icmp eq ptr %200, null
  br i1 %201, label %207, label %202

202:                                              ; preds = %195, %199
  %203 = call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %177, i1 noundef zeroext false) #14
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %202
  %206 = load i32, ptr %181, align 4, !tbaa !66
  br label %207

207:                                              ; preds = %205, %180, %185, %199
  %208 = phi i32 [ %206, %205 ], [ %182, %180 ], [ %182, %185 ], [ %182, %199 ]
  %209 = and i32 %208, -268435457
  store i32 %209, ptr %181, align 4, !tbaa !66
  br label %213

210:                                              ; preds = %202
  call fastcc void @SvAMAGIC_on(ptr noundef %178) #15
  br label %213

211:                                              ; preds = %170
  %212 = call ptr @Perl_newRV_noinc(ptr noundef nonnull %140) #14
  br label %213

213:                                              ; preds = %175, %210, %207, %165, %155, %211
  %214 = phi ptr [ %212, %211 ], [ @PL_sv_undef, %155 ], [ %140, %165 ], [ %178, %207 ], [ %178, %210 ], [ %178, %175 ]
  ret ptr %214
}

; Function Attrs: optsize
declare ptr @Perl_sv_newmortal() local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_upgrade(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @magic_check(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca [259 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 259, ptr nonnull %2) #16
  %3 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %36, label %6

6:                                                ; preds = %1
  %7 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %4, ptr noundef nonnull %2, i64 noundef 5) #14
  %8 = icmp eq i64 %7, 5
  br i1 %8, label %9, label %272

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, ptr %2, i64 4
  %11 = load i32, ptr %2, align 16
  %12 = icmp eq i32 %11, 812938096
  br i1 %12, label %44, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %3, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !32
  %19 = getelementptr inbounds i8, ptr %18, i64 6
  %20 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !33
  %22 = icmp ugt ptr %19, %21
  br i1 %22, label %272, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds i8, ptr %2, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %24, ptr noundef nonnull align 1 dereferenceable(6) %18, i64 6, i1 false)
  store ptr %19, ptr %17, align 8, !tbaa !32
  br label %29

25:                                               ; preds = %13
  %26 = getelementptr inbounds i8, ptr %2, i64 5
  %27 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %14, ptr noundef nonnull %26, i64 noundef 6) #14
  %28 = icmp eq i64 %27, 6
  br i1 %28, label %29, label %272

29:                                               ; preds = %25, %23
  %30 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %2, ptr noundef nonnull dereferenceable(10) @old_magicstr, i64 10)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %33, align 8, !tbaa !27
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.60) #14
  br label %34

34:                                               ; preds = %32, %29
  %35 = getelementptr inbounds i8, ptr %2, i64 10
  br label %44

36:                                               ; preds = %1
  %37 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !32
  %39 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !33
  %41 = icmp ult ptr %38, %40
  br i1 %41, label %42, label %272

42:                                               ; preds = %36
  %43 = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %43, ptr %37, align 8, !tbaa !32
  br label %44

44:                                               ; preds = %34, %9, %42
  %45 = phi ptr [ %38, %42 ], [ %35, %34 ], [ %10, %9 ]
  %46 = phi i1 [ true, %42 ], [ false, %34 ], [ true, %9 ]
  %47 = load i8, ptr %45, align 1, !tbaa !11
  %48 = zext i8 %47 to i32
  %49 = icmp ult i8 %47, 2
  %50 = select i1 %46, i1 true, i1 %49
  %51 = lshr i32 %48, 1
  %52 = select i1 %50, i32 %51, i32 -1
  %53 = icmp sgt i32 %52, 0
  %54 = select i1 %53, ptr @sv_retrieve, ptr @sv_old_retrieve
  %55 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 27
  store ptr %54, ptr %55, align 8, !tbaa !108
  %56 = icmp sgt i32 %52, 1
  br i1 %56, label %60, label %57

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 25
  store i32 %52, ptr %58, align 8, !tbaa !109
  %59 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 26
  store i32 0, ptr %59, align 4, !tbaa !110
  br label %189

60:                                               ; preds = %44
  %61 = load ptr, ptr %3, align 8, !tbaa !35
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !32
  %66 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !33
  %68 = icmp ult ptr %65, %67
  br i1 %68, label %69, label %272

69:                                               ; preds = %63
  %70 = getelementptr inbounds i8, ptr %65, i64 1
  store ptr %70, ptr %64, align 8, !tbaa !32
  %71 = load i8, ptr %65, align 1, !tbaa !11
  %72 = zext i8 %71 to i32
  br label %76

73:                                               ; preds = %60
  %74 = call i32 @PerlIO_getc(ptr noundef nonnull %61) #14
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %272, label %76

76:                                               ; preds = %69, %73
  %77 = phi i32 [ %74, %73 ], [ %72, %69 ]
  %78 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 25
  store i32 %52, ptr %78, align 8, !tbaa !109
  %79 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 26
  store i32 %77, ptr %79, align 4, !tbaa !110
  %80 = icmp eq i32 %52, 2
  br i1 %80, label %81, label %187

81:                                               ; preds = %76
  %82 = icmp sgt i32 %77, 10
  br i1 %82, label %83, label %189

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 18
  %85 = load i32, ptr %84, align 4, !tbaa !26
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %184

87:                                               ; preds = %83
  %88 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %89 = icmp eq ptr %88, null
  br i1 %89, label %181, label %90

90:                                               ; preds = %87
  %91 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %92 = getelementptr inbounds %struct.sv, ptr %91, i64 0, i32 2
  %93 = load i32, ptr %92, align 4, !tbaa !28
  %94 = and i32 %93, 2097152
  %95 = icmp eq i32 %94, 0
  %96 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  br i1 %95, label %99, label %97

97:                                               ; preds = %90
  %98 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %96, i32 noundef 2) #14
  br label %181

99:                                               ; preds = %90
  %100 = getelementptr inbounds %struct.sv, ptr %96, i64 0, i32 2
  %101 = load i32, ptr %100, align 4, !tbaa !28
  %102 = and i32 %101, 65280
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %99
  %105 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %106 = getelementptr inbounds %struct.sv, ptr %105, i64 0, i32 2
  %107 = load i32, ptr %106, align 4, !tbaa !28
  %108 = and i32 %107, 255
  %109 = icmp eq i32 %108, 8
  br i1 %109, label %116, label %110

110:                                              ; preds = %104
  %111 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %112 = getelementptr inbounds %struct.sv, ptr %111, i64 0, i32 2
  %113 = load i32, ptr %112, align 4, !tbaa !28
  %114 = and i32 %113, 16826623
  %115 = icmp eq i32 %114, 16777226
  br i1 %115, label %116, label %181

116:                                              ; preds = %110, %104, %99
  %117 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %118 = getelementptr inbounds %struct.sv, ptr %117, i64 0, i32 2
  %119 = load i32, ptr %118, align 4, !tbaa !28
  %120 = and i32 %119, 1024
  %121 = icmp eq i32 %120, 0
  %122 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  br i1 %121, label %144, label %123

123:                                              ; preds = %116
  %124 = load ptr, ptr %122, align 8, !tbaa !55
  %125 = icmp eq ptr %124, null
  br i1 %125, label %181, label %126

126:                                              ; preds = %123
  %127 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %128 = load ptr, ptr %127, align 8, !tbaa !55
  %129 = getelementptr inbounds %struct.xpv, ptr %128, i64 0, i32 2
  %130 = load i64, ptr %129, align 8, !tbaa !74
  %131 = icmp ugt i64 %130, 1
  br i1 %131, label %181, label %132

132:                                              ; preds = %126
  %133 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %134 = load ptr, ptr %133, align 8, !tbaa !55
  %135 = getelementptr inbounds %struct.xpv, ptr %134, i64 0, i32 2
  %136 = load i64, ptr %135, align 8, !tbaa !74
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %181, label %138

138:                                              ; preds = %132
  %139 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %140 = getelementptr inbounds %struct.sv, ptr %139, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !11
  %142 = load i8, ptr %141, align 1, !tbaa !11
  %143 = icmp ne i8 %142, 48
  br label %181

144:                                              ; preds = %116
  %145 = getelementptr inbounds %struct.sv, ptr %122, i64 0, i32 2
  %146 = load i32, ptr %145, align 4, !tbaa !28
  %147 = and i32 %146, 768
  %148 = icmp eq i32 %147, 0
  %149 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  br i1 %148, label %179, label %150

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.sv, ptr %149, i64 0, i32 2
  %152 = load i32, ptr %151, align 4, !tbaa !28
  %153 = and i32 %152, 256
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %150
  %156 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %157 = load ptr, ptr %156, align 8, !tbaa !55
  %158 = getelementptr inbounds %struct.xpviv, ptr %157, i64 0, i32 4
  %159 = load i64, ptr %158, align 8, !tbaa !11
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %181

161:                                              ; preds = %155, %150
  %162 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %163 = getelementptr inbounds %struct.sv, ptr %162, i64 0, i32 2
  %164 = load i32, ptr %163, align 4, !tbaa !28
  %165 = and i32 %164, 512
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %181, label %167

167:                                              ; preds = %161
  %168 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %169 = load ptr, ptr %168, align 8, !tbaa !55
  %170 = getelementptr inbounds %struct.xpvnv, ptr %169, i64 0, i32 5
  %171 = load double, ptr %170, align 8, !tbaa !11
  %172 = fcmp uno double %171, 0.000000e+00
  br i1 %172, label %181, label %173

173:                                              ; preds = %167
  %174 = call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %175 = load ptr, ptr %174, align 8, !tbaa !55
  %176 = getelementptr inbounds %struct.xpvnv, ptr %175, i64 0, i32 5
  %177 = load double, ptr %176, align 8, !tbaa !11
  %178 = fcmp une double %177, 0.000000e+00
  br label %181

179:                                              ; preds = %144
  %180 = call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %149, i32 noundef 0) #14
  br label %181

181:                                              ; preds = %97, %179, %110, %126, %138, %132, %123, %161, %173, %167, %155, %87
  %182 = phi i1 [ false, %87 ], [ %98, %97 ], [ false, %110 ], [ %180, %179 ], [ false, %123 ], [ true, %126 ], [ false, %132 ], [ %143, %138 ], [ true, %155 ], [ false, %161 ], [ true, %167 ], [ %178, %173 ]
  %183 = zext i1 %182 to i32
  store i32 %183, ptr %84, align 4, !tbaa !26
  br label %184

184:                                              ; preds = %181, %83
  %185 = phi i32 [ %183, %181 ], [ %85, %83 ]
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %189, label %187

187:                                              ; preds = %76, %184
  %188 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %188, align 8, !tbaa !27
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.62, i32 noundef %52, i32 noundef %77, i32 noundef 2, i32 noundef 10) #14
  br label %189

189:                                              ; preds = %57, %184, %187, %81
  %190 = phi i32 [ %77, %184 ], [ %77, %187 ], [ %77, %81 ], [ 0, %57 ]
  %191 = and i32 %48, 1
  %192 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  store i32 %191, ptr %192, align 8, !tbaa !40
  %193 = icmp eq i32 %191, 0
  br i1 %193, label %194, label %272

194:                                              ; preds = %189
  %195 = icmp sgt i32 %190, 1
  %196 = select i1 %56, i1 %195, i1 false
  %197 = load ptr, ptr %3, align 8, !tbaa !35
  br i1 %50, label %198, label %217

198:                                              ; preds = %194
  %199 = icmp eq ptr %197, null
  br i1 %199, label %200, label %212

200:                                              ; preds = %198
  %201 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !32
  %203 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %204 = load ptr, ptr %203, align 8, !tbaa !33
  %205 = icmp ult ptr %202, %204
  br i1 %205, label %206, label %272

206:                                              ; preds = %200
  %207 = getelementptr inbounds i8, ptr %202, i64 1
  store ptr %207, ptr %201, align 8, !tbaa !32
  %208 = load i8, ptr %202, align 1, !tbaa !11
  %209 = zext i8 %208 to i32
  %210 = select i1 %196, i32 4, i32 3
  %211 = add nuw nsw i32 %210, %209
  br label %223

212:                                              ; preds = %198
  %213 = call i32 @PerlIO_getc(ptr noundef nonnull %197) #14
  %214 = icmp eq i32 %213, -1
  br i1 %214, label %272, label %215

215:                                              ; preds = %212
  %216 = load ptr, ptr %3, align 8, !tbaa !35
  br label %217

217:                                              ; preds = %215, %194
  %218 = phi ptr [ %216, %215 ], [ %197, %194 ]
  %219 = phi i32 [ %213, %215 ], [ %48, %194 ]
  %220 = select i1 %196, i32 4, i32 3
  %221 = add i32 %220, %219
  %222 = icmp eq ptr %218, null
  br i1 %222, label %223, label %234

223:                                              ; preds = %206, %217
  %224 = phi i32 [ %211, %206 ], [ %221, %217 ]
  %225 = phi i32 [ %209, %206 ], [ %219, %217 ]
  %226 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !32
  %228 = sext i32 %224 to i64
  %229 = getelementptr inbounds i8, ptr %227, i64 %228
  %230 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %231 = load ptr, ptr %230, align 8, !tbaa !33
  %232 = icmp ugt ptr %229, %231
  br i1 %232, label %272, label %233

233:                                              ; preds = %223
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %2, ptr align 1 %227, i64 %228, i1 false)
  store ptr %229, ptr %226, align 8, !tbaa !32
  br label %238

234:                                              ; preds = %217
  %235 = sext i32 %221 to i64
  %236 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %218, ptr noundef nonnull %2, i64 noundef %235) #14
  %237 = icmp eq i64 %236, %235
  br i1 %237, label %238, label %272

238:                                              ; preds = %234, %233
  %239 = phi i32 [ %219, %234 ], [ %225, %233 ]
  %240 = sext i32 %239 to i64
  %241 = icmp eq i32 %239, 8
  %242 = load i64, ptr %2, align 16
  %243 = icmp eq i64 %242, 4050765991979987505
  %244 = select i1 %241, i1 %243, i1 false
  br i1 %244, label %247, label %245

245:                                              ; preds = %238
  %246 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %246, align 8, !tbaa !27
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.63) #14
  br label %247

247:                                              ; preds = %238, %245
  %248 = getelementptr inbounds i8, ptr %2, i64 %240
  %249 = getelementptr inbounds i8, ptr %248, i64 1
  %250 = load i8, ptr %248, align 1, !tbaa !11
  %251 = icmp eq i8 %250, 4
  br i1 %251, label %254, label %252

252:                                              ; preds = %247
  %253 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %253, align 8, !tbaa !27
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.64) #14
  br label %254

254:                                              ; preds = %252, %247
  %255 = getelementptr inbounds i8, ptr %248, i64 2
  %256 = load i8, ptr %249, align 1, !tbaa !11
  %257 = icmp eq i8 %256, 8
  br i1 %257, label %260, label %258

258:                                              ; preds = %254
  %259 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %259, align 8, !tbaa !27
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.65) #14
  br label %260

260:                                              ; preds = %258, %254
  %261 = load i8, ptr %255, align 1, !tbaa !11
  %262 = icmp eq i8 %261, 8
  br i1 %262, label %265, label %263

263:                                              ; preds = %260
  %264 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %264, align 8, !tbaa !27
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.66) #14
  br label %265

265:                                              ; preds = %263, %260
  br i1 %196, label %266, label %272

266:                                              ; preds = %265
  %267 = getelementptr inbounds i8, ptr %248, i64 3
  %268 = load i8, ptr %267, align 1, !tbaa !11
  %269 = icmp eq i8 %268, 8
  br i1 %269, label %272, label %270

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %271, align 8, !tbaa !27
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.67) #14
  br label %272

272:                                              ; preds = %25, %16, %6, %265, %270, %266, %234, %223, %212, %200, %189, %73, %63, %36
  %273 = phi ptr [ null, %36 ], [ null, %63 ], [ null, %73 ], [ @PL_sv_undef, %189 ], [ null, %200 ], [ null, %212 ], [ null, %223 ], [ null, %234 ], [ @PL_sv_undef, %266 ], [ @PL_sv_undef, %270 ], [ @PL_sv_undef, %265 ], [ null, %6 ], [ null, %16 ], [ null, %25 ]
  call void @llvm.lifetime.end.p0(i64 259, ptr nonnull %2) #16
  ret ptr %273
}

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_tainted(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_retrieve_context(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @Perl_newSV_type(i32 noundef 12) #14
  %5 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 9
  store ptr %4, ptr %5, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 27
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  %9 = icmp eq ptr %8, @sv_old_retrieve
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call ptr @Perl_newSV_type(i32 noundef 12) #14
  br label %12

12:                                               ; preds = %3, %10
  %13 = phi ptr [ %11, %10 ], [ null, %3 ]
  %14 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !45
  %15 = tail call ptr @Perl_newSV_type(i32 noundef 11) #14
  %16 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  store ptr %15, ptr %16, align 8, !tbaa !60
  %17 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 6
  store i64 -1, ptr %17, align 8, !tbaa !61
  %18 = tail call ptr @Perl_newSV_type(i32 noundef 11) #14
  %19 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 8
  store ptr %18, ptr %19, align 8, !tbaa !62
  %20 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %21 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  store i32 %1, ptr %21, align 4, !tbaa !23
  %22 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 13
  store i32 %2, ptr %22, align 4, !tbaa !107
  store i32 1, ptr %0, align 8, !tbaa !20
  %23 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 18
  store i32 -1, ptr %23, align 4, !tbaa !26
  %24 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  store i32 0, ptr %24, align 8, !tbaa !63
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @retrieve(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %112, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %12 = load i32, ptr %11, align 8, !tbaa !40
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %15 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !32
  %21 = getelementptr inbounds i8, ptr %20, i64 4
  %22 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !33
  %24 = icmp ugt ptr %21, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %18
  %26 = load i32, ptr %20, align 1
  store ptr %21, ptr %19, align 8, !tbaa !32
  br label %32

27:                                               ; preds = %14
  %28 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %16, ptr noundef nonnull %4, i64 noundef 4) #14
  %29 = icmp eq i64 %28, 4
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, ptr %4, align 4, !tbaa !13
  br label %32

32:                                               ; preds = %30, %25
  %33 = phi i32 [ %31, %30 ], [ %26, %25 ]
  %34 = sext i32 %33 to i64
  store i64 %34, ptr %3, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %52

35:                                               ; preds = %27, %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %104

36:                                               ; preds = %10
  %37 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %38 = load ptr, ptr %37, align 8, !tbaa !35
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !32
  %43 = getelementptr inbounds i8, ptr %42, i64 8
  %44 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !33
  %46 = icmp ugt ptr %43, %45
  br i1 %46, label %104, label %47

47:                                               ; preds = %40
  %48 = load i64, ptr %42, align 1
  store i64 %48, ptr %3, align 8
  store ptr %43, ptr %41, align 8, !tbaa !32
  br label %52

49:                                               ; preds = %36
  %50 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %38, ptr noundef nonnull %3, i64 noundef 8) #14
  %51 = icmp eq i64 %50, 8
  br i1 %51, label %52, label %104

52:                                               ; preds = %32, %49, %47
  %53 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %54 = load ptr, ptr %53, align 8, !tbaa !35
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !32
  %59 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !33
  %61 = icmp ult ptr %58, %60
  br i1 %61, label %62, label %104

62:                                               ; preds = %56
  %63 = getelementptr inbounds i8, ptr %58, i64 1
  store ptr %63, ptr %57, align 8, !tbaa !32
  %64 = load i8, ptr %58, align 1, !tbaa !11
  %65 = zext i8 %64 to i32
  br label %69

66:                                               ; preds = %52
  %67 = call i32 @PerlIO_getc(ptr noundef nonnull %54) #14
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %104, label %69

69:                                               ; preds = %66, %62
  %70 = phi i32 [ %67, %66 ], [ %65, %62 ]
  %71 = icmp eq i32 %70, 0
  %72 = load ptr, ptr %7, align 8, !tbaa !45
  br i1 %71, label %73, label %106

73:                                               ; preds = %69
  %74 = call ptr @Perl_hv_common_key_len(ptr noundef %72, ptr noundef nonnull %3, i32 noundef 8, i32 noundef 32, ptr noundef null, i32 noundef 0) #14
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %77, align 8, !tbaa !27
  %78 = load i64, ptr %3, align 8, !tbaa !39
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.87, i64 noundef %78) #14
  br label %79

79:                                               ; preds = %76, %73
  %80 = load ptr, ptr %74, align 8, !tbaa !12
  %81 = getelementptr inbounds %struct.sv, ptr %80, i64 0, i32 2
  %82 = load i32, ptr %81, align 4, !tbaa !28
  %83 = and i32 %82, 2097408
  %84 = icmp eq i32 %83, 256
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load ptr, ptr %80, align 8, !tbaa !55
  %87 = getelementptr inbounds %struct.xpviv, ptr %86, i64 0, i32 4
  %88 = load i64, ptr %87, align 8, !tbaa !11
  br label %91

89:                                               ; preds = %79
  %90 = call i64 @Perl_sv_2iv_flags(ptr noundef nonnull %80, i32 noundef 2) #14
  br label %91

91:                                               ; preds = %89, %85
  %92 = phi i64 [ %88, %85 ], [ %90, %89 ]
  %93 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %94 = load ptr, ptr %93, align 8, !tbaa !60
  %95 = shl i64 %92, 32
  %96 = ashr exact i64 %95, 32
  %97 = call ptr @Perl_av_fetch(ptr noundef %94, i64 noundef %96, i32 noundef 0) #14
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %100, align 8, !tbaa !27
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.69, i64 noundef %96) #14
  br label %101

101:                                              ; preds = %99, %91
  %102 = load ptr, ptr %97, align 8, !tbaa !12
  %103 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %102) #15
  br label %104

104:                                              ; preds = %101, %35, %40, %49, %56, %66
  %105 = phi ptr [ null, %66 ], [ null, %56 ], [ null, %49 ], [ null, %40 ], [ null, %35 ], [ %102, %101 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %438

106:                                              ; preds = %69
  %107 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %108 = load i64, ptr %107, align 8, !tbaa !53
  %109 = call ptr @Perl_newSViv(i64 noundef %108) #14
  %110 = call ptr @Perl_hv_common_key_len(ptr noundef %72, ptr noundef nonnull %3, i32 noundef 8, i32 noundef 36, ptr noundef %109, i32 noundef 0) #14
  %111 = icmp eq ptr %110, null
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br i1 %111, label %438, label %281

112:                                              ; preds = %2
  %113 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %114 = load ptr, ptr %113, align 8, !tbaa !35
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %126

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !32
  %119 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !33
  %121 = icmp ult ptr %118, %120
  br i1 %121, label %122, label %438

122:                                              ; preds = %116
  %123 = getelementptr inbounds i8, ptr %118, i64 1
  store ptr %123, ptr %117, align 8, !tbaa !32
  %124 = load i8, ptr %118, align 1, !tbaa !11
  %125 = zext i8 %124 to i32
  br label %129

126:                                              ; preds = %112
  %127 = tail call i32 @PerlIO_getc(ptr noundef nonnull %114) #14
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %438, label %129

129:                                              ; preds = %126, %122
  %130 = phi i32 [ %127, %126 ], [ %125, %122 ]
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %166

132:                                              ; preds = %129
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %133 = load ptr, ptr %113, align 8, !tbaa !35
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !32
  %138 = getelementptr inbounds i8, ptr %137, i64 4
  %139 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !33
  %141 = icmp ugt ptr %138, %140
  br i1 %141, label %164, label %142

142:                                              ; preds = %135
  %143 = load i32, ptr %137, align 1
  store ptr %138, ptr %136, align 8, !tbaa !32
  br label %149

144:                                              ; preds = %132
  %145 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %133, ptr noundef nonnull %5, i64 noundef 4) #14
  %146 = icmp eq i64 %145, 4
  br i1 %146, label %147, label %164

147:                                              ; preds = %144
  %148 = load i32, ptr %5, align 4, !tbaa !13
  br label %149

149:                                              ; preds = %147, %142
  %150 = phi i32 [ %148, %147 ], [ %143, %142 ]
  %151 = call fastcc i32 @__bswap_32(i32 noundef %150) #15
  store i32 %151, ptr %5, align 4, !tbaa !13
  %152 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %153 = load ptr, ptr %152, align 8, !tbaa !60
  %154 = sext i32 %151 to i64
  %155 = call ptr @Perl_av_fetch(ptr noundef %153, i64 noundef %154, i32 noundef 0) #14
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %149
  %158 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %158, align 8, !tbaa !27
  %159 = load i32, ptr %5, align 4, !tbaa !13
  %160 = sext i32 %159 to i64
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.69, i64 noundef %160) #14
  br label %161

161:                                              ; preds = %157, %149
  %162 = load ptr, ptr %155, align 8, !tbaa !12
  %163 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %162) #15
  br label %164

164:                                              ; preds = %144, %135, %161
  %165 = phi ptr [ %162, %161 ], [ null, %135 ], [ null, %144 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %438

166:                                              ; preds = %129
  %167 = icmp sgt i32 %130, 31
  br i1 %167, label %168, label %281

168:                                              ; preds = %166
  %169 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 26
  %170 = load i32, ptr %169, align 4, !tbaa !110
  %171 = icmp sgt i32 %170, 10
  br i1 %171, label %172, label %281

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 18
  %174 = load i32, ptr %173, align 4, !tbaa !26
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %273

176:                                              ; preds = %172
  %177 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %178 = icmp eq ptr %177, null
  br i1 %178, label %270, label %179

179:                                              ; preds = %176
  %180 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %181 = getelementptr inbounds %struct.sv, ptr %180, i64 0, i32 2
  %182 = load i32, ptr %181, align 4, !tbaa !28
  %183 = and i32 %182, 2097152
  %184 = icmp eq i32 %183, 0
  %185 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  br i1 %184, label %188, label %186

186:                                              ; preds = %179
  %187 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %185, i32 noundef 2) #14
  br label %270

188:                                              ; preds = %179
  %189 = getelementptr inbounds %struct.sv, ptr %185, i64 0, i32 2
  %190 = load i32, ptr %189, align 4, !tbaa !28
  %191 = and i32 %190, 65280
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %205

193:                                              ; preds = %188
  %194 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %195 = getelementptr inbounds %struct.sv, ptr %194, i64 0, i32 2
  %196 = load i32, ptr %195, align 4, !tbaa !28
  %197 = and i32 %196, 255
  %198 = icmp eq i32 %197, 8
  br i1 %198, label %205, label %199

199:                                              ; preds = %193
  %200 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %201 = getelementptr inbounds %struct.sv, ptr %200, i64 0, i32 2
  %202 = load i32, ptr %201, align 4, !tbaa !28
  %203 = and i32 %202, 16826623
  %204 = icmp eq i32 %203, 16777226
  br i1 %204, label %205, label %270

205:                                              ; preds = %199, %193, %188
  %206 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %207 = getelementptr inbounds %struct.sv, ptr %206, i64 0, i32 2
  %208 = load i32, ptr %207, align 4, !tbaa !28
  %209 = and i32 %208, 1024
  %210 = icmp eq i32 %209, 0
  %211 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  br i1 %210, label %233, label %212

212:                                              ; preds = %205
  %213 = load ptr, ptr %211, align 8, !tbaa !55
  %214 = icmp eq ptr %213, null
  br i1 %214, label %270, label %215

215:                                              ; preds = %212
  %216 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %217 = load ptr, ptr %216, align 8, !tbaa !55
  %218 = getelementptr inbounds %struct.xpv, ptr %217, i64 0, i32 2
  %219 = load i64, ptr %218, align 8, !tbaa !74
  %220 = icmp ugt i64 %219, 1
  br i1 %220, label %270, label %221

221:                                              ; preds = %215
  %222 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %223 = load ptr, ptr %222, align 8, !tbaa !55
  %224 = getelementptr inbounds %struct.xpv, ptr %223, i64 0, i32 2
  %225 = load i64, ptr %224, align 8, !tbaa !74
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %270, label %227

227:                                              ; preds = %221
  %228 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %229 = getelementptr inbounds %struct.sv, ptr %228, i64 0, i32 3
  %230 = load ptr, ptr %229, align 8, !tbaa !11
  %231 = load i8, ptr %230, align 1, !tbaa !11
  %232 = icmp ne i8 %231, 48
  br label %270

233:                                              ; preds = %205
  %234 = getelementptr inbounds %struct.sv, ptr %211, i64 0, i32 2
  %235 = load i32, ptr %234, align 4, !tbaa !28
  %236 = and i32 %235, 768
  %237 = icmp eq i32 %236, 0
  %238 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  br i1 %237, label %268, label %239

239:                                              ; preds = %233
  %240 = getelementptr inbounds %struct.sv, ptr %238, i64 0, i32 2
  %241 = load i32, ptr %240, align 4, !tbaa !28
  %242 = and i32 %241, 256
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %250, label %244

244:                                              ; preds = %239
  %245 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %246 = load ptr, ptr %245, align 8, !tbaa !55
  %247 = getelementptr inbounds %struct.xpviv, ptr %246, i64 0, i32 4
  %248 = load i64, ptr %247, align 8, !tbaa !11
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %270

250:                                              ; preds = %244, %239
  %251 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %252 = getelementptr inbounds %struct.sv, ptr %251, i64 0, i32 2
  %253 = load i32, ptr %252, align 4, !tbaa !28
  %254 = and i32 %253, 512
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %270, label %256

256:                                              ; preds = %250
  %257 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %258 = load ptr, ptr %257, align 8, !tbaa !55
  %259 = getelementptr inbounds %struct.xpvnv, ptr %258, i64 0, i32 5
  %260 = load double, ptr %259, align 8, !tbaa !11
  %261 = fcmp uno double %260, 0.000000e+00
  br i1 %261, label %270, label %262

262:                                              ; preds = %256
  %263 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.61, i32 noundef 1) #14
  %264 = load ptr, ptr %263, align 8, !tbaa !55
  %265 = getelementptr inbounds %struct.xpvnv, ptr %264, i64 0, i32 5
  %266 = load double, ptr %265, align 8, !tbaa !11
  %267 = fcmp une double %266, 0.000000e+00
  br label %270

268:                                              ; preds = %233
  %269 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %238, i32 noundef 0) #14
  br label %270

270:                                              ; preds = %186, %268, %199, %215, %227, %221, %212, %250, %262, %256, %244, %176
  %271 = phi i1 [ false, %176 ], [ %187, %186 ], [ false, %199 ], [ %269, %268 ], [ false, %212 ], [ true, %215 ], [ false, %221 ], [ %232, %227 ], [ true, %244 ], [ false, %250 ], [ true, %256 ], [ %267, %262 ]
  %272 = zext i1 %271 to i32
  store i32 %272, ptr %173, align 4, !tbaa !26
  br label %273

273:                                              ; preds = %270, %172
  %274 = phi i32 [ %272, %270 ], [ %174, %172 ]
  %275 = icmp eq i32 %274, 1
  br i1 %275, label %276, label %281

276:                                              ; preds = %273
  %277 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %277, align 8, !tbaa !27
  %278 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 25
  %279 = load i32, ptr %278, align 8, !tbaa !109
  %280 = load i32, ptr %169, align 4, !tbaa !110
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.88, i32 noundef %279, i32 noundef %280, i32 noundef %130, i32 noundef 2, i32 noundef 10, i32 noundef 31) #14
  br label %281

281:                                              ; preds = %273, %276, %168, %166, %106
  %282 = phi i32 [ %70, %106 ], [ %130, %276 ], [ %130, %273 ], [ %130, %168 ], [ %130, %166 ]
  %283 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 27
  %284 = load ptr, ptr %283, align 8, !tbaa !108
  %285 = call i32 @llvm.smin.i32(i32 %282, i32 32)
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds ptr, ptr %284, i64 %286
  %288 = load ptr, ptr %287, align 8, !tbaa !12
  %289 = call ptr %288(ptr noundef nonnull %0, ptr noundef %1) #14
  %290 = icmp eq ptr %289, null
  br i1 %290, label %438, label %291

291:                                              ; preds = %281
  %292 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 25
  %293 = load i32, ptr %292, align 8, !tbaa !109
  %294 = icmp slt i32 %293, 2
  br i1 %294, label %295, label %438

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %297 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %298 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %299 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %300 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 21
  %301 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 21, i32 1
  %302 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  br label %303

303:                                              ; preds = %295, %435
  %304 = load ptr, ptr %296, align 8, !tbaa !35
  %305 = icmp eq ptr %304, null
  br i1 %305, label %308, label %306

306:                                              ; preds = %303
  %307 = call i32 @PerlIO_getc(ptr noundef nonnull %304) #14
  br label %317

308:                                              ; preds = %303
  %309 = load ptr, ptr %297, align 8, !tbaa !32
  %310 = load ptr, ptr %298, align 8, !tbaa !33
  %311 = icmp ult ptr %309, %310
  br i1 %311, label %313, label %312

312:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  br label %434

313:                                              ; preds = %308
  %314 = getelementptr inbounds i8, ptr %309, i64 1
  store ptr %314, ptr %297, align 8, !tbaa !32
  %315 = load i8, ptr %309, align 1, !tbaa !11
  %316 = sext i8 %315 to i32
  br label %317

317:                                              ; preds = %313, %306
  %318 = phi i32 [ %307, %306 ], [ %316, %313 ]
  %319 = icmp eq i32 %318, 88
  br i1 %319, label %438, label %320

320:                                              ; preds = %317
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  switch i32 %318, label %434 [
    i32 98, label %321
    i32 66, label %335
  ]

321:                                              ; preds = %320
  %322 = load ptr, ptr %296, align 8, !tbaa !35
  %323 = icmp eq ptr %322, null
  br i1 %323, label %324, label %332

324:                                              ; preds = %321
  %325 = load ptr, ptr %297, align 8, !tbaa !32
  %326 = load ptr, ptr %298, align 8, !tbaa !33
  %327 = icmp ult ptr %325, %326
  br i1 %327, label %328, label %434

328:                                              ; preds = %324
  %329 = getelementptr inbounds i8, ptr %325, i64 1
  store ptr %329, ptr %297, align 8, !tbaa !32
  %330 = load i8, ptr %325, align 1, !tbaa !11
  %331 = zext i8 %330 to i32
  store i32 %331, ptr %6, align 4, !tbaa !13
  br label %356

332:                                              ; preds = %321
  %333 = call i32 @PerlIO_getc(ptr noundef nonnull %322) #14
  store i32 %333, ptr %6, align 4, !tbaa !13
  %334 = icmp eq i32 %333, -1
  br i1 %334, label %434, label %356

335:                                              ; preds = %320
  %336 = load ptr, ptr %296, align 8, !tbaa !35
  %337 = icmp eq ptr %336, null
  br i1 %337, label %338, label %345

338:                                              ; preds = %335
  %339 = load ptr, ptr %297, align 8, !tbaa !32
  %340 = getelementptr inbounds i8, ptr %339, i64 4
  %341 = load ptr, ptr %298, align 8, !tbaa !33
  %342 = icmp ugt ptr %340, %341
  br i1 %342, label %434, label %343

343:                                              ; preds = %338
  %344 = load i32, ptr %339, align 1
  store i32 %344, ptr %6, align 4
  store ptr %340, ptr %297, align 8, !tbaa !32
  br label %350

345:                                              ; preds = %335
  %346 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %336, ptr noundef nonnull %6, i64 noundef 4) #14
  %347 = icmp eq i64 %346, 4
  br i1 %347, label %348, label %434

348:                                              ; preds = %345
  %349 = load i32, ptr %6, align 4, !tbaa !13
  br label %350

350:                                              ; preds = %348, %343
  %351 = phi i32 [ %349, %348 ], [ %344, %343 ]
  %352 = load i32, ptr %299, align 8, !tbaa !40
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %356, label %354

354:                                              ; preds = %350
  %355 = call fastcc i32 @__bswap_32(i32 noundef %351) #15
  store i32 %355, ptr %6, align 4, !tbaa !13
  br label %356

356:                                              ; preds = %332, %328, %354, %350
  %357 = phi i32 [ %333, %332 ], [ %331, %328 ], [ %355, %354 ], [ %351, %350 ]
  %358 = sext i32 %357 to i64
  %359 = load i64, ptr %301, align 8, !tbaa !105
  %360 = icmp ugt i64 %359, %358
  br i1 %360, label %368, label %361

361:                                              ; preds = %356
  %362 = load ptr, ptr %300, align 8, !tbaa !64
  %363 = add nsw i64 %358, 1
  %364 = call ptr @Perl_safesysrealloc(ptr noundef %362, i64 noundef %363) #14
  store ptr %364, ptr %300, align 8, !tbaa !64
  %365 = load i32, ptr %6, align 4, !tbaa !13
  %366 = sext i32 %365 to i64
  %367 = add nsw i64 %366, 1
  store i64 %367, ptr %301, align 8, !tbaa !105
  br label %368

368:                                              ; preds = %356, %361
  %369 = phi i32 [ %365, %361 ], [ %357, %356 ]
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %392, label %371

371:                                              ; preds = %368
  %372 = load ptr, ptr %296, align 8, !tbaa !35
  %373 = icmp eq ptr %372, null
  %374 = sext i32 %369 to i64
  br i1 %373, label %375, label %386

375:                                              ; preds = %371
  %376 = load ptr, ptr %297, align 8, !tbaa !32
  %377 = getelementptr inbounds i8, ptr %376, i64 %374
  %378 = load ptr, ptr %298, align 8, !tbaa !33
  %379 = icmp ugt ptr %377, %378
  br i1 %379, label %434, label %380

380:                                              ; preds = %375
  %381 = load ptr, ptr %300, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %381, ptr align 1 %376, i64 %374, i1 false)
  %382 = load i32, ptr %6, align 4, !tbaa !13
  %383 = load ptr, ptr %297, align 8, !tbaa !32
  %384 = sext i32 %382 to i64
  %385 = getelementptr inbounds i8, ptr %383, i64 %384
  store ptr %385, ptr %297, align 8, !tbaa !32
  br label %392

386:                                              ; preds = %371
  %387 = load ptr, ptr %300, align 8, !tbaa !64
  %388 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %372, ptr noundef %387, i64 noundef %374) #14
  %389 = load i32, ptr %6, align 4, !tbaa !13
  %390 = sext i32 %389 to i64
  %391 = icmp eq i64 %388, %390
  br i1 %391, label %392, label %434

392:                                              ; preds = %368, %380, %386
  %393 = phi i32 [ %382, %380 ], [ %389, %386 ], [ 0, %368 ]
  %394 = load ptr, ptr %300, align 8, !tbaa !64
  %395 = sext i32 %393 to i64
  %396 = getelementptr inbounds i8, ptr %394, i64 %395
  store i8 0, ptr %396, align 1, !tbaa !11
  %397 = load ptr, ptr %300, align 8, !tbaa !64
  %398 = load i32, ptr %6, align 4, !tbaa !13
  %399 = call ptr @Perl_gv_stashpvn(ptr noundef %397, i32 noundef %398, i32 noundef 1) #14
  %400 = call ptr @Perl_newRV_noinc(ptr noundef nonnull %289) #14
  %401 = load i32, ptr %302, align 8, !tbaa !63
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %435, label %403

403:                                              ; preds = %392
  %404 = getelementptr inbounds %struct.hv, ptr %399, i64 0, i32 2
  %405 = load i32, ptr %404, align 4, !tbaa !66
  %406 = and i32 %405, 33554432
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %430, label %408

408:                                              ; preds = %403
  %409 = getelementptr inbounds %struct.hv, ptr %399, i64 0, i32 3
  %410 = load ptr, ptr %409, align 8, !tbaa !11
  %411 = load ptr, ptr %399, align 8, !tbaa !47
  %412 = getelementptr inbounds %struct.xpvhv, ptr %411, i64 0, i32 3
  %413 = load i64, ptr %412, align 8, !tbaa !49
  %414 = getelementptr ptr, ptr %410, i64 %413
  %415 = getelementptr ptr, ptr %414, i64 1
  %416 = load ptr, ptr %415, align 8, !tbaa !11
  %417 = icmp eq ptr %416, null
  br i1 %417, label %430, label %418

418:                                              ; preds = %408
  %419 = getelementptr i8, ptr %414, i64 36
  %420 = load i32, ptr %419, align 4, !tbaa !68
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %425, label %422

422:                                              ; preds = %418
  %423 = load ptr, ptr %416, align 8, !tbaa !12
  %424 = icmp eq ptr %423, null
  br i1 %424, label %430, label %425

425:                                              ; preds = %418, %422
  %426 = call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %399, i1 noundef zeroext false) #14
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %433

428:                                              ; preds = %425
  %429 = load i32, ptr %404, align 4, !tbaa !66
  br label %430

430:                                              ; preds = %428, %403, %408, %422
  %431 = phi i32 [ %429, %428 ], [ %405, %403 ], [ %405, %408 ], [ %405, %422 ]
  %432 = and i32 %431, -268435457
  store i32 %432, ptr %404, align 4, !tbaa !66
  br label %435

433:                                              ; preds = %425
  store i32 0, ptr %302, align 8, !tbaa !63
  call fastcc void @SvAMAGIC_on(ptr noundef %400) #15
  br label %435

434:                                              ; preds = %324, %332, %338, %345, %320, %375, %386, %312
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br label %438

435:                                              ; preds = %392, %433, %430
  %436 = call ptr @Perl_sv_bless(ptr noundef %400, ptr noundef %399) #14
  %437 = getelementptr inbounds %struct.sv, ptr %400, i64 0, i32 3
  store ptr null, ptr %437, align 8, !tbaa !11
  call fastcc void @S_SvREFCNT_dec(ptr noundef %400) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br label %303, !llvm.loop !111

438:                                              ; preds = %317, %434, %104, %291, %281, %126, %116, %106, %164
  %439 = phi ptr [ null, %106 ], [ %165, %164 ], [ null, %116 ], [ null, %126 ], [ null, %281 ], [ %289, %291 ], [ %105, %104 ], [ null, %434 ], [ %289, %317 ]
  ret ptr %439
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SvAMAGIC_on(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !28
  %6 = and i32 %5, 1048576
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !tbaa !55
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.hv, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !66
  %13 = or i32 %12, 268435456
  store i32 %13, ptr %11, align 4, !tbaa !66
  br label %14

14:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: optsize
declare i64 @Perl_PerlIO_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @PerlIO_getc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @retrieve_lscalar(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !32
  %10 = getelementptr inbounds i8, ptr %9, i64 4
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !33
  %13 = icmp ugt ptr %10, %12
  br i1 %13, label %138, label %14

14:                                               ; preds = %7
  %15 = load i32, ptr %9, align 1
  store i32 %15, ptr %3, align 4
  store ptr %10, ptr %8, align 8, !tbaa !32
  br label %21

16:                                               ; preds = %2
  %17 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %5, ptr noundef nonnull %3, i64 noundef 4) #14
  %18 = icmp eq i64 %17, 4
  br i1 %18, label %19, label %138

19:                                               ; preds = %16
  %20 = load i32, ptr %3, align 4, !tbaa !13
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi i32 [ %20, %19 ], [ %15, %14 ]
  %23 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %24 = load i32, ptr %23, align 8, !tbaa !40
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = call fastcc i32 @__bswap_32(i32 noundef %22) #15
  store i32 %27, ptr %3, align 4, !tbaa !13
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi i32 [ %27, %26 ], [ %22, %21 ]
  %30 = sext i32 %29 to i64
  %31 = call ptr @Perl_newSV(i64 noundef %30) #14
  %32 = icmp eq ptr %1, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %35

35:                                               ; preds = %28, %33
  %36 = phi ptr [ %34, %33 ], [ null, %28 ]
  %37 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !60
  %39 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %40 = load i64, ptr %39, align 8, !tbaa !53
  %41 = add nsw i64 %40, 1
  store i64 %41, ptr %39, align 8, !tbaa !53
  %42 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %31) #15
  %43 = call ptr @Perl_av_store(ptr noundef %38, i64 noundef %40, ptr noundef %31) #14
  %44 = icmp eq ptr %43, null
  br i1 %44, label %138, label %45

45:                                               ; preds = %35
  %46 = icmp eq ptr %36, null
  br i1 %46, label %86, label %47

47:                                               ; preds = %45
  %48 = call ptr @Perl_newRV_noinc(ptr noundef %31) #14
  %49 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %50 = load i32, ptr %49, align 8, !tbaa !63
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %83, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.hv, ptr %36, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !66
  %55 = and i32 %54, 33554432
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %79, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.hv, ptr %36, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !11
  %60 = load ptr, ptr %36, align 8, !tbaa !47
  %61 = getelementptr inbounds %struct.xpvhv, ptr %60, i64 0, i32 3
  %62 = load i64, ptr %61, align 8, !tbaa !49
  %63 = getelementptr ptr, ptr %59, i64 %62
  %64 = getelementptr ptr, ptr %63, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !11
  %66 = icmp eq ptr %65, null
  br i1 %66, label %79, label %67

67:                                               ; preds = %57
  %68 = getelementptr i8, ptr %63, i64 36
  %69 = load i32, ptr %68, align 4, !tbaa !68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %65, align 8, !tbaa !12
  %73 = icmp eq ptr %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %67, %71
  %75 = call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %36, i1 noundef zeroext false) #14
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32, ptr %53, align 4, !tbaa !66
  br label %79

79:                                               ; preds = %77, %52, %57, %71
  %80 = phi i32 [ %78, %77 ], [ %54, %52 ], [ %54, %57 ], [ %54, %71 ]
  %81 = and i32 %80, -268435457
  store i32 %81, ptr %53, align 4, !tbaa !66
  br label %83

82:                                               ; preds = %74
  store i32 0, ptr %49, align 8, !tbaa !63
  call fastcc void @SvAMAGIC_on(ptr noundef %48) #15
  br label %83

83:                                               ; preds = %79, %82, %47
  %84 = call ptr @Perl_sv_bless(ptr noundef %48, ptr noundef nonnull %36) #14
  %85 = getelementptr inbounds %struct.sv, ptr %48, i64 0, i32 3
  store ptr null, ptr %85, align 8, !tbaa !11
  call fastcc void @S_SvREFCNT_dec(ptr noundef %48) #15
  br label %86

86:                                               ; preds = %83, %45
  %87 = load i32, ptr %3, align 4, !tbaa !13
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  call void @Perl_sv_setpvn(ptr noundef %31, ptr noundef nonnull @.str.3, i64 noundef 0) #14
  br label %138

90:                                               ; preds = %86
  %91 = load ptr, ptr %4, align 8, !tbaa !35
  %92 = icmp eq ptr %91, null
  %93 = sext i32 %87 to i64
  br i1 %92, label %94, label %109

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !32
  %97 = getelementptr inbounds i8, ptr %96, i64 %93
  %98 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !33
  %100 = icmp ugt ptr %97, %99
  br i1 %100, label %108, label %101

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %103, ptr align 1 %96, i64 %93, i1 false)
  %104 = load i32, ptr %3, align 4, !tbaa !13
  %105 = load ptr, ptr %95, align 8, !tbaa !32
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, ptr %105, i64 %106
  store ptr %107, ptr %95, align 8, !tbaa !32
  br label %117

108:                                              ; preds = %94
  call void @Perl_sv_free(ptr noundef %31) #14
  br label %138

109:                                              ; preds = %90
  %110 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !11
  %112 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %91, ptr noundef %111, i64 noundef %93) #14
  %113 = load i32, ptr %3, align 4, !tbaa !13
  %114 = sext i32 %113 to i64
  %115 = icmp eq i64 %112, %114
  br i1 %115, label %117, label %116

116:                                              ; preds = %109
  call void @Perl_sv_free(ptr noundef nonnull %31) #14
  br label %138

117:                                              ; preds = %101, %109
  %118 = phi i64 [ %106, %101 ], [ %114, %109 ]
  %119 = load ptr, ptr %31, align 8, !tbaa !55
  %120 = getelementptr inbounds %struct.xpv, ptr %119, i64 0, i32 2
  store i64 %118, ptr %120, align 8, !tbaa !74
  %121 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !11
  %123 = getelementptr inbounds i8, ptr %122, i64 %118
  store i8 0, ptr %123, align 1, !tbaa !11
  %124 = getelementptr inbounds %struct.sv, ptr %31, i64 0, i32 2
  %125 = load i32, ptr %124, align 4, !tbaa !28
  %126 = and i32 %125, 1610547455
  %127 = or disjoint i32 %126, 17408
  store i32 %127, ptr %124, align 4, !tbaa !28
  %128 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 13
  %129 = load i32, ptr %128, align 4, !tbaa !107
  %130 = icmp eq i32 %129, 0
  %131 = load i8, ptr @PL_tainting, align 1, !range !106
  %132 = icmp eq i8 %131, 0
  %133 = select i1 %130, i1 true, i1 %132
  %134 = load i8, ptr @PL_tainted, align 1, !range !106
  %135 = icmp eq i8 %134, 0
  %136 = select i1 %133, i1 true, i1 %135
  br i1 %136, label %138, label %137

137:                                              ; preds = %117
  call void @Perl_sv_magic(ptr noundef nonnull %31, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #14
  br label %138

138:                                              ; preds = %117, %137, %35, %16, %7, %116, %108, %89
  %139 = phi ptr [ %31, %89 ], [ null, %116 ], [ null, %108 ], [ null, %7 ], [ null, %16 ], [ null, %35 ], [ %31, %137 ], [ %31, %117 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret ptr %139
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @retrieve_array(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !32
  %10 = getelementptr inbounds i8, ptr %9, i64 4
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !33
  %13 = icmp ugt ptr %10, %12
  br i1 %13, label %113, label %14

14:                                               ; preds = %7
  %15 = load i32, ptr %9, align 1
  store i32 %15, ptr %3, align 4
  store ptr %10, ptr %8, align 8, !tbaa !32
  br label %19

16:                                               ; preds = %2
  %17 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %5, ptr noundef nonnull %3, i64 noundef 4) #14
  %18 = icmp eq i64 %17, 4
  br i1 %18, label %19, label %113

19:                                               ; preds = %16, %14
  %20 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %21 = load i32, ptr %20, align 8, !tbaa !40
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %3, align 4, !tbaa !13
  %25 = call fastcc i32 @__bswap_32(i32 noundef %24) #15
  store i32 %25, ptr %3, align 4, !tbaa !13
  br label %26

26:                                               ; preds = %23, %19
  %27 = call ptr @Perl_newSV_type(i32 noundef 11) #14
  %28 = icmp eq ptr %1, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %31

31:                                               ; preds = %26, %29
  %32 = phi ptr [ %30, %29 ], [ null, %26 ]
  %33 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !60
  %35 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %36 = load i64, ptr %35, align 8, !tbaa !53
  %37 = add nsw i64 %36, 1
  store i64 %37, ptr %35, align 8, !tbaa !53
  %38 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %27) #15
  %39 = call ptr @Perl_av_store(ptr noundef %34, i64 noundef %36, ptr noundef %27) #14
  %40 = icmp eq ptr %39, null
  br i1 %40, label %113, label %41

41:                                               ; preds = %31
  %42 = icmp eq ptr %32, null
  br i1 %42, label %82, label %43

43:                                               ; preds = %41
  %44 = call ptr @Perl_newRV_noinc(ptr noundef %27) #14
  %45 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %46 = load i32, ptr %45, align 8, !tbaa !63
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %79, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.hv, ptr %32, i64 0, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !66
  %51 = and i32 %50, 33554432
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %75, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.hv, ptr %32, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !11
  %56 = load ptr, ptr %32, align 8, !tbaa !47
  %57 = getelementptr inbounds %struct.xpvhv, ptr %56, i64 0, i32 3
  %58 = load i64, ptr %57, align 8, !tbaa !49
  %59 = getelementptr ptr, ptr %55, i64 %58
  %60 = getelementptr ptr, ptr %59, i64 1
  %61 = load ptr, ptr %60, align 8, !tbaa !11
  %62 = icmp eq ptr %61, null
  br i1 %62, label %75, label %63

63:                                               ; preds = %53
  %64 = getelementptr i8, ptr %59, i64 36
  %65 = load i32, ptr %64, align 4, !tbaa !68
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %61, align 8, !tbaa !12
  %69 = icmp eq ptr %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %63, %67
  %71 = call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %32, i1 noundef zeroext false) #14
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32, ptr %49, align 4, !tbaa !66
  br label %75

75:                                               ; preds = %73, %48, %53, %67
  %76 = phi i32 [ %74, %73 ], [ %50, %48 ], [ %50, %53 ], [ %50, %67 ]
  %77 = and i32 %76, -268435457
  store i32 %77, ptr %49, align 4, !tbaa !66
  br label %79

78:                                               ; preds = %70
  store i32 0, ptr %45, align 8, !tbaa !63
  call fastcc void @SvAMAGIC_on(ptr noundef %44) #15
  br label %79

79:                                               ; preds = %75, %78, %43
  %80 = call ptr @Perl_sv_bless(ptr noundef %44, ptr noundef nonnull %32) #14
  %81 = getelementptr inbounds %struct.sv, ptr %44, i64 0, i32 3
  store ptr null, ptr %81, align 8, !tbaa !11
  call fastcc void @S_SvREFCNT_dec(ptr noundef %44) #15
  br label %82

82:                                               ; preds = %79, %41
  %83 = load i32, ptr %3, align 4, !tbaa !13
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %113, label %85

85:                                               ; preds = %82
  %86 = sext i32 %83 to i64
  call void @Perl_av_extend(ptr noundef %27, i64 noundef %86) #14
  %87 = load i32, ptr %3, align 4, !tbaa !13
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %113

89:                                               ; preds = %85, %101
  %90 = phi i64 [ %103, %101 ], [ 0, %85 ]
  %91 = phi i8 [ %102, %101 ], [ 0, %85 ]
  %92 = call fastcc ptr @retrieve(ptr noundef %0, ptr noundef null) #15
  %93 = icmp eq ptr %92, null
  br i1 %93, label %113, label %94

94:                                               ; preds = %89
  %95 = icmp eq ptr %92, @PL_sv_undef
  br i1 %95, label %101, label %96

96:                                               ; preds = %94
  %97 = icmp eq ptr %92, @PL_sv_placeholder
  %98 = select i1 %97, ptr @PL_sv_undef, ptr %92
  %99 = call ptr @Perl_av_store(ptr noundef %27, i64 noundef %90, ptr noundef nonnull %98) #14
  %100 = icmp eq ptr %99, null
  br i1 %100, label %113, label %101

101:                                              ; preds = %94, %96
  %102 = phi i8 [ %91, %96 ], [ 1, %94 ]
  %103 = add nuw nsw i64 %90, 1
  %104 = load i32, ptr %3, align 4, !tbaa !13
  %105 = sext i32 %104 to i64
  %106 = icmp slt i64 %103, %105
  br i1 %106, label %89, label %107, !llvm.loop !112

107:                                              ; preds = %101
  %108 = and i8 %102, 1
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = add nsw i32 %104, -1
  %112 = sext i32 %111 to i64
  call void @Perl_av_fill(ptr noundef %27, i64 noundef %112) #14
  br label %113

113:                                              ; preds = %96, %89, %85, %107, %110, %82, %31, %16, %7
  %114 = phi ptr [ null, %7 ], [ null, %16 ], [ null, %31 ], [ %27, %82 ], [ %27, %110 ], [ %27, %107 ], [ %27, %85 ], [ null, %89 ], [ null, %96 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret ptr %114
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @retrieve_hash(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !32
  %11 = getelementptr inbounds i8, ptr %10, i64 4
  %12 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !33
  %14 = icmp ugt ptr %11, %13
  br i1 %14, label %170, label %15

15:                                               ; preds = %8
  %16 = load i32, ptr %10, align 1
  store i32 %16, ptr %3, align 4
  store ptr %11, ptr %9, align 8, !tbaa !32
  br label %20

17:                                               ; preds = %2
  %18 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %6, ptr noundef nonnull %3, i64 noundef 4) #14
  %19 = icmp eq i64 %18, 4
  br i1 %19, label %20, label %170

20:                                               ; preds = %17, %15
  %21 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %22 = load i32, ptr %21, align 8, !tbaa !40
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %3, align 4, !tbaa !13
  %26 = call fastcc i32 @__bswap_32(i32 noundef %25) #15
  store i32 %26, ptr %3, align 4, !tbaa !13
  br label %27

27:                                               ; preds = %24, %20
  %28 = call ptr @Perl_newSV_type(i32 noundef 12) #14
  %29 = icmp eq ptr %1, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %32

32:                                               ; preds = %27, %30
  %33 = phi ptr [ %31, %30 ], [ null, %27 ]
  %34 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !60
  %36 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %37 = load i64, ptr %36, align 8, !tbaa !53
  %38 = add nsw i64 %37, 1
  store i64 %38, ptr %36, align 8, !tbaa !53
  %39 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %28) #15
  %40 = call ptr @Perl_av_store(ptr noundef %35, i64 noundef %37, ptr noundef %28) #14
  %41 = icmp eq ptr %40, null
  br i1 %41, label %170, label %42

42:                                               ; preds = %32
  %43 = icmp eq ptr %33, null
  br i1 %43, label %83, label %44

44:                                               ; preds = %42
  %45 = call ptr @Perl_newRV_noinc(ptr noundef %28) #14
  %46 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %47 = load i32, ptr %46, align 8, !tbaa !63
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %80, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.hv, ptr %33, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !66
  %52 = and i32 %51, 33554432
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %76, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.hv, ptr %33, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !11
  %57 = load ptr, ptr %33, align 8, !tbaa !47
  %58 = getelementptr inbounds %struct.xpvhv, ptr %57, i64 0, i32 3
  %59 = load i64, ptr %58, align 8, !tbaa !49
  %60 = getelementptr ptr, ptr %56, i64 %59
  %61 = getelementptr ptr, ptr %60, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !11
  %63 = icmp eq ptr %62, null
  br i1 %63, label %76, label %64

64:                                               ; preds = %54
  %65 = getelementptr i8, ptr %60, i64 36
  %66 = load i32, ptr %65, align 4, !tbaa !68
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %62, align 8, !tbaa !12
  %70 = icmp eq ptr %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %64, %68
  %72 = call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %33, i1 noundef zeroext false) #14
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32, ptr %50, align 4, !tbaa !66
  br label %76

76:                                               ; preds = %74, %49, %54, %68
  %77 = phi i32 [ %75, %74 ], [ %51, %49 ], [ %51, %54 ], [ %51, %68 ]
  %78 = and i32 %77, -268435457
  store i32 %78, ptr %50, align 4, !tbaa !66
  br label %80

79:                                               ; preds = %71
  store i32 0, ptr %46, align 8, !tbaa !63
  call fastcc void @SvAMAGIC_on(ptr noundef %45) #15
  br label %80

80:                                               ; preds = %76, %79, %44
  %81 = call ptr @Perl_sv_bless(ptr noundef %45, ptr noundef nonnull %33) #14
  %82 = getelementptr inbounds %struct.sv, ptr %45, i64 0, i32 3
  store ptr null, ptr %82, align 8, !tbaa !11
  call fastcc void @S_SvREFCNT_dec(ptr noundef %45) #15
  br label %83

83:                                               ; preds = %80, %42
  %84 = load i32, ptr %3, align 4, !tbaa !13
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %170, label %86

86:                                               ; preds = %83
  %87 = add nsw i32 %84, 1
  %88 = sext i32 %87 to i64
  call void @Perl_hv_ksplit(ptr noundef %28, i64 noundef %88) #14
  %89 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %90 = load i32, ptr %3, align 4, !tbaa !13
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %170

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %94 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 21
  %95 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 21, i32 1
  br label %100

96:                                               ; preds = %161
  %97 = add nuw nsw i32 %101, 1
  %98 = load i32, ptr %3, align 4, !tbaa !13
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %170, !llvm.loop !113

100:                                              ; preds = %92, %96
  %101 = phi i32 [ 0, %92 ], [ %97, %96 ]
  %102 = call fastcc ptr @retrieve(ptr noundef nonnull %0, ptr noundef null) #15
  %103 = icmp eq ptr %102, null
  br i1 %103, label %170, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr %5, align 8, !tbaa !35
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load ptr, ptr %89, align 8, !tbaa !32
  %109 = getelementptr inbounds i8, ptr %108, i64 4
  %110 = load ptr, ptr %93, align 8, !tbaa !33
  %111 = icmp ugt ptr %109, %110
  br i1 %111, label %170, label %112

112:                                              ; preds = %107
  %113 = load i32, ptr %108, align 1
  store i32 %113, ptr %4, align 4
  store ptr %109, ptr %89, align 8, !tbaa !32
  br label %119

114:                                              ; preds = %104
  %115 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %105, ptr noundef nonnull %4, i64 noundef 4) #14
  %116 = icmp eq i64 %115, 4
  br i1 %116, label %117, label %170

117:                                              ; preds = %114
  %118 = load i32, ptr %4, align 4, !tbaa !13
  br label %119

119:                                              ; preds = %117, %112
  %120 = phi i32 [ %118, %117 ], [ %113, %112 ]
  %121 = load i32, ptr %21, align 8, !tbaa !40
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %119
  %124 = call fastcc i32 @__bswap_32(i32 noundef %120) #15
  store i32 %124, ptr %4, align 4, !tbaa !13
  br label %125

125:                                              ; preds = %119, %123
  %126 = phi i32 [ %120, %119 ], [ %124, %123 ]
  %127 = sext i32 %126 to i64
  %128 = load i64, ptr %95, align 8, !tbaa !105
  %129 = icmp ugt i64 %128, %127
  br i1 %129, label %137, label %130

130:                                              ; preds = %125
  %131 = load ptr, ptr %94, align 8, !tbaa !64
  %132 = add nsw i64 %127, 1
  %133 = call ptr @Perl_safesysrealloc(ptr noundef %131, i64 noundef %132) #14
  store ptr %133, ptr %94, align 8, !tbaa !64
  %134 = load i32, ptr %4, align 4, !tbaa !13
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, 1
  store i64 %136, ptr %95, align 8, !tbaa !105
  br label %137

137:                                              ; preds = %125, %130
  %138 = phi i32 [ %134, %130 ], [ %126, %125 ]
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %161, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr %5, align 8, !tbaa !35
  %142 = icmp eq ptr %141, null
  %143 = sext i32 %138 to i64
  br i1 %142, label %144, label %155

144:                                              ; preds = %140
  %145 = load ptr, ptr %89, align 8, !tbaa !32
  %146 = getelementptr inbounds i8, ptr %145, i64 %143
  %147 = load ptr, ptr %93, align 8, !tbaa !33
  %148 = icmp ugt ptr %146, %147
  br i1 %148, label %170, label %149

149:                                              ; preds = %144
  %150 = load ptr, ptr %94, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %150, ptr align 1 %145, i64 %143, i1 false)
  %151 = load i32, ptr %4, align 4, !tbaa !13
  %152 = load ptr, ptr %89, align 8, !tbaa !32
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, ptr %152, i64 %153
  store ptr %154, ptr %89, align 8, !tbaa !32
  br label %161

155:                                              ; preds = %140
  %156 = load ptr, ptr %94, align 8, !tbaa !64
  %157 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %141, ptr noundef %156, i64 noundef %143) #14
  %158 = load i32, ptr %4, align 4, !tbaa !13
  %159 = sext i32 %158 to i64
  %160 = icmp eq i64 %157, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %137, %149, %155
  %162 = phi i32 [ %151, %149 ], [ %158, %155 ], [ 0, %137 ]
  %163 = load ptr, ptr %94, align 8, !tbaa !64
  %164 = sext i32 %162 to i64
  %165 = getelementptr inbounds i8, ptr %163, i64 %164
  store i8 0, ptr %165, align 1, !tbaa !11
  %166 = load ptr, ptr %94, align 8, !tbaa !64
  %167 = load i32, ptr %4, align 4, !tbaa !13
  %168 = call ptr @Perl_hv_common_key_len(ptr noundef %28, ptr noundef %166, i32 noundef %167, i32 noundef 36, ptr noundef nonnull %102, i32 noundef 0) #14
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %96

170:                                              ; preds = %100, %107, %114, %144, %155, %161, %96, %86, %83, %32, %17, %8
  %171 = phi ptr [ null, %8 ], [ null, %17 ], [ null, %32 ], [ %28, %83 ], [ %28, %86 ], [ null, %100 ], [ null, %107 ], [ null, %114 ], [ null, %144 ], [ null, %155 ], [ null, %161 ], [ %28, %96 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret ptr %171
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @retrieve_ref(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @Perl_newSV(i64 noundef 0) #14
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %12 = load i64, ptr %11, align 8, !tbaa !53
  %13 = add nsw i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !53
  %14 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %3) #15
  %15 = tail call ptr @Perl_av_store(ptr noundef %10, i64 noundef %12, ptr noundef %3) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %68, label %17

17:                                               ; preds = %7
  %18 = icmp eq ptr %8, null
  br i1 %18, label %58, label %19

19:                                               ; preds = %17
  %20 = tail call ptr @Perl_newRV_noinc(ptr noundef %3) #14
  %21 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %22 = load i32, ptr %21, align 8, !tbaa !63
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %55, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !66
  %27 = and i32 %26, 33554432
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = load ptr, ptr %8, align 8, !tbaa !47
  %33 = getelementptr inbounds %struct.xpvhv, ptr %32, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !49
  %35 = getelementptr ptr, ptr %31, i64 %34
  %36 = getelementptr ptr, ptr %35, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !11
  %38 = icmp eq ptr %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %29
  %40 = getelementptr i8, ptr %35, i64 36
  %41 = load i32, ptr %40, align 4, !tbaa !68
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %37, align 8, !tbaa !12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %39, %43
  %47 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %8, i1 noundef zeroext false) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, ptr %25, align 4, !tbaa !66
  br label %51

51:                                               ; preds = %49, %24, %29, %43
  %52 = phi i32 [ %50, %49 ], [ %26, %24 ], [ %26, %29 ], [ %26, %43 ]
  %53 = and i32 %52, -268435457
  store i32 %53, ptr %25, align 4, !tbaa !66
  br label %55

54:                                               ; preds = %46
  store i32 0, ptr %21, align 8, !tbaa !63
  tail call fastcc void @SvAMAGIC_on(ptr noundef %20) #15
  br label %55

55:                                               ; preds = %51, %54, %19
  %56 = tail call ptr @Perl_sv_bless(ptr noundef %20, ptr noundef nonnull %8) #14
  %57 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  store ptr null, ptr %57, align 8, !tbaa !11
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %20) #15
  br label %58

58:                                               ; preds = %55, %17
  %59 = tail call fastcc ptr @retrieve(ptr noundef nonnull %0, ptr noundef null) #15
  %60 = icmp eq ptr %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  br i1 %4, label %62, label %63

62:                                               ; preds = %61
  tail call void @Perl_sv_upgrade(ptr noundef %3, i32 noundef 1) #14
  br label %63

63:                                               ; preds = %62, %61
  %64 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  store ptr %59, ptr %64, align 8, !tbaa !11
  %65 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !28
  %67 = or i32 %66, 2048
  store i32 %67, ptr %65, align 4, !tbaa !28
  br label %68

68:                                               ; preds = %58, %7, %63
  %69 = phi ptr [ %3, %63 ], [ null, %7 ], [ null, %58 ]
  ret ptr %69
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @retrieve_undef(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @Perl_newSV(i64 noundef 0) #14
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %12 = load i64, ptr %11, align 8, !tbaa !53
  %13 = add nsw i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !53
  %14 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %3) #15
  %15 = tail call ptr @Perl_av_store(ptr noundef %10, i64 noundef %12, ptr noundef %3) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %58, label %17

17:                                               ; preds = %7
  %18 = icmp eq ptr %8, null
  br i1 %18, label %58, label %19

19:                                               ; preds = %17
  %20 = tail call ptr @Perl_newRV_noinc(ptr noundef %3) #14
  %21 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %22 = load i32, ptr %21, align 8, !tbaa !63
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %55, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !66
  %27 = and i32 %26, 33554432
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = load ptr, ptr %8, align 8, !tbaa !47
  %33 = getelementptr inbounds %struct.xpvhv, ptr %32, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !49
  %35 = getelementptr ptr, ptr %31, i64 %34
  %36 = getelementptr ptr, ptr %35, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !11
  %38 = icmp eq ptr %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %29
  %40 = getelementptr i8, ptr %35, i64 36
  %41 = load i32, ptr %40, align 4, !tbaa !68
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %37, align 8, !tbaa !12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %39, %43
  %47 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %8, i1 noundef zeroext false) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, ptr %25, align 4, !tbaa !66
  br label %51

51:                                               ; preds = %49, %24, %29, %43
  %52 = phi i32 [ %50, %49 ], [ %26, %24 ], [ %26, %29 ], [ %26, %43 ]
  %53 = and i32 %52, -268435457
  store i32 %53, ptr %25, align 4, !tbaa !66
  br label %55

54:                                               ; preds = %46
  store i32 0, ptr %21, align 8, !tbaa !63
  tail call fastcc void @SvAMAGIC_on(ptr noundef %20) #15
  br label %55

55:                                               ; preds = %51, %54, %19
  %56 = tail call ptr @Perl_sv_bless(ptr noundef %20, ptr noundef nonnull %8) #14
  %57 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  store ptr null, ptr %57, align 8, !tbaa !11
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %20) #15
  br label %58

58:                                               ; preds = %17, %55, %7
  %59 = phi ptr [ null, %7 ], [ %3, %55 ], [ %3, %17 ]
  ret ptr %59
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @retrieve_integer(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !32
  %10 = getelementptr inbounds i8, ptr %9, i64 8
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !33
  %13 = icmp ugt ptr %10, %12
  br i1 %13, label %78, label %14

14:                                               ; preds = %7
  %15 = load i64, ptr %9, align 1
  store i64 %15, ptr %3, align 8
  store ptr %10, ptr %8, align 8, !tbaa !32
  br label %21

16:                                               ; preds = %2
  %17 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %5, ptr noundef nonnull %3, i64 noundef 8) #14
  %18 = icmp eq i64 %17, 8
  br i1 %18, label %19, label %78

19:                                               ; preds = %16
  %20 = load i64, ptr %3, align 8, !tbaa !39
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi i64 [ %20, %19 ], [ %15, %14 ]
  %23 = call ptr @Perl_newSViv(i64 noundef %22) #14
  %24 = icmp eq ptr %1, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %27

27:                                               ; preds = %21, %25
  %28 = phi ptr [ %26, %25 ], [ null, %21 ]
  %29 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !60
  %31 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %32 = load i64, ptr %31, align 8, !tbaa !53
  %33 = add nsw i64 %32, 1
  store i64 %33, ptr %31, align 8, !tbaa !53
  %34 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %23) #15
  %35 = call ptr @Perl_av_store(ptr noundef %30, i64 noundef %32, ptr noundef %23) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %78, label %37

37:                                               ; preds = %27
  %38 = icmp eq ptr %28, null
  br i1 %38, label %78, label %39

39:                                               ; preds = %37
  %40 = call ptr @Perl_newRV_noinc(ptr noundef %23) #14
  %41 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %42 = load i32, ptr %41, align 8, !tbaa !63
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %75, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.hv, ptr %28, i64 0, i32 2
  %46 = load i32, ptr %45, align 4, !tbaa !66
  %47 = and i32 %46, 33554432
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %71, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.hv, ptr %28, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !11
  %52 = load ptr, ptr %28, align 8, !tbaa !47
  %53 = getelementptr inbounds %struct.xpvhv, ptr %52, i64 0, i32 3
  %54 = load i64, ptr %53, align 8, !tbaa !49
  %55 = getelementptr ptr, ptr %51, i64 %54
  %56 = getelementptr ptr, ptr %55, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !11
  %58 = icmp eq ptr %57, null
  br i1 %58, label %71, label %59

59:                                               ; preds = %49
  %60 = getelementptr i8, ptr %55, i64 36
  %61 = load i32, ptr %60, align 4, !tbaa !68
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %57, align 8, !tbaa !12
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %59, %63
  %67 = call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %28, i1 noundef zeroext false) #14
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, ptr %45, align 4, !tbaa !66
  br label %71

71:                                               ; preds = %69, %44, %49, %63
  %72 = phi i32 [ %70, %69 ], [ %46, %44 ], [ %46, %49 ], [ %46, %63 ]
  %73 = and i32 %72, -268435457
  store i32 %73, ptr %45, align 4, !tbaa !66
  br label %75

74:                                               ; preds = %66
  store i32 0, ptr %41, align 8, !tbaa !63
  call fastcc void @SvAMAGIC_on(ptr noundef %40) #15
  br label %75

75:                                               ; preds = %71, %74, %39
  %76 = call ptr @Perl_sv_bless(ptr noundef %40, ptr noundef nonnull %28) #14
  %77 = getelementptr inbounds %struct.sv, ptr %40, i64 0, i32 3
  store ptr null, ptr %77, align 8, !tbaa !11
  call fastcc void @S_SvREFCNT_dec(ptr noundef %40) #15
  br label %78

78:                                               ; preds = %37, %75, %27, %16, %7
  %79 = phi ptr [ null, %7 ], [ null, %16 ], [ null, %27 ], [ %23, %75 ], [ %23, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %79
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @retrieve_double(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !32
  %10 = getelementptr inbounds i8, ptr %9, i64 8
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !33
  %13 = icmp ugt ptr %10, %12
  br i1 %13, label %79, label %14

14:                                               ; preds = %7
  %15 = load i64, ptr %9, align 1
  store i64 %15, ptr %3, align 8
  store ptr %10, ptr %8, align 8, !tbaa !32
  %16 = bitcast i64 %15 to double
  br label %22

17:                                               ; preds = %2
  %18 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %5, ptr noundef nonnull %3, i64 noundef 8) #14
  %19 = icmp eq i64 %18, 8
  br i1 %19, label %20, label %79

20:                                               ; preds = %17
  %21 = load double, ptr %3, align 8, !tbaa !88
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi double [ %21, %20 ], [ %16, %14 ]
  %24 = call ptr @Perl_newSVnv(double noundef %23) #14
  %25 = icmp eq ptr %1, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %28

28:                                               ; preds = %22, %26
  %29 = phi ptr [ %27, %26 ], [ null, %22 ]
  %30 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !60
  %32 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %33 = load i64, ptr %32, align 8, !tbaa !53
  %34 = add nsw i64 %33, 1
  store i64 %34, ptr %32, align 8, !tbaa !53
  %35 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %24) #15
  %36 = call ptr @Perl_av_store(ptr noundef %31, i64 noundef %33, ptr noundef %24) #14
  %37 = icmp eq ptr %36, null
  br i1 %37, label %79, label %38

38:                                               ; preds = %28
  %39 = icmp eq ptr %29, null
  br i1 %39, label %79, label %40

40:                                               ; preds = %38
  %41 = call ptr @Perl_newRV_noinc(ptr noundef %24) #14
  %42 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %43 = load i32, ptr %42, align 8, !tbaa !63
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %76, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.hv, ptr %29, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !66
  %48 = and i32 %47, 33554432
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %72, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.hv, ptr %29, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !11
  %53 = load ptr, ptr %29, align 8, !tbaa !47
  %54 = getelementptr inbounds %struct.xpvhv, ptr %53, i64 0, i32 3
  %55 = load i64, ptr %54, align 8, !tbaa !49
  %56 = getelementptr ptr, ptr %52, i64 %55
  %57 = getelementptr ptr, ptr %56, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !11
  %59 = icmp eq ptr %58, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %50
  %61 = getelementptr i8, ptr %56, i64 36
  %62 = load i32, ptr %61, align 4, !tbaa !68
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %58, align 8, !tbaa !12
  %66 = icmp eq ptr %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %60, %64
  %68 = call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %29, i1 noundef zeroext false) #14
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, ptr %46, align 4, !tbaa !66
  br label %72

72:                                               ; preds = %70, %45, %50, %64
  %73 = phi i32 [ %71, %70 ], [ %47, %45 ], [ %47, %50 ], [ %47, %64 ]
  %74 = and i32 %73, -268435457
  store i32 %74, ptr %46, align 4, !tbaa !66
  br label %76

75:                                               ; preds = %67
  store i32 0, ptr %42, align 8, !tbaa !63
  call fastcc void @SvAMAGIC_on(ptr noundef %41) #15
  br label %76

76:                                               ; preds = %72, %75, %40
  %77 = call ptr @Perl_sv_bless(ptr noundef %41, ptr noundef nonnull %29) #14
  %78 = getelementptr inbounds %struct.sv, ptr %41, i64 0, i32 3
  store ptr null, ptr %78, align 8, !tbaa !11
  call fastcc void @S_SvREFCNT_dec(ptr noundef %41) #15
  br label %79

79:                                               ; preds = %38, %76, %28, %17, %7
  %80 = phi ptr [ null, %7 ], [ null, %17 ], [ null, %28 ], [ %24, %76 ], [ %24, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret ptr %80
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @retrieve_byte(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !32
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !33
  %11 = icmp ult ptr %8, %10
  br i1 %11, label %12, label %80

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %13, ptr %7, align 8, !tbaa !32
  %14 = load i8, ptr %8, align 1, !tbaa !11
  %15 = zext i8 %14 to i32
  br label %19

16:                                               ; preds = %2
  %17 = tail call i32 @PerlIO_getc(ptr noundef nonnull %4) #14
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %80, label %19

19:                                               ; preds = %16, %12
  %20 = phi i32 [ %17, %16 ], [ %15, %12 ]
  %21 = xor i32 %20, 128
  %22 = zext i32 %21 to i64
  %23 = shl i64 %22, 56
  %24 = ashr exact i64 %23, 56
  %25 = tail call ptr @Perl_newSViv(i64 noundef %24) #14
  %26 = icmp eq ptr %1, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %29

29:                                               ; preds = %19, %27
  %30 = phi ptr [ %28, %27 ], [ null, %19 ]
  %31 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !60
  %33 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %34 = load i64, ptr %33, align 8, !tbaa !53
  %35 = add nsw i64 %34, 1
  store i64 %35, ptr %33, align 8, !tbaa !53
  %36 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %25) #15
  %37 = tail call ptr @Perl_av_store(ptr noundef %32, i64 noundef %34, ptr noundef %25) #14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %80, label %39

39:                                               ; preds = %29
  %40 = icmp eq ptr %30, null
  br i1 %40, label %80, label %41

41:                                               ; preds = %39
  %42 = tail call ptr @Perl_newRV_noinc(ptr noundef %25) #14
  %43 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %44 = load i32, ptr %43, align 8, !tbaa !63
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %77, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.hv, ptr %30, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !66
  %49 = and i32 %48, 33554432
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %73, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.hv, ptr %30, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !11
  %54 = load ptr, ptr %30, align 8, !tbaa !47
  %55 = getelementptr inbounds %struct.xpvhv, ptr %54, i64 0, i32 3
  %56 = load i64, ptr %55, align 8, !tbaa !49
  %57 = getelementptr ptr, ptr %53, i64 %56
  %58 = getelementptr ptr, ptr %57, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !11
  %60 = icmp eq ptr %59, null
  br i1 %60, label %73, label %61

61:                                               ; preds = %51
  %62 = getelementptr i8, ptr %57, i64 36
  %63 = load i32, ptr %62, align 4, !tbaa !68
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %59, align 8, !tbaa !12
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %61, %65
  %69 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %30, i1 noundef zeroext false) #14
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, ptr %47, align 4, !tbaa !66
  br label %73

73:                                               ; preds = %71, %46, %51, %65
  %74 = phi i32 [ %72, %71 ], [ %48, %46 ], [ %48, %51 ], [ %48, %65 ]
  %75 = and i32 %74, -268435457
  store i32 %75, ptr %47, align 4, !tbaa !66
  br label %77

76:                                               ; preds = %68
  store i32 0, ptr %43, align 8, !tbaa !63
  tail call fastcc void @SvAMAGIC_on(ptr noundef %42) #15
  br label %77

77:                                               ; preds = %73, %76, %41
  %78 = tail call ptr @Perl_sv_bless(ptr noundef %42, ptr noundef nonnull %30) #14
  %79 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 3
  store ptr null, ptr %79, align 8, !tbaa !11
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %42) #15
  br label %80

80:                                               ; preds = %39, %77, %29, %16, %6
  %81 = phi ptr [ null, %6 ], [ null, %16 ], [ null, %29 ], [ %25, %77 ], [ %25, %39 ]
  ret ptr %81
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @retrieve_netint(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !32
  %10 = getelementptr inbounds i8, ptr %9, i64 4
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !33
  %13 = icmp ugt ptr %10, %12
  br i1 %13, label %80, label %14

14:                                               ; preds = %7
  %15 = load i32, ptr %9, align 1
  store i32 %15, ptr %3, align 4
  store ptr %10, ptr %8, align 8, !tbaa !32
  br label %21

16:                                               ; preds = %2
  %17 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %5, ptr noundef nonnull %3, i64 noundef 4) #14
  %18 = icmp eq i64 %17, 4
  br i1 %18, label %19, label %80

19:                                               ; preds = %16
  %20 = load i32, ptr %3, align 4, !tbaa !13
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi i32 [ %20, %19 ], [ %15, %14 ]
  %23 = call fastcc i32 @__bswap_32(i32 noundef %22) #15
  %24 = sext i32 %23 to i64
  %25 = call ptr @Perl_newSViv(i64 noundef %24) #14
  %26 = icmp eq ptr %1, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %29

29:                                               ; preds = %21, %27
  %30 = phi ptr [ %28, %27 ], [ null, %21 ]
  %31 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !60
  %33 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %34 = load i64, ptr %33, align 8, !tbaa !53
  %35 = add nsw i64 %34, 1
  store i64 %35, ptr %33, align 8, !tbaa !53
  %36 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %25) #15
  %37 = call ptr @Perl_av_store(ptr noundef %32, i64 noundef %34, ptr noundef %25) #14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %80, label %39

39:                                               ; preds = %29
  %40 = icmp eq ptr %30, null
  br i1 %40, label %80, label %41

41:                                               ; preds = %39
  %42 = call ptr @Perl_newRV_noinc(ptr noundef %25) #14
  %43 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %44 = load i32, ptr %43, align 8, !tbaa !63
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %77, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.hv, ptr %30, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !66
  %49 = and i32 %48, 33554432
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %73, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.hv, ptr %30, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !11
  %54 = load ptr, ptr %30, align 8, !tbaa !47
  %55 = getelementptr inbounds %struct.xpvhv, ptr %54, i64 0, i32 3
  %56 = load i64, ptr %55, align 8, !tbaa !49
  %57 = getelementptr ptr, ptr %53, i64 %56
  %58 = getelementptr ptr, ptr %57, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !11
  %60 = icmp eq ptr %59, null
  br i1 %60, label %73, label %61

61:                                               ; preds = %51
  %62 = getelementptr i8, ptr %57, i64 36
  %63 = load i32, ptr %62, align 4, !tbaa !68
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %59, align 8, !tbaa !12
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %61, %65
  %69 = call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %30, i1 noundef zeroext false) #14
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, ptr %47, align 4, !tbaa !66
  br label %73

73:                                               ; preds = %71, %46, %51, %65
  %74 = phi i32 [ %72, %71 ], [ %48, %46 ], [ %48, %51 ], [ %48, %65 ]
  %75 = and i32 %74, -268435457
  store i32 %75, ptr %47, align 4, !tbaa !66
  br label %77

76:                                               ; preds = %68
  store i32 0, ptr %43, align 8, !tbaa !63
  call fastcc void @SvAMAGIC_on(ptr noundef %42) #15
  br label %77

77:                                               ; preds = %73, %76, %41
  %78 = call ptr @Perl_sv_bless(ptr noundef %42, ptr noundef nonnull %30) #14
  %79 = getelementptr inbounds %struct.sv, ptr %42, i64 0, i32 3
  store ptr null, ptr %79, align 8, !tbaa !11
  call fastcc void @S_SvREFCNT_dec(ptr noundef %42) #15
  br label %80

80:                                               ; preds = %39, %77, %29, %16, %7
  %81 = phi ptr [ null, %7 ], [ null, %16 ], [ null, %29 ], [ %25, %77 ], [ %25, %39 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret ptr %81
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @retrieve_scalar(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !32
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !33
  %11 = icmp ult ptr %8, %10
  br i1 %11, label %12, label %149

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %13, ptr %7, align 8, !tbaa !32
  %14 = load i8, ptr %8, align 1, !tbaa !11
  %15 = zext i8 %14 to i32
  br label %19

16:                                               ; preds = %2
  %17 = tail call i32 @PerlIO_getc(ptr noundef nonnull %4) #14
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %149, label %19

19:                                               ; preds = %16, %12
  %20 = phi i32 [ %17, %16 ], [ %15, %12 ]
  %21 = sext i32 %20 to i64
  %22 = tail call ptr @Perl_newSV(i64 noundef %21) #14
  %23 = icmp eq ptr %1, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %26

26:                                               ; preds = %19, %24
  %27 = phi ptr [ %25, %24 ], [ null, %19 ]
  %28 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !60
  %30 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %31 = load i64, ptr %30, align 8, !tbaa !53
  %32 = add nsw i64 %31, 1
  store i64 %32, ptr %30, align 8, !tbaa !53
  %33 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %22) #15
  %34 = tail call ptr @Perl_av_store(ptr noundef %29, i64 noundef %31, ptr noundef %22) #14
  %35 = icmp eq ptr %34, null
  br i1 %35, label %149, label %36

36:                                               ; preds = %26
  %37 = icmp eq ptr %27, null
  br i1 %37, label %77, label %38

38:                                               ; preds = %36
  %39 = tail call ptr @Perl_newRV_noinc(ptr noundef %22) #14
  %40 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %41 = load i32, ptr %40, align 8, !tbaa !63
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %74, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.hv, ptr %27, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !66
  %46 = and i32 %45, 33554432
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %70, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.hv, ptr %27, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !11
  %51 = load ptr, ptr %27, align 8, !tbaa !47
  %52 = getelementptr inbounds %struct.xpvhv, ptr %51, i64 0, i32 3
  %53 = load i64, ptr %52, align 8, !tbaa !49
  %54 = getelementptr ptr, ptr %50, i64 %53
  %55 = getelementptr ptr, ptr %54, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !11
  %57 = icmp eq ptr %56, null
  br i1 %57, label %70, label %58

58:                                               ; preds = %48
  %59 = getelementptr i8, ptr %54, i64 36
  %60 = load i32, ptr %59, align 4, !tbaa !68
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %56, align 8, !tbaa !12
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %58, %62
  %66 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %27, i1 noundef zeroext false) #14
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32, ptr %44, align 4, !tbaa !66
  br label %70

70:                                               ; preds = %68, %43, %48, %62
  %71 = phi i32 [ %69, %68 ], [ %45, %43 ], [ %45, %48 ], [ %45, %62 ]
  %72 = and i32 %71, -268435457
  store i32 %72, ptr %44, align 4, !tbaa !66
  br label %74

73:                                               ; preds = %65
  store i32 0, ptr %40, align 8, !tbaa !63
  tail call fastcc void @SvAMAGIC_on(ptr noundef %39) #15
  br label %74

74:                                               ; preds = %70, %73, %38
  %75 = tail call ptr @Perl_sv_bless(ptr noundef %39, ptr noundef nonnull %27) #14
  %76 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 3
  store ptr null, ptr %76, align 8, !tbaa !11
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %39) #15
  br label %77

77:                                               ; preds = %74, %36
  %78 = icmp eq i32 %20, 0
  br i1 %78, label %79, label %105

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %81 = load i32, ptr %80, align 4, !tbaa !28
  %82 = and i32 %81, 252
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %22, i32 noundef 3) #14
  %85 = load i32, ptr %80, align 4, !tbaa !28
  br label %86

86:                                               ; preds = %84, %79
  %87 = phi i32 [ %85, %84 ], [ %81, %79 ]
  %88 = and i32 %87, 268435456
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load ptr, ptr %22, align 8, !tbaa !55
  %92 = getelementptr inbounds %struct.xpv, ptr %91, i64 0, i32 3
  %93 = load i64, ptr %92, align 8, !tbaa !11
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90, %86
  %96 = tail call ptr @Perl_sv_grow(ptr noundef nonnull %22, i64 noundef 1) #14
  %97 = load ptr, ptr %22, align 8, !tbaa !55
  br label %98

98:                                               ; preds = %90, %95
  %99 = phi ptr [ %91, %90 ], [ %97, %95 ]
  %100 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !11
  %102 = getelementptr inbounds %struct.xpv, ptr %99, i64 0, i32 2
  %103 = load i64, ptr %102, align 8, !tbaa !74
  %104 = getelementptr inbounds i8, ptr %101, i64 %103
  br label %133

105:                                              ; preds = %77
  %106 = load ptr, ptr %3, align 8, !tbaa !35
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %121

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !32
  %111 = getelementptr inbounds i8, ptr %110, i64 %21
  %112 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !33
  %114 = icmp ugt ptr %111, %113
  br i1 %114, label %120, label %115

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %117, ptr align 1 %110, i64 %21, i1 false)
  %118 = load ptr, ptr %109, align 8, !tbaa !32
  %119 = getelementptr inbounds i8, ptr %118, i64 %21
  store ptr %119, ptr %109, align 8, !tbaa !32
  br label %127

120:                                              ; preds = %108
  tail call void @Perl_sv_free(ptr noundef %22) #14
  br label %149

121:                                              ; preds = %105
  %122 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !11
  %124 = tail call i64 @Perl_PerlIO_read(ptr noundef nonnull %106, ptr noundef %123, i64 noundef %21) #14
  %125 = icmp eq i64 %124, %21
  br i1 %125, label %127, label %126

126:                                              ; preds = %121
  tail call void @Perl_sv_free(ptr noundef nonnull %22) #14
  br label %149

127:                                              ; preds = %115, %121
  %128 = load ptr, ptr %22, align 8, !tbaa !55
  %129 = getelementptr inbounds %struct.xpv, ptr %128, i64 0, i32 2
  store i64 %21, ptr %129, align 8, !tbaa !74
  %130 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !11
  %132 = getelementptr inbounds i8, ptr %131, i64 %21
  br label %133

133:                                              ; preds = %127, %98
  %134 = phi ptr [ %132, %127 ], [ %104, %98 ]
  store i8 0, ptr %134, align 1, !tbaa !11
  %135 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 2
  %136 = load i32, ptr %135, align 4, !tbaa !28
  %137 = and i32 %136, 1610547455
  %138 = or disjoint i32 %137, 17408
  store i32 %138, ptr %135, align 4, !tbaa !28
  %139 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 13
  %140 = load i32, ptr %139, align 4, !tbaa !107
  %141 = icmp eq i32 %140, 0
  %142 = load i8, ptr @PL_tainting, align 1, !range !106
  %143 = icmp eq i8 %142, 0
  %144 = select i1 %141, i1 true, i1 %143
  %145 = load i8, ptr @PL_tainted, align 1, !range !106
  %146 = icmp eq i8 %145, 0
  %147 = select i1 %144, i1 true, i1 %146
  br i1 %147, label %149, label %148

148:                                              ; preds = %133
  tail call void @Perl_sv_magic(ptr noundef nonnull %22, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #14
  br label %149

149:                                              ; preds = %133, %148, %26, %16, %6, %126, %120
  %150 = phi ptr [ null, %126 ], [ null, %120 ], [ null, %6 ], [ null, %16 ], [ null, %26 ], [ %22, %148 ], [ %22, %133 ]
  ret ptr %150
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @retrieve_tied_array(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @Perl_newSV(i64 noundef 0) #14
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %12 = load i64, ptr %11, align 8, !tbaa !53
  %13 = add nsw i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !53
  %14 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %3) #15
  %15 = tail call ptr @Perl_av_store(ptr noundef %10, i64 noundef %12, ptr noundef %3) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %65, label %17

17:                                               ; preds = %7
  %18 = icmp eq ptr %8, null
  br i1 %18, label %58, label %19

19:                                               ; preds = %17
  %20 = tail call ptr @Perl_newRV_noinc(ptr noundef %3) #14
  %21 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %22 = load i32, ptr %21, align 8, !tbaa !63
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %55, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !66
  %27 = and i32 %26, 33554432
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = load ptr, ptr %8, align 8, !tbaa !47
  %33 = getelementptr inbounds %struct.xpvhv, ptr %32, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !49
  %35 = getelementptr ptr, ptr %31, i64 %34
  %36 = getelementptr ptr, ptr %35, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !11
  %38 = icmp eq ptr %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %29
  %40 = getelementptr i8, ptr %35, i64 36
  %41 = load i32, ptr %40, align 4, !tbaa !68
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %37, align 8, !tbaa !12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %39, %43
  %47 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %8, i1 noundef zeroext false) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, ptr %25, align 4, !tbaa !66
  br label %51

51:                                               ; preds = %49, %24, %29, %43
  %52 = phi i32 [ %50, %49 ], [ %26, %24 ], [ %26, %29 ], [ %26, %43 ]
  %53 = and i32 %52, -268435457
  store i32 %53, ptr %25, align 4, !tbaa !66
  br label %55

54:                                               ; preds = %46
  store i32 0, ptr %21, align 8, !tbaa !63
  tail call fastcc void @SvAMAGIC_on(ptr noundef %20) #15
  br label %55

55:                                               ; preds = %51, %54, %19
  %56 = tail call ptr @Perl_sv_bless(ptr noundef %20, ptr noundef nonnull %8) #14
  %57 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  store ptr null, ptr %57, align 8, !tbaa !11
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %20) #15
  br label %58

58:                                               ; preds = %55, %17
  %59 = tail call fastcc ptr @retrieve(ptr noundef nonnull %0, ptr noundef null) #15
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  tail call void @Perl_sv_upgrade(ptr noundef %3, i32 noundef 11) #14
  %62 = getelementptr inbounds %struct.av, ptr %3, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !114
  %64 = and i32 %63, -1073741825
  store i32 %64, ptr %62, align 4, !tbaa !114
  tail call void @Perl_sv_magic(ptr noundef %3, ptr noundef nonnull %59, i32 noundef 80, ptr noundef null, i32 noundef 0) #14
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %59) #15
  br label %65

65:                                               ; preds = %58, %7, %61
  %66 = phi ptr [ %3, %61 ], [ null, %7 ], [ null, %58 ]
  ret ptr %66
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @retrieve_tied_hash(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @Perl_newSV(i64 noundef 0) #14
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %12 = load i64, ptr %11, align 8, !tbaa !53
  %13 = add nsw i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !53
  %14 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %3) #15
  %15 = tail call ptr @Perl_av_store(ptr noundef %10, i64 noundef %12, ptr noundef %3) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %62, label %17

17:                                               ; preds = %7
  %18 = icmp eq ptr %8, null
  br i1 %18, label %58, label %19

19:                                               ; preds = %17
  %20 = tail call ptr @Perl_newRV_noinc(ptr noundef %3) #14
  %21 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %22 = load i32, ptr %21, align 8, !tbaa !63
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %55, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !66
  %27 = and i32 %26, 33554432
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = load ptr, ptr %8, align 8, !tbaa !47
  %33 = getelementptr inbounds %struct.xpvhv, ptr %32, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !49
  %35 = getelementptr ptr, ptr %31, i64 %34
  %36 = getelementptr ptr, ptr %35, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !11
  %38 = icmp eq ptr %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %29
  %40 = getelementptr i8, ptr %35, i64 36
  %41 = load i32, ptr %40, align 4, !tbaa !68
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %37, align 8, !tbaa !12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %39, %43
  %47 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %8, i1 noundef zeroext false) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, ptr %25, align 4, !tbaa !66
  br label %51

51:                                               ; preds = %49, %24, %29, %43
  %52 = phi i32 [ %50, %49 ], [ %26, %24 ], [ %26, %29 ], [ %26, %43 ]
  %53 = and i32 %52, -268435457
  store i32 %53, ptr %25, align 4, !tbaa !66
  br label %55

54:                                               ; preds = %46
  store i32 0, ptr %21, align 8, !tbaa !63
  tail call fastcc void @SvAMAGIC_on(ptr noundef %20) #15
  br label %55

55:                                               ; preds = %51, %54, %19
  %56 = tail call ptr @Perl_sv_bless(ptr noundef %20, ptr noundef nonnull %8) #14
  %57 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  store ptr null, ptr %57, align 8, !tbaa !11
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %20) #15
  br label %58

58:                                               ; preds = %55, %17
  %59 = tail call fastcc ptr @retrieve(ptr noundef nonnull %0, ptr noundef null) #15
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  tail call void @Perl_sv_upgrade(ptr noundef %3, i32 noundef 12) #14
  tail call void @Perl_sv_magic(ptr noundef %3, ptr noundef nonnull %59, i32 noundef 80, ptr noundef null, i32 noundef 0) #14
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %59) #15
  br label %62

62:                                               ; preds = %58, %7, %61
  %63 = phi ptr [ %3, %61 ], [ null, %7 ], [ null, %58 ]
  ret ptr %63
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @retrieve_tied_scalar(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @Perl_newSV(i64 noundef 0) #14
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %12 = load i64, ptr %11, align 8, !tbaa !53
  %13 = add nsw i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !53
  %14 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %3) #15
  %15 = tail call ptr @Perl_av_store(ptr noundef %10, i64 noundef %12, ptr noundef %3) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %68, label %17

17:                                               ; preds = %7
  %18 = icmp eq ptr %8, null
  br i1 %18, label %58, label %19

19:                                               ; preds = %17
  %20 = tail call ptr @Perl_newRV_noinc(ptr noundef %3) #14
  %21 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %22 = load i32, ptr %21, align 8, !tbaa !63
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %55, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !66
  %27 = and i32 %26, 33554432
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = load ptr, ptr %8, align 8, !tbaa !47
  %33 = getelementptr inbounds %struct.xpvhv, ptr %32, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !49
  %35 = getelementptr ptr, ptr %31, i64 %34
  %36 = getelementptr ptr, ptr %35, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !11
  %38 = icmp eq ptr %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %29
  %40 = getelementptr i8, ptr %35, i64 36
  %41 = load i32, ptr %40, align 4, !tbaa !68
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %37, align 8, !tbaa !12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %39, %43
  %47 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %8, i1 noundef zeroext false) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, ptr %25, align 4, !tbaa !66
  br label %51

51:                                               ; preds = %49, %24, %29, %43
  %52 = phi i32 [ %50, %49 ], [ %26, %24 ], [ %26, %29 ], [ %26, %43 ]
  %53 = and i32 %52, -268435457
  store i32 %53, ptr %25, align 4, !tbaa !66
  br label %55

54:                                               ; preds = %46
  store i32 0, ptr %21, align 8, !tbaa !63
  tail call fastcc void @SvAMAGIC_on(ptr noundef %20) #15
  br label %55

55:                                               ; preds = %51, %54, %19
  %56 = tail call ptr @Perl_sv_bless(ptr noundef %20, ptr noundef nonnull %8) #14
  %57 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  store ptr null, ptr %57, align 8, !tbaa !11
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %20) #15
  br label %58

58:                                               ; preds = %55, %17
  %59 = tail call fastcc ptr @retrieve(ptr noundef nonnull %0, ptr noundef null) #15
  %60 = icmp eq ptr %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.sv, ptr %59, i64 0, i32 2
  %63 = load i32, ptr %62, align 4, !tbaa !28
  %64 = and i32 %63, 255
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, ptr null, ptr %59
  tail call void @Perl_sv_upgrade(ptr noundef %3, i32 noundef 7) #14
  tail call void @Perl_sv_magic(ptr noundef %3, ptr noundef %66, i32 noundef 113, ptr noundef null, i32 noundef 0) #14
  br i1 %65, label %68, label %67

67:                                               ; preds = %61
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %59) #15
  br label %68

68:                                               ; preds = %61, %67, %58, %7
  %69 = phi ptr [ null, %7 ], [ null, %58 ], [ %3, %67 ], [ %3, %61 ]
  ret ptr %69
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @retrieve_sv_undef(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 6
  %4 = load i64, ptr %3, align 8, !tbaa !61
  %5 = icmp eq i64 %4, -1
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %8 = load i64, ptr %7, align 8, !tbaa !53
  store i64 %8, ptr %3, align 8, !tbaa !61
  br label %9

9:                                                ; preds = %6, %2
  %10 = icmp eq ptr %1, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %13

13:                                               ; preds = %9, %11
  %14 = phi ptr [ %12, %11 ], [ null, %9 ]
  %15 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  %17 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %18 = load i64, ptr %17, align 8, !tbaa !53
  %19 = add nsw i64 %18, 1
  store i64 %19, ptr %17, align 8, !tbaa !53
  %20 = tail call ptr @Perl_av_store(ptr noundef %16, i64 noundef %18, ptr noundef nonnull @PL_sv_undef) #14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %63, label %22

22:                                               ; preds = %13
  %23 = icmp eq ptr %14, null
  br i1 %23, label %63, label %24

24:                                               ; preds = %22
  %25 = tail call ptr @Perl_newRV_noinc(ptr noundef nonnull @PL_sv_undef) #14
  %26 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %27 = load i32, ptr %26, align 8, !tbaa !63
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %60, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.hv, ptr %14, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !66
  %32 = and i32 %31, 33554432
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %56, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.hv, ptr %14, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !11
  %37 = load ptr, ptr %14, align 8, !tbaa !47
  %38 = getelementptr inbounds %struct.xpvhv, ptr %37, i64 0, i32 3
  %39 = load i64, ptr %38, align 8, !tbaa !49
  %40 = getelementptr ptr, ptr %36, i64 %39
  %41 = getelementptr ptr, ptr %40, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !11
  %43 = icmp eq ptr %42, null
  br i1 %43, label %56, label %44

44:                                               ; preds = %34
  %45 = getelementptr i8, ptr %40, i64 36
  %46 = load i32, ptr %45, align 4, !tbaa !68
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %42, align 8, !tbaa !12
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %44, %48
  %52 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %14, i1 noundef zeroext false) #14
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, ptr %30, align 4, !tbaa !66
  br label %56

56:                                               ; preds = %54, %29, %34, %48
  %57 = phi i32 [ %55, %54 ], [ %31, %29 ], [ %31, %34 ], [ %31, %48 ]
  %58 = and i32 %57, -268435457
  store i32 %58, ptr %30, align 4, !tbaa !66
  br label %60

59:                                               ; preds = %51
  store i32 0, ptr %26, align 8, !tbaa !63
  tail call fastcc void @SvAMAGIC_on(ptr noundef %25) #15
  br label %60

60:                                               ; preds = %56, %59, %24
  %61 = tail call ptr @Perl_sv_bless(ptr noundef %25, ptr noundef nonnull %14) #14
  %62 = getelementptr inbounds %struct.sv, ptr %25, i64 0, i32 3
  store ptr null, ptr %62, align 8, !tbaa !11
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %25) #15
  br label %63

63:                                               ; preds = %22, %60, %13
  %64 = phi ptr [ null, %13 ], [ @PL_sv_undef, %60 ], [ @PL_sv_undef, %22 ]
  ret ptr %64
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @retrieve_sv_yes(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %11 = load i64, ptr %10, align 8, !tbaa !53
  %12 = add nsw i64 %11, 1
  store i64 %12, ptr %10, align 8, !tbaa !53
  %13 = tail call ptr @Perl_av_store(ptr noundef %9, i64 noundef %11, ptr noundef nonnull @PL_sv_yes) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %56, label %15

15:                                               ; preds = %6
  %16 = icmp eq ptr %7, null
  br i1 %16, label %56, label %17

17:                                               ; preds = %15
  %18 = tail call ptr @Perl_newRV_noinc(ptr noundef nonnull @PL_sv_yes) #14
  %19 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %20 = load i32, ptr %19, align 8, !tbaa !63
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %53, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !66
  %25 = and i32 %24, 33554432
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !11
  %30 = load ptr, ptr %7, align 8, !tbaa !47
  %31 = getelementptr inbounds %struct.xpvhv, ptr %30, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !49
  %33 = getelementptr ptr, ptr %29, i64 %32
  %34 = getelementptr ptr, ptr %33, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %27
  %38 = getelementptr i8, ptr %33, i64 36
  %39 = load i32, ptr %38, align 4, !tbaa !68
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %35, align 8, !tbaa !12
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %37, %41
  %45 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %7, i1 noundef zeroext false) #14
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, ptr %23, align 4, !tbaa !66
  br label %49

49:                                               ; preds = %47, %22, %27, %41
  %50 = phi i32 [ %48, %47 ], [ %24, %22 ], [ %24, %27 ], [ %24, %41 ]
  %51 = and i32 %50, -268435457
  store i32 %51, ptr %23, align 4, !tbaa !66
  br label %53

52:                                               ; preds = %44
  store i32 0, ptr %19, align 8, !tbaa !63
  tail call fastcc void @SvAMAGIC_on(ptr noundef %18) #15
  br label %53

53:                                               ; preds = %49, %52, %17
  %54 = tail call ptr @Perl_sv_bless(ptr noundef %18, ptr noundef nonnull %7) #14
  %55 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  store ptr null, ptr %55, align 8, !tbaa !11
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %18) #15
  br label %56

56:                                               ; preds = %15, %53, %6
  %57 = phi ptr [ null, %6 ], [ @PL_sv_yes, %53 ], [ @PL_sv_yes, %15 ]
  ret ptr %57
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @retrieve_sv_no(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %11 = load i64, ptr %10, align 8, !tbaa !53
  %12 = add nsw i64 %11, 1
  store i64 %12, ptr %10, align 8, !tbaa !53
  %13 = tail call ptr @Perl_av_store(ptr noundef %9, i64 noundef %11, ptr noundef nonnull @PL_sv_no) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %56, label %15

15:                                               ; preds = %6
  %16 = icmp eq ptr %7, null
  br i1 %16, label %56, label %17

17:                                               ; preds = %15
  %18 = tail call ptr @Perl_newRV_noinc(ptr noundef nonnull @PL_sv_no) #14
  %19 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %20 = load i32, ptr %19, align 8, !tbaa !63
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %53, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !66
  %25 = and i32 %24, 33554432
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %49, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.hv, ptr %7, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !11
  %30 = load ptr, ptr %7, align 8, !tbaa !47
  %31 = getelementptr inbounds %struct.xpvhv, ptr %30, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !49
  %33 = getelementptr ptr, ptr %29, i64 %32
  %34 = getelementptr ptr, ptr %33, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %27
  %38 = getelementptr i8, ptr %33, i64 36
  %39 = load i32, ptr %38, align 4, !tbaa !68
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %35, align 8, !tbaa !12
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %37, %41
  %45 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %7, i1 noundef zeroext false) #14
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, ptr %23, align 4, !tbaa !66
  br label %49

49:                                               ; preds = %47, %22, %27, %41
  %50 = phi i32 [ %48, %47 ], [ %24, %22 ], [ %24, %27 ], [ %24, %41 ]
  %51 = and i32 %50, -268435457
  store i32 %51, ptr %23, align 4, !tbaa !66
  br label %53

52:                                               ; preds = %44
  store i32 0, ptr %19, align 8, !tbaa !63
  tail call fastcc void @SvAMAGIC_on(ptr noundef %18) #15
  br label %53

53:                                               ; preds = %49, %52, %17
  %54 = tail call ptr @Perl_sv_bless(ptr noundef %18, ptr noundef nonnull %7) #14
  %55 = getelementptr inbounds %struct.sv, ptr %18, i64 0, i32 3
  store ptr null, ptr %55, align 8, !tbaa !11
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %18) #15
  br label %56

56:                                               ; preds = %15, %53, %6
  %57 = phi ptr [ null, %6 ], [ @PL_sv_no, %53 ], [ @PL_sv_no, %15 ]
  ret ptr %57
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @retrieve_blessed(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !32
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !33
  %13 = icmp ult ptr %10, %12
  br i1 %13, label %21, label %105

14:                                               ; preds = %2
  %15 = tail call i32 @PerlIO_getc(ptr noundef nonnull %6) #14
  store i32 %15, ptr %3, align 4, !tbaa !13
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %105, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %5, align 8, !tbaa !35
  %19 = and i32 %15, 128
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %55, label %26

21:                                               ; preds = %8
  %22 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %22, ptr %9, align 8, !tbaa !32
  %23 = load i8, ptr %10, align 1, !tbaa !11
  %24 = zext i8 %23 to i32
  store i32 %24, ptr %3, align 4, !tbaa !13
  %25 = icmp sgt i8 %23, -1
  br i1 %25, label %60, label %28

26:                                               ; preds = %17
  %27 = icmp eq ptr %18, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %21, %26
  %29 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !32
  %31 = getelementptr inbounds i8, ptr %30, i64 4
  %32 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !33
  %34 = icmp ugt ptr %31, %33
  br i1 %34, label %105, label %35

35:                                               ; preds = %28
  %36 = load i32, ptr %30, align 1
  store i32 %36, ptr %3, align 4
  store ptr %31, ptr %29, align 8, !tbaa !32
  br label %42

37:                                               ; preds = %26
  %38 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %18, ptr noundef nonnull %3, i64 noundef 4) #14
  %39 = icmp eq i64 %38, 4
  br i1 %39, label %40, label %105

40:                                               ; preds = %37
  %41 = load i32, ptr %3, align 4, !tbaa !13
  br label %42

42:                                               ; preds = %40, %35
  %43 = phi i32 [ %41, %40 ], [ %36, %35 ]
  %44 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %45 = load i32, ptr %44, align 8, !tbaa !40
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = call fastcc i32 @__bswap_32(i32 noundef %43) #15
  store i32 %48, ptr %3, align 4, !tbaa !13
  br label %49

49:                                               ; preds = %47, %42
  %50 = phi i32 [ %48, %47 ], [ %43, %42 ]
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = call ptr @Perl_safesysmalloc(i64 noundef %52) #14
  %54 = load ptr, ptr %5, align 8, !tbaa !35
  br label %55

55:                                               ; preds = %17, %49
  %56 = phi ptr [ %54, %49 ], [ %18, %17 ]
  %57 = phi ptr [ %53, %49 ], [ %4, %17 ]
  %58 = phi ptr [ %53, %49 ], [ null, %17 ]
  %59 = icmp eq ptr %56, null
  br i1 %59, label %60, label %77

60:                                               ; preds = %21, %55
  %61 = phi ptr [ %58, %55 ], [ null, %21 ]
  %62 = phi ptr [ %57, %55 ], [ %4, %21 ]
  %63 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !32
  %65 = load i32, ptr %3, align 4, !tbaa !13
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %64, i64 %66
  %68 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !33
  %70 = icmp ugt ptr %67, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %60
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %62, ptr align 1 %64, i64 %66, i1 false)
  %72 = load i32, ptr %3, align 4, !tbaa !13
  %73 = load ptr, ptr %63, align 8, !tbaa !32
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, ptr %73, i64 %74
  store ptr %75, ptr %63, align 8, !tbaa !32
  br label %85

76:                                               ; preds = %60
  call void @Perl_safesysfree(ptr noundef %61) #14
  br label %105

77:                                               ; preds = %55
  %78 = load i32, ptr %3, align 4, !tbaa !13
  %79 = sext i32 %78 to i64
  %80 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %56, ptr noundef %57, i64 noundef %79) #14
  %81 = load i32, ptr %3, align 4, !tbaa !13
  %82 = sext i32 %81 to i64
  %83 = icmp eq i64 %80, %82
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  call void @Perl_safesysfree(ptr noundef %58) #14
  br label %105

85:                                               ; preds = %77, %71
  %86 = phi ptr [ %58, %77 ], [ %61, %71 ]
  %87 = phi ptr [ %57, %77 ], [ %62, %71 ]
  %88 = phi i64 [ %82, %77 ], [ %74, %71 ]
  %89 = getelementptr inbounds i8, ptr %87, i64 %88
  store i8 0, ptr %89, align 1, !tbaa !11
  %90 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 8
  %91 = load ptr, ptr %90, align 8, !tbaa !62
  %92 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 11
  %93 = load i64, ptr %92, align 8, !tbaa !83
  %94 = add nsw i64 %93, 1
  store i64 %94, ptr %92, align 8, !tbaa !83
  %95 = load i32, ptr %3, align 4, !tbaa !13
  %96 = sext i32 %95 to i64
  %97 = call ptr @Perl_newSVpvn(ptr noundef %87, i64 noundef %96) #14
  %98 = call ptr @Perl_av_store(ptr noundef %91, i64 noundef %93, ptr noundef %97) #14
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %85
  call void @Perl_safesysfree(ptr noundef %86) #14
  br label %105

101:                                              ; preds = %85
  %102 = call fastcc ptr @retrieve(ptr noundef nonnull %0, ptr noundef nonnull %87) #15
  %103 = icmp eq ptr %86, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  call void @Perl_safesysfree(ptr noundef nonnull %86) #14
  br label %105

105:                                              ; preds = %101, %104, %37, %28, %14, %8, %100, %84, %76
  %106 = phi ptr [ null, %84 ], [ null, %100 ], [ null, %76 ], [ null, %8 ], [ null, %14 ], [ null, %28 ], [ null, %37 ], [ %102, %104 ], [ %102, %101 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret ptr %106
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @retrieve_idx_blessed(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !32
  %10 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !33
  %12 = icmp ult ptr %9, %11
  br i1 %12, label %13, label %64

13:                                               ; preds = %7
  %14 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %14, ptr %8, align 8, !tbaa !32
  %15 = load i8, ptr %9, align 1, !tbaa !11
  %16 = zext i8 %15 to i32
  store i32 %16, ptr %3, align 4, !tbaa !13
  br label %20

17:                                               ; preds = %2
  %18 = tail call i32 @PerlIO_getc(ptr noundef nonnull %5) #14
  store i32 %18, ptr %3, align 4, !tbaa !13
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %64, label %20

20:                                               ; preds = %17, %13
  %21 = phi i32 [ %18, %17 ], [ %16, %13 ]
  %22 = and i32 %21, 128
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %48, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %4, align 8, !tbaa !35
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !32
  %30 = getelementptr inbounds i8, ptr %29, i64 4
  %31 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !33
  %33 = icmp ugt ptr %30, %32
  br i1 %33, label %64, label %34

34:                                               ; preds = %27
  %35 = load i32, ptr %29, align 1
  store i32 %35, ptr %3, align 4
  store ptr %30, ptr %28, align 8, !tbaa !32
  br label %41

36:                                               ; preds = %24
  %37 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %25, ptr noundef nonnull %3, i64 noundef 4) #14
  %38 = icmp eq i64 %37, 4
  br i1 %38, label %39, label %64

39:                                               ; preds = %36
  %40 = load i32, ptr %3, align 4, !tbaa !13
  br label %41

41:                                               ; preds = %39, %34
  %42 = phi i32 [ %40, %39 ], [ %35, %34 ]
  %43 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %44 = load i32, ptr %43, align 8, !tbaa !40
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = call fastcc i32 @__bswap_32(i32 noundef %42) #15
  store i32 %47, ptr %3, align 4, !tbaa !13
  br label %48

48:                                               ; preds = %41, %46, %20
  %49 = phi i32 [ %42, %41 ], [ %47, %46 ], [ %21, %20 ]
  %50 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !62
  %52 = sext i32 %49 to i64
  %53 = call ptr @Perl_av_fetch(ptr noundef %51, i64 noundef %52, i32 noundef 0) #14
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %56, align 8, !tbaa !27
  %57 = load i32, ptr %3, align 4, !tbaa !13
  %58 = sext i32 %57 to i64
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.68, i64 noundef %58) #14
  br label %59

59:                                               ; preds = %55, %48
  %60 = load ptr, ptr %53, align 8, !tbaa !12
  %61 = getelementptr inbounds %struct.sv, ptr %60, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !11
  %63 = call fastcc ptr @retrieve(ptr noundef nonnull %0, ptr noundef %62) #15
  br label %64

64:                                               ; preds = %36, %27, %17, %7, %59
  %65 = phi ptr [ %63, %59 ], [ null, %7 ], [ null, %17 ], [ null, %27 ], [ null, %36 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret ptr %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @retrieve_hook(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [128 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !tbaa !13
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !23
  %11 = and i32 %10, 4
  %12 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !32
  %18 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !33
  %20 = icmp ult ptr %17, %19
  br i1 %20, label %21, label %592

21:                                               ; preds = %15
  %22 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %22, ptr %16, align 8, !tbaa !32
  %23 = load i8, ptr %17, align 1, !tbaa !11
  %24 = zext i8 %23 to i32
  br label %28

25:                                               ; preds = %2
  %26 = tail call i32 @PerlIO_getc(ptr noundef nonnull %13) #14
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %592, label %28

28:                                               ; preds = %25, %21
  %29 = phi i32 [ %26, %25 ], [ %24, %21 ]
  %30 = and i32 %29, 3
  switch i32 %30, label %63 [
    i32 0, label %31
    i32 1, label %33
    i32 2, label %35
    i32 3, label %37
  ]

31:                                               ; preds = %28
  %32 = tail call ptr @Perl_newSV(i64 noundef 0) #14
  br label %64

33:                                               ; preds = %28
  %34 = tail call ptr @Perl_newSV_type(i32 noundef 11) #14
  br label %64

35:                                               ; preds = %28
  %36 = tail call ptr @Perl_newSV_type(i32 noundef 12) #14
  br label %64

37:                                               ; preds = %28
  %38 = load ptr, ptr %12, align 8, !tbaa !35
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !32
  %43 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !33
  %45 = icmp ult ptr %42, %44
  br i1 %45, label %46, label %592

46:                                               ; preds = %40
  %47 = getelementptr inbounds i8, ptr %42, i64 1
  store ptr %47, ptr %41, align 8, !tbaa !32
  %48 = load i8, ptr %42, align 1, !tbaa !11
  %49 = zext i8 %48 to i32
  br label %53

50:                                               ; preds = %37
  %51 = tail call i32 @PerlIO_getc(ptr noundef nonnull %38) #14
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %592, label %53

53:                                               ; preds = %50, %46
  %54 = phi i32 [ %51, %50 ], [ %49, %46 ]
  switch i32 %54, label %61 [
    i32 4, label %55
    i32 5, label %57
    i32 6, label %59
  ]

55:                                               ; preds = %53
  %56 = tail call ptr @Perl_newSV(i64 noundef 0) #14
  br label %64

57:                                               ; preds = %53
  %58 = tail call ptr @Perl_newSV_type(i32 noundef 11) #14
  br label %64

59:                                               ; preds = %53
  %60 = tail call ptr @Perl_newSV_type(i32 noundef 12) #14
  br label %64

61:                                               ; preds = %53
  %62 = tail call ptr @retrieve_other(ptr noundef nonnull %0, ptr poison) #15
  br label %592

63:                                               ; preds = %28
  unreachable

64:                                               ; preds = %31, %33, %35, %59, %57, %55
  %65 = phi ptr [ %60, %59 ], [ %58, %57 ], [ %56, %55 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ]
  %66 = phi i32 [ 80, %59 ], [ 80, %57 ], [ 113, %55 ], [ 0, %35 ], [ 0, %33 ], [ 0, %31 ]
  %67 = phi i1 [ false, %59 ], [ false, %57 ], [ false, %55 ], [ true, %35 ], [ true, %33 ], [ true, %31 ]
  %68 = phi i32 [ 6, %59 ], [ 5, %57 ], [ 4, %55 ], [ 0, %35 ], [ 0, %33 ], [ 0, %31 ]
  %69 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !60
  %71 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %72 = load i64, ptr %71, align 8, !tbaa !53
  %73 = add nsw i64 %72, 1
  store i64 %73, ptr %71, align 8, !tbaa !53
  %74 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %65) #15
  %75 = tail call ptr @Perl_av_store(ptr noundef %70, i64 noundef %72, ptr noundef %65) #14
  %76 = icmp eq ptr %75, null
  br i1 %76, label %592, label %77

77:                                               ; preds = %64
  %78 = and i32 %29, 64
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %104, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %82 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  br label %83

83:                                               ; preds = %80, %100
  %84 = tail call fastcc ptr @retrieve(ptr noundef nonnull %0, ptr noundef null) #15
  %85 = icmp eq ptr %84, null
  br i1 %85, label %592, label %86

86:                                               ; preds = %83
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %84) #15
  %87 = load ptr, ptr %12, align 8, !tbaa !35
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load ptr, ptr %81, align 8, !tbaa !32
  %91 = load ptr, ptr %82, align 8, !tbaa !33
  %92 = icmp ult ptr %90, %91
  br i1 %92, label %93, label %592

93:                                               ; preds = %89
  %94 = getelementptr inbounds i8, ptr %90, i64 1
  store ptr %94, ptr %81, align 8, !tbaa !32
  %95 = load i8, ptr %90, align 1, !tbaa !11
  %96 = zext i8 %95 to i32
  br label %100

97:                                               ; preds = %86
  %98 = tail call i32 @PerlIO_getc(ptr noundef nonnull %87) #14
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %592, label %100

100:                                              ; preds = %97, %93
  %101 = phi i32 [ %98, %97 ], [ %96, %93 ]
  %102 = and i32 %101, 64
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %83, !llvm.loop !115

104:                                              ; preds = %100, %77
  %105 = phi i32 [ %29, %77 ], [ %101, %100 ]
  %106 = and i32 %105, 32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %165, label %108

108:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  %109 = and i32 %105, 4
  %110 = icmp eq i32 %109, 0
  %111 = load ptr, ptr %12, align 8, !tbaa !35
  %112 = icmp eq ptr %111, null
  br i1 %110, label %135, label %113

113:                                              ; preds = %108
  br i1 %112, label %114, label %123

114:                                              ; preds = %113
  %115 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !32
  %117 = getelementptr inbounds i8, ptr %116, i64 4
  %118 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !33
  %120 = icmp ugt ptr %117, %119
  br i1 %120, label %160, label %121

121:                                              ; preds = %114
  %122 = load i32, ptr %116, align 1
  store i32 %122, ptr %7, align 4
  store ptr %117, ptr %115, align 8, !tbaa !32
  br label %128

123:                                              ; preds = %113
  %124 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %111, ptr noundef nonnull %7, i64 noundef 4) #14
  %125 = icmp eq i64 %124, 4
  br i1 %125, label %126, label %160

126:                                              ; preds = %123
  %127 = load i32, ptr %7, align 4, !tbaa !13
  br label %128

128:                                              ; preds = %126, %121
  %129 = phi i32 [ %127, %126 ], [ %122, %121 ]
  %130 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %131 = load i32, ptr %130, align 8, !tbaa !40
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %149, label %133

133:                                              ; preds = %128
  %134 = call fastcc i32 @__bswap_32(i32 noundef %129) #15
  store i32 %134, ptr %7, align 4, !tbaa !13
  br label %149

135:                                              ; preds = %108
  br i1 %112, label %136, label %146

136:                                              ; preds = %135
  %137 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !32
  %139 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !33
  %141 = icmp ult ptr %138, %140
  br i1 %141, label %142, label %160

142:                                              ; preds = %136
  %143 = getelementptr inbounds i8, ptr %138, i64 1
  store ptr %143, ptr %137, align 8, !tbaa !32
  %144 = load i8, ptr %138, align 1, !tbaa !11
  %145 = zext i8 %144 to i32
  store i32 %145, ptr %7, align 4, !tbaa !13
  br label %149

146:                                              ; preds = %135
  %147 = tail call i32 @PerlIO_getc(ptr noundef nonnull %111) #14
  store i32 %147, ptr %7, align 4, !tbaa !13
  %148 = icmp eq i32 %147, -1
  br i1 %148, label %160, label %149

149:                                              ; preds = %142, %146, %128, %133
  %150 = phi i32 [ %145, %142 ], [ %147, %146 ], [ %129, %128 ], [ %134, %133 ]
  %151 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 8
  %152 = load ptr, ptr %151, align 8, !tbaa !62
  %153 = sext i32 %150 to i64
  %154 = call ptr @Perl_av_fetch(ptr noundef %152, i64 noundef %153, i32 noundef 0) #14
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %161

156:                                              ; preds = %149
  %157 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %157, align 8, !tbaa !27
  %158 = load i32, ptr %7, align 4, !tbaa !13
  %159 = sext i32 %158 to i64
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.68, i64 noundef %159) #14
  br label %161

160:                                              ; preds = %114, %123, %136, %146
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  br label %592

161:                                              ; preds = %149, %156
  %162 = load ptr, ptr %154, align 8, !tbaa !12
  %163 = getelementptr inbounds %struct.sv, ptr %162, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  br label %253

165:                                              ; preds = %104
  %166 = and i32 %105, 4
  %167 = icmp eq i32 %166, 0
  %168 = load ptr, ptr %12, align 8, !tbaa !35
  %169 = icmp eq ptr %168, null
  br i1 %167, label %190, label %170

170:                                              ; preds = %165
  br i1 %169, label %171, label %180

171:                                              ; preds = %170
  %172 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !32
  %174 = getelementptr inbounds i8, ptr %173, i64 4
  %175 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %176 = load ptr, ptr %175, align 8, !tbaa !33
  %177 = icmp ugt ptr %174, %176
  br i1 %177, label %592, label %178

178:                                              ; preds = %171
  %179 = load i32, ptr %173, align 1
  store i32 %179, ptr %3, align 4
  store ptr %174, ptr %172, align 8, !tbaa !32
  br label %183

180:                                              ; preds = %170
  %181 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %168, ptr noundef nonnull %3, i64 noundef 4) #14
  %182 = icmp eq i64 %181, 4
  br i1 %182, label %183, label %592

183:                                              ; preds = %180, %178
  %184 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %185 = load i32, ptr %184, align 8, !tbaa !40
  %186 = icmp eq i32 %185, 0
  %187 = load i32, ptr %3, align 4, !tbaa !13
  br i1 %186, label %204, label %188

188:                                              ; preds = %183
  %189 = call fastcc i32 @__bswap_32(i32 noundef %187) #15
  store i32 %189, ptr %3, align 4, !tbaa !13
  br label %204

190:                                              ; preds = %165
  br i1 %169, label %191, label %201

191:                                              ; preds = %190
  %192 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !32
  %194 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !33
  %196 = icmp ult ptr %193, %195
  br i1 %196, label %197, label %592

197:                                              ; preds = %191
  %198 = getelementptr inbounds i8, ptr %193, i64 1
  store ptr %198, ptr %192, align 8, !tbaa !32
  %199 = load i8, ptr %193, align 1, !tbaa !11
  %200 = zext i8 %199 to i32
  store i32 %200, ptr %3, align 4, !tbaa !13
  br label %204

201:                                              ; preds = %190
  %202 = tail call i32 @PerlIO_getc(ptr noundef nonnull %168) #14
  store i32 %202, ptr %3, align 4, !tbaa !13
  %203 = icmp eq i32 %202, -1
  br i1 %203, label %592, label %204

204:                                              ; preds = %183, %197, %201, %188
  %205 = phi i32 [ %200, %197 ], [ %202, %201 ], [ %189, %188 ], [ %187, %183 ]
  %206 = icmp sgt i32 %205, 127
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = add nuw nsw i32 %205, 1
  %209 = zext nneg i32 %208 to i64
  %210 = call ptr @Perl_safesysmalloc(i64 noundef %209) #14
  br label %211

211:                                              ; preds = %204, %207
  %212 = phi ptr [ %210, %207 ], [ null, %204 ]
  %213 = phi ptr [ %210, %207 ], [ %4, %204 ]
  %214 = load ptr, ptr %12, align 8, !tbaa !35
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %231

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %218 = load ptr, ptr %217, align 8, !tbaa !32
  %219 = load i32, ptr %3, align 4, !tbaa !13
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, ptr %218, i64 %220
  %222 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %223 = load ptr, ptr %222, align 8, !tbaa !33
  %224 = icmp ugt ptr %221, %223
  br i1 %224, label %230, label %225

225:                                              ; preds = %216
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %213, ptr align 1 %218, i64 %220, i1 false)
  %226 = load i32, ptr %3, align 4, !tbaa !13
  %227 = load ptr, ptr %217, align 8, !tbaa !32
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i8, ptr %227, i64 %228
  store ptr %229, ptr %217, align 8, !tbaa !32
  br label %239

230:                                              ; preds = %216
  call void @Perl_safesysfree(ptr noundef %212) #14
  br label %592

231:                                              ; preds = %211
  %232 = load i32, ptr %3, align 4, !tbaa !13
  %233 = sext i32 %232 to i64
  %234 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %214, ptr noundef %213, i64 noundef %233) #14
  %235 = load i32, ptr %3, align 4, !tbaa !13
  %236 = sext i32 %235 to i64
  %237 = icmp eq i64 %234, %236
  br i1 %237, label %239, label %238

238:                                              ; preds = %231
  call void @Perl_safesysfree(ptr noundef %212) #14
  br label %592

239:                                              ; preds = %231, %225
  %240 = phi i64 [ %236, %231 ], [ %228, %225 ]
  %241 = getelementptr inbounds i8, ptr %213, i64 %240
  store i8 0, ptr %241, align 1, !tbaa !11
  %242 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 8
  %243 = load ptr, ptr %242, align 8, !tbaa !62
  %244 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 11
  %245 = load i64, ptr %244, align 8, !tbaa !83
  %246 = add nsw i64 %245, 1
  store i64 %246, ptr %244, align 8, !tbaa !83
  %247 = load i32, ptr %3, align 4, !tbaa !13
  %248 = sext i32 %247 to i64
  %249 = call ptr @Perl_newSVpvn(ptr noundef %213, i64 noundef %248) #14
  %250 = call ptr @Perl_av_store(ptr noundef %243, i64 noundef %245, ptr noundef %249) #14
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %253

252:                                              ; preds = %239
  call void @Perl_safesysfree(ptr noundef %212) #14
  br label %592

253:                                              ; preds = %239, %161
  %254 = phi ptr [ %164, %161 ], [ %213, %239 ]
  %255 = and i32 %105, 8
  %256 = icmp eq i32 %255, 0
  %257 = load ptr, ptr %12, align 8, !tbaa !35
  %258 = icmp eq ptr %257, null
  br i1 %256, label %281, label %259

259:                                              ; preds = %253
  br i1 %258, label %260, label %269

260:                                              ; preds = %259
  %261 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %262 = load ptr, ptr %261, align 8, !tbaa !32
  %263 = getelementptr inbounds i8, ptr %262, i64 4
  %264 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %265 = load ptr, ptr %264, align 8, !tbaa !33
  %266 = icmp ugt ptr %263, %265
  br i1 %266, label %592, label %267

267:                                              ; preds = %260
  %268 = load i32, ptr %262, align 1
  store i32 %268, ptr %5, align 4
  store ptr %263, ptr %261, align 8, !tbaa !32
  br label %274

269:                                              ; preds = %259
  %270 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %257, ptr noundef nonnull %5, i64 noundef 4) #14
  %271 = icmp eq i64 %270, 4
  br i1 %271, label %272, label %592

272:                                              ; preds = %269
  %273 = load i32, ptr %5, align 4, !tbaa !13
  br label %274

274:                                              ; preds = %272, %267
  %275 = phi i32 [ %273, %272 ], [ %268, %267 ]
  %276 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %277 = load i32, ptr %276, align 8, !tbaa !40
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %295, label %279

279:                                              ; preds = %274
  %280 = call fastcc i32 @__bswap_32(i32 noundef %275) #15
  store i32 %280, ptr %5, align 4, !tbaa !13
  br label %295

281:                                              ; preds = %253
  br i1 %258, label %282, label %292

282:                                              ; preds = %281
  %283 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %284 = load ptr, ptr %283, align 8, !tbaa !32
  %285 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %286 = load ptr, ptr %285, align 8, !tbaa !33
  %287 = icmp ult ptr %284, %286
  br i1 %287, label %288, label %592

288:                                              ; preds = %282
  %289 = getelementptr inbounds i8, ptr %284, i64 1
  store ptr %289, ptr %283, align 8, !tbaa !32
  %290 = load i8, ptr %284, align 1, !tbaa !11
  %291 = zext i8 %290 to i32
  store i32 %291, ptr %5, align 4, !tbaa !13
  br label %295

292:                                              ; preds = %281
  %293 = call i32 @PerlIO_getc(ptr noundef nonnull %257) #14
  store i32 %293, ptr %5, align 4, !tbaa !13
  %294 = icmp eq i32 %293, -1
  br i1 %294, label %592, label %295

295:                                              ; preds = %288, %292, %274, %279
  %296 = phi i32 [ %291, %288 ], [ %293, %292 ], [ %275, %274 ], [ %280, %279 ]
  %297 = sext i32 %296 to i64
  %298 = call ptr @Perl_newSV(i64 noundef %297) #14
  %299 = load i32, ptr %5, align 4, !tbaa !13
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %335, label %301

301:                                              ; preds = %295
  %302 = load ptr, ptr %12, align 8, !tbaa !35
  %303 = icmp eq ptr %302, null
  %304 = sext i32 %299 to i64
  br i1 %303, label %305, label %320

305:                                              ; preds = %301
  %306 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %307 = load ptr, ptr %306, align 8, !tbaa !32
  %308 = getelementptr inbounds i8, ptr %307, i64 %304
  %309 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %310 = load ptr, ptr %309, align 8, !tbaa !33
  %311 = icmp ugt ptr %308, %310
  br i1 %311, label %319, label %312

312:                                              ; preds = %305
  %313 = getelementptr inbounds %struct.sv, ptr %298, i64 0, i32 3
  %314 = load ptr, ptr %313, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %314, ptr align 1 %307, i64 %304, i1 false)
  %315 = load i32, ptr %5, align 4, !tbaa !13
  %316 = load ptr, ptr %306, align 8, !tbaa !32
  %317 = sext i32 %315 to i64
  %318 = getelementptr inbounds i8, ptr %316, i64 %317
  store ptr %318, ptr %306, align 8, !tbaa !32
  br label %328

319:                                              ; preds = %305
  call void @Perl_sv_free(ptr noundef %298) #14
  br label %592

320:                                              ; preds = %301
  %321 = getelementptr inbounds %struct.sv, ptr %298, i64 0, i32 3
  %322 = load ptr, ptr %321, align 8, !tbaa !11
  %323 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %302, ptr noundef %322, i64 noundef %304) #14
  %324 = load i32, ptr %5, align 4, !tbaa !13
  %325 = sext i32 %324 to i64
  %326 = icmp eq i64 %323, %325
  br i1 %326, label %328, label %327

327:                                              ; preds = %320
  call void @Perl_sv_free(ptr noundef nonnull %298) #14
  br label %592

328:                                              ; preds = %312, %320
  %329 = phi i64 [ %317, %312 ], [ %325, %320 ]
  %330 = load ptr, ptr %298, align 8, !tbaa !55
  %331 = getelementptr inbounds %struct.xpv, ptr %330, i64 0, i32 2
  store i64 %329, ptr %331, align 8, !tbaa !74
  %332 = getelementptr inbounds %struct.sv, ptr %298, i64 0, i32 3
  %333 = load ptr, ptr %332, align 8, !tbaa !11
  %334 = getelementptr inbounds i8, ptr %333, i64 %329
  store i8 0, ptr %334, align 1, !tbaa !11
  br label %335

335:                                              ; preds = %328, %295
  %336 = getelementptr inbounds %struct.sv, ptr %298, i64 0, i32 2
  %337 = load i32, ptr %336, align 4, !tbaa !28
  %338 = and i32 %337, 1610547455
  %339 = or disjoint i32 %338, 17408
  store i32 %339, ptr %336, align 4, !tbaa !28
  %340 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 13
  %341 = load i32, ptr %340, align 4, !tbaa !107
  %342 = icmp eq i32 %341, 0
  %343 = load i8, ptr @PL_tainting, align 1, !range !106
  %344 = icmp eq i8 %343, 0
  %345 = select i1 %342, i1 true, i1 %344
  %346 = load i8, ptr @PL_tainted, align 1, !range !106
  %347 = icmp eq i8 %346, 0
  %348 = select i1 %345, i1 true, i1 %347
  br i1 %348, label %350, label %349

349:                                              ; preds = %335
  call void @Perl_sv_magic(ptr noundef nonnull %298, ptr noundef null, i32 noundef 116, ptr noundef null, i32 noundef 0) #14
  br label %350

350:                                              ; preds = %349, %335
  %351 = and i32 %105, 128
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %452, label %353

353:                                              ; preds = %350
  %354 = and i32 %105, 16
  %355 = icmp eq i32 %354, 0
  %356 = load ptr, ptr %12, align 8, !tbaa !35
  %357 = icmp eq ptr %356, null
  br i1 %355, label %378, label %358

358:                                              ; preds = %353
  br i1 %357, label %359, label %368

359:                                              ; preds = %358
  %360 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %361 = load ptr, ptr %360, align 8, !tbaa !32
  %362 = getelementptr inbounds i8, ptr %361, i64 4
  %363 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %364 = load ptr, ptr %363, align 8, !tbaa !33
  %365 = icmp ugt ptr %362, %364
  br i1 %365, label %592, label %366

366:                                              ; preds = %359
  %367 = load i32, ptr %361, align 1
  store i32 %367, ptr %6, align 4
  store ptr %362, ptr %360, align 8, !tbaa !32
  br label %371

368:                                              ; preds = %358
  %369 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %356, ptr noundef nonnull %6, i64 noundef 4) #14
  %370 = icmp eq i64 %369, 4
  br i1 %370, label %371, label %592

371:                                              ; preds = %368, %366
  %372 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %373 = load i32, ptr %372, align 8, !tbaa !40
  %374 = icmp eq i32 %373, 0
  %375 = load i32, ptr %6, align 4, !tbaa !13
  br i1 %374, label %392, label %376

376:                                              ; preds = %371
  %377 = call fastcc i32 @__bswap_32(i32 noundef %375) #15
  store i32 %377, ptr %6, align 4, !tbaa !13
  br label %392

378:                                              ; preds = %353
  br i1 %357, label %379, label %389

379:                                              ; preds = %378
  %380 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %381 = load ptr, ptr %380, align 8, !tbaa !32
  %382 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %383 = load ptr, ptr %382, align 8, !tbaa !33
  %384 = icmp ult ptr %381, %383
  br i1 %384, label %385, label %592

385:                                              ; preds = %379
  %386 = getelementptr inbounds i8, ptr %381, i64 1
  store ptr %386, ptr %380, align 8, !tbaa !32
  %387 = load i8, ptr %381, align 1, !tbaa !11
  %388 = zext i8 %387 to i32
  store i32 %388, ptr %6, align 4, !tbaa !13
  br label %392

389:                                              ; preds = %378
  %390 = call i32 @PerlIO_getc(ptr noundef nonnull %356) #14
  store i32 %390, ptr %6, align 4, !tbaa !13
  %391 = icmp eq i32 %390, -1
  br i1 %391, label %592, label %392

392:                                              ; preds = %371, %385, %389, %376
  %393 = phi i32 [ %388, %385 ], [ %390, %389 ], [ %377, %376 ], [ %375, %371 ]
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %452, label %395

395:                                              ; preds = %392
  %396 = call ptr @Perl_newSV_type(i32 noundef 11) #14
  %397 = load i32, ptr %6, align 4, !tbaa !13
  %398 = add nsw i32 %397, 1
  %399 = sext i32 %398 to i64
  call void @Perl_av_extend(ptr noundef %396, i64 noundef %399) #14
  %400 = load i32, ptr %6, align 4, !tbaa !13
  %401 = sext i32 %400 to i64
  %402 = load ptr, ptr %396, align 8, !tbaa !70
  %403 = getelementptr inbounds %struct.xpvav, ptr %402, i64 0, i32 2
  store i64 %401, ptr %403, align 8, !tbaa !72
  %404 = getelementptr inbounds %struct.av, ptr %396, i64 0, i32 3
  %405 = load ptr, ptr %404, align 8, !tbaa !11
  %406 = icmp slt i32 %400, 1
  br i1 %406, label %452, label %407

407:                                              ; preds = %395
  %408 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %409 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %410 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 6
  br label %411

411:                                              ; preds = %407, %443
  %412 = phi i64 [ 1, %407 ], [ %447, %443 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  %413 = load ptr, ptr %12, align 8, !tbaa !35
  %414 = icmp eq ptr %413, null
  br i1 %414, label %415, label %422

415:                                              ; preds = %411
  %416 = load ptr, ptr %408, align 8, !tbaa !32
  %417 = getelementptr inbounds i8, ptr %416, i64 4
  %418 = load ptr, ptr %409, align 8, !tbaa !33
  %419 = icmp ugt ptr %417, %418
  br i1 %419, label %451, label %420

420:                                              ; preds = %415
  %421 = load i32, ptr %416, align 1
  store ptr %417, ptr %408, align 8, !tbaa !32
  br label %427

422:                                              ; preds = %411
  %423 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %413, ptr noundef nonnull %8, i64 noundef 4) #14
  %424 = icmp eq i64 %423, 4
  br i1 %424, label %425, label %451

425:                                              ; preds = %422
  %426 = load i32, ptr %8, align 4, !tbaa !13
  br label %427

427:                                              ; preds = %425, %420
  %428 = phi i32 [ %426, %425 ], [ %421, %420 ]
  %429 = call fastcc i32 @__bswap_32(i32 noundef %428) #15
  store i32 %429, ptr %8, align 4, !tbaa !13
  %430 = load ptr, ptr %69, align 8, !tbaa !60
  %431 = sext i32 %429 to i64
  %432 = call ptr @Perl_av_fetch(ptr noundef %430, i64 noundef %431, i32 noundef 0) #14
  %433 = icmp eq ptr %432, null
  br i1 %433, label %436, label %434

434:                                              ; preds = %427
  %435 = load ptr, ptr %432, align 8, !tbaa !12
  br label %443

436:                                              ; preds = %427
  %437 = load i32, ptr %8, align 4, !tbaa !13
  %438 = sext i32 %437 to i64
  %439 = load i64, ptr %410, align 8, !tbaa !61
  %440 = icmp eq i64 %439, %438
  br i1 %440, label %443, label %441

441:                                              ; preds = %436
  %442 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %442, align 8, !tbaa !27
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.69, i64 noundef %438) #14
  unreachable

443:                                              ; preds = %436, %434
  %444 = phi ptr [ %435, %434 ], [ @PL_sv_undef, %436 ]
  %445 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %444) #15
  %446 = getelementptr inbounds ptr, ptr %405, i64 %412
  store ptr %444, ptr %446, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  %447 = add nuw nsw i64 %412, 1
  %448 = load i32, ptr %6, align 4, !tbaa !13
  %449 = sext i32 %448 to i64
  %450 = icmp slt i64 %412, %449
  br i1 %450, label %411, label %452, !llvm.loop !116

451:                                              ; preds = %422, %415
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  br label %592

452:                                              ; preds = %443, %395, %350, %392
  %453 = phi i1 [ true, %392 ], [ true, %350 ], [ false, %395 ], [ false, %443 ]
  %454 = phi ptr [ null, %392 ], [ null, %350 ], [ %396, %395 ], [ %396, %443 ]
  %455 = call ptr @Perl_gv_stashpv(ptr noundef %254, i32 noundef 1) #14
  %456 = call ptr @Perl_gv_fetchmethod_autoload(ptr noundef %455, ptr noundef nonnull @.str.28, i32 noundef 0) #14
  %457 = icmp eq ptr %456, null
  br i1 %457, label %507, label %458

458:                                              ; preds = %452
  %459 = getelementptr inbounds %struct.gv, ptr %456, i64 0, i32 2
  %460 = load i32, ptr %459, align 4, !tbaa !76
  %461 = and i32 %460, 255
  %462 = icmp eq i32 %461, 9
  br i1 %462, label %463, label %507

463:                                              ; preds = %458
  %464 = getelementptr inbounds %struct.gv, ptr %456, i64 0, i32 3
  %465 = load ptr, ptr %464, align 8, !tbaa !11
  %466 = getelementptr inbounds %struct.gp, ptr %465, i64 0, i32 2
  %467 = load ptr, ptr %466, align 8, !tbaa !84
  %468 = call ptr @Perl_newRV(ptr noundef %467) #14
  br i1 %453, label %471, label %469

469:                                              ; preds = %463
  %470 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %470, align 8, !tbaa !27
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.70) #14
  br label %471

471:                                              ; preds = %469, %463
  %472 = call ptr @Perl_newSV_type(i32 noundef 11) #14
  call void @Perl_av_extend(ptr noundef %472, i64 noundef 1) #14
  %473 = load ptr, ptr %472, align 8, !tbaa !70
  %474 = getelementptr inbounds %struct.xpvav, ptr %473, i64 0, i32 2
  store i64 0, ptr %474, align 8, !tbaa !72
  %475 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %298) #15
  %476 = getelementptr inbounds %struct.av, ptr %472, i64 0, i32 3
  %477 = load ptr, ptr %476, align 8, !tbaa !11
  store ptr %298, ptr %477, align 8, !tbaa !12
  %478 = call ptr @Perl_newSVpv(ptr noundef %254, i64 noundef 0) #14
  %479 = call fastcc ptr @scalar_call(ptr noundef %478, ptr noundef %468, i32 noundef %11, ptr noundef nonnull %472, i32 noundef 2) #15
  call fastcc void @S_SvREFCNT_dec(ptr noundef %478) #15
  call fastcc void @S_SvREFCNT_dec(ptr noundef %298) #15
  call void @Perl_av_undef(ptr noundef nonnull %472) #14
  call void @Perl_sv_free(ptr noundef nonnull %472) #14
  call fastcc void @S_SvREFCNT_dec(ptr noundef %468) #15
  %480 = icmp eq ptr %479, null
  br i1 %480, label %505, label %481

481:                                              ; preds = %471
  %482 = getelementptr inbounds %struct.sv, ptr %479, i64 0, i32 2
  %483 = load i32, ptr %482, align 4, !tbaa !28
  %484 = and i32 %483, 2048
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %505, label %486

486:                                              ; preds = %481
  %487 = call zeroext i1 @Perl_sv_derived_from(ptr noundef nonnull %479, ptr noundef %254) #14
  br i1 %487, label %488, label %505

488:                                              ; preds = %486
  %489 = load ptr, ptr %69, align 8, !tbaa !60
  %490 = call ptr @Perl_av_pop(ptr noundef %489) #14
  %491 = load i64, ptr %71, align 8, !tbaa !53
  %492 = add nsw i64 %491, -1
  store i64 %492, ptr %71, align 8, !tbaa !53
  call fastcc void @S_SvREFCNT_dec(ptr noundef %65) #15
  call fastcc void @S_SvREFCNT_dec(ptr noundef %65) #15
  %493 = getelementptr inbounds %struct.sv, ptr %479, i64 0, i32 3
  %494 = load ptr, ptr %493, align 8, !tbaa !11
  %495 = load ptr, ptr %69, align 8, !tbaa !60
  %496 = load i64, ptr %71, align 8, !tbaa !53
  %497 = add nsw i64 %496, 1
  store i64 %497, ptr %71, align 8, !tbaa !53
  %498 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %494) #15
  %499 = call ptr @Perl_av_store(ptr noundef %495, i64 noundef %496, ptr noundef %494) #14
  %500 = icmp eq ptr %499, null
  br i1 %500, label %592, label %501

501:                                              ; preds = %488
  store ptr null, ptr %493, align 8, !tbaa !11
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %479) #15
  %502 = icmp ne ptr %254, %4
  %503 = select i1 %107, i1 %502, i1 false
  br i1 %503, label %504, label %592

504:                                              ; preds = %501
  call void @Perl_safesysfree(ptr noundef %254) #14
  br label %592

505:                                              ; preds = %486, %481, %471
  %506 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %506, align 8, !tbaa !27
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.71, ptr noundef %254) #14
  br label %507

507:                                              ; preds = %505, %452, %458
  %508 = phi ptr [ %472, %505 ], [ %454, %458 ], [ %454, %452 ]
  %509 = call ptr @Perl_newRV_noinc(ptr noundef %65) #14
  %510 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %511 = load i32, ptr %510, align 8, !tbaa !63
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %544, label %513

513:                                              ; preds = %507
  %514 = getelementptr inbounds %struct.hv, ptr %455, i64 0, i32 2
  %515 = load i32, ptr %514, align 4, !tbaa !66
  %516 = and i32 %515, 33554432
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %540, label %518

518:                                              ; preds = %513
  %519 = getelementptr inbounds %struct.hv, ptr %455, i64 0, i32 3
  %520 = load ptr, ptr %519, align 8, !tbaa !11
  %521 = load ptr, ptr %455, align 8, !tbaa !47
  %522 = getelementptr inbounds %struct.xpvhv, ptr %521, i64 0, i32 3
  %523 = load i64, ptr %522, align 8, !tbaa !49
  %524 = getelementptr ptr, ptr %520, i64 %523
  %525 = getelementptr ptr, ptr %524, i64 1
  %526 = load ptr, ptr %525, align 8, !tbaa !11
  %527 = icmp eq ptr %526, null
  br i1 %527, label %540, label %528

528:                                              ; preds = %518
  %529 = getelementptr i8, ptr %524, i64 36
  %530 = load i32, ptr %529, align 4, !tbaa !68
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %535, label %532

532:                                              ; preds = %528
  %533 = load ptr, ptr %526, align 8, !tbaa !12
  %534 = icmp eq ptr %533, null
  br i1 %534, label %540, label %535

535:                                              ; preds = %528, %532
  %536 = call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %455, i1 noundef zeroext false) #14
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %543

538:                                              ; preds = %535
  %539 = load i32, ptr %514, align 4, !tbaa !66
  br label %540

540:                                              ; preds = %538, %513, %518, %532
  %541 = phi i32 [ %539, %538 ], [ %515, %513 ], [ %515, %518 ], [ %515, %532 ]
  %542 = and i32 %541, -268435457
  store i32 %542, ptr %514, align 4, !tbaa !66
  br label %544

543:                                              ; preds = %535
  store i32 0, ptr %510, align 8, !tbaa !63
  call fastcc void @SvAMAGIC_on(ptr noundef %509) #15
  br label %544

544:                                              ; preds = %540, %543, %507
  %545 = call ptr @Perl_sv_bless(ptr noundef %509, ptr noundef %455) #14
  %546 = getelementptr inbounds %struct.sv, ptr %509, i64 0, i32 3
  store ptr null, ptr %546, align 8, !tbaa !11
  call fastcc void @S_SvREFCNT_dec(ptr noundef %509) #15
  %547 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 9
  %548 = load ptr, ptr %547, align 8, !tbaa !51
  %549 = call fastcc ptr @pkg_can(ptr noundef %548, ptr noundef %455, ptr noundef nonnull @.str.72) #15
  %550 = icmp eq ptr %549, null
  br i1 %550, label %551, label %563

551:                                              ; preds = %544
  %552 = call ptr @Perl_newSVpv(ptr noundef %254, i64 noundef 0) #14
  call void (i32, ptr, ptr, ...) @Perl_load_module(i32 noundef 2, ptr noundef %552, ptr noundef null) #14
  %553 = load ptr, ptr %547, align 8, !tbaa !51
  %554 = load ptr, ptr %65, align 8, !tbaa !55
  %555 = load ptr, ptr %554, align 8, !tbaa !56
  call fastcc void @pkg_uncache(ptr noundef %553, ptr noundef %555) #15
  %556 = load ptr, ptr %547, align 8, !tbaa !51
  %557 = load ptr, ptr %65, align 8, !tbaa !55
  %558 = load ptr, ptr %557, align 8, !tbaa !56
  %559 = call fastcc ptr @pkg_can(ptr noundef %556, ptr noundef %558, ptr noundef nonnull @.str.72) #15
  %560 = icmp eq ptr %559, null
  br i1 %560, label %561, label %563

561:                                              ; preds = %551
  %562 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %562, align 8, !tbaa !27
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.73, ptr noundef %254, ptr noundef %254) #14
  br label %563

563:                                              ; preds = %551, %561, %544
  %564 = phi ptr [ %549, %544 ], [ %559, %551 ], [ null, %561 ]
  %565 = icmp eq ptr %508, null
  br i1 %565, label %566, label %570

566:                                              ; preds = %563
  %567 = call ptr @Perl_newSV_type(i32 noundef 11) #14
  call void @Perl_av_extend(ptr noundef %567, i64 noundef 1) #14
  %568 = load ptr, ptr %567, align 8, !tbaa !70
  %569 = getelementptr inbounds %struct.xpvav, ptr %568, i64 0, i32 2
  store i64 0, ptr %569, align 8, !tbaa !72
  br label %570

570:                                              ; preds = %566, %563
  %571 = phi ptr [ %508, %563 ], [ %567, %566 ]
  %572 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %298) #15
  %573 = getelementptr inbounds %struct.av, ptr %571, i64 0, i32 3
  %574 = load ptr, ptr %573, align 8, !tbaa !11
  store ptr %298, ptr %574, align 8, !tbaa !12
  %575 = call ptr @Perl_newRV(ptr noundef %65) #14
  %576 = call fastcc ptr @scalar_call(ptr noundef %575, ptr noundef %564, i32 noundef %11, ptr noundef nonnull %571, i32 noundef 6) #15
  call fastcc void @S_SvREFCNT_dec(ptr noundef %575) #15
  call fastcc void @S_SvREFCNT_dec(ptr noundef %298) #15
  call void @Perl_av_undef(ptr noundef nonnull %571) #14
  call void @Perl_sv_free(ptr noundef nonnull %571) #14
  %577 = icmp ne ptr %254, %4
  %578 = select i1 %107, i1 %577, i1 false
  br i1 %578, label %579, label %580

579:                                              ; preds = %570
  call void @Perl_safesysfree(ptr noundef %254) #14
  br label %580

580:                                              ; preds = %579, %570
  br i1 %67, label %592, label %581

581:                                              ; preds = %580
  %582 = call fastcc ptr @retrieve(ptr noundef nonnull %0, ptr noundef null) #15
  switch i32 %68, label %589 [
    i32 4, label %583
    i32 5, label %584
    i32 6, label %588
  ]

583:                                              ; preds = %581
  call void @Perl_sv_upgrade(ptr noundef %65, i32 noundef 7) #14
  br label %591

584:                                              ; preds = %581
  call void @Perl_sv_upgrade(ptr noundef %65, i32 noundef 11) #14
  %585 = getelementptr inbounds %struct.av, ptr %65, i64 0, i32 2
  %586 = load i32, ptr %585, align 4, !tbaa !114
  %587 = and i32 %586, -1073741825
  store i32 %587, ptr %585, align 4, !tbaa !114
  br label %591

588:                                              ; preds = %581
  call void @Perl_sv_upgrade(ptr noundef %65, i32 noundef 12) #14
  br label %591

589:                                              ; preds = %581
  %590 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %590, align 8, !tbaa !27
  call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.74, i32 noundef %68) #14
  br label %591

591:                                              ; preds = %589, %588, %584, %583
  call void @Perl_sv_magic(ptr noundef %65, ptr noundef %582, i32 noundef %66, ptr noundef null, i32 noundef 0) #14
  call fastcc void @S_SvREFCNT_dec(ptr noundef %582) #15
  br label %592

592:                                              ; preds = %97, %89, %83, %501, %504, %488, %201, %191, %180, %171, %230, %252, %238, %451, %160, %580, %389, %379, %368, %359, %292, %282, %269, %260, %64, %50, %40, %25, %15, %591, %327, %319, %61
  %593 = phi ptr [ null, %61 ], [ null, %327 ], [ %65, %591 ], [ null, %451 ], [ null, %319 ], [ null, %15 ], [ null, %25 ], [ null, %40 ], [ null, %50 ], [ null, %64 ], [ null, %260 ], [ null, %269 ], [ null, %282 ], [ null, %292 ], [ null, %359 ], [ null, %368 ], [ null, %379 ], [ null, %389 ], [ %65, %580 ], [ null, %160 ], [ null, %238 ], [ null, %252 ], [ null, %230 ], [ null, %171 ], [ null, %180 ], [ null, %191 ], [ null, %201 ], [ %494, %501 ], [ %494, %504 ], [ null, %488 ], [ null, %83 ], [ null, %89 ], [ null, %97 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret ptr %593
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @retrieve_overloaded(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @Perl_newSV(i64 noundef 0) #14
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %12 = load i64, ptr %11, align 8, !tbaa !53
  %13 = add nsw i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !53
  %14 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %3) #15
  %15 = tail call ptr @Perl_av_store(ptr noundef %10, i64 noundef %12, ptr noundef %3) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %175, label %17

17:                                               ; preds = %7
  %18 = icmp eq ptr %8, null
  br i1 %18, label %58, label %19

19:                                               ; preds = %17
  %20 = tail call ptr @Perl_newRV_noinc(ptr noundef %3) #14
  %21 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %22 = load i32, ptr %21, align 8, !tbaa !63
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %55, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !66
  %27 = and i32 %26, 33554432
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = load ptr, ptr %8, align 8, !tbaa !47
  %33 = getelementptr inbounds %struct.xpvhv, ptr %32, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !49
  %35 = getelementptr ptr, ptr %31, i64 %34
  %36 = getelementptr ptr, ptr %35, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !11
  %38 = icmp eq ptr %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %29
  %40 = getelementptr i8, ptr %35, i64 36
  %41 = load i32, ptr %40, align 4, !tbaa !68
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %37, align 8, !tbaa !12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %39, %43
  %47 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %8, i1 noundef zeroext false) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, ptr %25, align 4, !tbaa !66
  br label %51

51:                                               ; preds = %49, %24, %29, %43
  %52 = phi i32 [ %50, %49 ], [ %26, %24 ], [ %26, %29 ], [ %26, %43 ]
  %53 = and i32 %52, -268435457
  store i32 %53, ptr %25, align 4, !tbaa !66
  br label %55

54:                                               ; preds = %46
  store i32 0, ptr %21, align 8, !tbaa !63
  tail call fastcc void @SvAMAGIC_on(ptr noundef %20) #15
  br label %55

55:                                               ; preds = %51, %54, %19
  %56 = tail call ptr @Perl_sv_bless(ptr noundef %20, ptr noundef nonnull %8) #14
  %57 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  store ptr null, ptr %57, align 8, !tbaa !11
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %20) #15
  br label %58

58:                                               ; preds = %55, %17
  %59 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  store i32 1, ptr %59, align 8, !tbaa !63
  %60 = tail call fastcc ptr @retrieve(ptr noundef nonnull %0, ptr noundef null) #15
  store i32 0, ptr %59, align 8, !tbaa !63
  %61 = icmp eq ptr %60, null
  br i1 %61, label %175, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !28
  %65 = and i32 %64, 255
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  tail call void @Perl_sv_upgrade(ptr noundef nonnull %3, i32 noundef 1) #14
  %68 = load i32, ptr %63, align 4, !tbaa !28
  br label %69

69:                                               ; preds = %67, %62
  %70 = phi i32 [ %68, %67 ], [ %64, %62 ]
  %71 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 3
  store ptr %60, ptr %71, align 8, !tbaa !11
  %72 = or i32 %70, 2048
  store i32 %72, ptr %63, align 4, !tbaa !28
  %73 = getelementptr inbounds %struct.sv, ptr %60, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !28
  %75 = and i32 %74, 255
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %69
  %78 = load ptr, ptr %60, align 8, !tbaa !55
  %79 = load ptr, ptr %78, align 8, !tbaa !56
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %69, %77
  %82 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %82, align 8, !tbaa !27
  %83 = tail call ptr @Perl_sv_reftype(ptr noundef nonnull %60, i32 noundef 0) #14
  %84 = ptrtoint ptr %60 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.75, ptr noundef %83, i64 noundef %84) #14
  br label %85

85:                                               ; preds = %81, %77
  %86 = phi ptr [ null, %81 ], [ %79, %77 ]
  %87 = getelementptr inbounds %struct.hv, ptr %86, i64 0, i32 2
  %88 = load i32, ptr %87, align 4, !tbaa !66
  %89 = and i32 %88, 33554432
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = and i32 %88, -301989889
  store i32 %92, ptr %87, align 4, !tbaa !66
  br label %140

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.hv, ptr %86, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !11
  %96 = load ptr, ptr %86, align 8, !tbaa !47
  %97 = getelementptr inbounds %struct.xpvhv, ptr %96, i64 0, i32 3
  %98 = load i64, ptr %97, align 8, !tbaa !49
  %99 = getelementptr ptr, ptr %95, i64 %98
  %100 = getelementptr ptr, ptr %99, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !11
  %102 = icmp eq ptr %101, null
  br i1 %102, label %113, label %103

103:                                              ; preds = %93
  %104 = getelementptr i8, ptr %99, i64 36
  %105 = load i32, ptr %104, align 4, !tbaa !68
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %101, align 8, !tbaa !12
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %103, %107
  %111 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %86, i1 noundef zeroext false) #14
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %115, label %174

113:                                              ; preds = %93, %107
  %114 = and i32 %88, -268435457
  store i32 %114, ptr %87, align 4, !tbaa !66
  br label %120

115:                                              ; preds = %110
  %116 = load i32, ptr %87, align 4, !tbaa !66
  %117 = and i32 %116, 33554432
  %118 = icmp eq i32 %117, 0
  %119 = and i32 %116, -268435457
  store i32 %119, ptr %87, align 4, !tbaa !66
  br i1 %118, label %140, label %120

120:                                              ; preds = %113, %115
  %121 = getelementptr inbounds %struct.hv, ptr %86, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !11
  %123 = load ptr, ptr %86, align 8, !tbaa !47
  %124 = getelementptr inbounds %struct.xpvhv, ptr %123, i64 0, i32 3
  %125 = load i64, ptr %124, align 8, !tbaa !49
  %126 = getelementptr ptr, ptr %122, i64 %125
  %127 = getelementptr ptr, ptr %126, i64 1
  %128 = load ptr, ptr %127, align 8, !tbaa !11
  %129 = icmp eq ptr %128, null
  br i1 %129, label %140, label %130

130:                                              ; preds = %120
  %131 = getelementptr i8, ptr %126, i64 36
  %132 = load i32, ptr %131, align 4, !tbaa !68
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %130
  %135 = load ptr, ptr %128, align 8, !tbaa !11
  %136 = icmp eq ptr %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %130, %134
  %138 = phi ptr [ %135, %134 ], [ %128, %130 ]
  %139 = getelementptr inbounds %struct.hek, ptr %138, i64 0, i32 2
  br label %140

140:                                              ; preds = %91, %115, %120, %134, %137
  %141 = phi ptr [ %139, %137 ], [ null, %134 ], [ null, %120 ], [ null, %115 ], [ null, %91 ]
  %142 = tail call ptr @Perl_newSVpv(ptr noundef %141, i64 noundef 0) #14
  tail call void (i32, ptr, ptr, ...) @Perl_load_module(i32 noundef 2, ptr noundef %142, ptr noundef null) #14
  %143 = load i32, ptr %87, align 4, !tbaa !66
  %144 = and i32 %143, 33554432
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %168, label %146

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.hv, ptr %86, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !11
  %149 = load ptr, ptr %86, align 8, !tbaa !47
  %150 = getelementptr inbounds %struct.xpvhv, ptr %149, i64 0, i32 3
  %151 = load i64, ptr %150, align 8, !tbaa !49
  %152 = getelementptr ptr, ptr %148, i64 %151
  %153 = getelementptr ptr, ptr %152, i64 1
  %154 = load ptr, ptr %153, align 8, !tbaa !11
  %155 = icmp eq ptr %154, null
  br i1 %155, label %168, label %156

156:                                              ; preds = %146
  %157 = getelementptr i8, ptr %152, i64 36
  %158 = load i32, ptr %157, align 4, !tbaa !68
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %156
  %161 = load ptr, ptr %154, align 8, !tbaa !12
  %162 = icmp eq ptr %161, null
  br i1 %162, label %168, label %163

163:                                              ; preds = %156, %160
  %164 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %86, i1 noundef zeroext false) #14
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %163
  %167 = load i32, ptr %87, align 4, !tbaa !66
  br label %168

168:                                              ; preds = %166, %140, %146, %160
  %169 = phi i32 [ %167, %166 ], [ %143, %140 ], [ %143, %146 ], [ %143, %160 ]
  %170 = and i32 %169, -268435457
  store i32 %170, ptr %87, align 4, !tbaa !66
  %171 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %171, align 8, !tbaa !27
  %172 = tail call ptr @Perl_sv_reftype(ptr noundef nonnull %60, i32 noundef 0) #14
  %173 = ptrtoint ptr %60 to i64
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.76, ptr noundef %172, i64 noundef %173, ptr noundef %141, ptr noundef %141) #14
  br label %174

174:                                              ; preds = %168, %163, %110
  tail call fastcc void @SvAMAGIC_on(ptr noundef nonnull %3) #15
  br label %175

175:                                              ; preds = %58, %7, %174
  %176 = phi ptr [ %3, %174 ], [ null, %7 ], [ null, %58 ]
  ret ptr %176
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @retrieve_tied_key(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @Perl_newSV(i64 noundef 0) #14
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %12 = load i64, ptr %11, align 8, !tbaa !53
  %13 = add nsw i64 %12, 1
  store i64 %13, ptr %11, align 8, !tbaa !53
  %14 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %3) #15
  %15 = tail call ptr @Perl_av_store(ptr noundef %10, i64 noundef %12, ptr noundef %3) #14
  %16 = icmp eq ptr %15, null
  br i1 %16, label %65, label %17

17:                                               ; preds = %7
  %18 = icmp eq ptr %8, null
  br i1 %18, label %58, label %19

19:                                               ; preds = %17
  %20 = tail call ptr @Perl_newRV_noinc(ptr noundef %3) #14
  %21 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %22 = load i32, ptr %21, align 8, !tbaa !63
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %55, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !66
  %27 = and i32 %26, 33554432
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.hv, ptr %8, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = load ptr, ptr %8, align 8, !tbaa !47
  %33 = getelementptr inbounds %struct.xpvhv, ptr %32, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !49
  %35 = getelementptr ptr, ptr %31, i64 %34
  %36 = getelementptr ptr, ptr %35, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !11
  %38 = icmp eq ptr %37, null
  br i1 %38, label %51, label %39

39:                                               ; preds = %29
  %40 = getelementptr i8, ptr %35, i64 36
  %41 = load i32, ptr %40, align 4, !tbaa !68
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %37, align 8, !tbaa !12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %39, %43
  %47 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %8, i1 noundef zeroext false) #14
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i32, ptr %25, align 4, !tbaa !66
  br label %51

51:                                               ; preds = %49, %24, %29, %43
  %52 = phi i32 [ %50, %49 ], [ %26, %24 ], [ %26, %29 ], [ %26, %43 ]
  %53 = and i32 %52, -268435457
  store i32 %53, ptr %25, align 4, !tbaa !66
  br label %55

54:                                               ; preds = %46
  store i32 0, ptr %21, align 8, !tbaa !63
  tail call fastcc void @SvAMAGIC_on(ptr noundef %20) #15
  br label %55

55:                                               ; preds = %51, %54, %19
  %56 = tail call ptr @Perl_sv_bless(ptr noundef %20, ptr noundef nonnull %8) #14
  %57 = getelementptr inbounds %struct.sv, ptr %20, i64 0, i32 3
  store ptr null, ptr %57, align 8, !tbaa !11
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %20) #15
  br label %58

58:                                               ; preds = %55, %17
  %59 = tail call fastcc ptr @retrieve(ptr noundef nonnull %0, ptr noundef null) #15
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = tail call fastcc ptr @retrieve(ptr noundef nonnull %0, ptr noundef null) #15
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  tail call void @Perl_sv_upgrade(ptr noundef %3, i32 noundef 7) #14
  tail call void @Perl_sv_magic(ptr noundef %3, ptr noundef nonnull %59, i32 noundef 112, ptr noundef nonnull %62, i32 noundef -2) #14
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %62) #15
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %59) #15
  br label %65

65:                                               ; preds = %61, %58, %7, %64
  %66 = phi ptr [ %3, %64 ], [ null, %7 ], [ null, %58 ], [ null, %61 ]
  ret ptr %66
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @retrieve_tied_idx(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %4 = tail call ptr @Perl_newSV(i64 noundef 0) #14
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  %10 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %13 = load i64, ptr %12, align 8, !tbaa !53
  %14 = add nsw i64 %13, 1
  store i64 %14, ptr %12, align 8, !tbaa !53
  %15 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %4) #15
  %16 = tail call ptr @Perl_av_store(ptr noundef %11, i64 noundef %13, ptr noundef %4) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %87, label %18

18:                                               ; preds = %8
  %19 = icmp eq ptr %9, null
  br i1 %19, label %59, label %20

20:                                               ; preds = %18
  %21 = tail call ptr @Perl_newRV_noinc(ptr noundef %4) #14
  %22 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %23 = load i32, ptr %22, align 8, !tbaa !63
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.hv, ptr %9, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !66
  %28 = and i32 %27, 33554432
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %52, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.hv, ptr %9, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !11
  %33 = load ptr, ptr %9, align 8, !tbaa !47
  %34 = getelementptr inbounds %struct.xpvhv, ptr %33, i64 0, i32 3
  %35 = load i64, ptr %34, align 8, !tbaa !49
  %36 = getelementptr ptr, ptr %32, i64 %35
  %37 = getelementptr ptr, ptr %36, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %30
  %41 = getelementptr i8, ptr %36, i64 36
  %42 = load i32, ptr %41, align 4, !tbaa !68
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %38, align 8, !tbaa !12
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %40, %44
  %48 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %9, i1 noundef zeroext false) #14
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, ptr %26, align 4, !tbaa !66
  br label %52

52:                                               ; preds = %50, %25, %30, %44
  %53 = phi i32 [ %51, %50 ], [ %27, %25 ], [ %27, %30 ], [ %27, %44 ]
  %54 = and i32 %53, -268435457
  store i32 %54, ptr %26, align 4, !tbaa !66
  br label %56

55:                                               ; preds = %47
  store i32 0, ptr %22, align 8, !tbaa !63
  tail call fastcc void @SvAMAGIC_on(ptr noundef %21) #15
  br label %56

56:                                               ; preds = %52, %55, %20
  %57 = tail call ptr @Perl_sv_bless(ptr noundef %21, ptr noundef nonnull %9) #14
  %58 = getelementptr inbounds %struct.sv, ptr %21, i64 0, i32 3
  store ptr null, ptr %58, align 8, !tbaa !11
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %21) #15
  br label %59

59:                                               ; preds = %56, %18
  %60 = tail call fastcc ptr @retrieve(ptr noundef nonnull %0, ptr noundef null) #15
  %61 = icmp eq ptr %60, null
  br i1 %61, label %87, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %64 = load ptr, ptr %63, align 8, !tbaa !35
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !32
  %69 = getelementptr inbounds i8, ptr %68, i64 4
  %70 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !33
  %72 = icmp ugt ptr %69, %71
  br i1 %72, label %87, label %73

73:                                               ; preds = %66
  %74 = load i32, ptr %68, align 1
  store i32 %74, ptr %3, align 4
  store ptr %69, ptr %67, align 8, !tbaa !32
  br label %78

75:                                               ; preds = %62
  %76 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %64, ptr noundef nonnull %3, i64 noundef 4) #14
  %77 = icmp eq i64 %76, 4
  br i1 %77, label %78, label %87

78:                                               ; preds = %75, %73
  %79 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %80 = load i32, ptr %79, align 8, !tbaa !40
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  %83 = load i32, ptr %3, align 4, !tbaa !13
  %84 = call fastcc i32 @__bswap_32(i32 noundef %83) #15
  store i32 %84, ptr %3, align 4, !tbaa !13
  br label %85

85:                                               ; preds = %82, %78
  call void @Perl_sv_upgrade(ptr noundef %4, i32 noundef 7) #14
  %86 = load i32, ptr %3, align 4, !tbaa !13
  call void @Perl_sv_magic(ptr noundef %4, ptr noundef nonnull %60, i32 noundef 112, ptr noundef null, i32 noundef %86) #14
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %60) #15
  br label %87

87:                                               ; preds = %75, %66, %59, %8, %85
  %88 = phi ptr [ %4, %85 ], [ null, %8 ], [ null, %59 ], [ null, %66 ], [ null, %75 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret ptr %88
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @retrieve_utf8str(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @retrieve_scalar(ptr noundef %0, ptr noundef %1) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !28
  %8 = or i32 %7, 536870912
  store i32 %8, ptr %6, align 4, !tbaa !28
  br label %9

9:                                                ; preds = %5, %2
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @retrieve_lutf8str(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @retrieve_lscalar(ptr noundef %0, ptr noundef %1) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.sv, ptr %3, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !28
  %8 = or i32 %7, 536870912
  store i32 %8, ptr %6, align 4, !tbaa !28
  br label %9

9:                                                ; preds = %5, %2
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @retrieve_flag_hash(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !32
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !33
  %13 = icmp ult ptr %10, %12
  br i1 %13, label %14, label %240

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, ptr %10, i64 1
  store ptr %15, ptr %9, align 8, !tbaa !32
  %16 = load i8, ptr %10, align 1, !tbaa !11
  %17 = zext i8 %16 to i32
  br label %24

18:                                               ; preds = %2
  %19 = tail call i32 @PerlIO_getc(ptr noundef nonnull %6) #14
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %240, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %5, align 8, !tbaa !35
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %14, %21
  %25 = phi i32 [ %17, %14 ], [ %19, %21 ]
  %26 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !32
  %28 = getelementptr inbounds i8, ptr %27, i64 4
  %29 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !33
  %31 = icmp ugt ptr %28, %30
  br i1 %31, label %240, label %32

32:                                               ; preds = %24
  %33 = load i32, ptr %27, align 1
  store i32 %33, ptr %3, align 4
  store ptr %28, ptr %26, align 8, !tbaa !32
  br label %37

34:                                               ; preds = %21
  %35 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %22, ptr noundef nonnull %3, i64 noundef 4) #14
  %36 = icmp eq i64 %35, 4
  br i1 %36, label %37, label %240

37:                                               ; preds = %34, %32
  %38 = phi i32 [ %19, %34 ], [ %25, %32 ]
  %39 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %40 = load i32, ptr %39, align 8, !tbaa !40
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %3, align 4, !tbaa !13
  %44 = call fastcc i32 @__bswap_32(i32 noundef %43) #15
  store i32 %44, ptr %3, align 4, !tbaa !13
  br label %45

45:                                               ; preds = %42, %37
  %46 = call ptr @Perl_newSV_type(i32 noundef 12) #14
  %47 = icmp eq ptr %1, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %50

50:                                               ; preds = %45, %48
  %51 = phi ptr [ %49, %48 ], [ null, %45 ]
  %52 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !60
  %54 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %55 = load i64, ptr %54, align 8, !tbaa !53
  %56 = add nsw i64 %55, 1
  store i64 %56, ptr %54, align 8, !tbaa !53
  %57 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %46) #15
  %58 = call ptr @Perl_av_store(ptr noundef %53, i64 noundef %55, ptr noundef %46) #14
  %59 = icmp eq ptr %58, null
  br i1 %59, label %240, label %60

60:                                               ; preds = %50
  %61 = icmp eq ptr %51, null
  br i1 %61, label %101, label %62

62:                                               ; preds = %60
  %63 = call ptr @Perl_newRV_noinc(ptr noundef %46) #14
  %64 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %65 = load i32, ptr %64, align 8, !tbaa !63
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %98, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.hv, ptr %51, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !66
  %70 = and i32 %69, 33554432
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %94, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.hv, ptr %51, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !11
  %75 = load ptr, ptr %51, align 8, !tbaa !47
  %76 = getelementptr inbounds %struct.xpvhv, ptr %75, i64 0, i32 3
  %77 = load i64, ptr %76, align 8, !tbaa !49
  %78 = getelementptr ptr, ptr %74, i64 %77
  %79 = getelementptr ptr, ptr %78, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !11
  %81 = icmp eq ptr %80, null
  br i1 %81, label %94, label %82

82:                                               ; preds = %72
  %83 = getelementptr i8, ptr %78, i64 36
  %84 = load i32, ptr %83, align 4, !tbaa !68
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %80, align 8, !tbaa !12
  %88 = icmp eq ptr %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %82, %86
  %90 = call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %51, i1 noundef zeroext false) #14
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32, ptr %68, align 4, !tbaa !66
  br label %94

94:                                               ; preds = %92, %67, %72, %86
  %95 = phi i32 [ %93, %92 ], [ %69, %67 ], [ %69, %72 ], [ %69, %86 ]
  %96 = and i32 %95, -268435457
  store i32 %96, ptr %68, align 4, !tbaa !66
  br label %98

97:                                               ; preds = %89
  store i32 0, ptr %64, align 8, !tbaa !63
  call fastcc void @SvAMAGIC_on(ptr noundef %63) #15
  br label %98

98:                                               ; preds = %94, %97, %62
  %99 = call ptr @Perl_sv_bless(ptr noundef %63, ptr noundef nonnull %51) #14
  %100 = getelementptr inbounds %struct.sv, ptr %63, i64 0, i32 3
  store ptr null, ptr %100, align 8, !tbaa !11
  call fastcc void @S_SvREFCNT_dec(ptr noundef %63) #15
  br label %101

101:                                              ; preds = %98, %60
  %102 = load i32, ptr %3, align 4, !tbaa !13
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %240, label %104

104:                                              ; preds = %101
  %105 = add nsw i32 %102, 1
  %106 = sext i32 %105 to i64
  call void @Perl_hv_ksplit(ptr noundef %46, i64 noundef %106) #14
  %107 = load i32, ptr %3, align 4, !tbaa !13
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %104
  %110 = and i32 %38, 1
  br label %233

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %113 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %114 = and i32 %38, 1
  %115 = icmp eq i32 %114, 0
  %116 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 21
  %117 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 21, i32 1
  br label %118

118:                                              ; preds = %111, %229
  %119 = phi i32 [ 0, %111 ], [ %230, %229 ]
  %120 = call fastcc ptr @retrieve(ptr noundef nonnull %0, ptr noundef null) #15
  %121 = icmp eq ptr %120, null
  br i1 %121, label %240, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %5, align 8, !tbaa !35
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = load ptr, ptr %112, align 8, !tbaa !32
  %127 = load ptr, ptr %113, align 8, !tbaa !33
  %128 = icmp ult ptr %126, %127
  br i1 %128, label %129, label %240

129:                                              ; preds = %125
  %130 = getelementptr inbounds i8, ptr %126, i64 1
  store ptr %130, ptr %112, align 8, !tbaa !32
  %131 = load i8, ptr %126, align 1, !tbaa !11
  %132 = zext i8 %131 to i32
  br label %136

133:                                              ; preds = %122
  %134 = call i32 @PerlIO_getc(ptr noundef nonnull %123) #14
  %135 = icmp eq i32 %134, -1
  br i1 %135, label %240, label %136

136:                                              ; preds = %133, %129
  %137 = phi i32 [ %134, %133 ], [ %132, %129 ]
  %138 = and i32 %137, 4
  %139 = icmp eq i32 %138, 0
  %140 = select i1 %115, i1 true, i1 %139
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.sv, ptr %120, i64 0, i32 2
  %143 = load i32, ptr %142, align 4, !tbaa !28
  %144 = or i32 %143, 134217728
  store i32 %144, ptr %142, align 4, !tbaa !28
  br label %145

145:                                              ; preds = %141, %136
  %146 = and i32 %137, 8
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %145
  %149 = call fastcc ptr @retrieve(ptr noundef nonnull %0, ptr noundef null) #15
  %150 = icmp eq ptr %149, null
  br i1 %150, label %240, label %151

151:                                              ; preds = %148
  %152 = call ptr @Perl_hv_common(ptr noundef %46, ptr noundef nonnull %149, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %120, i32 noundef 0) #14
  %153 = icmp eq ptr %152, null
  br i1 %153, label %240, label %229

154:                                              ; preds = %145
  %155 = and i32 %137, 16
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %154
  call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %120) #15
  br label %158

158:                                              ; preds = %157, %154
  %159 = phi ptr [ @PL_sv_placeholder, %157 ], [ %120, %154 ]
  %160 = phi i32 [ 512, %157 ], [ 0, %154 ]
  %161 = and i32 %137, 3
  %162 = or disjoint i32 %160, %161
  %163 = load ptr, ptr %5, align 8, !tbaa !35
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %172

165:                                              ; preds = %158
  %166 = load ptr, ptr %112, align 8, !tbaa !32
  %167 = getelementptr inbounds i8, ptr %166, i64 4
  %168 = load ptr, ptr %113, align 8, !tbaa !33
  %169 = icmp ugt ptr %167, %168
  br i1 %169, label %240, label %170

170:                                              ; preds = %165
  %171 = load i32, ptr %166, align 1
  store i32 %171, ptr %4, align 4
  store ptr %167, ptr %112, align 8, !tbaa !32
  br label %177

172:                                              ; preds = %158
  %173 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %163, ptr noundef nonnull %4, i64 noundef 4) #14
  %174 = icmp eq i64 %173, 4
  br i1 %174, label %175, label %240

175:                                              ; preds = %172
  %176 = load i32, ptr %4, align 4, !tbaa !13
  br label %177

177:                                              ; preds = %175, %170
  %178 = phi i32 [ %176, %175 ], [ %171, %170 ]
  %179 = load i32, ptr %39, align 8, !tbaa !40
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %177
  %182 = call fastcc i32 @__bswap_32(i32 noundef %178) #15
  store i32 %182, ptr %4, align 4, !tbaa !13
  br label %183

183:                                              ; preds = %177, %181
  %184 = phi i32 [ %178, %177 ], [ %182, %181 ]
  %185 = sext i32 %184 to i64
  %186 = load i64, ptr %117, align 8, !tbaa !105
  %187 = icmp ugt i64 %186, %185
  br i1 %187, label %195, label %188

188:                                              ; preds = %183
  %189 = load ptr, ptr %116, align 8, !tbaa !64
  %190 = add nsw i64 %185, 1
  %191 = call ptr @Perl_safesysrealloc(ptr noundef %189, i64 noundef %190) #14
  store ptr %191, ptr %116, align 8, !tbaa !64
  %192 = load i32, ptr %4, align 4, !tbaa !13
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %193, 1
  store i64 %194, ptr %117, align 8, !tbaa !105
  br label %195

195:                                              ; preds = %183, %188
  %196 = phi i32 [ %192, %188 ], [ %184, %183 ]
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %219, label %198

198:                                              ; preds = %195
  %199 = load ptr, ptr %5, align 8, !tbaa !35
  %200 = icmp eq ptr %199, null
  %201 = sext i32 %196 to i64
  br i1 %200, label %202, label %213

202:                                              ; preds = %198
  %203 = load ptr, ptr %112, align 8, !tbaa !32
  %204 = getelementptr inbounds i8, ptr %203, i64 %201
  %205 = load ptr, ptr %113, align 8, !tbaa !33
  %206 = icmp ugt ptr %204, %205
  br i1 %206, label %240, label %207

207:                                              ; preds = %202
  %208 = load ptr, ptr %116, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %208, ptr align 1 %203, i64 %201, i1 false)
  %209 = load i32, ptr %4, align 4, !tbaa !13
  %210 = load ptr, ptr %112, align 8, !tbaa !32
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds i8, ptr %210, i64 %211
  store ptr %212, ptr %112, align 8, !tbaa !32
  br label %219

213:                                              ; preds = %198
  %214 = load ptr, ptr %116, align 8, !tbaa !64
  %215 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %199, ptr noundef %214, i64 noundef %201) #14
  %216 = load i32, ptr %4, align 4, !tbaa !13
  %217 = sext i32 %216 to i64
  %218 = icmp eq i64 %215, %217
  br i1 %218, label %219, label %240

219:                                              ; preds = %195, %207, %213
  %220 = phi i32 [ %209, %207 ], [ %216, %213 ], [ 0, %195 ]
  %221 = load ptr, ptr %116, align 8, !tbaa !64
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds i8, ptr %221, i64 %222
  store i8 0, ptr %223, align 1, !tbaa !11
  %224 = load ptr, ptr %116, align 8, !tbaa !64
  %225 = load i32, ptr %4, align 4, !tbaa !13
  %226 = sext i32 %225 to i64
  %227 = call ptr @Perl_hv_common(ptr noundef %46, ptr noundef null, ptr noundef %224, i64 noundef %226, i32 noundef %162, i32 noundef 36, ptr noundef nonnull %159, i32 noundef 0) #14
  %228 = icmp eq ptr %227, null
  br i1 %228, label %240, label %229

229:                                              ; preds = %219, %151
  %230 = add nuw nsw i32 %119, 1
  %231 = load i32, ptr %3, align 4, !tbaa !13
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %118, label %233, !llvm.loop !117

233:                                              ; preds = %229, %109
  %234 = phi i32 [ %110, %109 ], [ %114, %229 ]
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.hv, ptr %46, i64 0, i32 2
  %238 = load i32, ptr %237, align 4, !tbaa !66
  %239 = or i32 %238, 134217728
  store i32 %239, ptr %237, align 4, !tbaa !66
  br label %240

240:                                              ; preds = %151, %118, %125, %133, %165, %172, %202, %213, %219, %148, %233, %236, %101, %50, %34, %24, %18, %8
  %241 = phi ptr [ null, %8 ], [ null, %18 ], [ null, %24 ], [ null, %34 ], [ null, %50 ], [ %46, %101 ], [ %46, %236 ], [ %46, %233 ], [ null, %148 ], [ null, %219 ], [ null, %213 ], [ null, %202 ], [ null, %172 ], [ null, %165 ], [ null, %133 ], [ null, %125 ], [ null, %118 ], [ null, %151 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret ptr %241
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @retrieve_code(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %4 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %5 = load i64, ptr %4, align 8, !tbaa !53
  %6 = tail call ptr @Perl_newSViv(i64 noundef 0) #14
  %7 = icmp eq ptr %1, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @Perl_gv_stashpv(ptr noundef nonnull %1, i32 noundef 1) #14
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi ptr [ %9, %8 ], [ null, %2 ]
  %12 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = load i64, ptr %4, align 8, !tbaa !53
  %15 = add nsw i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !53
  %16 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %6) #15
  %17 = tail call ptr @Perl_av_store(ptr noundef %13, i64 noundef %14, ptr noundef %6) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %457, label %19

19:                                               ; preds = %10
  %20 = icmp eq ptr %11, null
  br i1 %20, label %60, label %21

21:                                               ; preds = %19
  %22 = tail call ptr @Perl_newRV_noinc(ptr noundef %6) #14
  %23 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %24 = load i32, ptr %23, align 8, !tbaa !63
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %57, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.hv, ptr %11, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !66
  %29 = and i32 %28, 33554432
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %53, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.hv, ptr %11, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !11
  %34 = load ptr, ptr %11, align 8, !tbaa !47
  %35 = getelementptr inbounds %struct.xpvhv, ptr %34, i64 0, i32 3
  %36 = load i64, ptr %35, align 8, !tbaa !49
  %37 = getelementptr ptr, ptr %33, i64 %36
  %38 = getelementptr ptr, ptr %37, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !11
  %40 = icmp eq ptr %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %31
  %42 = getelementptr i8, ptr %37, i64 36
  %43 = load i32, ptr %42, align 4, !tbaa !68
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %39, align 8, !tbaa !12
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %41, %45
  %49 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %11, i1 noundef zeroext false) #14
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32, ptr %27, align 4, !tbaa !66
  br label %53

53:                                               ; preds = %51, %26, %31, %45
  %54 = phi i32 [ %52, %51 ], [ %28, %26 ], [ %28, %31 ], [ %28, %45 ]
  %55 = and i32 %54, -268435457
  store i32 %55, ptr %27, align 4, !tbaa !66
  br label %57

56:                                               ; preds = %48
  store i32 0, ptr %23, align 8, !tbaa !63
  tail call fastcc void @SvAMAGIC_on(ptr noundef %22) #15
  br label %57

57:                                               ; preds = %53, %56, %21
  %58 = tail call ptr @Perl_sv_bless(ptr noundef %22, ptr noundef nonnull %11) #14
  %59 = getelementptr inbounds %struct.sv, ptr %22, i64 0, i32 3
  store ptr null, ptr %59, align 8, !tbaa !11
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %22) #15
  br label %60

60:                                               ; preds = %19, %57
  %61 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %62 = load ptr, ptr %61, align 8, !tbaa !35
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !32
  %67 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !33
  %69 = icmp ult ptr %66, %68
  br i1 %69, label %70, label %457

70:                                               ; preds = %64
  %71 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %71, ptr %65, align 8, !tbaa !32
  %72 = load i8, ptr %66, align 1, !tbaa !11
  %73 = zext i8 %72 to i32
  br label %77

74:                                               ; preds = %60
  %75 = tail call i32 @PerlIO_getc(ptr noundef nonnull %62) #14
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %457, label %77

77:                                               ; preds = %74, %70
  %78 = phi i32 [ %75, %74 ], [ %73, %70 ]
  switch i32 %78, label %87 [
    i32 10, label %79
    i32 1, label %81
    i32 23, label %83
    i32 24, label %85
  ]

79:                                               ; preds = %77
  %80 = tail call ptr @retrieve_scalar(ptr noundef nonnull %0, ptr noundef %1) #15
  br label %89

81:                                               ; preds = %77
  %82 = tail call ptr @retrieve_lscalar(ptr noundef nonnull %0, ptr noundef %1) #15
  br label %89

83:                                               ; preds = %77
  %84 = tail call ptr @retrieve_utf8str(ptr noundef nonnull %0, ptr noundef %1) #15
  br label %89

85:                                               ; preds = %77
  %86 = tail call ptr @retrieve_lutf8str(ptr noundef nonnull %0, ptr noundef %1) #15
  br label %89

87:                                               ; preds = %77
  %88 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %88, align 8, !tbaa !27
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.77, i32 noundef %78) #14
  br label %89

89:                                               ; preds = %87, %85, %83, %81, %79
  %90 = phi ptr [ null, %87 ], [ %86, %85 ], [ %84, %83 ], [ %82, %81 ], [ %80, %79 ]
  %91 = tail call ptr @Perl_newSVpvn(ptr noundef nonnull @.str.78, i64 noundef 4) #14
  %92 = getelementptr inbounds %struct.sv, ptr %90, i64 0, i32 2
  %93 = load i32, ptr %92, align 4, !tbaa !28
  %94 = and i32 %93, 536870912
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.sv, ptr %91, i64 0, i32 2
  %98 = load i32, ptr %97, align 4, !tbaa !28
  %99 = or i32 %98, 536870912
  store i32 %99, ptr %97, align 4, !tbaa !28
  %100 = load i32, ptr %92, align 4, !tbaa !28
  br label %101

101:                                              ; preds = %96, %89
  %102 = phi i32 [ %100, %96 ], [ %93, %89 ]
  %103 = and i32 %102, 2098176
  %104 = icmp eq i32 %103, 1024
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.sv, ptr %90, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !11
  br label %110

108:                                              ; preds = %101
  %109 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %90, ptr noundef null, i32 noundef 2) #14
  br label %110

110:                                              ; preds = %108, %105
  %111 = phi ptr [ %107, %105 ], [ %109, %108 ]
  tail call void @Perl_sv_catpv(ptr noundef %91, ptr noundef %111) #14
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef nonnull %90) #15
  %112 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 16
  %113 = load ptr, ptr %112, align 8, !tbaa !42
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.79, i32 noundef 1) #14
  store ptr %116, ptr %112, align 8, !tbaa !42
  %117 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %116) #15
  %118 = load ptr, ptr %112, align 8, !tbaa !42
  %119 = icmp eq ptr %118, null
  br i1 %119, label %175, label %120

120:                                              ; preds = %110, %115
  %121 = phi ptr [ %118, %115 ], [ %113, %110 ]
  %122 = getelementptr inbounds %struct.sv, ptr %121, i64 0, i32 2
  %123 = load i32, ptr %122, align 4, !tbaa !28
  %124 = and i32 %123, 2097152
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %120
  %127 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %121, i32 noundef 2) #14
  br i1 %127, label %285, label %175

128:                                              ; preds = %120
  %129 = and i32 %123, 65280
  %130 = icmp ne i32 %129, 0
  %131 = and i32 %123, 255
  %132 = icmp eq i32 %131, 8
  %133 = or i1 %130, %132
  %134 = and i32 %123, 16777471
  %135 = icmp eq i32 %134, 16777226
  %136 = or i1 %135, %133
  br i1 %136, label %137, label %175

137:                                              ; preds = %128
  %138 = and i32 %123, 1024
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %154, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr %121, align 8, !tbaa !55
  %142 = icmp eq ptr %141, null
  br i1 %142, label %175, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.xpv, ptr %141, i64 0, i32 2
  %145 = load i64, ptr %144, align 8, !tbaa !74
  %146 = icmp ugt i64 %145, 1
  br i1 %146, label %285, label %147

147:                                              ; preds = %143
  %148 = icmp eq i64 %145, 0
  br i1 %148, label %175, label %149

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.sv, ptr %121, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !11
  %152 = load i8, ptr %151, align 1, !tbaa !11
  %153 = icmp eq i8 %152, 48
  br i1 %153, label %175, label %285

154:                                              ; preds = %137
  %155 = and i32 %123, 768
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %173, label %157

157:                                              ; preds = %154
  %158 = and i32 %123, 256
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %157
  %161 = load ptr, ptr %121, align 8, !tbaa !55
  %162 = getelementptr inbounds %struct.xpviv, ptr %161, i64 0, i32 4
  %163 = load i64, ptr %162, align 8, !tbaa !11
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %285

165:                                              ; preds = %160, %157
  %166 = and i32 %123, 512
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %165
  %169 = load ptr, ptr %121, align 8, !tbaa !55
  %170 = getelementptr inbounds %struct.xpvnv, ptr %169, i64 0, i32 5
  %171 = load double, ptr %170, align 8, !tbaa !11
  %172 = fcmp une double %171, 0.000000e+00
  br i1 %172, label %285, label %175

173:                                              ; preds = %154
  %174 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %121, i32 noundef 0) #14
  br i1 %174, label %285, label %175

175:                                              ; preds = %168, %128, %115, %173, %165, %149, %147, %140, %126
  %176 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 14
  %177 = load i32, ptr %176, align 8, !tbaa !25
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %280, label %179

179:                                              ; preds = %175
  %180 = icmp slt i32 %177, 0
  br i1 %180, label %181, label %283

181:                                              ; preds = %179
  %182 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %183 = icmp eq ptr %182, null
  br i1 %183, label %279, label %184

184:                                              ; preds = %181
  %185 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %186 = getelementptr inbounds %struct.sv, ptr %185, i64 0, i32 2
  %187 = load i32, ptr %186, align 4, !tbaa !28
  %188 = and i32 %187, 2097152
  %189 = icmp eq i32 %188, 0
  %190 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  br i1 %189, label %194, label %191

191:                                              ; preds = %184
  %192 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %190, i32 noundef 2) #14
  %193 = zext i1 %192 to i32
  store i32 %193, ptr %176, align 8, !tbaa !25
  br i1 %192, label %283, label %280

194:                                              ; preds = %184
  %195 = getelementptr inbounds %struct.sv, ptr %190, i64 0, i32 2
  %196 = load i32, ptr %195, align 4, !tbaa !28
  %197 = and i32 %196, 65280
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %211

199:                                              ; preds = %194
  %200 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %201 = getelementptr inbounds %struct.sv, ptr %200, i64 0, i32 2
  %202 = load i32, ptr %201, align 4, !tbaa !28
  %203 = and i32 %202, 255
  %204 = icmp eq i32 %203, 8
  br i1 %204, label %211, label %205

205:                                              ; preds = %199
  %206 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %207 = getelementptr inbounds %struct.sv, ptr %206, i64 0, i32 2
  %208 = load i32, ptr %207, align 4, !tbaa !28
  %209 = and i32 %208, 16826623
  %210 = icmp eq i32 %209, 16777226
  br i1 %210, label %211, label %279

211:                                              ; preds = %205, %199, %194
  %212 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %213 = getelementptr inbounds %struct.sv, ptr %212, i64 0, i32 2
  %214 = load i32, ptr %213, align 4, !tbaa !28
  %215 = and i32 %214, 1024
  %216 = icmp eq i32 %215, 0
  %217 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  br i1 %216, label %240, label %218

218:                                              ; preds = %211
  %219 = load ptr, ptr %217, align 8, !tbaa !55
  %220 = icmp eq ptr %219, null
  br i1 %220, label %279, label %221

221:                                              ; preds = %218
  %222 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %223 = load ptr, ptr %222, align 8, !tbaa !55
  %224 = getelementptr inbounds %struct.xpv, ptr %223, i64 0, i32 2
  %225 = load i64, ptr %224, align 8, !tbaa !74
  %226 = icmp ugt i64 %225, 1
  br i1 %226, label %282, label %227

227:                                              ; preds = %221
  %228 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %229 = load ptr, ptr %228, align 8, !tbaa !55
  %230 = getelementptr inbounds %struct.xpv, ptr %229, i64 0, i32 2
  %231 = load i64, ptr %230, align 8, !tbaa !74
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %279, label %233

233:                                              ; preds = %227
  %234 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %235 = getelementptr inbounds %struct.sv, ptr %234, i64 0, i32 3
  %236 = load ptr, ptr %235, align 8, !tbaa !11
  %237 = load i8, ptr %236, align 1, !tbaa !11
  %238 = icmp ne i8 %237, 48
  %239 = zext i1 %238 to i32
  store i32 %239, ptr %176, align 8, !tbaa !25
  br i1 %238, label %283, label %280

240:                                              ; preds = %211
  %241 = getelementptr inbounds %struct.sv, ptr %217, i64 0, i32 2
  %242 = load i32, ptr %241, align 4, !tbaa !28
  %243 = and i32 %242, 768
  %244 = icmp eq i32 %243, 0
  %245 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  br i1 %244, label %269, label %246

246:                                              ; preds = %240
  %247 = getelementptr inbounds %struct.sv, ptr %245, i64 0, i32 2
  %248 = load i32, ptr %247, align 4, !tbaa !28
  %249 = and i32 %248, 256
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %257, label %251

251:                                              ; preds = %246
  %252 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %253 = load ptr, ptr %252, align 8, !tbaa !55
  %254 = getelementptr inbounds %struct.xpviv, ptr %253, i64 0, i32 4
  %255 = load i64, ptr %254, align 8, !tbaa !11
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %282

257:                                              ; preds = %251, %246
  %258 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %259 = getelementptr inbounds %struct.sv, ptr %258, i64 0, i32 2
  %260 = load i32, ptr %259, align 4, !tbaa !28
  %261 = and i32 %260, 512
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %279, label %263

263:                                              ; preds = %257
  %264 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %265 = load ptr, ptr %264, align 8, !tbaa !55
  %266 = getelementptr inbounds %struct.xpvnv, ptr %265, i64 0, i32 5
  %267 = load double, ptr %266, align 8, !tbaa !11
  %268 = fcmp uno double %267, 0.000000e+00
  br i1 %268, label %282, label %272

269:                                              ; preds = %240
  %270 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef %245, i32 noundef 0) #14
  %271 = zext i1 %270 to i32
  store i32 %271, ptr %176, align 8, !tbaa !25
  br i1 %270, label %283, label %280

272:                                              ; preds = %263
  %273 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.49, i32 noundef 1) #14
  %274 = load ptr, ptr %273, align 8, !tbaa !55
  %275 = getelementptr inbounds %struct.xpvnv, ptr %274, i64 0, i32 5
  %276 = load double, ptr %275, align 8, !tbaa !11
  %277 = fcmp une double %276, 0.000000e+00
  %278 = zext i1 %277 to i32
  store i32 %278, ptr %176, align 8, !tbaa !25
  br i1 %277, label %283, label %280

279:                                              ; preds = %257, %227, %218, %205, %181
  store i32 0, ptr %176, align 8, !tbaa !25
  br label %280

280:                                              ; preds = %233, %269, %191, %279, %175, %272
  %281 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %281, align 8, !tbaa !27
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.80) #14
  br label %285

282:                                              ; preds = %263, %251, %221
  store i32 1, ptr %176, align 8, !tbaa !25
  br label %283

283:                                              ; preds = %233, %269, %191, %282, %272, %179
  %284 = tail call ptr @Perl_newSVsv(ptr noundef %91) #14
  br label %450

285:                                              ; preds = %280, %173, %168, %160, %149, %143, %126
  tail call void @Perl_push_scope() #14
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #14
  %286 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !39
  store i64 %286, ptr @PL_tmps_floor, align 8, !tbaa !39
  %287 = tail call ptr @Perl_get_sv(ptr noundef nonnull @.str.81, i32 noundef 1) #14
  tail call void @Perl_sv_setpvn(ptr noundef %287, ptr noundef nonnull @.str.3, i64 noundef 0) #14
  %288 = load ptr, ptr %112, align 8, !tbaa !42
  %289 = getelementptr inbounds %struct.sv, ptr %288, i64 0, i32 2
  %290 = load i32, ptr %289, align 4, !tbaa !28
  %291 = and i32 %290, 2048
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %331, label %293

293:                                              ; preds = %285
  %294 = getelementptr inbounds %struct.sv, ptr %288, i64 0, i32 3
  %295 = load ptr, ptr %294, align 8, !tbaa !11
  %296 = getelementptr inbounds %struct.sv, ptr %295, i64 0, i32 2
  %297 = load i32, ptr %296, align 4, !tbaa !28
  %298 = and i32 %297, 255
  %299 = icmp eq i32 %298, 13
  br i1 %299, label %300, label %331

300:                                              ; preds = %293
  %301 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %302 = getelementptr inbounds i32, ptr %301, i64 1
  store ptr %302, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %303 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !12
  %304 = icmp eq ptr %302, %303
  br i1 %304, label %305, label %307

305:                                              ; preds = %300
  %306 = tail call ptr @Perl_markstack_grow() #14
  br label %307

307:                                              ; preds = %300, %305
  %308 = phi ptr [ %306, %305 ], [ %302, %300 ]
  %309 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %310 = ptrtoint ptr %3 to i64
  %311 = ptrtoint ptr %309 to i64
  %312 = sub i64 %310, %311
  %313 = lshr exact i64 %312, 3
  %314 = trunc i64 %313 to i32
  store i32 %314, ptr %308, align 4, !tbaa !13
  %315 = load ptr, ptr @PL_stack_max, align 8, !tbaa !12
  %316 = ptrtoint ptr %315 to i64
  %317 = sub i64 %316, %310
  %318 = icmp slt i64 %317, 8
  br i1 %318, label %319, label %321

319:                                              ; preds = %307
  %320 = tail call ptr @Perl_stack_grow(ptr noundef %3, ptr noundef %3, i64 noundef 1) #14
  br label %321

321:                                              ; preds = %307, %319
  %322 = phi ptr [ %320, %319 ], [ %3, %307 ]
  %323 = tail call ptr @Perl_newSVsv(ptr noundef %91) #14
  %324 = tail call ptr @Perl_sv_2mortal(ptr noundef %323) #14
  %325 = getelementptr inbounds ptr, ptr %322, i64 1
  store ptr %324, ptr %325, align 8, !tbaa !12
  store ptr %325, ptr @PL_stack_sp, align 8, !tbaa !12
  %326 = load ptr, ptr %112, align 8, !tbaa !42
  %327 = tail call i32 @Perl_call_sv(ptr noundef %326, i32 noundef 2) #14
  %328 = icmp eq i32 %327, 1
  br i1 %328, label %333, label %329

329:                                              ; preds = %321
  %330 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %330, align 8, !tbaa !27
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.82) #14
  br label %333

331:                                              ; preds = %293, %285
  %332 = tail call i32 @Perl_eval_sv(ptr noundef %91, i32 noundef 2) #14
  br label %333

333:                                              ; preds = %321, %329, %331
  %334 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %335 = getelementptr inbounds ptr, ptr %334, i64 -1
  %336 = load ptr, ptr %334, align 8, !tbaa !12
  store ptr %335, ptr @PL_stack_sp, align 8, !tbaa !12
  %337 = icmp eq ptr %287, null
  br i1 %337, label %415, label %338

338:                                              ; preds = %333
  %339 = getelementptr inbounds %struct.sv, ptr %287, i64 0, i32 2
  %340 = load i32, ptr %339, align 4, !tbaa !28
  %341 = and i32 %340, 2097152
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %345, label %343

343:                                              ; preds = %338
  %344 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %287, i32 noundef 2) #14
  br i1 %344, label %392, label %415

345:                                              ; preds = %338
  %346 = and i32 %340, 65280
  %347 = icmp ne i32 %346, 0
  %348 = and i32 %340, 255
  %349 = icmp eq i32 %348, 8
  %350 = or i1 %347, %349
  %351 = and i32 %340, 16777471
  %352 = icmp eq i32 %351, 16777226
  %353 = or i1 %352, %350
  br i1 %353, label %354, label %415

354:                                              ; preds = %345
  %355 = and i32 %340, 1024
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %371, label %357

357:                                              ; preds = %354
  %358 = load ptr, ptr %287, align 8, !tbaa !55
  %359 = icmp eq ptr %358, null
  br i1 %359, label %415, label %360

360:                                              ; preds = %357
  %361 = getelementptr inbounds %struct.xpv, ptr %358, i64 0, i32 2
  %362 = load i64, ptr %361, align 8, !tbaa !74
  %363 = icmp ugt i64 %362, 1
  br i1 %363, label %392, label %364

364:                                              ; preds = %360
  %365 = icmp eq i64 %362, 0
  br i1 %365, label %415, label %366

366:                                              ; preds = %364
  %367 = getelementptr inbounds %struct.sv, ptr %287, i64 0, i32 3
  %368 = load ptr, ptr %367, align 8, !tbaa !11
  %369 = load i8, ptr %368, align 1, !tbaa !11
  %370 = icmp eq i8 %369, 48
  br i1 %370, label %415, label %392

371:                                              ; preds = %354
  %372 = and i32 %340, 768
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %390, label %374

374:                                              ; preds = %371
  %375 = and i32 %340, 256
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %382, label %377

377:                                              ; preds = %374
  %378 = load ptr, ptr %287, align 8, !tbaa !55
  %379 = getelementptr inbounds %struct.xpviv, ptr %378, i64 0, i32 4
  %380 = load i64, ptr %379, align 8, !tbaa !11
  %381 = icmp eq i64 %380, 0
  br i1 %381, label %382, label %392

382:                                              ; preds = %377, %374
  %383 = and i32 %340, 512
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %415, label %385

385:                                              ; preds = %382
  %386 = load ptr, ptr %287, align 8, !tbaa !55
  %387 = getelementptr inbounds %struct.xpvnv, ptr %386, i64 0, i32 5
  %388 = load double, ptr %387, align 8, !tbaa !11
  %389 = fcmp une double %388, 0.000000e+00
  br i1 %389, label %392, label %415

390:                                              ; preds = %371
  %391 = tail call zeroext i1 @Perl_sv_2bool_flags(ptr noundef nonnull %287, i32 noundef 0) #14
  br i1 %391, label %392, label %415

392:                                              ; preds = %343, %360, %366, %377, %385, %390
  %393 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %393, align 8, !tbaa !27
  %394 = getelementptr inbounds %struct.sv, ptr %91, i64 0, i32 2
  %395 = load i32, ptr %394, align 4, !tbaa !28
  %396 = and i32 %395, 2098176
  %397 = icmp eq i32 %396, 1024
  br i1 %397, label %398, label %401

398:                                              ; preds = %392
  %399 = getelementptr inbounds %struct.sv, ptr %91, i64 0, i32 3
  %400 = load ptr, ptr %399, align 8, !tbaa !11
  br label %403

401:                                              ; preds = %392
  %402 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %91, ptr noundef null, i32 noundef 2) #14
  br label %403

403:                                              ; preds = %401, %398
  %404 = phi ptr [ %400, %398 ], [ %402, %401 ]
  %405 = load i32, ptr %339, align 4, !tbaa !28
  %406 = and i32 %405, 2098176
  %407 = icmp eq i32 %406, 1024
  br i1 %407, label %408, label %411

408:                                              ; preds = %403
  %409 = getelementptr inbounds %struct.sv, ptr %287, i64 0, i32 3
  %410 = load ptr, ptr %409, align 8, !tbaa !11
  br label %413

411:                                              ; preds = %403
  %412 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %287, ptr noundef null, i32 noundef 2) #14
  br label %413

413:                                              ; preds = %411, %408
  %414 = phi ptr [ %410, %408 ], [ %412, %411 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.83, ptr noundef %404, ptr noundef %414) #14
  br label %415

415:                                              ; preds = %385, %345, %333, %413, %390, %382, %366, %364, %357, %343
  %416 = icmp eq ptr %336, null
  br i1 %416, label %429, label %417

417:                                              ; preds = %415
  %418 = getelementptr inbounds %struct.sv, ptr %336, i64 0, i32 2
  %419 = load i32, ptr %418, align 4, !tbaa !28
  %420 = and i32 %419, 2048
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %429, label %422

422:                                              ; preds = %417
  %423 = getelementptr inbounds %struct.sv, ptr %336, i64 0, i32 3
  %424 = load ptr, ptr %423, align 8, !tbaa !11
  %425 = getelementptr inbounds %struct.sv, ptr %424, i64 0, i32 2
  %426 = load i32, ptr %425, align 4, !tbaa !28
  %427 = and i32 %426, 255
  %428 = icmp eq i32 %427, 13
  br i1 %428, label %442, label %429

429:                                              ; preds = %415, %417, %422
  %430 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %430, align 8, !tbaa !27
  %431 = getelementptr inbounds %struct.sv, ptr %91, i64 0, i32 2
  %432 = load i32, ptr %431, align 4, !tbaa !28
  %433 = and i32 %432, 2098176
  %434 = icmp eq i32 %433, 1024
  br i1 %434, label %435, label %438

435:                                              ; preds = %429
  %436 = getelementptr inbounds %struct.sv, ptr %91, i64 0, i32 3
  %437 = load ptr, ptr %436, align 8, !tbaa !11
  br label %440

438:                                              ; preds = %429
  %439 = tail call ptr @Perl_sv_2pv_flags(ptr noundef nonnull %91, ptr noundef null, i32 noundef 2) #14
  br label %440

440:                                              ; preds = %438, %435
  %441 = phi ptr [ %437, %435 ], [ %439, %438 ]
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.84, ptr noundef %441) #14
  br label %442

442:                                              ; preds = %422, %440
  %443 = phi ptr [ %6, %440 ], [ %424, %422 ]
  %444 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %443) #15
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %91) #15
  %445 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !39
  %446 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !39
  %447 = icmp sgt i64 %445, %446
  br i1 %447, label %448, label %449

448:                                              ; preds = %442
  tail call void @Perl_free_tmps() #14
  br label %449

449:                                              ; preds = %448, %442
  tail call void @Perl_pop_scope() #14
  br label %450

450:                                              ; preds = %283, %449
  %451 = phi ptr [ %443, %449 ], [ %284, %283 ]
  %452 = load ptr, ptr %12, align 8, !tbaa !60
  %453 = shl i64 %5, 32
  %454 = ashr exact i64 %453, 32
  %455 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %451) #15
  %456 = tail call ptr @Perl_av_store(ptr noundef %452, i64 noundef %454, ptr noundef %451) #14
  br label %457

457:                                              ; preds = %450, %74, %64, %10
  %458 = phi ptr [ null, %10 ], [ null, %64 ], [ null, %74 ], [ %451, %450 ]
  ret ptr %458
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @retrieve_weakref(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @retrieve_ref(ptr noundef %0, ptr noundef %1) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_sv_rvweaken(ptr noundef nonnull %3) #14
  br label %7

7:                                                ; preds = %5, %2
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @retrieve_weakoverloaded(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @retrieve_overloaded(ptr noundef %0, ptr noundef %1) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @Perl_sv_rvweaken(ptr noundef nonnull %3) #14
  br label %7

7:                                                ; preds = %5, %2
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @retrieve_vstring(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !32
  %10 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !33
  %12 = icmp ult ptr %9, %11
  br i1 %12, label %13, label %43

13:                                               ; preds = %7
  %14 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %14, ptr %8, align 8, !tbaa !32
  %15 = load i8, ptr %9, align 1, !tbaa !11
  %16 = zext i8 %15 to i32
  br label %23

17:                                               ; preds = %2
  %18 = tail call i32 @PerlIO_getc(ptr noundef nonnull %5) #14
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %43, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %4, align 8, !tbaa !35
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %13, %20
  %24 = phi i32 [ %16, %13 ], [ %18, %20 ]
  %25 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !32
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds i8, ptr %26, i64 %27
  %29 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !33
  %31 = icmp ugt ptr %28, %30
  br i1 %31, label %43, label %32

32:                                               ; preds = %23
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr align 1 %26, i64 %27, i1 false)
  store ptr %28, ptr %25, align 8, !tbaa !32
  br label %37

33:                                               ; preds = %20
  %34 = sext i32 %18 to i64
  %35 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %21, ptr noundef nonnull %3, i64 noundef %34) #14
  %36 = icmp eq i64 %35, %34
  br i1 %36, label %37, label %43

37:                                               ; preds = %33, %32
  %38 = phi i32 [ %18, %33 ], [ %24, %32 ]
  %39 = call fastcc ptr @retrieve(ptr noundef nonnull %0, ptr noundef %1) #15
  call void @Perl_sv_magic(ptr noundef %39, ptr noundef null, i32 noundef 86, ptr noundef nonnull %3, i32 noundef %38) #14
  %40 = getelementptr inbounds %struct.sv, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !28
  %42 = or i32 %41, 8388608
  store i32 %42, ptr %40, align 4, !tbaa !28
  br label %43

43:                                               ; preds = %33, %23, %17, %7, %37
  %44 = phi ptr [ %39, %37 ], [ null, %7 ], [ null, %17 ], [ null, %23 ], [ null, %33 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #16
  ret ptr %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @retrieve_lvstring(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !32
  %10 = getelementptr inbounds i8, ptr %9, i64 4
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !33
  %13 = icmp ugt ptr %10, %12
  br i1 %13, label %64, label %14

14:                                               ; preds = %7
  %15 = load i32, ptr %9, align 1
  store i32 %15, ptr %3, align 4
  store ptr %10, ptr %8, align 8, !tbaa !32
  br label %21

16:                                               ; preds = %2
  %17 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %5, ptr noundef nonnull %3, i64 noundef 4) #14
  %18 = icmp eq i64 %17, 4
  br i1 %18, label %19, label %64

19:                                               ; preds = %16
  %20 = load i32, ptr %3, align 4, !tbaa !13
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi i32 [ %20, %19 ], [ %15, %14 ]
  %23 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %24 = load i32, ptr %23, align 8, !tbaa !40
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = call fastcc i32 @__bswap_32(i32 noundef %22) #15
  store i32 %27, ptr %3, align 4, !tbaa !13
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi i32 [ %27, %26 ], [ %22, %21 ]
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = call ptr @Perl_safesysmalloc(i64 noundef %31) #14
  %33 = load ptr, ptr %4, align 8, !tbaa !35
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !32
  %38 = load i32, ptr %3, align 4, !tbaa !13
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %37, i64 %39
  %41 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !33
  %43 = icmp ugt ptr %40, %42
  br i1 %43, label %62, label %44

44:                                               ; preds = %35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %32, ptr align 1 %37, i64 %39, i1 false)
  %45 = load i32, ptr %3, align 4, !tbaa !13
  %46 = load ptr, ptr %36, align 8, !tbaa !32
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, ptr %46, i64 %47
  store ptr %48, ptr %36, align 8, !tbaa !32
  br label %56

49:                                               ; preds = %28
  %50 = load i32, ptr %3, align 4, !tbaa !13
  %51 = sext i32 %50 to i64
  %52 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %33, ptr noundef %32, i64 noundef %51) #14
  %53 = load i32, ptr %3, align 4, !tbaa !13
  %54 = sext i32 %53 to i64
  %55 = icmp eq i64 %52, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %49, %44
  %57 = call fastcc ptr @retrieve(ptr noundef nonnull %0, ptr noundef %1) #15
  %58 = load i32, ptr %3, align 4, !tbaa !13
  call void @Perl_sv_magic(ptr noundef %57, ptr noundef null, i32 noundef 86, ptr noundef %32, i32 noundef %58) #14
  %59 = getelementptr inbounds %struct.sv, ptr %57, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !28
  %61 = or i32 %60, 8388608
  store i32 %61, ptr %59, align 4, !tbaa !28
  br label %62

62:                                               ; preds = %49, %35, %56
  %63 = phi ptr [ %57, %56 ], [ null, %35 ], [ null, %49 ]
  call void @Perl_safesysfree(ptr noundef %32) #14
  br label %64

64:                                               ; preds = %62, %16, %7
  %65 = phi ptr [ null, %7 ], [ null, %16 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret ptr %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @retrieve_svundef_elem(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %6 = load i64, ptr %5, align 8, !tbaa !53
  %7 = add nsw i64 %6, 1
  store i64 %7, ptr %5, align 8, !tbaa !53
  %8 = tail call ptr @Perl_av_store(ptr noundef %4, i64 noundef %6, ptr noundef nonnull @PL_sv_undef) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %51, label %10

10:                                               ; preds = %2
  %11 = icmp eq ptr %1, null
  br i1 %11, label %51, label %12

12:                                               ; preds = %10
  %13 = tail call ptr @Perl_newRV_noinc(ptr noundef nonnull @PL_sv_undef) #14
  %14 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 30
  %15 = load i32, ptr %14, align 8, !tbaa !63
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %48, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !66
  %20 = and i32 %19, 33554432
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  %25 = load ptr, ptr %1, align 8, !tbaa !47
  %26 = getelementptr inbounds %struct.xpvhv, ptr %25, i64 0, i32 3
  %27 = load i64, ptr %26, align 8, !tbaa !49
  %28 = getelementptr ptr, ptr %24, i64 %27
  %29 = getelementptr ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %22
  %33 = getelementptr i8, ptr %28, i64 36
  %34 = load i32, ptr %33, align 4, !tbaa !68
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %30, align 8, !tbaa !12
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %32, %36
  %40 = tail call i32 @Perl_Gv_AMupdate(ptr noundef nonnull %1, i1 noundef zeroext false) #14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, ptr %18, align 4, !tbaa !66
  br label %44

44:                                               ; preds = %42, %17, %22, %36
  %45 = phi i32 [ %43, %42 ], [ %19, %17 ], [ %19, %22 ], [ %19, %36 ]
  %46 = and i32 %45, -268435457
  store i32 %46, ptr %18, align 4, !tbaa !66
  br label %48

47:                                               ; preds = %39
  store i32 0, ptr %14, align 8, !tbaa !63
  tail call fastcc void @SvAMAGIC_on(ptr noundef %13) #15
  br label %48

48:                                               ; preds = %44, %47, %12
  %49 = tail call ptr @Perl_sv_bless(ptr noundef %13, ptr noundef nonnull %1) #14
  %50 = getelementptr inbounds %struct.sv, ptr %13, i64 0, i32 3
  store ptr null, ptr %50, align 8, !tbaa !11
  tail call fastcc void @S_SvREFCNT_dec(ptr noundef %13) #15
  br label %51

51:                                               ; preds = %48, %10, %2
  %52 = phi ptr [ null, %2 ], [ @PL_sv_placeholder, %10 ], [ @PL_sv_placeholder, %48 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @retrieve_other(ptr nocapture noundef %0, ptr nocapture readnone %1) #0 {
  %3 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 25
  %4 = load i32, ptr %3, align 8, !tbaa !109
  %5 = icmp eq i32 %4, 2
  %6 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 26
  %7 = load i32, ptr %6, align 4, !tbaa !110
  br i1 %5, label %16, label %8

8:                                                ; preds = %2
  %9 = icmp eq i32 %7, 10
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %11, align 8, !tbaa !27
  %12 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr @.str.59, ptr @.str.58
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.85, ptr noundef nonnull %15, i32 noundef %4, i32 noundef %7, i32 noundef 2, i32 noundef 10) #14
  br label %23

16:                                               ; preds = %2, %8
  %17 = phi i32 [ 10, %8 ], [ %7, %2 ]
  %18 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 19
  store i32 1, ptr %18, align 8, !tbaa !27
  %19 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = icmp eq ptr %20, null
  %22 = select i1 %21, ptr @.str.59, ptr @.str.58
  tail call void (ptr, ...) @Perl_croak(ptr noundef nonnull @.str.86, ptr noundef nonnull %22, i32 noundef %4, i32 noundef %17) #14
  br label %23

23:                                               ; preds = %16, %10
  ret ptr null
}

; Function Attrs: optsize
declare ptr @Perl_gv_stashpv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_bless(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_setpvn(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_sv_magic(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_extend(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_av_fill(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @Perl_hv_ksplit(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @scalar_call(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly %3, i32 noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  tail call void @Perl_push_scope() #14
  tail call void @Perl_save_strlen(ptr noundef nonnull @PL_tmps_floor) #14
  %7 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !39
  store i64 %7, ptr @PL_tmps_floor, align 8, !tbaa !39
  %8 = load ptr, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %9 = getelementptr inbounds i32, ptr %8, i64 1
  store ptr %9, ptr @PL_markstack_ptr, align 8, !tbaa !12
  %10 = load ptr, ptr @PL_markstack_max, align 8, !tbaa !12
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = tail call ptr @Perl_markstack_grow() #14
  br label %14

14:                                               ; preds = %5, %12
  %15 = phi ptr [ %13, %12 ], [ %9, %5 ]
  %16 = load ptr, ptr @PL_stack_base, align 8, !tbaa !12
  %17 = ptrtoint ptr %6 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 3
  %21 = trunc i64 %20 to i32
  store i32 %21, ptr %15, align 4, !tbaa !13
  %22 = load ptr, ptr @PL_stack_max, align 8, !tbaa !12
  %23 = ptrtoint ptr %22 to i64
  %24 = sub i64 %23, %17
  %25 = icmp slt i64 %24, 8
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = tail call ptr @Perl_stack_grow(ptr noundef %6, ptr noundef %6, i64 noundef 1) #14
  %28 = load ptr, ptr @PL_stack_max, align 8, !tbaa !12
  %29 = ptrtoint ptr %28 to i64
  br label %30

30:                                               ; preds = %14, %26
  %31 = phi i64 [ %23, %14 ], [ %29, %26 ]
  %32 = phi ptr [ %6, %14 ], [ %27, %26 ]
  %33 = getelementptr inbounds ptr, ptr %32, i64 1
  store ptr %0, ptr %33, align 8, !tbaa !12
  %34 = ptrtoint ptr %33 to i64
  %35 = sub i64 %31, %34
  %36 = icmp slt i64 %35, 8
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %33, ptr noundef nonnull %33, i64 noundef 1) #14
  br label %39

39:                                               ; preds = %30, %37
  %40 = phi ptr [ %38, %37 ], [ %33, %30 ]
  %41 = zext nneg i32 %2 to i64
  %42 = tail call ptr @Perl_newSViv(i64 noundef %41) #14
  %43 = tail call ptr @Perl_sv_2mortal(ptr noundef %42) #14
  %44 = getelementptr inbounds ptr, ptr %40, i64 1
  store ptr %43, ptr %44, align 8, !tbaa !12
  %45 = icmp eq ptr %3, null
  br i1 %45, label %87, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.av, ptr %3, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !11
  %49 = load ptr, ptr %3, align 8, !tbaa !70
  %50 = getelementptr inbounds %struct.xpvav, ptr %49, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !72
  %52 = trunc i64 %51 to i32
  %53 = add i32 %52, 1
  %54 = load ptr, ptr @PL_stack_max, align 8, !tbaa !12
  %55 = ptrtoint ptr %54 to i64
  %56 = ptrtoint ptr %44 to i64
  %57 = sub i64 %55, %56
  %58 = icmp slt i64 %57, 8
  br i1 %58, label %59, label %61

59:                                               ; preds = %46
  %60 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %44, ptr noundef nonnull %44, i64 noundef 1) #14
  br label %61

61:                                               ; preds = %46, %59
  %62 = phi ptr [ %60, %59 ], [ %44, %46 ]
  %63 = load ptr, ptr %48, align 8, !tbaa !12
  %64 = getelementptr inbounds ptr, ptr %62, i64 1
  store ptr %63, ptr %64, align 8, !tbaa !12
  %65 = icmp sgt i32 %53, 1
  br i1 %65, label %66, label %87

66:                                               ; preds = %61
  %67 = zext nneg i32 %53 to i64
  br label %68

68:                                               ; preds = %66, %78
  %69 = phi i64 [ 1, %66 ], [ %85, %78 ]
  %70 = phi ptr [ %64, %66 ], [ %84, %78 ]
  %71 = load ptr, ptr @PL_stack_max, align 8, !tbaa !12
  %72 = ptrtoint ptr %71 to i64
  %73 = ptrtoint ptr %70 to i64
  %74 = sub i64 %72, %73
  %75 = icmp slt i64 %74, 8
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = tail call ptr @Perl_stack_grow(ptr noundef nonnull %70, ptr noundef nonnull %70, i64 noundef 1) #14
  br label %78

78:                                               ; preds = %68, %76
  %79 = phi ptr [ %77, %76 ], [ %70, %68 ]
  %80 = getelementptr inbounds ptr, ptr %48, i64 %69
  %81 = load ptr, ptr %80, align 8, !tbaa !12
  %82 = tail call ptr @Perl_newRV(ptr noundef %81) #14
  %83 = tail call ptr @Perl_sv_2mortal(ptr noundef %82) #14
  %84 = getelementptr inbounds ptr, ptr %79, i64 1
  store ptr %83, ptr %84, align 8, !tbaa !12
  %85 = add nuw nsw i64 %69, 1
  %86 = icmp eq i64 %85, %67
  br i1 %86, label %87, label %68, !llvm.loop !118

87:                                               ; preds = %78, %61, %39
  %88 = phi ptr [ %44, %39 ], [ %64, %61 ], [ %84, %78 ]
  store ptr %88, ptr @PL_stack_sp, align 8, !tbaa !12
  %89 = tail call i32 @Perl_call_sv(ptr noundef %1, i32 noundef %4) #14
  %90 = load ptr, ptr @PL_stack_sp, align 8, !tbaa !12
  %91 = icmp eq i32 %89, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds ptr, ptr %90, i64 -1
  %94 = load ptr, ptr %90, align 8, !tbaa !12
  %95 = tail call fastcc ptr @S_SvREFCNT_inc(ptr noundef %94) #15
  br label %96

96:                                               ; preds = %92, %87
  %97 = phi ptr [ %94, %92 ], [ null, %87 ]
  %98 = phi ptr [ %93, %92 ], [ %90, %87 ]
  store ptr %98, ptr @PL_stack_sp, align 8, !tbaa !12
  %99 = load i64, ptr @PL_tmps_ix, align 8, !tbaa !39
  %100 = load i64, ptr @PL_tmps_floor, align 8, !tbaa !39
  %101 = icmp sgt i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  tail call void @Perl_free_tmps() #14
  br label %103

103:                                              ; preds = %102, %96
  tail call void @Perl_pop_scope() #14
  ret ptr %97
}

; Function Attrs: optsize
declare zeroext i1 @Perl_sv_derived_from(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_av_pop(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pkg_uncache(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !66
  %5 = and i32 %4, 33554432
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hv, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = load ptr, ptr %1, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.xpvhv, ptr %10, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !49
  %13 = getelementptr ptr, ptr %9, i64 %12
  %14 = getelementptr ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %7
  %18 = getelementptr i8, ptr %13, i64 36
  %19 = load i32, ptr %18, align 4, !tbaa !68
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %15, align 8, !tbaa !11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17, %21
  %25 = phi ptr [ %22, %21 ], [ %15, %17 ]
  %26 = getelementptr inbounds %struct.hek, ptr %25, i64 0, i32 2
  br label %27

27:                                               ; preds = %2, %7, %21, %24
  %28 = phi ptr [ %26, %24 ], [ null, %21 ], [ null, %7 ], [ null, %2 ]
  %29 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #17
  %30 = trunc i64 %29 to i32
  %31 = tail call ptr @Perl_hv_common_key_len(ptr noundef %0, ptr noundef %28, i32 noundef %30, i32 noundef 68, ptr noundef null, i32 noundef 0) #14
  ret void
}

; Function Attrs: optsize
declare void @Perl_sv_catpv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @Perl_eval_sv(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @Perl_sv_rvweaken(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @old_retrieve_array(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !32
  %10 = getelementptr inbounds i8, ptr %9, i64 4
  %11 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !33
  %13 = icmp ugt ptr %10, %12
  br i1 %13, label %76, label %14

14:                                               ; preds = %7
  %15 = load i32, ptr %9, align 1
  store i32 %15, ptr %3, align 4
  store ptr %10, ptr %8, align 8, !tbaa !32
  br label %19

16:                                               ; preds = %2
  %17 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %5, ptr noundef nonnull %3, i64 noundef 4) #14
  %18 = icmp eq i64 %17, 4
  br i1 %18, label %19, label %76

19:                                               ; preds = %16, %14
  %20 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %21 = load i32, ptr %20, align 8, !tbaa !40
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %3, align 4, !tbaa !13
  %25 = call fastcc i32 @__bswap_32(i32 noundef %24) #15
  store i32 %25, ptr %3, align 4, !tbaa !13
  br label %26

26:                                               ; preds = %23, %19
  %27 = call ptr @Perl_newSV_type(i32 noundef 11) #14
  %28 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !60
  %30 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %31 = load i64, ptr %30, align 8, !tbaa !53
  %32 = add nsw i64 %31, 1
  store i64 %32, ptr %30, align 8, !tbaa !53
  %33 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %27) #15
  %34 = call ptr @Perl_av_store(ptr noundef %29, i64 noundef %31, ptr noundef %27) #14
  %35 = icmp eq ptr %34, null
  br i1 %35, label %76, label %36

36:                                               ; preds = %26
  %37 = load i32, ptr %3, align 4, !tbaa !13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %76, label %39

39:                                               ; preds = %36
  %40 = sext i32 %37 to i64
  call void @Perl_av_extend(ptr noundef %27, i64 noundef %40) #14
  %41 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %42 = load i32, ptr %3, align 4, !tbaa !13
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  br label %46

46:                                               ; preds = %44, %71
  %47 = phi i64 [ 0, %44 ], [ %72, %71 ]
  %48 = load ptr, ptr %4, align 8, !tbaa !35
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load ptr, ptr %41, align 8, !tbaa !32
  %52 = load ptr, ptr %45, align 8, !tbaa !33
  %53 = icmp ult ptr %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %50
  %55 = getelementptr inbounds i8, ptr %51, i64 1
  store ptr %55, ptr %41, align 8, !tbaa !32
  %56 = load i8, ptr %51, align 1, !tbaa !11
  %57 = zext i8 %56 to i32
  br label %61

58:                                               ; preds = %46
  %59 = call i32 @PerlIO_getc(ptr noundef nonnull %48) #14
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %76, label %61

61:                                               ; preds = %58, %54
  %62 = phi i32 [ %59, %58 ], [ %57, %54 ]
  switch i32 %62, label %63 [
    i32 73, label %71
    i32 105, label %65
  ]

63:                                               ; preds = %61
  %64 = call ptr @retrieve_other(ptr noundef null, ptr poison) #15
  br label %65

65:                                               ; preds = %61, %63
  %66 = call fastcc ptr @retrieve(ptr noundef nonnull %0, ptr noundef null) #15
  %67 = icmp eq ptr %66, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %65
  %69 = call ptr @Perl_av_store(ptr noundef %27, i64 noundef %47, ptr noundef nonnull %66) #14
  %70 = icmp eq ptr %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %61, %68
  %72 = add nuw nsw i64 %47, 1
  %73 = load i32, ptr %3, align 4, !tbaa !13
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %46, label %76, !llvm.loop !119

76:                                               ; preds = %50, %58, %65, %68, %71, %39, %36, %26, %16, %7
  %77 = phi ptr [ null, %7 ], [ null, %16 ], [ null, %26 ], [ %27, %36 ], [ %27, %39 ], [ null, %50 ], [ null, %58 ], [ null, %65 ], [ null, %68 ], [ %27, %71 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret ptr %77
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @old_retrieve_hash(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 24
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !32
  %11 = getelementptr inbounds i8, ptr %10, i64 4
  %12 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !33
  %14 = icmp ugt ptr %11, %13
  br i1 %14, label %172, label %15

15:                                               ; preds = %8
  %16 = load i32, ptr %10, align 1
  store i32 %16, ptr %3, align 4
  store ptr %11, ptr %9, align 8, !tbaa !32
  br label %20

17:                                               ; preds = %2
  %18 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %6, ptr noundef nonnull %3, i64 noundef 4) #14
  %19 = icmp eq i64 %18, 4
  br i1 %19, label %20, label %172

20:                                               ; preds = %17, %15
  %21 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 12
  %22 = load i32, ptr %21, align 8, !tbaa !40
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %3, align 4, !tbaa !13
  %26 = call fastcc i32 @__bswap_32(i32 noundef %25) #15
  store i32 %26, ptr %3, align 4, !tbaa !13
  br label %27

27:                                               ; preds = %24, %20
  %28 = call ptr @Perl_newSV_type(i32 noundef 12) #14
  %29 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !60
  %31 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 10
  %32 = load i64, ptr %31, align 8, !tbaa !53
  %33 = add nsw i64 %32, 1
  store i64 %33, ptr %31, align 8, !tbaa !53
  %34 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %28) #15
  %35 = call ptr @Perl_av_store(ptr noundef %30, i64 noundef %32, ptr noundef %28) #14
  %36 = icmp eq ptr %35, null
  br i1 %36, label %172, label %37

37:                                               ; preds = %27
  %38 = load i32, ptr %3, align 4, !tbaa !13
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %172, label %40

40:                                               ; preds = %37
  %41 = add nsw i32 %38, 1
  %42 = sext i32 %41 to i64
  call void @Perl_hv_ksplit(ptr noundef %28, i64 noundef %42) #14
  %43 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 2
  %44 = load i32, ptr %3, align 4, !tbaa !13
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %172

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 22, i32 3
  %48 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 21
  %49 = getelementptr inbounds %struct.stcxt, ptr %0, i64 0, i32 21, i32 1
  br label %54

50:                                               ; preds = %163
  %51 = add nuw nsw i32 %57, 1
  %52 = load i32, ptr %3, align 4, !tbaa !13
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %172, !llvm.loop !120

54:                                               ; preds = %46, %50
  %55 = phi ptr [ null, %46 ], [ %87, %50 ]
  %56 = phi ptr [ null, %46 ], [ %86, %50 ]
  %57 = phi i32 [ 0, %46 ], [ %51, %50 ]
  %58 = load ptr, ptr %5, align 8, !tbaa !35
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load ptr, ptr %43, align 8, !tbaa !32
  %62 = load ptr, ptr %47, align 8, !tbaa !33
  %63 = icmp ult ptr %61, %62
  br i1 %63, label %64, label %172

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, ptr %61, i64 1
  store ptr %65, ptr %43, align 8, !tbaa !32
  %66 = load i8, ptr %61, align 1, !tbaa !11
  %67 = zext i8 %66 to i32
  br label %71

68:                                               ; preds = %54
  %69 = call i32 @PerlIO_getc(ptr noundef nonnull %58) #14
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %172, label %71

71:                                               ; preds = %68, %64
  %72 = phi i32 [ %69, %68 ], [ %67, %64 ]
  switch i32 %72, label %83 [
    i32 86, label %73
    i32 118, label %80
  ]

73:                                               ; preds = %71
  %74 = icmp eq ptr %55, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %73
  %76 = call ptr @Perl_newSVsv(ptr noundef nonnull @PL_sv_undef) #14
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi ptr [ %55, %73 ], [ %76, %75 ]
  %79 = call fastcc ptr @S_SvREFCNT_inc(ptr noundef %78) #15
  br label %85

80:                                               ; preds = %71
  %81 = call fastcc ptr @retrieve(ptr noundef nonnull %0, ptr noundef null) #15
  %82 = icmp eq ptr %81, null
  br i1 %82, label %172, label %85

83:                                               ; preds = %71
  %84 = call ptr @retrieve_other(ptr noundef null, ptr poison) #15
  br label %85

85:                                               ; preds = %77, %80, %83
  %86 = phi ptr [ %78, %77 ], [ %81, %80 ], [ %56, %83 ]
  %87 = phi ptr [ %78, %77 ], [ %55, %80 ], [ %55, %83 ]
  %88 = load ptr, ptr %5, align 8, !tbaa !35
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load ptr, ptr %43, align 8, !tbaa !32
  %92 = load ptr, ptr %47, align 8, !tbaa !33
  %93 = icmp ult ptr %91, %92
  br i1 %93, label %94, label %172

94:                                               ; preds = %90
  %95 = getelementptr inbounds i8, ptr %91, i64 1
  store ptr %95, ptr %43, align 8, !tbaa !32
  %96 = load i8, ptr %91, align 1, !tbaa !11
  %97 = zext i8 %96 to i32
  br label %101

98:                                               ; preds = %85
  %99 = call i32 @PerlIO_getc(ptr noundef nonnull %88) #14
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %172, label %101

101:                                              ; preds = %98, %94
  %102 = phi i32 [ %99, %98 ], [ %97, %94 ]
  %103 = icmp eq i32 %102, 107
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = call ptr @retrieve_other(ptr noundef null, ptr poison) #15
  br label %106

106:                                              ; preds = %101, %104
  %107 = load ptr, ptr %5, align 8, !tbaa !35
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load ptr, ptr %43, align 8, !tbaa !32
  %111 = getelementptr inbounds i8, ptr %110, i64 4
  %112 = load ptr, ptr %47, align 8, !tbaa !33
  %113 = icmp ugt ptr %111, %112
  br i1 %113, label %172, label %114

114:                                              ; preds = %109
  %115 = load i32, ptr %110, align 1
  store i32 %115, ptr %4, align 4
  store ptr %111, ptr %43, align 8, !tbaa !32
  br label %121

116:                                              ; preds = %106
  %117 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %107, ptr noundef nonnull %4, i64 noundef 4) #14
  %118 = icmp eq i64 %117, 4
  br i1 %118, label %119, label %172

119:                                              ; preds = %116
  %120 = load i32, ptr %4, align 4, !tbaa !13
  br label %121

121:                                              ; preds = %119, %114
  %122 = phi i32 [ %120, %119 ], [ %115, %114 ]
  %123 = load i32, ptr %21, align 8, !tbaa !40
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %121
  %126 = call fastcc i32 @__bswap_32(i32 noundef %122) #15
  store i32 %126, ptr %4, align 4, !tbaa !13
  br label %127

127:                                              ; preds = %121, %125
  %128 = phi i32 [ %122, %121 ], [ %126, %125 ]
  %129 = sext i32 %128 to i64
  %130 = load i64, ptr %49, align 8, !tbaa !105
  %131 = icmp ugt i64 %130, %129
  br i1 %131, label %139, label %132

132:                                              ; preds = %127
  %133 = load ptr, ptr %48, align 8, !tbaa !64
  %134 = add nsw i64 %129, 1
  %135 = call ptr @Perl_safesysrealloc(ptr noundef %133, i64 noundef %134) #14
  store ptr %135, ptr %48, align 8, !tbaa !64
  %136 = load i32, ptr %4, align 4, !tbaa !13
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, 1
  store i64 %138, ptr %49, align 8, !tbaa !105
  br label %139

139:                                              ; preds = %127, %132
  %140 = phi i32 [ %136, %132 ], [ %128, %127 ]
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %163, label %142

142:                                              ; preds = %139
  %143 = load ptr, ptr %5, align 8, !tbaa !35
  %144 = icmp eq ptr %143, null
  %145 = sext i32 %140 to i64
  br i1 %144, label %146, label %157

146:                                              ; preds = %142
  %147 = load ptr, ptr %43, align 8, !tbaa !32
  %148 = getelementptr inbounds i8, ptr %147, i64 %145
  %149 = load ptr, ptr %47, align 8, !tbaa !33
  %150 = icmp ugt ptr %148, %149
  br i1 %150, label %172, label %151

151:                                              ; preds = %146
  %152 = load ptr, ptr %48, align 8, !tbaa !64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %152, ptr align 1 %147, i64 %145, i1 false)
  %153 = load i32, ptr %4, align 4, !tbaa !13
  %154 = load ptr, ptr %43, align 8, !tbaa !32
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i8, ptr %154, i64 %155
  store ptr %156, ptr %43, align 8, !tbaa !32
  br label %163

157:                                              ; preds = %142
  %158 = load ptr, ptr %48, align 8, !tbaa !64
  %159 = call i64 @Perl_PerlIO_read(ptr noundef nonnull %143, ptr noundef %158, i64 noundef %145) #14
  %160 = load i32, ptr %4, align 4, !tbaa !13
  %161 = sext i32 %160 to i64
  %162 = icmp eq i64 %159, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %139, %151, %157
  %164 = phi i32 [ %153, %151 ], [ %160, %157 ], [ 0, %139 ]
  %165 = load ptr, ptr %48, align 8, !tbaa !64
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i8, ptr %165, i64 %166
  store i8 0, ptr %167, align 1, !tbaa !11
  %168 = load ptr, ptr %48, align 8, !tbaa !64
  %169 = load i32, ptr %4, align 4, !tbaa !13
  %170 = call ptr @Perl_hv_common_key_len(ptr noundef %28, ptr noundef %168, i32 noundef %169, i32 noundef 36, ptr noundef %86, i32 noundef 0) #14
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %50

172:                                              ; preds = %60, %68, %80, %90, %98, %109, %116, %146, %157, %163, %50, %40, %37, %27, %17, %8
  %173 = phi ptr [ null, %8 ], [ null, %17 ], [ null, %27 ], [ %28, %37 ], [ %28, %40 ], [ null, %60 ], [ null, %68 ], [ null, %80 ], [ null, %90 ], [ null, %98 ], [ null, %109 ], [ null, %116 ], [ null, %146 ], [ null, %157 ], [ null, %163 ], [ %28, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret ptr %173
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @mretrieve(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @do_retrieve(ptr noundef null, ptr noundef %0, i32 noundef 0) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @dclone(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @Context_ptr, align 8, !tbaa !12
  %3 = getelementptr inbounds %struct.stcxt, ptr %2, i64 0, i32 19
  %4 = load i32, ptr %3, align 8, !tbaa !27
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call fastcc void @clean_context(ptr noundef nonnull %2) #15
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.sv, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !28
  %10 = and i32 %9, 14680319
  %11 = icmp eq i32 %10, 14680074
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = tail call ptr @Perl_mg_find(ptr noundef nonnull %0, i32 noundef 112) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @Perl_mg_get(ptr noundef nonnull %0) #14
  br label %17

17:                                               ; preds = %15, %12, %7
  %18 = tail call fastcc i32 @do_store(ptr noundef null, ptr noundef nonnull %0, i32 noundef 4, i32 noundef 0, ptr noundef null) #15, !range !19
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %57, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @Context_ptr, align 8, !tbaa !12
  %22 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 22
  %23 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 22, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !32
  %25 = load ptr, ptr %22, align 8, !tbaa !30
  %26 = ptrtoint ptr %24 to i64
  %27 = ptrtoint ptr %25 to i64
  %28 = sub i64 %26, %27
  %29 = icmp eq ptr %25, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = tail call ptr @Perl_safesysmalloc(i64 noundef 8192) #14
  store ptr %31, ptr %22, align 8, !tbaa !30
  %32 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 22, i32 1
  store i64 8192, ptr %32, align 8, !tbaa !31
  br label %33

33:                                               ; preds = %30, %20
  %34 = phi ptr [ %31, %30 ], [ %25, %20 ]
  store ptr %34, ptr %23, align 8, !tbaa !32
  %35 = and i64 %28, 4294967295
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = shl i64 %28, 32
  %39 = ashr exact i64 %38, 32
  br label %43

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 22, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !31
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i64 [ %42, %40 ], [ %39, %37 ]
  %45 = getelementptr inbounds i8, ptr %34, i64 %44
  %46 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 22, i32 3
  store ptr %45, ptr %46, align 8
  %47 = load i32, ptr %8, align 4, !tbaa !28
  %48 = and i32 %47, 14680064
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = tail call zeroext i1 @Perl_sv_tainted(ptr noundef nonnull %0) #14
  %52 = zext i1 %51 to i32
  br label %53

53:                                               ; preds = %50, %43
  %54 = phi i32 [ 0, %43 ], [ %52, %50 ]
  %55 = getelementptr inbounds %struct.stcxt, ptr %21, i64 0, i32 13
  store i32 %54, ptr %55, align 4, !tbaa !107
  %56 = tail call fastcc ptr @do_retrieve(ptr noundef null, ptr noundef null, i32 noundef 4) #15
  br label %57

57:                                               ; preds = %17, %53
  %58 = phi ptr [ %56, %53 ], [ @PL_sv_undef, %17 ]
  ret ptr %58
}

; Function Attrs: optsize
declare i32 @Perl_mg_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @last_op_in_netorder() unnamed_addr #10 {
  %1 = load ptr, ptr @Context_ptr, align 8, !tbaa !12
  %2 = getelementptr inbounds %struct.stcxt, ptr %1, i64 0, i32 12
  %3 = load i32, ptr %2, align 8, !tbaa !40
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nofree nounwind willreturn memory(argmem: read) }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"cv", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!7, !7, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!15, !7, i64 0}
!15 = !{!"io", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!16 = !{!17, !7, i64 40}
!17 = !{!"xpvio", !7, i64 0, !8, i64 8, !18, i64 16, !8, i64 24, !8, i64 32, !7, i64 40, !8, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !8, i64 128, !8, i64 129}
!18 = !{!"long", !8, i64 0}
!19 = !{i32 0, i32 2}
!20 = !{!21, !10, i64 0}
!21 = !{!"stcxt", !10, i64 0, !10, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !18, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !18, i64 72, !18, i64 80, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !7, i64 104, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !22, i64 128, !22, i64 160, !22, i64 192, !7, i64 224, !10, i64 232, !10, i64 236, !7, i64 240, !7, i64 248, !7, i64 256, !10, i64 264}
!22 = !{!"extendable", !7, i64 0, !18, i64 8, !7, i64 16, !7, i64 24}
!23 = !{!21, !10, i64 4}
!24 = !{!21, !7, i64 256}
!25 = !{!21, !10, i64 96}
!26 = !{!21, !10, i64 116}
!27 = !{!21, !10, i64 120}
!28 = !{!29, !10, i64 12}
!29 = !{!"sv", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!30 = !{!21, !7, i64 160}
!31 = !{!21, !18, i64 168}
!32 = !{!21, !7, i64 176}
!33 = !{!21, !7, i64 184}
!34 = !{i32 -1, i32 1}
!35 = !{!21, !7, i64 224}
!36 = !{!21, !7, i64 248}
!37 = !{!21, !10, i64 124}
!38 = !{i64 0, i64 8, !12, i64 8, i64 8, !39, i64 16, i64 8, !12, i64 24, i64 8, !12}
!39 = !{!18, !18, i64 0}
!40 = !{!21, !10, i64 88}
!41 = !{!21, !10, i64 100}
!42 = !{!21, !7, i64 104}
!43 = !{!21, !10, i64 112}
!44 = !{!21, !7, i64 8}
!45 = !{!21, !7, i64 16}
!46 = !{!21, !7, i64 48}
!47 = !{!48, !7, i64 0}
!48 = !{!"hv", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!49 = !{!50, !18, i64 24}
!50 = !{!"xpvhv", !7, i64 0, !8, i64 8, !18, i64 16, !18, i64 24}
!51 = !{!21, !7, i64 64}
!52 = !{!21, !7, i64 24}
!53 = !{!21, !18, i64 72}
!54 = !{i32 0, i32 8}
!55 = !{!29, !7, i64 0}
!56 = !{!57, !7, i64 0}
!57 = !{!"xpvmg", !7, i64 0, !8, i64 8, !18, i64 16, !8, i64 24, !8, i64 32, !8, i64 40}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!21, !7, i64 32}
!61 = !{!21, !18, i64 40}
!62 = !{!21, !7, i64 56}
!63 = !{!21, !10, i64 264}
!64 = !{!21, !7, i64 128}
!65 = !{!21, !7, i64 192}
!66 = !{!48, !10, i64 12}
!67 = !{}
!68 = !{!69, !10, i64 28}
!69 = !{!"xpvhv_aux", !8, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52}
!70 = !{!71, !7, i64 0}
!71 = !{!"av", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!72 = !{!73, !18, i64 16}
!73 = !{!"xpvav", !7, i64 0, !8, i64 8, !18, i64 16, !18, i64 24, !7, i64 32}
!74 = !{!75, !18, i64 16}
!75 = !{!"xpv", !7, i64 0, !8, i64 8, !18, i64 16, !8, i64 24}
!76 = !{!77, !10, i64 12}
!77 = !{!"gv", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!78 = distinct !{!78, !59}
!79 = distinct !{!79, !59}
!80 = !{!81, !7, i64 32}
!81 = !{!"magic", !7, i64 0, !7, i64 8, !82, i64 16, !8, i64 18, !8, i64 19, !18, i64 24, !7, i64 32, !7, i64 40}
!82 = !{!"short", !8, i64 0}
!83 = !{!21, !18, i64 80}
!84 = !{!85, !7, i64 16}
!85 = !{!"gp", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !10, i64 64, !10, i64 67, !7, i64 72}
!86 = distinct !{!86, !59}
!87 = !{!29, !10, i64 8}
!88 = !{!89, !89, i64 0}
!89 = !{!"double", !8, i64 0}
!90 = !{!81, !18, i64 24}
!91 = !{!81, !7, i64 40}
!92 = distinct !{!92, !59}
!93 = !{!50, !18, i64 16}
!94 = !{!69, !10, i64 24}
!95 = !{!69, !7, i64 16}
!96 = distinct !{!96, !59}
!97 = !{!98, !98, i64 0}
!98 = !{!"_Bool", !8, i64 0}
!99 = distinct !{!99, !59}
!100 = !{!101, !7, i64 8}
!101 = !{!"he", !7, i64 0, !7, i64 8, !8, i64 16}
!102 = !{!103, !10, i64 4}
!103 = !{!"hek", !10, i64 0, !10, i64 4, !8, i64 8}
!104 = distinct !{!104, !59}
!105 = !{!21, !18, i64 136}
!106 = !{i8 0, i8 2}
!107 = !{!21, !10, i64 92}
!108 = !{!21, !7, i64 240}
!109 = !{!21, !10, i64 232}
!110 = !{!21, !10, i64 236}
!111 = distinct !{!111, !59}
!112 = distinct !{!112, !59}
!113 = distinct !{!113, !59}
!114 = !{!71, !10, i64 12}
!115 = distinct !{!115, !59}
!116 = distinct !{!116, !59}
!117 = distinct !{!117, !59}
!118 = distinct !{!118, !59}
!119 = distinct !{!119, !59}
!120 = distinct !{!120, !59}
