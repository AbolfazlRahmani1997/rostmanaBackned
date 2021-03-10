<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Contracts\Broadcasting\ShouldBroadcastNow;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;

class privet implements ShouldBroadcastNow
{

use Dispatchable, InteractsWithSockets, SerializesModels;


    public $data;
    public $message;
    public $id;


    public function __construct($message,$id)
    {
        $this->id=$id;
        $this->data = $message;
    }

    public function broadcastOn()
    {

//dd('sasd');
        return ['my-Channel'];
//        return new Channel('my-Channel');
    }

    public function broadcastAs()
    {

        return 'My';
    }
}
