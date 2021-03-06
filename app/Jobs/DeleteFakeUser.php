<?php

namespace App\Jobs;

use App\User;
use Illuminate\Support\Carbon;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class DeleteFakeUser implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
//        $stale_users= User::where('updated_at', '<', Carbon::now()->subDays(4))->get();
//        Log::info('job ran ' . Carbon::now()->toDateTimeString());
//        foreach ($stale_users as $user) {
//            $user->delete();
//        }
    }
}
